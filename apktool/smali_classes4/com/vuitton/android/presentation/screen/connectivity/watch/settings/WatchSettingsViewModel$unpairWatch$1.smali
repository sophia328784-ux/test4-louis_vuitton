.class final Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Exception;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;"
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
    c = "com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel$unpairWatch$1"
    f = "WatchSettingsViewModel.kt"
    l = {
        0x26
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Exception;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lkp;

    const/4 v2, 0x5

    invoke-direct {p1, v2, v0}, Lkp;-><init>(ILjava/lang/Exception;)V

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;->c:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;->b:I

    sget v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->l:I

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    invoke-virtual {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->zc(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
