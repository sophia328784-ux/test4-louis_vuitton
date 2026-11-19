.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/u;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p0, "CREATE TABLE CacheStrategyForCacheFirstThenUpdate (Guid TEXT PRIMARY KEY NOT NULL,Type TEXT NOT NULL,JsonString TEXT NOT NULL,State INTEGER DEFAULT 0);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
