.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;",
        "",
        "",
        "key",
        "title",
        "subtitle",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "sku",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;",
        "skuType",
        "",
        "Lcom/vuitton/android/presentation/model/common/AssetUiModel;",
        "assets",
        "",
        "isShopTheLook",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;Ljava/util/List;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;

.field public final f:Ljava/util/List;

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;Ljava/util/List;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->f:Ljava/util/List;

    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->g:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->d:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->f:Ljava/util/List;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->g:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->g:Z

    if-eq p0, p1, :cond_8

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->f:Ljava/util/List;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->g:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v0, ", title="

    const-string v1, ", subtitle="

    const-string v2, "ImmersiveArticleLookCardUiModel(key="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sku="

    const-string v2, ", skuType="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isShopTheLook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->g:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
