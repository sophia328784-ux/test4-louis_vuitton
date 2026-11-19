.class public final Lcom/perfectcorp/perfectlib/ShadeFinderProduct;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ProductInfo;

.field public final b:Lcom/perfectcorp/perfectlib/SkuInfo;

.field public final c:Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;->c:Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;

    return-void
.end method


# virtual methods
.method public final getProductGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ProductInfo;->getGuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSkuGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/SkuInfo;->getGuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getType()Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;->c:Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "ShadeFinderProduct"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "ProductGuid"

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;->getProductGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "SkuGuid"

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;->getSkuGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Type"

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;->getType()Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
