.class final Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$2$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$2$1$2;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$2$1$2;->c:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$2$1$2;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAssetUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAssetUiModel;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$2$1$2;->c:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
