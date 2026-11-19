.class public final Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/b;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao<",
        "Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/b;

    const-string v1, "SkinCare3ProductRelation"

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkinCare3ProductRelation;->b:[Ljava/lang/String;

    const-string v3, "SkinCare3ProductRelationDao"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/b;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/b;

    return-void
.end method


# virtual methods
.method public final l(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    const-string p0, "ProductId"

    invoke-static {p1, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReferencedId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d$a;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d$a;->b:Ljava/lang/String;

    new-instance p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d;-><init>(Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d$a;)V

    return-object p0
.end method

.method public final synthetic n(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 2

    check-cast p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d;

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "ProductId"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ReferencedId"

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
