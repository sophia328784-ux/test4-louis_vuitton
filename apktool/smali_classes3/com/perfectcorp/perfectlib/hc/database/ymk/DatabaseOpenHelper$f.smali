.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$f;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# virtual methods
.method public final h()Ljava/lang/String;
    .locals 0

    const-string p0, "Live"

    return-object p0
.end method

.method public final j(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/database/Contract$DatabaseTable;->values()[Lcom/perfectcorp/perfectlib/hc/database/Contract$DatabaseTable;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/hc/database/Contract$DatabaseTable;->createTableCommand:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/hc/database/Contract$DatabaseTable;->createIndexCommand:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->b:Z

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->q()V

    return-void
.end method

.method public final m(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$c;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$c;-><init>()V

    throw p0
.end method
