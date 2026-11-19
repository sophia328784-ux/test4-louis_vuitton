.class public final Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;
.super Lcom/vuitton/android/presentation/screen/pdp/ar/Hilt_ProductArActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "<init>",
        "()V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final D:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$Companion;


# instance fields
.field public A:Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;

.field public final B:Lkotlinx/coroutines/internal/ContextScope;

.field public C:Lkotlinx/coroutines/internal/ContextScope;

.field public p:Lcom/vuitton/foundation/logger/Logger;

.field public q:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final r:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final s:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final t:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final u:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final v:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final w:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final x:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public z:Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/pdp/ar/Hilt_ProductArActivity;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v1, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v4

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->s:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v2, v3, v1, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v4

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->t:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v2, v3, v1, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v4

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->u:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v2, v3, v1, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v4

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->v:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v2, v3, v1, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v4

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->w:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v2, v3, v1, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->x:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->B:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method

.method public static final H(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->h:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->h:I

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;

    invoke-direct {v2, v1, v0}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v0, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->f:Ljava/lang/Object;

    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->h:I

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_4

    if-eq v2, v12, :cond_3

    if-eq v2, v11, :cond_2

    if-eq v2, v10, :cond_1

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v13

    :cond_1
    iget-object v1, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->e:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    iget-object v2, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->d:Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;

    iget-object v3, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->c:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    iget-object v4, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->b:Lcom/vuitton/android/presentation/ar/filament/Filament;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_2
    iget-object v2, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->e:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    iget-object v3, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->d:Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;

    iget-object v4, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->c:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    iget-object v5, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->b:Lcom/vuitton/android/presentation/ar/filament/Filament;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    move-object v14, v5

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_b

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput v4, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->h:I

    invoke-static {v2, v8}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_7

    goto/16 :goto_7

    :cond_7
    :goto_2
    iput v3, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->h:I

    invoke-virtual {v1, v8}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->J(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_8

    goto/16 :goto_7

    :cond_8
    :goto_3
    iput v12, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->h:I

    invoke-virtual {v1, v8}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->K(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_9

    goto/16 :goto_7

    :cond_9
    :goto_4
    new-instance v14, Lcom/vuitton/android/presentation/ar/filament/Filament;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->A:Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;

    const-string v2, "binding"

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;->d:Landroid/view/SurfaceView;

    invoke-direct {v14, v1, v0}, Lcom/vuitton/android/presentation/ar/filament/Filament;-><init>(Landroid/content/Context;Landroid/view/SurfaceView;)V

    :try_start_2
    new-instance v5, Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->A:Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;->d:Landroid/view/SurfaceView;

    invoke-direct {v5, v1, v14, v0}, Lcom/vuitton/android/presentation/ar/arcore/ArCore;-><init>(Landroid/app/Activity;Lcom/vuitton/android/presentation/ar/filament/Filament;Landroid/view/View;)V

    iget-object v0, v5, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->b:Lcom/vuitton/android/presentation/ar/filament/Filament;

    new-instance v15, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;

    invoke-direct {v15, v1, v0}, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;-><init>(Landroid/content/Context;Lcom/vuitton/android/presentation/ar/filament/Filament;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    :try_start_3
    new-instance v2, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;

    invoke-direct {v2, v1, v0}, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;-><init>(Landroid/content/Context;Lcom/vuitton/android/presentation/ar/filament/Filament;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    :try_start_4
    new-instance v4, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    :try_start_5
    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->q:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    if-eqz v3, :cond_f

    :try_start_6
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    if-eqz v0, :cond_a

    :try_start_7
    const-string v6, "SKU"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto/16 :goto_d

    :cond_a
    move-object v0, v13

    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v6, v5, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->b:Lcom/vuitton/android/presentation/ar/filament/Filament;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    const/4 v7, 0x0

    move-object/from16 v16, v2

    move-object v2, v1

    move-object v1, v4

    move-object v4, v0

    :try_start_9
    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;-><init>(Landroid/content/Context;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Ljava/lang/String;Lcom/vuitton/android/presentation/ar/arcore/ArCore;Lcom/vuitton/android/presentation/ar/filament/Filament;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    move-object v6, v5

    :try_start_a
    new-instance v7, Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;

    new-instance v0, Lk3;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    const/16 v5, 0x1c

    move-object v4, v1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v1, p0

    :try_start_b
    invoke-direct/range {v0 .. v5}, Lk3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object v2, v1

    move-object v1, v4

    :try_start_c
    invoke-direct {v7, v6, v0}, Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;-><init>(Lcom/vuitton/android/presentation/ar/arcore/ArCore;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v14, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->b:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iput-object v6, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->c:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    iput-object v3, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->d:Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;

    iput-object v1, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->e:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    iput v11, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->h:I

    invoke-interface {v0, v4, v8}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-ne v0, v9, :cond_b

    goto :goto_7

    :cond_b
    move-object v4, v6

    :goto_6
    :try_start_d
    invoke-interface {v8}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$1;

    invoke-direct {v5, v2, v4, v13}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lcom/vuitton/android/presentation/ar/arcore/ArCore;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v13, v13, v5, v12}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$2;

    invoke-direct {v5, v2, v1, v13}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$2;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v13, v13, v5, v12}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$3;

    invoke-direct {v5, v2, v1, v13}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$3;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v13, v13, v5, v12}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$4;

    invoke-direct {v5, v2, v1, v13}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$4;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v13, v13, v5, v12}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iput-object v14, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->b:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iput-object v4, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->c:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    iput-object v3, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->d:Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;

    iput-object v1, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->e:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    iput v10, v8, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$1;->h:I

    invoke-static {v8}, Lkotlinx/coroutines/DelayKt;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-ne v0, v9, :cond_c

    :goto_7
    return-object v9

    :cond_c
    move-object v2, v3

    move-object v3, v4

    move-object v4, v14

    :goto_8
    :try_start_e
    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catchall_3
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    :goto_9
    move-object v4, v14

    goto :goto_b

    :catchall_4
    move-exception v0

    :goto_a
    move-object v2, v3

    move-object v3, v6

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v1, v4

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_a

    :goto_b
    :try_start_f
    iget-object v5, v1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->e:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iget-object v6, v1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->l:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v6, v13}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    iget-object v6, v1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->m:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v6, :cond_e

    iget-boolean v7, v1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->n:Z

    if-eqz v7, :cond_d

    iget-object v7, v5, Lcom/vuitton/android/presentation/ar/filament/Filament;->e:Lcom/google/android/filament/Scene;

    invoke-virtual {v6}, Lcom/google/android/filament/gltfio/FilamentAsset;->a()[I

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/filament/Scene;->d([I)V

    :cond_d
    iget-object v5, v5, Lcom/vuitton/android/presentation/ar/filament/Filament;->h:Lcom/google/android/filament/gltfio/AssetLoader;

    invoke-virtual {v5, v6}, Lcom/google/android/filament/gltfio/AssetLoader;->c(Lcom/google/android/filament/gltfio/FilamentAsset;)V

    :cond_e
    iput-object v13, v1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->m:Lcom/google/android/filament/gltfio/FilamentAsset;

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    move-exception v0

    move-object v5, v3

    move-object v14, v4

    goto :goto_d

    :catchall_8
    move-exception v0

    move-object v6, v5

    move-object/from16 v3, v16

    move-object v2, v3

    goto :goto_d

    :catchall_9
    move-exception v0

    move-object v3, v2

    move-object v6, v5

    goto :goto_d

    :cond_f
    move-object v3, v2

    move-object v6, v5

    :try_start_10
    const-string v0, "requireCachedAppConfigUseCase"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v13
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :catchall_a
    move-exception v0

    goto :goto_c

    :catchall_b
    move-exception v0

    move-object v3, v2

    move-object v6, v5

    :goto_c
    move-object v2, v3

    move-object v5, v6

    :goto_d
    :try_start_11
    invoke-virtual {v2}, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->a()V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    :catchall_c
    move-exception v0

    goto :goto_e

    :catchall_d
    move-exception v0

    move-object v6, v5

    :goto_e
    :try_start_12
    invoke-virtual {v5}, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->b()V

    throw v0

    :catchall_e
    move-exception v0

    goto :goto_f

    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v13
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    :goto_f
    iget-object v1, v14, Lcom/vuitton/android/presentation/ar/filament/Filament;->l:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {v1}, Lcom/google/android/filament/android/UiHelper;->d()V

    iget-object v1, v14, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    invoke-virtual {v1}, Lcom/google/android/filament/Engine;->l()V

    iget-object v1, v14, Lcom/vuitton/android/presentation/ar/filament/Filament;->b:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_12

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v2, Larrow/core/Either$Right;

    invoke-direct {v2, v1}, Larrow/core/Either$Right;-><init>(Ljava/lang/Object;)V

    goto :goto_10

    :cond_11
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Error destroying EGL context"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v2, Larrow/core/Either$Left;

    invoke-direct {v2, v1}, Larrow/core/Either$Left;-><init>(Ljava/lang/Object;)V

    :cond_12
    :goto_10
    throw v0

    :cond_13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v13
.end method

.method public static final I(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    .locals 7

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->c:Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->b:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_2
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->c:Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->b:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p1, v2

    move-object v2, v5

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v1, v2

    move-object v0, v5

    goto :goto_5

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v2, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput v6, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->f:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p1, Lkotlin/Pair;

    iget-object v2, p1, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    iget-object p1, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p1, Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;

    :try_start_2
    iget-object v6, v2, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->s:Lcom/google/ar/core/Session;

    invoke-virtual {v6}, Lcom/google/ar/core/Session;->resume()V

    iget-object v6, p1, Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;->d:Landroid/view/Choreographer;

    invoke-virtual {v6, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$2;

    invoke-direct {v6, p0, v3}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$2;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->b:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->c:Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;

    iput v5, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->f:I

    invoke-static {v6, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->b:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->c:Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->f:I

    invoke-static {v0}, Lkotlinx/coroutines/DelayKt;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    move-object v1, p1

    move-object v0, v2

    :goto_4
    :try_start_3
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_2
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v2

    :goto_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->A:Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;->c:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v1, Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;->d:Landroid/view/Choreographer;

    invoke-virtual {p0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object p0, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->s:Lcom/google/ar/core/Session;

    invoke-virtual {p0}, Lcom/google/ar/core/Session;->pause()V

    throw p1

    :cond_8
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final J(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/ar/core/ArCoreApk;->getInstance()Lcom/google/ar/core/ArCoreApk;

    move-result-object p1

    sget-object v2, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->REQUIRED:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    sget-object v5, Lcom/google/ar/core/ArCoreApk$UserMessageType;->USER_ALREADY_INFORMED:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    invoke-virtual {p1, p0, v4, v2, v5}, Lcom/google/ar/core/ArCoreApk;->requestInstall(Landroid/app/Activity;ZLcom/google/ar/core/ArCoreApk$InstallBehavior;Lcom/google/ar/core/ArCoreApk$UserMessageType;)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object p1

    sget-object v2, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    if-ne p1, v2, :cond_5

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$2;

    const/4 v2, 0x2

    invoke-direct {p1, v2, v3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-direct {v2, v3, p1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {p1, v2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput v4, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$1;->d:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {}, Lcom/google/ar/core/ArCoreApk;->getInstance()Lcom/google/ar/core/ArCoreApk;

    move-result-object p1

    sget-object v0, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->REQUIRED:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->USER_ALREADY_INFORMED:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/google/ar/core/ArCoreApk;->requestInstall(Landroid/app/Activity;ZLcom/google/ar/core/ArCoreApk$InstallBehavior;Lcom/google/ar/core/ArCoreApk$UserMessageType;)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object p0

    sget-object p1, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALLED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    if-ne p0, p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/vuitton/android/presentation/ar/UserCanceledException;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/ar/UserCanceledException;-><init>()V

    throw p0

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final K(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureCameraPermissionGranted$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureCameraPermissionGranted$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureCameraPermissionGranted$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureCameraPermissionGranted$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureCameraPermissionGranted$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureCameraPermissionGranted$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureCameraPermissionGranted$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureCameraPermissionGranted$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const-string p1, "android.permission.CAMERA"

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x461

    invoke-virtual {p0, p1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureCameraPermissionGranted$$inlined$filter$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->s:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureCameraPermissionGranted$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput v3, v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureCameraPermissionGranted$1;->d:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/android/presentation/ar/PermissionResultEvent;

    iget-object p0, p1, Lcom/vuitton/android/presentation/ar/PermissionResultEvent;->b:[I

    array-length p1, p0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_5

    aget v1, p0, v0

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/vuitton/android/presentation/ar/UserCanceledException;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/ar/UserCanceledException;-><init>()V

    throw p0

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->t:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0027

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a00f2

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_8

    const v0, 0x7f0a0217

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_8

    const v0, 0x7f0a0438

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    if-eqz v4, :cond_8

    new-instance v0, Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1, v1, v3, v4}, Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;-><init>(Landroid/widget/FrameLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/FrameLayout;Landroid/view/SurfaceView;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->A:Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    sget p1, Lcom/google/android/filament/Filament;->a:I

    const-string p1, "filament-utils-jni"

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    const/4 v1, 0x2

    if-lt p1, v0, :cond_0

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x1006

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    new-instance p1, Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->z:Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$3;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$3;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;->c:Lcom/vuitton/android/presentation/ar/gesture/PinchGestureRecognizer;

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->z:Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;

    const-string v0, "transformationSystem"

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;->d:Lcom/vuitton/android/presentation/ar/gesture/TwistGestureRecognizer;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$4;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$4;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->z:Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;->b:Lcom/vuitton/android/presentation/ar/gesture/DragGestureRecognizer;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$5;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$5;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->A:Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;

    const-string v0, "binding"

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;->d:Landroid/view/SurfaceView;

    new-instance v3, Ld5;

    invoke-direct {v3, p0, v1}, Ld5;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$7;

    invoke-direct {p1, p0, v2}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$7;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->B:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v4, v2, v2, p1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->A:Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v0, Lxo0;

    invoke-direct {v0, p0, v1}, Lxo0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Missing required view with ID: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->B:Lkotlinx/coroutines/internal/ContextScope;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onPause()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    new-instance p2, Lcom/vuitton/android/presentation/ar/PermissionResultEvent;

    invoke-direct {p2, p1, p3}, Lcom/vuitton/android/presentation/ar/PermissionResultEvent;-><init>(I[I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->s:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onResume()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onStart()V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->C:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$onStart$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$onStart$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onStop()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->C:Lkotlinx/coroutines/internal/ContextScope;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void

    :cond_0
    const-string p0, "startScope"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final onSupportNavigateUp()Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method
