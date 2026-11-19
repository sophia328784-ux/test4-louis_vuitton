.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/b;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao<",
        "Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/b;

    const-string v1, "ProductMaskDetail"

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/Contract$ProductMaskDetail;->b:[Ljava/lang/String;

    const-string v3, "ProductMaskDetailDao"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/b;

    return-void
.end method


# virtual methods
.method public final l(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    const-string p0, "productGuid"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "skuGuid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lastModified"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v3, "featureType"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;

    invoke-direct {v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;-><init>()V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p0, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;->b:Ljava/lang/String;

    iput-wide v1, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;->c:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;->d:Ljava/lang/String;

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a;

    invoke-direct {p0, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;)V

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 2

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a;

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "productGuid"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "skuGuid"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "lastModified"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "featureType"

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
