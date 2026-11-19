package com.perfectcorp.perfectlib.hc.database;

import android.provider.BaseColumns;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.perfectcorp.thirdparty.com.google.common.base.Joiner;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Contract {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f40201a = Collections.EMPTY_LIST;

    public static final class BackgroundInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40202a = Collections.EMPTY_LIST;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f40203b;

        static {
            String[] strArr = {"guid", ConfigurationName.PING_PAYLOAD, "usageType", "expiredDate", "rootFolder", "version", DbParams.KEY_DATA, "isDeleted"};
            List list = Contract.f40201a;
            f40203b = strArr;
        }
    }

    public static final class CacheStrategyForCacheFirstThenUpdate implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40204a = Collections.singletonList(Contract.b("index_cache_strategy_for_cache_first_then_update", "CacheStrategyForCacheFirstThenUpdate", "Guid"));
    }

    public static final class ColorInfo implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40205a = Collections.singletonList(Contract.b("index_color_set_guid", "ColorInfo", "Set_GUID"));
    }

    public static final class ConditionalInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40206a = Collections.singletonList(Contract.a("ConditionalInfo", "GUID"));

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f40207b = {"GUID", "Info"};
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'TATTOO_MASK_INFO' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class DatabaseTable {
        public static final DatabaseTable BACKGROUND_INFO;
        public static final DatabaseTable CACHE_STRATEGY_FOR_CACHE_FIRST_THEN_UPDATE;
        public static final DatabaseTable CATEGORY_METADATA_CACHE;
        public static final DatabaseTable COLOR_INFO;
        public static final DatabaseTable DOWNLOAD_IMAGE;
        public static final DatabaseTable EFFECT_INFO;
        public static final DatabaseTable GENERIC_TAG;
        public static final DatabaseTable GENERIC_TAG_GROUP;
        public static final DatabaseTable GENERIC_TAG_GUID;
        public static final DatabaseTable HAIR_CARE_PRODUCT;
        public static final DatabaseTable ID_SYSTEM_INFO;
        public static final DatabaseTable ID_USAGE;
        public static final DatabaseTable LOCALIZATION_INFO;
        public static final DatabaseTable LOOK_CATEGORY_INFO;
        public static final DatabaseTable LOOK_INFO;
        public static final DatabaseTable MAKEUP_ITEM_CACHE;
        public static final DatabaseTable MAKEUP_TEMPLATE_FILE_INFO;
        public static final DatabaseTable MASK_INFO;
        public static final DatabaseTable PALETTE_INFO;
        public static final DatabaseTable PALETTE_SHAPE_INFO;
        public static final DatabaseTable PALETTE_STYLE_INFO;
        public static final DatabaseTable PALETTE_TEXTURE_INFO;
        public static final DatabaseTable PATTERN_INFO;
        public static final DatabaseTable PATTERN_PALETTE_INFO;
        public static final DatabaseTable PRODUCT_MASK_DETAILS;
        public static final DatabaseTable PRODUCT_MASK_LIST;
        public static final DatabaseTable REFERENCE_ELEMENT_INFO;
        public static final DatabaseTable SHADE_FINDER_TONE_MAPPING;
        public static final DatabaseTable SHAPE_INFO;
        public static final DatabaseTable SKIN_CARE_3_PRODUCT;
        public static final DatabaseTable SKIN_CARE_3_PRODUCT_RELATION;
        public static final DatabaseTable SKIN_CARE_PRODUCT;
        public static final DatabaseTable SKIN_CARE_PRODUCT_RELATION;
        public static final DatabaseTable SKU;
        public static final DatabaseTable SKU_ITEM;
        public static final DatabaseTable SKU_ITEM_ONLY;
        public static final DatabaseTable SKU_METADATA_CACHE;
        public static final DatabaseTable SKU_ONLY;
        public static final DatabaseTable SKU_SET;
        public static final DatabaseTable SKU_SET_ITEM;
        public static final DatabaseTable SKU_SET_LIST;
        public static final DatabaseTable SKU_SET_LIST_ITEM;
        public static final DatabaseTable SKU_SET_LIST_SUPPORTED_PATTERN;
        public static final DatabaseTable SKU_SET_LIST_WEARING_STYLE;
        public static final DatabaseTable SKU_SET_SUPPORTED_PATTERN;
        public static final DatabaseTable SKU_SET_WEARING_STYLE;
        public static final DatabaseTable STYLE_INFO;
        public static final DatabaseTable TATTOO_MASK_INFO;
        public static final DatabaseTable TEXTURE_INFO;
        public static final DatabaseTable TUTORIAL_INFO;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ DatabaseTable[] f40208a;
        public final Collection<String> createIndexCommand;
        public final String createTableCommand;
        public final String tableName;

        static {
            DatabaseTable databaseTable = new DatabaseTable("PATTERN_PALETTE_INFO", 0, "PatternPaletteInfo", "CREATE TABLE PatternPaletteInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,PatternGUID TEXT,PaletteGUID TEXT,PaletteColorIndex TEXT,Source TEXT,Type TEXT,ColorCount INTEGER,ColorIntensities TEXT,Radius TEXT,HiddenIntensity TEXT,extra TEXT,isDeleted INTEGER DEFAULT 0, UNIQUE (PatternGUID, PaletteGUID, PaletteColorIndex, Source) ON CONFLICT REPLACE);", PatternPaletteInfo.f40228a);
            PATTERN_PALETTE_INFO = databaseTable;
            DatabaseTable databaseTable2 = new DatabaseTable("PATTERN_INFO", 1, "PatternInfo", "CREATE TABLE PatternInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,GUID TEXT,PatternType TEXT,Name TEXT,ThumbPath TEXT,Source TEXT,SupportMode TEXT,Version REAL,ColorImagePath TEXT,ToolImagePath TEXT,IsNew INTEGER,SkuGUID TEXT,ExtraData TEXT,ExtStr1 TEXT,ExtStr2 TEXT,ExtStr3 TEXT,ExtInt1 INTEGER,ExtInt2 INTEGER,ExtInt3 INTEGER,TextureSupportedMode TEXT,HiddenInRoom TEXT,Positions INTEGER);", PatternInfo.f40227a);
            PATTERN_INFO = databaseTable2;
            DatabaseTable databaseTable3 = new DatabaseTable("PALETTE_INFO", 2, "PaletteInfo", "CREATE TABLE PaletteInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,GUID TEXT,ColorSetGUID TEXT,ColorCount TEXT,Name TEXT,Thumbnail TEXT,Source TEXT,Version REAL,PaletteOrder TEXT,isNew INTEGER,SkuGUID TEXT,ExtraData TEXT,Ext1 TEXT,Ext2 TEXT,Ext3 TEXT,Ext4 TEXT,Ext5 TEXT);", PaletteInfo.f40224a);
            PALETTE_INFO = databaseTable3;
            DatabaseTable databaseTable4 = new DatabaseTable("MASK_INFO", 3, "MaskInfo", "CREATE TABLE MaskInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,PatternId TEXT,MaskOrder TEXT,MaskPath TEXT,ExtraData TEXT,Ext_1 TEXT,Ext_2 TEXT,ObbPath TEXT,OccluderPath TEXT, HairWarpingStrength INTEGER,BrowPositionX INTEGER DEFAULT 999,BrowPositionY INTEGER DEFAULT 999,BrowThickness INTEGER DEFAULT 999,BrowCurvature INTEGER DEFAULT 999,BrowDefinition INTEGER DEFAULT 999, UNIQUE (PatternId, MaskOrder) ON CONFLICT REPLACE);", MaskInfo.f40223a);
            MASK_INFO = databaseTable4;
            List list = Contract.f40201a;
            DatabaseTable databaseTable5 = new DatabaseTable("TATTOO_MASK_INFO", 4, "TattooMaskInfo", "CREATE TABLE TattooMaskInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,PatternId TEXT,TattooMaskOrder TEXT,TattoMaskPath TEXT,ExtraData TEXT,Ext_1 TEXT,Ext_2 TEXT, UNIQUE (PatternId, TattooMaskOrder) ON CONFLICT REPLACE);", list);
            TATTOO_MASK_INFO = databaseTable5;
            DatabaseTable databaseTable6 = new DatabaseTable("COLOR_INFO", 5, "ColorInfo", "CREATE TABLE ColorInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,Set_GUID TEXT,PatternType TEXT,Color TEXT,Intensity TEXT,Source TEXT,ExtraData TEXT,Ext_1 TEXT,Ext_2 TEXT);", ColorInfo.f40205a);
            COLOR_INFO = databaseTable6;
            DatabaseTable databaseTable7 = new DatabaseTable("LOOK_INFO", 6, "LookInfo", "CREATE TABLE LookInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,GUID TEXT,Version REAL,Name TEXT,Description TEXT,ThumbImage TEXT,PreviewImage TEXT,Source TEXT,SupportMode TEXT,IsNew INTEGER,ExtraData TEXT,ExtStr1 TEXT,ExtStr2 TEXT,ExtStr3 TEXT,LookType TEXT,ExtInt1 INTEGER,ExtInt2 INTEGER,ExtInt3 INTEGER);", LookInfo.f40221a);
            LOOK_INFO = databaseTable7;
            DatabaseTable databaseTable8 = new DatabaseTable("EFFECT_INFO", 7, "EffectInfo", "CREATE TABLE EffectInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,GUID TEXT,PresetGUID TEXT,PatternGUID TEXT,EffectType TEXT,ColorCount TEXT,ColorSetGUID TEXT,Intensity TEXT,ListOrder TEXT,ExtraData TEXT,Ext_1 TEXT,Ext_2 TEXT);", EffectInfo.f40211a);
            EFFECT_INFO = databaseTable8;
            DatabaseTable databaseTable9 = new DatabaseTable("TEXTURE_INFO", 8, "TextureInfo", "CREATE TABLE TextureInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,GUID TEXT,Thumbnail TEXT,ExtraData TEXT, UNIQUE (GUID) ON CONFLICT IGNORE);", TextureInfo.f40253a);
            TEXTURE_INFO = databaseTable9;
            DatabaseTable databaseTable10 = new DatabaseTable("PALETTE_TEXTURE_INFO", 9, "PaletteTextureInfo", "CREATE TABLE PaletteTextureInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,PaletteID TEXT,TextureID TEXT,ExtraData TEXT, UNIQUE (PaletteID, TextureID) ON CONFLICT IGNORE);", PaletteTextureInfo.f40226a);
            PALETTE_TEXTURE_INFO = databaseTable10;
            DatabaseTable databaseTable11 = new DatabaseTable("PALETTE_SHAPE_INFO", 10, "PaletteShapeInfo", "CREATE TABLE PaletteShapeInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT, palette_guid TEXT NOT NULL, shape_guid TEXT NOT NULL, UNIQUE(palette_guid, shape_guid) ON CONFLICT IGNORE);", PaletteShapeInfo.f40225a);
            PALETTE_SHAPE_INFO = databaseTable11;
            DatabaseTable databaseTable12 = new DatabaseTable("CATEGORY_METADATA_CACHE", 11, "CategoryMetadataCache", "CREATE TABLE CategoryMetadataCache (_id INTEGER PRIMARY KEY AUTOINCREMENT,BCid BIGINT,JsonString TEXT,Ext_1 TEXT,Ext_2 TEXT);", list);
            CATEGORY_METADATA_CACHE = databaseTable12;
            DatabaseTable databaseTable13 = new DatabaseTable("MAKEUP_TEMPLATE_FILE_INFO", 12, "MakeupTemplateFileInfo", "CREATE TABLE MakeupTemplateFileInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,Tid BIGINT,GUID TEXT,Stamp BIGINT,FolderPath TEXT,TemplateType INT,PublishDate BIGINT,ExpiredDate BIGINT,IsNew INT,Ext_1 TEXT,Ext_2 TEXT,Ext_3 INT,Ext_4 INT);", list);
            MAKEUP_TEMPLATE_FILE_INFO = databaseTable13;
            DatabaseTable databaseTable14 = new DatabaseTable("MAKEUP_ITEM_CACHE", 13, "MakeupItemCache", "CREATE TABLE MakeupItemCache (_id INTEGER PRIMARY KEY AUTOINCREMENT,MIid BIGINT,Cid BIGINT,JsonString TEXT,Ext_1 TEXT,Ext_2 TEXT);", list);
            MAKEUP_ITEM_CACHE = databaseTable14;
            DatabaseTable databaseTable15 = new DatabaseTable("SKU_METADATA_CACHE", 14, "SkuCache", "CREATE TABLE SkuCache (_id INTEGER PRIMARY KEY AUTOINCREMENT,Skuid BIGINT,SkuType TEXT,SkuStartDate BIGINT,SkuEndDate BIGINT,JsonString TEXT,Ext_1 TEXT,IsDeleted INTEGER DEFAULT 0,Ext_2 TEXT);", list);
            SKU_METADATA_CACHE = databaseTable15;
            DatabaseTable databaseTable16 = new DatabaseTable("LOOK_CATEGORY_INFO", 15, "LookCategoryInfo", "CREATE TABLE LookCategoryInfo (GUID TEXT,Type TEXT,Category TEXT,ExtStr1 TEXT,ExtStr2 TEXT,ExtInt1 INTEGER,ExtInt2 INTEGER);", list);
            LOOK_CATEGORY_INFO = databaseTable16;
            DatabaseTable databaseTable17 = new DatabaseTable("LOCALIZATION_INFO", 16, "LocalizationInfo", "CREATE TABLE LocalizationInfo (Lang TEXT,Name TEXT,Value TEXT,ExtStr1 TEXT,ExtStr2 TEXT,ExtInt1 INTEGER,ExtInt2 INTEGER, UNIQUE (Lang, Name) ON CONFLICT REPLACE);", list);
            LOCALIZATION_INFO = databaseTable17;
            DatabaseTable databaseTable18 = new DatabaseTable("STYLE_INFO", 17, "StyleInfo", "CREATE TABLE StyleInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,GUID TEXT,ExtraData TEXT,Ext1 TEXT,Ext2 TEXT,Ext3 TEXT,Ext4 TEXT,Ext5 TEXT);", list);
            STYLE_INFO = databaseTable18;
            DatabaseTable databaseTable19 = new DatabaseTable("SHAPE_INFO", 18, "ShapeInfo", "CREATE TABLE ShapeInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,GUID TEXT,Thumbnail TEXT,ExtraData TEXT);", list);
            SHAPE_INFO = databaseTable19;
            DatabaseTable databaseTable20 = new DatabaseTable("PALETTE_STYLE_INFO", 19, "PaletteStyleInfo", "CREATE TABLE PaletteStyleInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,palette_guid TEXT,style_guid TEXT,inner_ratio TEXT,feather_strength TEXT,intensity TEXT);", list);
            PALETTE_STYLE_INFO = databaseTable20;
            DatabaseTable databaseTable21 = new DatabaseTable("ID_SYSTEM_INFO", 20, "IdSystemInfo", "CREATE TABLE IdSystemInfo (Id TEXT PRIMARY KEY,ReferencedIds TEXT, Size INTEGER DEFAULT 0, LastModified INTEGER)", IdSystemInfo.f40219a);
            ID_SYSTEM_INFO = databaseTable21;
            DatabaseTable databaseTable22 = new DatabaseTable("REFERENCE_ELEMENT_INFO", 21, "ReferenceElementInfo", "CREATE TABLE ReferenceElementInfo (Id TEXT PRIMARY KEY,ReferencedIds TEXT)", ReferenceElementInfo.f40233a);
            REFERENCE_ELEMENT_INFO = databaseTable22;
            DatabaseTable databaseTable23 = new DatabaseTable("CACHE_STRATEGY_FOR_CACHE_FIRST_THEN_UPDATE", 22, "CacheStrategyForCacheFirstThenUpdate", "CREATE TABLE CacheStrategyForCacheFirstThenUpdate (Guid TEXT PRIMARY KEY NOT NULL,Type TEXT NOT NULL,JsonString TEXT NOT NULL,State INTEGER DEFAULT 0);", CacheStrategyForCacheFirstThenUpdate.f40204a);
            CACHE_STRATEGY_FOR_CACHE_FIRST_THEN_UPDATE = databaseTable23;
            DatabaseTable databaseTable24 = new DatabaseTable("ID_USAGE", 23, "IdUsage", "CREATE TABLE IdUsage(KeyId TEXT PRIMARY KEY NOT NULL DEFAULT '',ValueTimestamp INTEGER DEFAULT 0,ValueType TEXT NOT NULL DEFAULT '',ValueFolderPath TEXT NOT NULL DEFAULT '',ValueFolderSizeInByte INTEGER DEFAULT 0);", IdUsage.f40220a);
            ID_USAGE = databaseTable24;
            DatabaseTable databaseTable25 = new DatabaseTable("SKU_SET", 24, "SkuSet", "CREATE TABLE SkuSet (SkuSetID TEXT NOT NULL PRIMARY KEY,Type TEXT DEFAULT '',Vendor TEXT DEFAULT '',CustomerId TEXT DEFAULT '',LastModified BIGINT,MakeupVersion TEXT DEFAULT '',Metadata TEXT DEFAULT '',IsDeleted INTEGER DEFAULT 0);", list);
            SKU_SET = databaseTable25;
            DatabaseTable databaseTable26 = new DatabaseTable("SKU_SET_ITEM", 25, "SkuSetItem", "CREATE TABLE SkuSetItem (SkuSetId TEXT NOT NULL,SkuGuid TEXT DEFAULT '',ItemGuid TEXT DEFAULT '',Metadata TEXT DEFAULT '', UNIQUE (SkuSetId, SkuGuid, ItemGuid) ON CONFLICT REPLACE);", list);
            SKU_SET_ITEM = databaseTable26;
            DatabaseTable databaseTable27 = new DatabaseTable("SKU_SET_SUPPORTED_PATTERN", 26, "SkuSetSupportedPattern", "CREATE TABLE SkuSetSupportedPattern (_id INTEGER PRIMARY KEY AUTOINCREMENT,SkuSetId TEXT NOT NULL,SupportedPatternGuid TEXT DEFAULT '',Metadata TEXT DEFAULT '',UNIQUE (SkuSetId, SupportedPatternGuid) ON CONFLICT REPLACE);", list);
            SKU_SET_SUPPORTED_PATTERN = databaseTable27;
            DatabaseTable databaseTable28 = new DatabaseTable("SKU_SET_WEARING_STYLE", 27, "SkuSetWearingStyle", "CREATE TABLE SkuSetWearingStyle (_id INTEGER PRIMARY KEY AUTOINCREMENT,SkuSetId TEXT NOT NULL,WearingStyleGuid TEXT DEFAULT '',Metadata TEXT DEFAULT '',UNIQUE (SkuSetId, WearingStyleGuid) ON CONFLICT REPLACE);", list);
            SKU_SET_WEARING_STYLE = databaseTable28;
            DatabaseTable databaseTable29 = new DatabaseTable("SKU_SET_LIST", 28, "SkuSetList", "CREATE TABLE SkuSetList (SkuSetID TEXT NOT NULL PRIMARY KEY,Type TEXT DEFAULT '',Vendor TEXT DEFAULT '',CustomerId TEXT DEFAULT '',LastModified BIGINT,MakeupVersion TEXT DEFAULT '',Metadata TEXT DEFAULT '',IsDeleted INTEGER DEFAULT 0);", list);
            SKU_SET_LIST = databaseTable29;
            DatabaseTable databaseTable30 = new DatabaseTable("SKU_SET_LIST_ITEM", 29, "SkuSetListItem", "CREATE TABLE SkuSetListItem (SkuSetId TEXT NOT NULL,SkuGuid TEXT DEFAULT '',ItemGuid TEXT DEFAULT '',Metadata TEXT DEFAULT '', UNIQUE (SkuSetId, SkuGuid, ItemGuid) ON CONFLICT REPLACE);", list);
            SKU_SET_LIST_ITEM = databaseTable30;
            DatabaseTable databaseTable31 = new DatabaseTable("SKU_SET_LIST_SUPPORTED_PATTERN", 30, "SkuSetListSupportedPattern", "CREATE TABLE SkuSetListSupportedPattern (_id INTEGER PRIMARY KEY AUTOINCREMENT,SkuSetId TEXT NOT NULL,SupportedPatternGuid TEXT DEFAULT '',Metadata TEXT DEFAULT '',UNIQUE (SkuSetId, SupportedPatternGuid) ON CONFLICT REPLACE);", list);
            SKU_SET_LIST_SUPPORTED_PATTERN = databaseTable31;
            DatabaseTable databaseTable32 = new DatabaseTable("SKU_SET_LIST_WEARING_STYLE", 31, "SkuSetListWearingStyle", "CREATE TABLE SkuSetListWearingStyle (_id INTEGER PRIMARY KEY AUTOINCREMENT,SkuSetId TEXT NOT NULL,WearingStyleGuid TEXT DEFAULT '',Metadata TEXT DEFAULT '',UNIQUE (SkuSetId, WearingStyleGuid) ON CONFLICT REPLACE);", list);
            SKU_SET_LIST_WEARING_STYLE = databaseTable32;
            DatabaseTable databaseTable33 = new DatabaseTable("SKU", 32, "Sku", "CREATE TABLE Sku (_id INTEGER PRIMARY KEY AUTOINCREMENT,skuId BIGINT DEFAULT -1,skuGuid TEXT NOT NULL,name TEXT,longName TEXT,isDefault INTEGER DEFAULT 0,vendor TEXT,startDate BIGINT,endDate BIGINT,featureType TEXT,featureSubtype TEXT,lastModified INTEGER DEFAULT -1,info TEXT,customerId BIGINT DEFAULT -1,isDeleted INTEGER DEFAULT 0,extraInfo TEXT,hidden TEXT,UNIQUE (skuGuid) ON CONFLICT REPLACE);", Sku.f40242b);
            SKU = databaseTable33;
            DatabaseTable databaseTable34 = new DatabaseTable("SKU_ONLY", 33, "SkuOnly", "CREATE TABLE SkuOnly (_id INTEGER PRIMARY KEY AUTOINCREMENT,skuId BIGINT DEFAULT -1,skuGuid TEXT NOT NULL,name TEXT,longName TEXT,isDefault INTEGER DEFAULT 0,vendor TEXT,startDate BIGINT,endDate BIGINT,featureType TEXT,featureSubtype TEXT,lastModified INTEGER DEFAULT -1,info TEXT,customerId BIGINT DEFAULT -1,isDeleted INTEGER DEFAULT 0,extraInfo TEXT,hidden TEXT,UNIQUE (skuGuid) ON CONFLICT REPLACE);", SkuOnly.f40248b);
            SKU_ONLY = databaseTable34;
            DatabaseTable databaseTable35 = new DatabaseTable("SKU_ITEM", 34, "SkuItem", "CREATE TABLE SkuItem (_id INTEGER PRIMARY KEY AUTOINCREMENT,itemGuid TEXT,skuGuid TEXT,isHot INTEGER DEFAULT 0,freeSampleUrl TEXT,shoppingUrl TEXT,moreInfoUrl TEXT,itemDescription TEXT,customerInfo TEXT,isDeleted INTEGER DEFAULT 0,itemThumbnailPath TEXT NOT NULL,itemThumbnailIndexedPath TEXT NOT NULL,itemPaletteThumbnail TEXT NOT NULL,displayColorList TEXT NOT NULL,colorNumber TEXT NOT NULL,itemName TEXT NOT NULL,itemLongName TEXT NOT NULL,isIntensitySliderHidden INTEGER DEFAULT 0,isRadiusSliderHidden INTEGER DEFAULT 0,isHiddenIntensitySliderHidden INTEGER DEFAULT 0,isShineIntensitySliderHidden TEXT,extraData TEXT,UNIQUE (skuGuid,itemGuid));", SkuItem.f40244b);
            SKU_ITEM = databaseTable35;
            DatabaseTable databaseTable36 = new DatabaseTable("SKU_ITEM_ONLY", 35, "SkuItemOnly", "CREATE TABLE SkuItemOnly (_id INTEGER PRIMARY KEY AUTOINCREMENT,itemGuid TEXT,skuGuid TEXT,isHot INTEGER DEFAULT 0,freeSampleUrl TEXT,shoppingUrl TEXT,moreInfoUrl TEXT,itemDescription TEXT,customerInfo TEXT,isDeleted INTEGER DEFAULT 0,itemThumbnailPath TEXT NOT NULL,itemThumbnailIndexedPath TEXT NOT NULL,itemPaletteThumbnail TEXT NOT NULL,displayColorList TEXT NOT NULL,colorNumber TEXT NOT NULL,itemName TEXT NOT NULL,itemLongName TEXT NOT NULL,isIntensitySliderHidden INTEGER DEFAULT 0,isRadiusSliderHidden INTEGER DEFAULT 0,isHiddenIntensitySliderHidden INTEGER DEFAULT 0,isShineIntensitySliderHidden TEXT,extraData TEXT,UNIQUE (skuGuid,itemGuid));", SkuItemOnly.f40246b);
            SKU_ITEM_ONLY = databaseTable36;
            DatabaseTable databaseTable37 = new DatabaseTable("PRODUCT_MASK_LIST", 36, "ProductMaskList", "CREATE TABLE ProductMaskList (_id INTEGER PRIMARY KEY AUTOINCREMENT,productGuid TEXT,lastModified INTEGER,featureType TEXT,UNIQUE (productGuid) ON CONFLICT REPLACE);", ProductMaskList.f40231a);
            PRODUCT_MASK_LIST = databaseTable37;
            DatabaseTable databaseTable38 = new DatabaseTable("PRODUCT_MASK_DETAILS", 37, "ProductMaskDetail", "CREATE TABLE ProductMaskDetail (_id INTEGER PRIMARY KEY AUTOINCREMENT,productGuid TEXT,skuGuid TEXT,lastModified INTEGER,featureType TEXT,UNIQUE (productGuid,skuGuid) ON CONFLICT REPLACE);", ProductMaskDetail.f40229a);
            PRODUCT_MASK_DETAILS = databaseTable38;
            DatabaseTable databaseTable39 = new DatabaseTable("DOWNLOAD_IMAGE", 38, "DownloadImage", "CREATE TABLE DownloadImage (_id INTEGER PRIMARY KEY AUTOINCREMENT,url TEXT,path TEXT,referenceId TEXT,type TEXT,size INTEGER DEFAULT 0,UNIQUE (url,referenceId) ON CONFLICT REPLACE);", DownloadImage.f40209a);
            DOWNLOAD_IMAGE = databaseTable39;
            DatabaseTable databaseTable40 = new DatabaseTable("HAIR_CARE_PRODUCT", 39, "HairCareProduct", "CREATE TABLE HairCareProduct (_id INTEGER PRIMARY KEY AUTOINCREMENT,Guid TEXT NOT NULL,Type TEXT,ProductId TEXT NOT NULL,Category TEXT,CustomerId INTEGER,Vendor TEXT,ExpiredDate TEXT,LastModified INTEGER,ProductLastModified INTEGER,MakeupVersion TEXT,Metadata TEXT,UNIQUE (ProductId) ON CONFLICT REPLACE);", HairCareProduct.f40218a);
            HAIR_CARE_PRODUCT = databaseTable40;
            DatabaseTable databaseTable41 = new DatabaseTable("GENERIC_TAG_GROUP", 40, "GenericTagGroup", "CREATE TABLE GenericTagGroup (_id INTEGER PRIMARY KEY AUTOINCREMENT,Type TEXT NOT NULL,Id INTEGER,Name TEXT,IsFreeTag INTEGER,UNIQUE (Type,Id) ON CONFLICT REPLACE);", GenericTagGroup.f40214a);
            GENERIC_TAG_GROUP = databaseTable41;
            DatabaseTable databaseTable42 = new DatabaseTable("GENERIC_TAG", 41, "GenericTag", "CREATE TABLE GenericTag (_id INTEGER PRIMARY KEY AUTOINCREMENT,Type TEXT NOT NULL,TagGroupId INTEGER,Id INTEGER,Name TEXT,ImgURL TEXT,UNIQUE (Type,Id) ON CONFLICT REPLACE);", GenericTag.f40212a);
            GENERIC_TAG = databaseTable42;
            DatabaseTable databaseTable43 = new DatabaseTable("GENERIC_TAG_GUID", 42, "GenericTagGuid", "CREATE TABLE GenericTagGuid (_id INTEGER PRIMARY KEY AUTOINCREMENT,Type TEXT NOT NULL,SubType TEXT NOT NULL,TagId INTEGER,Is3d INTEGER,Guid TEXT NOT NULL,UNIQUE (Type,TagId,Guid) ON CONFLICT REPLACE);", GenericTagGuid.f40216a);
            GENERIC_TAG_GUID = databaseTable43;
            DatabaseTable databaseTable44 = new DatabaseTable("SKIN_CARE_PRODUCT", 43, "SkinCareProduct", "CREATE TABLE SkinCareProduct (_id INTEGER PRIMARY KEY AUTOINCREMENT,ProductId TEXT NOT NULL,Payload TEXT,LastModified INTEGER,UNIQUE (ProductId) ON CONFLICT REPLACE);", SkinCareProduct.f40239a);
            SKIN_CARE_PRODUCT = databaseTable44;
            DatabaseTable databaseTable45 = new DatabaseTable("SKIN_CARE_PRODUCT_RELATION", 44, "SkinCareProductRelation", "CREATE TABLE SkinCareProductRelation (_id INTEGER PRIMARY KEY AUTOINCREMENT,ProductId TEXT NOT NULL,ReferencedId TEXT NOT NULL,UNIQUE (ProductId,ReferencedId) ON CONFLICT REPLACE);", SkinCareProductRelation.f40240a);
            SKIN_CARE_PRODUCT_RELATION = databaseTable45;
            DatabaseTable databaseTable46 = new DatabaseTable("SKIN_CARE_3_PRODUCT", 45, "SkinCare3Product", "CREATE TABLE SkinCare3Product (_id INTEGER PRIMARY KEY AUTOINCREMENT,ProductId TEXT NOT NULL,Payload TEXT,LastModified INTEGER,UNIQUE (ProductId) ON CONFLICT REPLACE);", SkinCare3Product.f40235a);
            SKIN_CARE_3_PRODUCT = databaseTable46;
            DatabaseTable databaseTable47 = new DatabaseTable("SKIN_CARE_3_PRODUCT_RELATION", 46, "SkinCare3ProductRelation", "CREATE TABLE SkinCare3ProductRelation (_id INTEGER PRIMARY KEY AUTOINCREMENT,ProductId TEXT NOT NULL,ReferencedId TEXT NOT NULL,UNIQUE (ProductId,ReferencedId) ON CONFLICT REPLACE);", SkinCare3ProductRelation.f40237a);
            SKIN_CARE_3_PRODUCT_RELATION = databaseTable47;
            DatabaseTable databaseTable48 = new DatabaseTable("SHADE_FINDER_TONE_MAPPING", 47, "ConditionalInfo", "CREATE TABLE ConditionalInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,GUID TEXT NOT NULL,Info TEXT,UNIQUE (GUID) ON CONFLICT REPLACE);", ConditionalInfo.f40206a);
            SHADE_FINDER_TONE_MAPPING = databaseTable48;
            DatabaseTable databaseTable49 = new DatabaseTable("BACKGROUND_INFO", 48, "BackgruondInfo", "CREATE TABLE BackgruondInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,guid TEXT NOT NULL,payload TEXT,usageType TEXT,expiredDate TEXT,rootFolder TEXT NOT NULL,version INT,data TEXT,isDeleted INTEGER,UNIQUE (guid) ON CONFLICT REPLACE);", BackgroundInfo.f40202a);
            BACKGROUND_INFO = databaseTable49;
            DatabaseTable databaseTable50 = new DatabaseTable("TUTORIAL_INFO", 49, "TutorialInfo", "CREATE TABLE TutorialInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,guid TEXT NOT NULL,type TEXT,payload TEXT,expiredDate TEXT,lastModified INTEGER,isDownloaded INTEGER DEFAULT 0,UNIQUE (guid) ON CONFLICT REPLACE);", TutorialInfo.f40254a);
            TUTORIAL_INFO = databaseTable50;
            f40208a = new DatabaseTable[]{databaseTable, databaseTable2, databaseTable3, databaseTable4, databaseTable5, databaseTable6, databaseTable7, databaseTable8, databaseTable9, databaseTable10, databaseTable11, databaseTable12, databaseTable13, databaseTable14, databaseTable15, databaseTable16, databaseTable17, databaseTable18, databaseTable19, databaseTable20, databaseTable21, databaseTable22, databaseTable23, databaseTable24, databaseTable25, databaseTable26, databaseTable27, databaseTable28, databaseTable29, databaseTable30, databaseTable31, databaseTable32, databaseTable33, databaseTable34, databaseTable35, databaseTable36, databaseTable37, databaseTable38, databaseTable39, databaseTable40, databaseTable41, databaseTable42, databaseTable43, databaseTable44, databaseTable45, databaseTable46, databaseTable47, databaseTable48, databaseTable49, databaseTable50};
        }

        public DatabaseTable(String str, int i2, String str2, String str3, Collection collection) {
            super(str, i2);
            this.tableName = str2;
            this.createTableCommand = str3;
            this.createIndexCommand = collection;
        }

        public static DatabaseTable valueOf(String str) {
            return (DatabaseTable) Enum.valueOf(DatabaseTable.class, str);
        }

        public static DatabaseTable[] values() {
            return (DatabaseTable[]) f40208a.clone();
        }
    }

    public static final class DownloadImage {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40209a = Arrays.asList(Contract.b("index_downloaded_image_url", "DownloadImage", ConfigurationName.DOWNLOAD_PLUGIN_URL), Contract.b("index_downloaded_image_reference_id", "DownloadImage", "referenceId"), Contract.b("index_downloaded_image_type", "DownloadImage", "type"));

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f40210b = {ConfigurationName.DOWNLOAD_PLUGIN_URL, "path", "referenceId", "type", "size"};
    }

    public static final class EffectInfo implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40211a = Arrays.asList(Contract.b("index_effect_preset_guid", "EffectInfo", "PresetGUID"), Contract.b("index_effect_pattern_guid", "EffectInfo", "PatternGUID"));
    }

    public static final class GenericTag {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40212a = Collections.singletonList(Contract.a("GenericTag", "Type", "TagGroupId"));

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f40213b = {"Type", "TagGroupId", "Id", "Name", "ImgURL"};
    }

    public static final class GenericTagGroup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40214a = Collections.singletonList(Contract.a("GenericTagGroup", "Type"));

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f40215b = {"Type", "Id", "Name", "IsFreeTag"};
    }

    public static final class GenericTagGuid {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40216a = Collections.singletonList(Contract.a("GenericTagGuid", "Type", "SubType", "TagId", "Is3d"));

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f40217b = {"Type", "SubType", "TagId", "Is3d", "Guid"};
    }

    public static final class HairCareProduct {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40218a = Collections.singletonList(Contract.b("index_hair_care_product_guid", "HairCareProduct", "Guid"));
    }

    public static class IdSystemInfo implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40219a = Collections.singletonList(Contract.b("index_id_system_id", "IdSystemInfo", "Id"));
    }

    public static class IdUsage implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40220a = Collections.singletonList(Contract.b("index_id_usage", "IdUsage", "KeyId"));
    }

    public static final class LookInfo implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40221a = Collections.singletonList(Contract.b("index_look_guid", "LookInfo", "GUID"));

        public static String[] a() {
            return new String[]{"GUID", "Version", "Name", "Description", "ThumbImage", "PreviewImage", "Source", "SupportMode", "IsNew", "ExtraData", "ExtStr1", "ExtStr2", "ExtStr3", "LookType", "ExtInt1", "ExtInt2", "ExtInt3"};
        }
    }

    public static final class MakeupItemCache implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static String[] f40222a;

        public static String[] a() {
            String[] strArr = f40222a;
            if (strArr != null) {
                return strArr;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add("MIid");
            arrayList.add("Cid");
            arrayList.add("JsonString");
            arrayList.add("Ext_1");
            arrayList.add("Ext_2");
            String[] strArr2 = (String[]) arrayList.toArray(new String[0]);
            f40222a = strArr2;
            return strArr2;
        }
    }

    public static final class MaskInfo implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40223a = Collections.singletonList(Contract.b("index_mask_pattern_id", "MaskInfo", "PatternId"));

        public static String[] a() {
            return new String[]{"PatternId", "MaskOrder", "MaskPath", "ExtraData", "Ext_1", "Ext_2", "ObbPath", "OccluderPath", "HairWarpingStrength", "BrowPositionX", "BrowPositionY", "BrowThickness", "BrowCurvature", "BrowDefinition"};
        }
    }

    public static final class PaletteInfo implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40224a = Arrays.asList(Contract.b("index_palette_guid", "PaletteInfo", "GUID"), Contract.b("index_palette_type", "PaletteInfo", "Ext1"), Contract.b("index_palette_sku_guid", "PaletteInfo", "SkuGUID"));

        public static String[] a() {
            return new String[]{"GUID", "ColorSetGUID", "ColorCount", "Name", "Thumbnail", "Source", "Version", "PaletteOrder", "isNew", "SkuGUID", "ExtraData", "Ext1", "Ext2", "Ext3", "Ext4", "Ext5"};
        }
    }

    public static final class PaletteShapeInfo implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40225a = Arrays.asList(Contract.b("index_palette_shape_palette_guid", "PaletteShapeInfo", "palette_guid"), Contract.b("index_palette_shape_shape_guid", "PaletteShapeInfo", "shape_guid"));
    }

    public static final class PaletteTextureInfo implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40226a = Arrays.asList(Contract.b("index_palette_texture_palette_guid", "PaletteTextureInfo", "PaletteID"), Contract.b("index_palette_texture_texture_guid", "PaletteTextureInfo", "TextureID"));
    }

    public static final class PatternInfo implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40227a = Arrays.asList(Contract.b("index_pattern_guid", "PatternInfo", "GUID"), Contract.b("index_pattern_type", "PatternInfo", "PatternType"), Contract.b("index_pattern_sku_guid", "PatternInfo", "SkuGUID"));

        public static String[] a() {
            return new String[]{"GUID", "PatternType", "Name", "ThumbPath", "Source", "SupportMode", "Version", "ColorImagePath", "ToolImagePath", "IsNew", "SkuGUID", "ExtraData", "ExtStr1", "ExtStr2", "ExtStr3", "ExtInt1", "ExtInt2", "ExtInt3", "TextureSupportedMode", "HiddenInRoom", "Positions"};
        }
    }

    public static class PatternPaletteInfo implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40228a = Arrays.asList(Contract.b("index_pattern_palette_pattern_guid", "PatternPaletteInfo", "PatternGUID"), Contract.b("index_pattern_palette_palette_guid", "PatternPaletteInfo", "PaletteGUID"), Contract.b("index_pattern_palette_palette_color_index", "PatternPaletteInfo", "PaletteColorIndex"));

        public static String[] a() {
            return new String[]{"PatternGUID", "PaletteGUID", "PaletteColorIndex", "Source", "Type", "ColorCount", "ColorIntensities", "Radius", "HiddenIntensity", "extra", "isDeleted"};
        }
    }

    public static final class ProductMaskDetail {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40229a = Arrays.asList(Contract.b("index_product_guid", "ProductMaskDetail", "productGuid"), Contract.b("index_feature_type", "ProductMaskDetail", "featureType"));

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f40230b = {"productGuid", "skuGuid", "lastModified", "featureType"};
    }

    public static final class ProductMaskList {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40231a = Arrays.asList(Contract.b("index_product_guid", "ProductMaskList", "productGuid"), Contract.b("index_feature_type", "ProductMaskList", "featureType"));

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f40232b = {"productGuid", "lastModified", "featureType"};
    }

    public static class ReferenceElementInfo implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40233a = Collections.singletonList(Contract.b("index_reference_element_id", "ReferenceElementInfo", "Id"));
    }

    public static final class ShapeInfo implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40234a = Collections.singletonList(Contract.b("index_shape_guid", "ShapeInfo", "GUID"));
    }

    public static final class SkinCare3Product {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40235a = Collections.singletonList(Contract.a("SkinCare3Product", "ProductId"));

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f40236b = {"ProductId", "Payload", "LastModified"};
    }

    public static final class SkinCare3ProductRelation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40237a = Collections.singletonList(Contract.a("SkinCare3ProductRelation", "ProductId", "ReferencedId"));

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f40238b = {"ProductId", "ReferencedId"};
    }

    public static final class SkinCareProduct {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40239a = Collections.singletonList(Contract.a("SkinCareProduct", "ProductId"));
    }

    public static final class SkinCareProductRelation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40240a = Collections.singletonList(Contract.a("SkinCareProductRelation", "ProductId", "ReferencedId"));
    }

    public static final class Sku {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String[] f40241a = {"skuId", "skuGuid", "name", "longName", "isDefault", "vendor", "startDate", "endDate", "featureType", "featureSubtype", "lastModified", "info", "customerId", "isDeleted", "extraInfo", "hidden"};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final List f40242b = Collections.singletonList(Contract.b("index_sku_guid", "Sku", "skuGuid"));
    }

    public static final class SkuItem {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String[] f40243a = {"itemGuid", "skuGuid", "isHot", "freeSampleUrl", "shoppingUrl", "moreInfoUrl", "itemDescription", "customerInfo", "isDeleted", "itemThumbnailPath", "itemThumbnailIndexedPath", "itemPaletteThumbnail", "displayColorList", "colorNumber", "itemName", "itemLongName", "isIntensitySliderHidden", "isRadiusSliderHidden", "isHiddenIntensitySliderHidden", "isShineIntensitySliderHidden", "extraData"};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final List f40244b = Arrays.asList(Contract.b("index_sku_item_guid", "SkuItem", "itemGuid"), Contract.b("index_sku_item_sku_guid", "SkuItem", "skuGuid"));
    }

    public static final class SkuItemOnly {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String[] f40245a = {"itemGuid", "skuGuid", "isHot", "freeSampleUrl", "shoppingUrl", "moreInfoUrl", "itemDescription", "customerInfo", "isDeleted", "itemThumbnailPath", "itemThumbnailIndexedPath", "itemPaletteThumbnail", "displayColorList", "colorNumber", "itemName", "itemLongName", "isIntensitySliderHidden", "isRadiusSliderHidden", "isHiddenIntensitySliderHidden", "isShineIntensitySliderHidden", "extraData"};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final List f40246b = Arrays.asList(Contract.b("index_sku_item_guid", "SkuItemOnly", "itemGuid"), Contract.b("index_sku_item_sku_guid", "SkuItemOnly", "skuGuid"));
    }

    public static final class SkuOnly {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String[] f40247a = {"skuId", "skuGuid", "name", "longName", "isDefault", "vendor", "startDate", "endDate", "featureType", "featureSubtype", "lastModified", "info", "customerId", "isDeleted", "extraInfo", "hidden"};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final List f40248b = Collections.singletonList(Contract.b("index_sku_guid", "SkuOnly", "skuGuid"));
    }

    public static final class SkuSetListSupportedPattern {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String[] f40249a;

        static {
            List list = Contract.f40201a;
            f40249a = new String[]{"SkuSetId", "SupportedPatternGuid", "Metadata"};
        }
    }

    public static final class SkuSetListWearingStyle {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String[] f40250a;

        static {
            List list = Contract.f40201a;
            f40250a = new String[]{"SkuSetId", "WearingStyleGuid", "Metadata"};
        }
    }

    public static final class SkuSetSupportedPattern {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String[] f40251a;

        static {
            List list = Contract.f40201a;
            f40251a = new String[]{"SkuSetId", "SupportedPatternGuid", "Metadata"};
        }
    }

    public static final class SkuSetWearingStyle {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String[] f40252a;

        static {
            List list = Contract.f40201a;
            f40252a = new String[]{"SkuSetId", "WearingStyleGuid", "Metadata"};
        }
    }

    public static final class TextureInfo implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40253a = Collections.singletonList(Contract.b("index_texture_guid", "TextureInfo", "GUID"));
    }

    public static final class TutorialInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final List f40254a = Collections.EMPTY_LIST;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f40255b;

        static {
            String[] strArr = {"guid", ConfigurationName.PING_PAYLOAD, "type", "expiredDate", "lastModified", "isDownloaded"};
            List list = Contract.f40201a;
            f40255b = strArr;
        }
    }

    public static String a(String str, String... strArr) {
        StringBuilder sbU = n00.u(str, "(");
        sbU.append(new Joiner(",").b(Arrays.asList(strArr)));
        sbU.append(")");
        String string = sbU.toString();
        return fc.i("CREATE INDEX IF NOT EXISTS 'indexing_", string, "' ON ", string);
    }

    public static String b(String str, String str2, String str3) {
        return tr.l(fc.s("CREATE INDEX IF NOT EXISTS '", str, "_", str2, "' ON "), str2, "(", str3, ")");
    }
}
