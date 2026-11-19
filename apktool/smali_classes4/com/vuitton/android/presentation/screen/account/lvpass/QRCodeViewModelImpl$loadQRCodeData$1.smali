.class final Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;
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
    c = "com.vuitton.android.presentation.screen.account.lvpass.QRCodeViewModelImpl$loadQRCodeData$1"
    f = "QRCodeViewModelImpl.kt"
    l = {
        0x2b,
        0x2e,
        0x39,
        0x3a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;

.field public d:Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;

.field public e:Landroid/graphics/Bitmap;

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->h:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->h:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;-><init>(Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->h:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->g:I

    const-string v4, "type"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->e:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->c:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_1
    iget v3, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->f:I

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->d:Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->c:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v11, v3

    move-object v3, v7

    move-object v7, v6

    move-object v6, p1

    move-object p1, v10

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    move-object p0, v10

    goto/16 :goto_8

    :cond_2
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->c:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v12, v3

    move-object v3, p1

    move-object p1, v12

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v10, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$DisplayLvPass;->a:Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Action$DisplayLvPass;

    invoke-interface {p1, v3, v10}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    sget-object v3, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Loading;->a:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Loading;

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/account/GetPassUseCase;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v8, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->g:I

    invoke-virtual {v3, p0}, Lcom/vuitton/android/domain/usecase/account/GetPassUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_5

    goto/16 :goto_4

    :cond_5
    :goto_0
    sget-object v10, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v10, v3, Lkotlin/Result$Failure;

    if-nez v10, :cond_e

    :try_start_3
    check-cast v3, Lcom/vuitton/foundation/model/domain/model/pass/Pass;

    instance-of v10, v3, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;

    const/4 v11, 0x0

    if-eqz v10, :cond_8

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;->a:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->c:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;

    iput-object v9, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->d:Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;

    iput v11, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->f:I

    iput v7, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->g:I

    sget-object v5, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v5, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v6, Lcom/vuitton/android/presentation/screen/account/lvpass/BitmapUtils$fromInputStream$2;

    invoke-direct {v6, v3, v9}, Lcom/vuitton/android/presentation/screen/account/lvpass/BitmapUtils$fromInputStream$2;-><init>(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p0, v2, :cond_6

    goto/16 :goto_4

    :cond_6
    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v0

    :goto_1
    :try_start_4
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_7

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode2D;

    invoke-direct {v3, p1}, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode2D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const-string p1, "lvpass"

    invoke-interface {p0, p1, v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_6

    :cond_7
    new-instance p1, Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass2dError;

    invoke-direct {p1, v9, v8, v9}, Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass2dError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    move-object v12, p1

    move-object p1, p0

    move-object p0, v12

    goto/16 :goto_8

    :catchall_2
    move-exception p0

    goto :goto_2

    :cond_8
    :try_start_5
    instance-of v7, v3, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;

    if-eqz v7, :cond_d

    move-object v7, v3

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;->a:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->c:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;

    move-object v10, v3

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;

    iput-object v10, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->d:Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;

    iput v11, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->f:I

    iput v6, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->g:I

    sget-object v6, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v6, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v10, Lcom/vuitton/android/presentation/screen/account/lvpass/BitmapUtils$fromInputStream$2;

    invoke-direct {v10, v7, v9}, Lcom/vuitton/android/presentation/screen/account/lvpass/BitmapUtils$fromInputStream$2;-><init>(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v10, p0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_9

    goto :goto_4

    :cond_9
    move-object v7, v3

    move-object v3, v0

    :goto_3
    check-cast v6, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_c

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;->b:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->c:Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;

    iput-object v9, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->d:Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->e:Landroid/graphics/Bitmap;

    iput v11, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->f:I

    iput v5, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl$loadQRCodeData$1;->g:I

    sget-object v5, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v5, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v10, Lcom/vuitton/android/presentation/screen/account/lvpass/BitmapUtils$fromInputStream$2;

    invoke-direct {v10, v7, v9}, Lcom/vuitton/android/presentation/screen/account/lvpass/BitmapUtils$fromInputStream$2;-><init>(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5, v10, p0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne p0, v2, :cond_a

    :goto_4
    return-object v2

    :cond_a
    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v6

    :goto_5
    :try_start_6
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_b

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v5, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode3D;

    invoke-direct {v5, v2, p1}, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Success$QrCode3D;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-interface {v3, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const-string p1, "speedy"

    invoke-interface {p0, p1, v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_6
    new-instance v2, Lkotlin/Result;

    invoke-direct {v2, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    :goto_7
    move-object p1, p0

    move-object v3, v2

    goto :goto_9

    :cond_b
    new-instance p1, Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass3dError;

    invoke-direct {p1, v9, v8, v9}, Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass3dError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_c
    :try_start_7
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass3dError;

    invoke-direct {p0, v9, v8, v9}, Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass3dError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_8
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_e
    :goto_9
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_13

    instance-of v2, p0, Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass3dError;

    if-eqz v2, :cond_f

    new-instance v2, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPass3dError;

    invoke-direct {v2, p0}, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPass3dError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    goto :goto_a

    :cond_f
    instance-of v2, p0, Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass2dError;

    if-eqz v2, :cond_10

    new-instance v2, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPass2dError;

    invoke-direct {v2, p0}, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPass2dError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    goto :goto_a

    :cond_10
    instance-of v2, p0, Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPassMultipartError;

    if-eqz v2, :cond_11

    new-instance v2, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPassMultipartError;

    invoke-direct {v2, p0}, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPassMultipartError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    goto :goto_a

    :cond_11
    new-instance v2, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPassLoadingError;

    invoke-direct {v2, p0}, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$DisplayLvPassLoadingError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :goto_a
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    sget-object v2, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;->g:Ljava/lang/String;

    const-string v3, "error loading qr code data"

    invoke-interface {v0, v2, v3, p0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Error;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_12

    const-string p0, "Unknown error"

    :cond_12
    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState$Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_13
    invoke-interface {p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
