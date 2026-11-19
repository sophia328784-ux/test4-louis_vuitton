.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao<",
        "Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;

    const-string v1, "BackgruondInfo"

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/Contract$BackgroundInfo;->b:[Ljava/lang/String;

    const-string v3, "BackgroundInfoDao"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;

    return-void
.end method


# virtual methods
.method public final l(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 7

    const-string p0, "guid"

    invoke-static {p1, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "payload"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "usageType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expiredDate"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rootFolder"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "version"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "data"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "isDeleted"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;

    invoke-direct {v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;-><init>()V

    iput-object p0, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->a:Ljava/lang/String;

    iput-object v0, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/c;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/background/c;

    move-result-object p0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/c;->b:Ljava/lang/String;

    iput-object p0, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->c:Ljava/lang/String;

    iput-object v2, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->e:Ljava/lang/String;

    iput-object v3, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->f:Ljava/lang/String;

    iput v4, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->d:I

    iput-object v5, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->g:Ljava/lang/String;

    iput-boolean p1, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->h:Z

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    invoke-direct {p0, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;)V

    return-object p0
.end method

.method public final synthetic n(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 2

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "guid"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->guid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "payload"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->payload:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->b()Lcom/perfectcorp/perfectlib/ph/database/ymk/background/c;

    move-result-object v0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/c;->b:Ljava/lang/String;

    const-string v1, "usageType"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "expiredDate"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->expiredDate:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rootFolder"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->rootFolder:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->version:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "data"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->data:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->isDeleted:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "isDeleted"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public final o(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 13

    const-string v0, "AND isDeleted=0"

    const-string v1, "guid"

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->c:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->m(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    const-string p1, "BackgroundInfoDao"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getByBackgroundGuids] failed. guids="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method
