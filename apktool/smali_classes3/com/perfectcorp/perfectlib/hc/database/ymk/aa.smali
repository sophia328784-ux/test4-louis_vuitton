.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/aa;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 21

    move-object/from16 v0, p1

    invoke-super/range {p0 .. p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v9, "[insertOrReplace] error"

    const/4 v10, 0x3

    const-string v11, "DatabaseUpgrade_1_21"

    const-string v1, "[dropUselessTables] start"

    invoke-static {v10, v11, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v1, "DROP TABLE IF EXISTS SkuUpdateCache"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS NoticeCache"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS EventTemplate"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS ContestCache"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS MakeupCategoryCache"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS FilmMetadataCache"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS TemplateMetadataCache"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "[dropUselessTables] end"

    invoke-static {v10, v11, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v1, "ALTER TABLE PatternPaletteInfo ADD isDeleted INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE IdSystemInfo ADD Size INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "[createNewTables] start"

    invoke-static {v10, v11, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v1, "CREATE TABLE Sku (_id INTEGER PRIMARY KEY AUTOINCREMENT,skuId BIGINT DEFAULT -1,skuGuid TEXT NOT NULL,name TEXT,longName TEXT,isDefault INTEGER DEFAULT 0,vendor TEXT,startDate BIGINT,endDate BIGINT,featureType TEXT,featureSubtype TEXT,lastModified INTEGER DEFAULT -1,info TEXT,customerId BIGINT DEFAULT -1,isDeleted INTEGER DEFAULT 0,extraInfo TEXT,hidden TEXT,UNIQUE (skuGuid) ON CONFLICT REPLACE);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE SkuItem (_id INTEGER PRIMARY KEY AUTOINCREMENT,itemGuid TEXT,skuGuid TEXT,isHot INTEGER DEFAULT 0,freeSampleUrl TEXT,shoppingUrl TEXT,moreInfoUrl TEXT,itemDescription TEXT,customerInfo TEXT,isDeleted INTEGER DEFAULT 0,itemThumbnailPath TEXT NOT NULL,itemThumbnailIndexedPath TEXT NOT NULL,itemPaletteThumbnail TEXT NOT NULL,displayColorList TEXT NOT NULL,colorNumber TEXT NOT NULL,itemName TEXT NOT NULL,itemLongName TEXT NOT NULL,isIntensitySliderHidden INTEGER DEFAULT 0,isRadiusSliderHidden INTEGER DEFAULT 0,isHiddenIntensitySliderHidden INTEGER DEFAULT 0,isShineIntensitySliderHidden TEXT,UNIQUE (skuGuid,itemGuid));"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE ProductMaskList (_id INTEGER PRIMARY KEY AUTOINCREMENT,productGuid TEXT,lastModified INTEGER,featureType TEXT,UNIQUE (productGuid) ON CONFLICT REPLACE);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE ProductMaskDetail (_id INTEGER PRIMARY KEY AUTOINCREMENT,productGuid TEXT,skuGuid TEXT,featureType TEXT,UNIQUE (productGuid,skuGuid) ON CONFLICT REPLACE);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE DownloadImage (_id INTEGER PRIMARY KEY AUTOINCREMENT,url TEXT,path TEXT,referenceId TEXT,size INTEGER DEFAULT 0,UNIQUE (url,referenceId) ON CONFLICT REPLACE);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "[createNewTables] end"

    invoke-static {v10, v11, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v1, "[createNewTableIndexes] start"

    invoke-static {v10, v11, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x5

    new-array v1, v12, [Ljava/lang/Iterable;

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$j;->a:Ljava/util/List;

    const/4 v13, 0x0

    aput-object v2, v1, v13

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$h;->a:Ljava/util/List;

    const/4 v14, 0x1

    aput-object v2, v1, v14

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$d;->a:Ljava/util/List;

    const/4 v15, 0x2

    aput-object v2, v1, v15

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$c;->a:Ljava/util/List;

    aput-object v2, v1, v10

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$a;->a:Ljava/util/List;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Iterable;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->h([Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "[createNewTableIndexes] end"

    invoke-static {v10, v11, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v1, "JsonString"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    const-string v1, "SkuCache"

    move-object v4, v3

    const/4 v3, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object/from16 v16, v6

    const/4 v6, 0x0

    move/from16 p0, v13

    move-object/from16 v13, v16

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_1
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v4, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;

    invoke-virtual {v3, v2, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;

    new-instance v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;

    invoke-direct {v3, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;-><init>(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget-wide v5, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "skuId"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "skuGuid"

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "name"

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "longName"

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->e:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "isDefault"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "vendor"

    iget-object v7, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->g:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "startDate"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v6, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->i:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "endDate"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "featureType"

    iget-object v7, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->b:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "featureSubtype"

    iget-object v7, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->c:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->j:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "lastModified"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "info"

    iget-object v7, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->l:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->k:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "customerId"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "isDeleted"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "extraInfo"

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->m:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "hidden"

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->n:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "Sku"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    move-wide/from16 v16, v6

    const-string v6, "[insertOrReplace] failed. id: "

    if-gez v8, :cond_1

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v11, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    :goto_2
    invoke-static {v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->a(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const-string v8, "cacheCleanerDeleteById"

    const-class v12, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->t:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    filled-new-array {v7, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v12, v8, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->b(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object/from16 v20, v1

    :cond_3
    :goto_3
    const/4 v2, 0x5

    goto/16 :goto_9

    :cond_4
    invoke-static {v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->c(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->valueOfSkuFeatureType(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v3

    sget-object v18, Lcom/perfectcorp/perfectlib/hc/database/ymk/ae;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aget v5, v18, v19

    if-eq v5, v14, :cond_5

    if-eq v5, v15, :cond_5

    if-eq v5, v10, :cond_5

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->isAccessory()Z

    move-result v3

    goto :goto_4

    :cond_5
    move v3, v14

    :goto_4
    invoke-static {v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->a(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;

    const-string v14, "GUID"

    if-nez v3, :cond_6

    const-string v15, "PaletteInfo"

    move-object/from16 v20, v1

    iget-object v1, v10, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->itemGUID:Ljava/lang/String;

    invoke-static {v0, v15, v14, v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_6
    move-object/from16 v20, v1

    :goto_6
    if-eqz v3, :cond_8

    const-string v1, "PatternInfo"

    iget-object v15, v10, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;->itemGUID:Ljava/lang/String;

    invoke-static {v0, v1, v14, v15}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    sget-boolean v1, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->t:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    filled-new-array {v7, v4}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v12, v8, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->b(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    new-instance v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->b(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14, v10}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$c;)V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$g;->a()Landroid/content/ContentValues;

    move-result-object v1

    :try_start_2
    const-string v10, "SkuItem"

    move-object v15, v2

    const/4 v14, 0x0

    invoke-virtual {v0, v10, v14, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v10, v1, v16

    if-gez v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v11, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_9
    const/4 v2, 0x5

    :goto_7
    move-object v2, v15

    move-object/from16 v1, v20

    const/4 v10, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x2

    goto :goto_5

    :goto_8
    invoke-static {v11, v9, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_9
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_b

    :cond_a
    move v12, v2

    move-object/from16 v1, v20

    const/4 v10, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x2

    goto/16 :goto_1

    :goto_a
    invoke-static {v11, v9, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_b
    :goto_b
    return-void
.end method
