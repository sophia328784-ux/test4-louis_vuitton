.class final synthetic Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$6$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;",
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


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->H:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->M()Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->J:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->P(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onProductWishlistClick$1;

    invoke-direct {v0, p1, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onProductWishlistClick$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->q:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnLaunchAuthentication;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    invoke-direct {p1, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnLaunchAuthentication;-><init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;)V

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->O(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
