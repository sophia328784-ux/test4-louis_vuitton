.class public abstract Lcom/perfectcorp/perfectlib/hc/database/Contract$ProductMaskList;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProductMaskList"
.end annotation


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "index_product_guid"

    const-string v1, "ProductMaskList"

    const-string v2, "productGuid"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "index_feature_type"

    const-string v4, "featureType"

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$ProductMaskList;->a:Ljava/util/List;

    const-string v0, "lastModified"

    filled-new-array {v2, v0, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$ProductMaskList;->b:[Ljava/lang/String;

    return-void
.end method
