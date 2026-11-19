.class final Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1$WhenMappings;
    }
.end annotation

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
    c = "com.vuitton.android.presentation.screen.webview.WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1"
    f = "WebViewFragment.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1;->b:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1;->d:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1;->d:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1;->b:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1;->d:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1;->b:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Q()Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewBottomSheetOpenEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnDiamondEngravingWebViewBottomSheetOpenEvent;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewBottomSheetOpenEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnPerfumeEngravingWebViewBottomSheetOpenEvent;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewBottomSheetOpenEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnHotstampingWebViewBottomSheetOpenEvent;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewBottomSheetOpenEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnBeautyEngravingWebViewBottomSheetOpenEvent;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewBottomSheetOpenEvent;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$OnMyMonogramWebViewBottomSheetOpenEvent;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    :goto_0
    :pswitch_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
