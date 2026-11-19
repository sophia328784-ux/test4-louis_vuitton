.class final Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$3$1;
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
    c = "com.vuitton.android.presentation.screen.account.lvpass.components.QRCodeComposableKt$QRCodeComposable$3$1"
    f = "QRCodeComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode2D;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode2D;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$3$1;->b:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$3$1;->c:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode2D;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$3$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$3$1;->b:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$3$1;->c:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode2D;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$3$1;-><init>(Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode2D;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$3$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/tracking/PassActions$LVPass;->DISPLAYED:Lcom/vuitton/android/presentation/tracking/PassActions$LVPass;

    sget-object v0, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt$QRCodeComposable$3$1;->b:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->c(Lcom/vuitton/android/presentation/tracking/PassActions;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
