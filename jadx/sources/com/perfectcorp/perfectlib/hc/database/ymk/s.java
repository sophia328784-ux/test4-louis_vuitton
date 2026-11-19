package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.utility.Log;

/* JADX INFO: loaded from: classes3.dex */
final class s extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        Log.g(3, "DatabaseUpgrade_1_34", "[createNewTables] start");
        sQLiteDatabase.execSQL("CREATE TABLE SkuOnly (_id INTEGER PRIMARY KEY AUTOINCREMENT,skuId BIGINT DEFAULT -1,skuGuid TEXT NOT NULL,name TEXT,longName TEXT,isDefault INTEGER DEFAULT 0,vendor TEXT,startDate BIGINT,endDate BIGINT,featureType TEXT,featureSubtype TEXT,lastModified INTEGER DEFAULT -1,info TEXT,customerId BIGINT DEFAULT -1,isDeleted INTEGER DEFAULT 0,extraInfo TEXT,hidden TEXT,UNIQUE (skuGuid) ON CONFLICT REPLACE);");
        sQLiteDatabase.execSQL("CREATE TABLE SkuItemOnly (_id INTEGER PRIMARY KEY AUTOINCREMENT,itemGuid TEXT,skuGuid TEXT,isHot INTEGER DEFAULT 0,freeSampleUrl TEXT,shoppingUrl TEXT,moreInfoUrl TEXT,itemDescription TEXT,customerInfo TEXT,isDeleted INTEGER DEFAULT 0,itemThumbnailPath TEXT NOT NULL,itemThumbnailIndexedPath TEXT NOT NULL,itemPaletteThumbnail TEXT NOT NULL,displayColorList TEXT NOT NULL,colorNumber TEXT NOT NULL,itemName TEXT NOT NULL,itemLongName TEXT NOT NULL,isIntensitySliderHidden INTEGER DEFAULT 0,isRadiusSliderHidden INTEGER DEFAULT 0,isHiddenIntensitySliderHidden INTEGER DEFAULT 0,isShineIntensitySliderHidden TEXT,extraData TEXT,UNIQUE (skuGuid,itemGuid));");
        sQLiteDatabase.execSQL("CREATE TABLE SkuSetList (SkuSetID TEXT NOT NULL PRIMARY KEY,Type TEXT DEFAULT '',Vendor TEXT DEFAULT '',CustomerId TEXT DEFAULT '',LastModified BIGINT,MakeupVersion TEXT DEFAULT '',Metadata TEXT DEFAULT '',IsDeleted INTEGER DEFAULT 0);");
        sQLiteDatabase.execSQL("CREATE TABLE SkuSetListItem (SkuSetId TEXT NOT NULL,SkuGuid TEXT DEFAULT '',ItemGuid TEXT DEFAULT '',Metadata TEXT DEFAULT '', UNIQUE (SkuSetId, SkuGuid, ItemGuid) ON CONFLICT REPLACE);");
        sQLiteDatabase.execSQL("CREATE TABLE SkuSetListSupportedPattern (_id INTEGER PRIMARY KEY AUTOINCREMENT,SkuSetId TEXT NOT NULL,SupportedPatternGuid TEXT DEFAULT '',Metadata TEXT DEFAULT '',UNIQUE (SkuSetId, SupportedPatternGuid) ON CONFLICT REPLACE);");
        sQLiteDatabase.execSQL("CREATE TABLE SkuSetListWearingStyle (_id INTEGER PRIMARY KEY AUTOINCREMENT,SkuSetId TEXT NOT NULL,WearingStyleGuid TEXT DEFAULT '',Metadata TEXT DEFAULT '',UNIQUE (SkuSetId, WearingStyleGuid) ON CONFLICT REPLACE);");
        Log.g(3, "DatabaseUpgrade_1_34", "[createNewTables] end");
    }
}
