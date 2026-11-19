.class public final Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;",
        "theme",
        "",
        "title",
        "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;",
        "cta",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;)V",
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->a:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->a:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->a:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->a:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImmersiveArticleBanner(theme="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->a:Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleBanner;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleCta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
