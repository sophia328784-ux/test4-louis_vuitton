.class public final Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;",
        "",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "productSku",
        "Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;",
        "detail",
        "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;",
        "product",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;

.field public final c:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    move-object p3, p5

    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;

    .line 13
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->c:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->c:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->c:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->c:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HotspotContentUiModel(productSku="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", detail="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", product="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->c:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
