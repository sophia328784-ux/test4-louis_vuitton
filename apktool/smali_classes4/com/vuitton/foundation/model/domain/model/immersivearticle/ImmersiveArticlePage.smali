.class public final Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u00020\u0001BI\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;",
        "",
        "",
        "key",
        "title",
        "",
        "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;",
        "sections",
        "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;",
        "audio",
        "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;",
        "banner",
        "backgroundColor",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;Ljava/lang/String;)V",
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
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;

.field public final e:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;",
            ">;",
            "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;",
            "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->e:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->e:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->e:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->f:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->c:Ljava/util/List;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->e:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->f:Ljava/lang/String;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", sections="

    const-string v2, "ImmersiveArticlePage(key="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->d:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", banner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->e:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
