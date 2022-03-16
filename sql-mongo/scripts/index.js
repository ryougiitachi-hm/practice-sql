// create
db.collectionName.ensureIndex({}); // deprecated since 3.0.0, and replaced by createIndex()
db.collectionName.createIndex(); //

// drop index
db.collectionName.dropIndex("idx_order_cdate");
// drop all of the indices.
db.colelctionName.dropIndexes();
