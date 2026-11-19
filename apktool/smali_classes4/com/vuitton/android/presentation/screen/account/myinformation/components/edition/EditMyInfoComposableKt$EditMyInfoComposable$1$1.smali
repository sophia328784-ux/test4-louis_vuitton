.class final Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;
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
    c = "com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditMyInfoComposableKt$EditMyInfoComposable$1$1"
    f = "EditMyInfoComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

.field public final synthetic d:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;->b:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;->d:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;->d:Landroidx/compose/runtime/State;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;->d:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;

    iget-boolean v0, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->g:Z

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;->f:Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    sget-object p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditMyInfoScreenMissingPhoneNumber;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditMyInfoScreenMissingPhoneNumber;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    sget-object p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditMyInfoScreenSmsMarketingDisclaimer;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditMyInfoScreenSmsMarketingDisclaimer;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditMyInfoScreen;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditMyInfoScreen;

    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt$EditMyInfoComposable$1$1;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;->m5(Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
