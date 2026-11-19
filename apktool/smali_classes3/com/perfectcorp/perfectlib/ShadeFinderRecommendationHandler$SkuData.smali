.class final Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkuData"
.end annotation


# instance fields
.field public final transient a:Lcom/perfectcorp/perfectlib/ProductInfo;

.field public final transient b:Lcom/perfectcorp/perfectlib/SkuInfo;

.field public final transient c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;

.field public final transient d:Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;

.field distance:F

.field order:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "SkuData"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ProductInfo;->e:Ljava/lang/String;

    const-string v2, "skuGuid"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    const-string v2, "skuItemGuid"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->order:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "order"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->distance:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "distance"

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
