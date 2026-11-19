.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao<",
        "Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;

    const-string v1, "ProductMaskList"

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/Contract$ProductMaskList;->b:[Ljava/lang/String;

    const-string v3, "ProductMaskInfoDao"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;

    return-void
.end method


# virtual methods
.method public final l(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 3

    const-string p0, "productGuid"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "lastModified"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "featureType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;-><init>()V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;->a:Ljava/lang/String;

    iput-wide v0, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;->b:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;->c:Ljava/lang/String;

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;

    invoke-direct {p0, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;)V

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 2

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "productGuid"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "lastModified"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "featureType"

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
