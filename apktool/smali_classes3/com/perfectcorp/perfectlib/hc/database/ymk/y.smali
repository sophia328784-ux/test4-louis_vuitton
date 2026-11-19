.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/y;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a;->h()Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    new-instance v0, Lfx0;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lfx0;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    return-void
.end method
