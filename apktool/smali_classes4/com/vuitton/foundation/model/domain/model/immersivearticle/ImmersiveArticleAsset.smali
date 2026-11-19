.class public final Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;",
        "image",
        "Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;",
        "video",
        "",
        "caption",
        "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;",
        "ratio",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)V",
        "domain"
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

.field public final b:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImmersiveArticleAsset(image="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
