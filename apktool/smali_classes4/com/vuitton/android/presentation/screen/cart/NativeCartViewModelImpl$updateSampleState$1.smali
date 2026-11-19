.class final Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$updateSampleState$1"
    f = "NativeCartViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;ZLcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;->c:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;->d:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;->c:Z

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;->d:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;ZLcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;->c:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;->d:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SamplesSelected;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SamplesSelected;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    :cond_1
    :goto_0
    invoke-virtual {p1, p0, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Ec(Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
