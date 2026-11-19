.class final Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;
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
    c = "com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl$patchUserConsents$1"
    f = "SettingsViewModelImpl.kt"
    l = {
        0xb3
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;->d:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;->e:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;->d:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;->e:Z

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;->d:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-boolean v5, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;->e:Z

    if-eqz v5, :cond_2

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x3e8

    :goto_0
    invoke-static {v2, v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->j(Lkotlinx/coroutines/flow/Flow;J)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v6, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;

    invoke-direct {v6, p1, v5, v0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;-><init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;ZLkotlinx/coroutines/CoroutineScope;)V

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;->c:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1;->b:I

    invoke-interface {v2, v6, p0}, Lkotlinx/coroutines/flow/Flow;->f(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
