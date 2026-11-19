.class final Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;
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
    c = "com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel$renameWatch$1"
    f = "WatchSettingsViewModel.kt"
    l = {
        0x35,
        0x36,
        0x37
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->c:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    :cond_3
    move-object v1, p1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v5, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->d:Lcom/vuitton/android/domain/usecase/connectivity/watch/RenameWatchUseCase;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/RenameWatchParam;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->f:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/RenameWatchParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->c:I

    invoke-virtual {p1, v1, p0}, Lcom/vuitton/android/domain/usecase/connectivity/watch/RenameWatchUseCase;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/watch/RenameWatchParam;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, v1, Lkotlin/Result$Failure;

    if-nez p1, :cond_5

    move-object p1, v1

    check-cast p1, Lkotlin/Unit;

    new-instance p1, Lo51;

    const/4 v4, 0x5

    invoke-direct {p1, v4}, Lo51;-><init>(I)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->b:Ljava/lang/Object;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->c:I

    sget v3, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->l:I

    invoke-virtual {v5, p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->zc(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v3, Lp11;

    const/16 v4, 0x10

    invoke-direct {v3, p1, v4}, Lp11;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->b:Ljava/lang/Object;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;->c:I

    sget p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->l:I

    invoke-virtual {v5, p0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->zc(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
