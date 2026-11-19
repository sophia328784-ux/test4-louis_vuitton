.class final Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "bottomSheet",
        "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction;"
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
    c = "com.vuitton.android.presentation.screen.pdp.components.PdpScreenKt$PdpScreen$2$1$1"
    f = "PdpScreen.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$2$1$1;->c:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$2$1$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$2$1$1;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p2, p0}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$2$1$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$2$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$2$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$2$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$AddedToCart;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpScreenKt$PdpScreen$2$1$1;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$AddToCart;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$AddedToCart;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$AddedToCart;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    invoke-direct {p1, v0}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$AddToCart;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$CrossSellAddToCart;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CrossSellAddToCart;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$CrossSellAddToCart;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$CrossSellAddToCart;->a:Lkotlinx/collections/immutable/ImmutableList;

    invoke-direct {p1, v0}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CrossSellAddToCart;-><init>(Lkotlinx/collections/immutable/ImmutableList;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$CameraSettings;->a:Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$CameraSettings;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CameraPermission;->a:Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CameraPermission;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$VtoConsent;->a:Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$VtoConsent;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$UserConsentVtoPopIn;->a:Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$UserConsentVtoPopIn;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$ServerOverload;

    if-eqz p1, :cond_4

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$ServerOverload;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$ServerOverload;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$ServerOverload;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$ServerOverload;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$ServerOverload;->c:Ljava/lang/String;

    invoke-direct {p1, v1, v2, v0}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$ServerOverload;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$EditCustomization;

    if-eqz p1, :cond_5

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$EditCustomization;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$EditCustomization;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$EditCustomization;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$EditCustomization;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    invoke-direct {p1, v1, v0}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$EditCustomization;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$MultipleCustomizations;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$MultipleCustomizations;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$MultipleCustomizations;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$MultipleCustomizations;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$MultipleCustomizations;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$MultipleCustomizations;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    invoke-direct {p1, v1, v2, v0}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$MultipleCustomizations;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_6
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
