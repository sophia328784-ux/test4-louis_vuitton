.class final Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

.field public final synthetic c:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic g:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/LazyListState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;->c:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;->f:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;->g:Landroidx/compose/foundation/lazy/LazyListState;

    iput p7, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;->h:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;->c:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface {v3, v2}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1$1$1;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;->h:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;->g:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1$1$1;-><init>(ILandroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;->f:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
