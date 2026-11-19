.class final Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$onCtaClicked$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$onCtaClicked$1$1;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$onCtaClicked$1$1;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x79c9aa1e

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$onCtaClicked$1$1;->c:Lkotlin/jvm/functions/Function1;

    if-eq v1, v2, :cond_3

    const v2, 0x29c4697e

    if-eq v1, v2, :cond_1

    const v2, 0x4f6155be    # 3.7804928E9f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "video-cta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$onCtaClicked$1$1;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "deep-link-cta"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->j:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    if-eqz p0, :cond_5

    new-instance p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnContributionLinkClick;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnContributionLinkClick;-><init>(Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string p0, "look-cta"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnLookModuleCtaClick;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnLookModuleCtaClick;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;)V

    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
