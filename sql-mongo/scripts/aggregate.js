db.collectionName.aggregate([
    {
        "$group": {
            _id: {
                bankAccountNbr: "$bankAccountNbr",
                cuid: "$cuid"
            },
            count: {$sum: 1}
        }
    }
]);