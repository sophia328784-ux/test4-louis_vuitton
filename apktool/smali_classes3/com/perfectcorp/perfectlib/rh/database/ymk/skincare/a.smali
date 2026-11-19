.class public final Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao<",
        "Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;

    const-string v1, "SkinCare3Product"

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkinCare3Product;->b:[Ljava/lang/String;

    const-string v3, "SkinCareProductDao"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;

    return-void
.end method


# virtual methods
.method public final l(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 3

    const-string p0, "ProductId"

    invoke-static {p1, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Payload"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LastModified"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    new-instance p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;->b:Ljava/lang/String;

    iput-wide v1, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;->c:J

    new-instance p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;-><init>(Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;)V

    return-object p0
.end method

.method public final synthetic n(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 2

    check-cast p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "ProductId"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Payload"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "LastModified"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public final o(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProductId IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->g(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 p2, 0x0

    :try_start_0
    const-string v2, "SkinCare3Product"

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkinCare3Product;->b:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->m(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    const-string p1, "SkinCareProductDao"

    const-string v0, "getProductsById"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {p2}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method
