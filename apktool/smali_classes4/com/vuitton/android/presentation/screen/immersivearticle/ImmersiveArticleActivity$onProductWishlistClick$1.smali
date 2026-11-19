.class final synthetic Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onProductWishlistClick$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;)V
    .locals 6

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onProductWishlistClick$1;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onProductWishlistClick$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    const-string v4, "onProductWishlistClick$handleClick(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;)V"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v3, "handleClick"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onProductWishlistClick$1;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onProductWishlistClick$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->P(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
