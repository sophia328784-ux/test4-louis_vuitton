.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/o;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p0, 0x3

    const-string v0, "DatabaseUpgrade_1_31"

    const-string v1, "[createNewTables] start"

    invoke-static {p0, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v1, "CREATE TABLE TutorialInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,guid TEXT NOT NULL,type TEXT,payload TEXT,expiredDate TEXT,lastModified INTEGER,isDownloaded INTEGER DEFAULT 0,UNIQUE (guid) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "[createNewTables] end"

    invoke-static {p0, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v1, "[createNewTableIndexes] start"

    invoke-static {p0, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/an$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "[createNewTableIndexes] end"

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
