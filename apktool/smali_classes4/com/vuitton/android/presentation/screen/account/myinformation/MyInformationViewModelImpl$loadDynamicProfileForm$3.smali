.class final Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3$WhenMappings;
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
    c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$loadDynamicProfileForm$3"
    f = "MyInformationViewModelImpl.kt"
    l = {
        0xd2,
        0xd4
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;->d:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;->e:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;->d:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;->e:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v10, p0

    iget-object v12, v10, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    iget-object v13, v12, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v14, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v10, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v15

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v13, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iput v2, v10, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;->b:I

    invoke-static {v12, v10}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object v0, v12, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    new-instance v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3$1$1;

    invoke-direct {v2, v12, v15}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3$1$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lwd0;

    const/4 v4, 0x0

    iget-object v5, v10, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;->e:Lkotlin/jvm/functions/Function1;

    invoke-direct {v3, v5, v12, v4}, Lwd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v6, Lvd0;

    const/4 v4, 0x3

    invoke-direct {v6, v12, v4}, Lvd0;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;I)V

    new-instance v9, Lba0;

    const/16 v4, 0x1c

    invoke-direct {v9, v4}, Lba0;-><init>(I)V

    iput v1, v10, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;->b:I

    move-object v1, v2

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3;->d:Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0xd8

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_5

    :goto_1
    return-object v14

    :cond_4
    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, v0, Lkotlin/Result$Failure;

    const-string v2, "openMyInformationMonitor"

    if-nez v1, :cond_7

    move-object v1, v0

    check-cast v1, Lkotlin/Unit;

    iget-object v1, v12, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->H:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    goto :goto_3

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v15

    :cond_7
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, v12, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v3, "MyInformationViewModelImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4, v15}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v12, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->H:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v1, :cond_8

    new-instance v2, Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$OpenMyInformationError;

    invoke-direct {v2, v0}, Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$OpenMyInformationError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    invoke-interface {v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    goto :goto_4

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v15

    :cond_9
    :goto_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v13, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
