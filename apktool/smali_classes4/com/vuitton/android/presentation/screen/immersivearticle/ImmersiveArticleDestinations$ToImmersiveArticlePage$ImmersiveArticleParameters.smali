.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImmersiveArticleParameters"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;",
        "",
        "",
        "articleKey",
        "articleType",
        "redirectionKey",
        "redirectionArticleKey",
        "redirectionLookKey",
        "",
        "isDeepInHierarchy",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V",
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

.field public final e:Ljava/lang/String;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->a:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->b:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->c:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->d:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->e:Ljava/lang/String;

    .line 47
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    sget-object p2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->IMMERSIVE_ARTICLE:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-virtual {p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->b()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x4

    const/4 p8, 0x0

    if-eqz p2, :cond_1

    move-object v3, p8

    goto :goto_0

    :cond_1
    move-object v3, p3

    :goto_0
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    move-object v4, p8

    goto :goto_1

    :cond_2
    move-object v4, p4

    :goto_1
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_3

    move-object v5, p8

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v6, p6

    goto :goto_3

    :cond_3
    move-object v5, p5

    goto :goto_2

    :goto_3
    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->f:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->f:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->e:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->f:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", articleType="

    const-string v1, ", redirectionKey="

    const-string v2, "ImmersiveArticleParameters(articleKey="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redirectionArticleKey="

    const-string v2, ", redirectionLookKey="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDeepInHierarchy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->f:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
