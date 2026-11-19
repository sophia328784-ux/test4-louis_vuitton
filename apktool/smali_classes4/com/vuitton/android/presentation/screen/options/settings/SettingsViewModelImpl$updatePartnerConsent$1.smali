.class final Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$updatePartnerConsent$1;
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
    c = "com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl$updatePartnerConsent$1"
    f = "SettingsViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$updatePartnerConsent$1;->b:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$updatePartnerConsent$1;->c:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$updatePartnerConsent$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$updatePartnerConsent$1;->b:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$updatePartnerConsent$1;->c:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$updatePartnerConsent$1;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$updatePartnerConsent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$updatePartnerConsent$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$updatePartnerConsent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ConsentToggleEvent;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$updatePartnerConsent$1;->c:Z

    invoke-direct {p1, v0}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel$ConsentToggleEvent;-><init>(Z)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$updatePartnerConsent$1;->b:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->cc(Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsTrackingUiModel;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0x5f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->a(Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Landroidx/compose/runtime/MutableState;)Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
