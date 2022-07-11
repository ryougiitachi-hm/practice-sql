package per.itachi.java.sql.mongo.driver;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import lombok.extern.slf4j.Slf4j;
import org.bson.Document;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Base64;

@Slf4j
public class MongoDriver {

    public static void main(String[] args) throws UnsupportedEncodingException {
        String username = args[0];
        String password = args[1];
        String databaseName = args[2];
        String collectionName = args[3];
        String fieldName = args[4];
        String fieldValue = args[5];
        String fieldNameToWriteBase64 = args[6];

        String hosts = "mongowquat01.uat.homecreditcfc.cn:24004,mongowquat02.uat.homecreditcfc.cn:24004";
        String uri = String.format("mongodb://%s:%s@%s/APP_CAPP?authSource=APP_CAPP&readPreference=primary&appname=MongoDB%%20Compass&ssl=false",
                username, URLEncoder.encode(password, StandardCharsets.UTF_8.name()), hosts);
        try(MongoClient client = MongoClients.create(uri)) {
            MongoDatabase database = client.getDatabase(databaseName);
            MongoCollection<Document> collection = database.getCollection(collectionName);
            Document document = collection.find(Filters.eq(fieldName, fieldValue)).first();
            String base64 = String.valueOf(document.get(fieldNameToWriteBase64));
            byte[] data = Base64.getDecoder().decode(base64);
            try(OutputStream fos = Files.newOutputStream(Paths
                    .get(String.format("%s-%s", collectionName, fieldNameToWriteBase64)))) {
                fos.write(data);
            }
            catch (IOException e) {
                log.error("Error occured. ", e);
            }
        }
    }
}
