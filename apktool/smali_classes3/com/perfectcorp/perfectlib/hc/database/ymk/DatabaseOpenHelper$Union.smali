.class public Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Union"
.end annotation


# static fields
.field public static final j:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;


# instance fields
.field public h:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$a;

.field public i:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/Globals;->a:Lcom/perfectcorp/perfectlib/ymk/Globals;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;-><init>(Lcom/perfectcorp/perfectlib/ymk/Globals;Ljava/lang/String;Landroid/database/DatabaseErrorHandler;)V

    new-instance v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$a;

    new-instance v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/b;

    invoke-direct {v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$b;-><init>()V

    const-string v4, "youcammakeup.sqlite"

    invoke-direct {v2, v1, v4, v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;-><init>(Lcom/perfectcorp/perfectlib/ymk/Globals;Ljava/lang/String;Landroid/database/DatabaseErrorHandler;)V

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->h:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$a;

    new-instance v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$f;

    new-instance v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/c;

    invoke-direct {v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$b;-><init>()V

    const-string v4, "youcammakeup-live.sqlite"

    invoke-direct {v2, v1, v4, v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;-><init>(Lcom/perfectcorp/perfectlib/ymk/Globals;Ljava/lang/String;Landroid/database/DatabaseErrorHandler;)V

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->i:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->b:Z

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->j:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;

    return-void
.end method

.method public static r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ATTACH DATABASE \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/Globals;->a:Lcom/perfectcorp/perfectlib/ymk/Globals;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' AS \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->h:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->i:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$f;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    const-string p0, "Union"

    return-object p0
.end method

.method public final j(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final m(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->h:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$a;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$a;->o()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->i:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$f;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->o()V

    const-string p0, "youcammakeup.sqlite"

    const-string v0, "BuiltIn"

    invoke-static {p1, p0, v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "youcammakeup-live.sqlite"

    const-string v0, "Live"

    invoke-static {p1, p0, v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/database/Contract$DatabaseTable;->values()[Lcom/perfectcorp/perfectlib/hc/database/Contract$DatabaseTable;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/hc/database/Contract$DatabaseTable;->tableName:Ljava/lang/String;

    const-string v3, "SELECT * FROM \'Live\'.\'"

    const-string v4, "\'"

    invoke-static {v3, v2, v4}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "SELECT * FROM \'BuiltIn\'.\'"

    invoke-static {v5, v2, v4}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\' AS "

    const-string v6, " UNION ALL "

    const-string v7, "CREATE TEMP VIEW \'"

    invoke-static {v7, v2, v5, v3, v6}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->h:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$a;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->p()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->i:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$f;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->p()V

    invoke-super {p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->p()V

    return-void
.end method
