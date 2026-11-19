.class public final Lcoil3/compose/AsyncImagePainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/compose/AsyncImagePainter$Companion;,
        Lcoil3/compose/AsyncImagePainter$Input;,
        Lcoil3/compose/AsyncImagePainter$State;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0003\u0007\u0008\tB\u0011\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcoil3/compose/AsyncImagePainter;",
        "Landroidx/compose/ui/graphics/painter/Painter;",
        "Landroidx/compose/runtime/RememberObserver;",
        "Lcoil3/compose/AsyncImagePainter$Input;",
        "input",
        "<init>",
        "(Lcoil3/compose/AsyncImagePainter$Input;)V",
        "Input",
        "State",
        "Companion",
        "io.coil-kt.coil3:coil-compose-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final y:Lcoil3/compose/AsyncImagePainter$Companion;

.field public static final z:Lu5;


# instance fields
.field public final g:Landroidx/compose/runtime/MutableState;

.field public h:F

.field public i:Landroidx/compose/ui/graphics/ColorFilter;

.field public j:Z

.field public k:Lkotlinx/coroutines/Job;

.field public l:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public m:J

.field public n:Lkotlinx/coroutines/CoroutineScope;

.field public o:Lkotlin/jvm/functions/Function1;

.field public p:Lkotlin/jvm/functions/Function1;

.field public q:Landroidx/compose/ui/layout/ContentScale;

.field public r:I

.field public s:Lcoil3/compose/AsyncImagePreviewHandler;

.field public t:Lcoil3/compose/AsyncImagePainter$Input;

.field public final u:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final v:Lkotlinx/coroutines/flow/StateFlow;

.field public final w:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final x:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil3/compose/AsyncImagePainter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil3/compose/AsyncImagePainter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil3/compose/AsyncImagePainter;->y:Lcoil3/compose/AsyncImagePainter$Companion;

    new-instance v0, Lu5;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lu5;-><init>(I)V

    sput-object v0, Lcoil3/compose/AsyncImagePainter;->z:Lu5;

    return-void
.end method

.method public constructor <init>(Lcoil3/compose/AsyncImagePainter$Input;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Lcoil3/compose/AsyncImagePainter;->g:Landroidx/compose/runtime/MutableState;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcoil3/compose/AsyncImagePainter;->h:F

    sget-object v0, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/geometry/Size;->c:J

    iput-wide v0, p0, Lcoil3/compose/AsyncImagePainter;->m:J

    sget-object v0, Lcoil3/compose/AsyncImagePainter;->z:Lu5;

    iput-object v0, p0, Lcoil3/compose/AsyncImagePainter;->o:Lkotlin/jvm/functions/Function1;

    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->c:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    iput-object v0, p0, Lcoil3/compose/AsyncImagePainter;->q:Landroidx/compose/ui/layout/ContentScale;

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->a0:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->c:I

    iput v0, p0, Lcoil3/compose/AsyncImagePainter;->r:I

    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter;->t:Lcoil3/compose/AsyncImagePainter$Input;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter;->v:Lkotlinx/coroutines/flow/StateFlow;

    sget-object p1, Lcoil3/compose/AsyncImagePainter$State$Empty;->a:Lcoil3/compose/AsyncImagePainter$State$Empty;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter;->x:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static final j(Lcoil3/compose/AsyncImagePainter;Lcoil3/request/ImageRequest;Z)Lcoil3/request/ImageRequest;
    .locals 7

    iget-object v0, p1, Lcoil3/request/ImageRequest;->u:Lcoil3/size/SizeResolver;

    iget-object v1, p1, Lcoil3/request/ImageRequest;->y:Lcoil3/request/ImageRequest$Defined;

    instance-of v2, v0, Lcoil3/compose/DrawScopeSizeResolver;

    if-eqz v2, :cond_2

    check-cast v0, Lcoil3/compose/DrawScopeSizeResolver;

    iget-object v2, p0, Lcoil3/compose/AsyncImagePainter;->l:Lkotlinx/coroutines/flow/SharedFlowImpl;

    if-nez v2, :cond_1

    sget-object v2, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v2

    iget-wide v3, p0, Lcoil3/compose/AsyncImagePainter;->m:J

    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    new-instance v5, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-virtual {v2, v5}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_0
    iput-object v2, p0, Lcoil3/compose/AsyncImagePainter;->l:Lkotlinx/coroutines/flow/SharedFlowImpl;

    :cond_1
    invoke-interface {v0}, Lcoil3/compose/DrawScopeSizeResolver;->connect()V

    :cond_2
    invoke-static {p1}, Lcoil3/request/ImageRequest;->a(Lcoil3/request/ImageRequest;)Lcoil3/request/ImageRequest$Builder;

    move-result-object v0

    new-instance v2, Lcoil3/compose/AsyncImagePainter$updateRequest$$inlined$target$default$1;

    invoke-direct {v2, p1, p0}, Lcoil3/compose/AsyncImagePainter$updateRequest$$inlined$target$default$1;-><init>(Lcoil3/request/ImageRequest;Lcoil3/compose/AsyncImagePainter;)V

    iput-object v2, v0, Lcoil3/request/ImageRequest$Builder;->d:Lcoil3/target/Target;

    iget-object p1, v1, Lcoil3/request/ImageRequest$Defined;->k:Lcoil3/size/SizeResolver;

    if-nez p1, :cond_3

    sget-object p1, Lcoil3/size/SizeResolver;->a:Lcoil3/size/RealSizeResolver;

    iput-object p1, v0, Lcoil3/request/ImageRequest$Builder;->v:Lcoil3/size/SizeResolver;

    :cond_3
    iget-object p1, v1, Lcoil3/request/ImageRequest$Defined;->l:Lcoil3/size/Scale;

    if-nez p1, :cond_6

    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter;->q:Landroidx/compose/ui/layout/ContentScale;

    sget-object p1, Lcoil3/compose/internal/UtilsKt;->a:Landroidx/compose/ui/layout/MeasurePolicy;

    sget-object p1, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/ui/layout/ContentScale$Companion;->c:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Landroidx/compose/ui/layout/ContentScale$Companion;->f:Landroidx/compose/ui/layout/ContentScale$Companion$Inside$1;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lcoil3/size/Scale;->FILL:Lcoil3/size/Scale;

    goto :goto_1

    :cond_5
    :goto_0
    sget-object p0, Lcoil3/size/Scale;->FIT:Lcoil3/size/Scale;

    :goto_1
    iput-object p0, v0, Lcoil3/request/ImageRequest$Builder;->w:Lcoil3/size/Scale;

    :cond_6
    iget-object p0, v1, Lcoil3/request/ImageRequest$Defined;->m:Lcoil3/size/Precision;

    if-nez p0, :cond_7

    sget-object p0, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    iput-object p0, v0, Lcoil3/request/ImageRequest$Builder;->x:Lcoil3/size/Precision;

    :cond_7
    if-eqz p2, :cond_8

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    iput-object p0, v0, Lcoil3/request/ImageRequest$Builder;->l:Lkotlin/coroutines/CoroutineContext;

    iput-object p0, v0, Lcoil3/request/ImageRequest$Builder;->m:Lkotlin/coroutines/CoroutineContext;

    iput-object p0, v0, Lcoil3/request/ImageRequest$Builder;->n:Lkotlin/coroutines/CoroutineContext;

    :cond_8
    invoke-virtual {v0}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final k(Lcoil3/compose/AsyncImagePainter;Lcoil3/compose/AsyncImagePainter$State;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcoil3/compose/AsyncImagePainter;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcoil3/compose/AsyncImagePainter$State;

    iget-object v3, v0, Lcoil3/compose/AsyncImagePainter;->o:Lkotlin/jvm/functions/Function1;

    move-object/from16 v4, p1

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcoil3/compose/AsyncImagePainter$State;

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v7, v0, Lcoil3/compose/AsyncImagePainter;->q:Landroidx/compose/ui/layout/ContentScale;

    instance-of v1, v3, Lcoil3/compose/AsyncImagePainter$State$Success;

    const/16 v16, 0x0

    if-eqz v1, :cond_0

    move-object v1, v3

    check-cast v1, Lcoil3/compose/AsyncImagePainter$State$Success;

    iget-object v1, v1, Lcoil3/compose/AsyncImagePainter$State$Success;->b:Lcoil3/request/SuccessResult;

    goto :goto_0

    :cond_0
    instance-of v1, v3, Lcoil3/compose/AsyncImagePainter$State$Error;

    if-eqz v1, :cond_4

    move-object v1, v3

    check-cast v1, Lcoil3/compose/AsyncImagePainter$State$Error;

    iget-object v1, v1, Lcoil3/compose/AsyncImagePainter$State$Error;->b:Lcoil3/request/ErrorResult;

    :goto_0
    invoke-interface {v1}, Lcoil3/request/ImageResult;->a()Lcoil3/request/ImageRequest;

    move-result-object v4

    sget-object v5, Lcoil3/request/ImageRequests_androidKt;->a:Lcoil3/Extras$Key;

    invoke-static {v4, v5}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcoil3/transition/Transition$Factory;

    sget-object v5, Lcoil3/compose/AsyncImagePainter_androidKt;->a:Lcoil3/compose/AsyncImagePainter_androidKt$FakeTransitionTarget$1;

    invoke-interface {v4, v5, v1}, Lcoil3/transition/Transition$Factory;->a(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;)Lcoil3/transition/Transition;

    move-result-object v4

    instance-of v5, v4, Lcoil3/transition/CrossfadeTransition;

    if-eqz v5, :cond_4

    invoke-interface {v2}, Lcoil3/compose/AsyncImagePainter$State;->d()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v5

    instance-of v6, v2, Lcoil3/compose/AsyncImagePainter$State$Loading;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v5, v16

    :goto_1
    invoke-interface {v3}, Lcoil3/compose/AsyncImagePainter$State;->d()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v6

    sget-object v8, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    check-cast v4, Lcoil3/transition/CrossfadeTransition;

    iget v8, v4, Lcoil3/transition/CrossfadeTransition;->c:I

    sget-object v9, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v8, v9}, Lkotlin/time/DurationKt;->g(ILkotlin/time/DurationUnit;)J

    move-result-wide v8

    instance-of v10, v1, Lcoil3/request/SuccessResult;

    if-eqz v10, :cond_3

    move-object v10, v1

    check-cast v10, Lcoil3/request/SuccessResult;

    iget-boolean v10, v10, Lcoil3/request/SuccessResult;->g:Z

    if-nez v10, :cond_2

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_2
    move v11, v10

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v10, 0x1

    goto :goto_2

    :goto_4
    iget-boolean v12, v4, Lcoil3/transition/CrossfadeTransition;->d:Z

    invoke-interface {v1}, Lcoil3/request/ImageResult;->a()Lcoil3/request/ImageRequest;

    move-result-object v1

    sget-object v4, Lcoil3/compose/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    invoke-static {v1, v4}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    new-instance v4, Lcoil3/compose/CrossfadePainter;

    const/4 v10, 0x0

    const/16 v14, 0x10

    const/4 v15, 0x0

    invoke-direct/range {v4 .. v15}, Lcoil3/compose/CrossfadePainter;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/layout/ContentScale;JLkotlin/time/TimeSource;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_4
    move-object/from16 v4, v16

    :goto_5
    if-eqz v4, :cond_5

    goto :goto_6

    :cond_5
    invoke-interface {v3}, Lcoil3/compose/AsyncImagePainter$State;->d()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v4

    :goto_6
    iget-object v1, v0, Lcoil3/compose/AsyncImagePainter;->g:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcoil3/compose/AsyncImagePainter$State;->d()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    invoke-interface {v3}, Lcoil3/compose/AsyncImagePainter$State;->d()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v4

    if-eq v1, v4, :cond_9

    invoke-interface {v2}, Lcoil3/compose/AsyncImagePainter$State;->d()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    instance-of v2, v1, Landroidx/compose/runtime/RememberObserver;

    if-eqz v2, :cond_6

    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    goto :goto_7

    :cond_6
    move-object/from16 v1, v16

    :goto_7
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroidx/compose/runtime/RememberObserver;->i()V

    :cond_7
    invoke-interface {v3}, Lcoil3/compose/AsyncImagePainter$State;->d()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    instance-of v2, v1, Landroidx/compose/runtime/RememberObserver;

    if-eqz v2, :cond_8

    move-object/from16 v16, v1

    check-cast v16, Landroidx/compose/runtime/RememberObserver;

    :cond_8
    if-eqz v16, :cond_9

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/RememberObserver;->d()V

    :cond_9
    iget-object v0, v0, Lcoil3/compose/AsyncImagePainter;->p:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_a

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method


# virtual methods
.method public final a(F)Z
    .locals 0

    iput p1, p0, Lcoil3/compose/AsyncImagePainter;->h:F

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0

    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter;->i:Landroidx/compose/ui/graphics/ColorFilter;

    const/4 p0, 0x1

    return p0
.end method

.method public final d()V
    .locals 4

    const-string v0, "AsyncImagePainter.onRemembered"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->l()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->d()V

    :cond_1
    iget-object v0, p0, Lcoil3/compose/AsyncImagePainter;->t:Lcoil3/compose/AsyncImagePainter$Input;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter;->n:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v1, :cond_4

    new-instance v3, Lcoil3/compose/AsyncImagePainter$launchJob$1;

    invoke-direct {v3, p0, v0, v2}, Lcoil3/compose/AsyncImagePainter$launchJob$1;-><init>(Lcoil3/compose/AsyncImagePainter;Lcoil3/compose/AsyncImagePainter$Input;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3}, Lcoil3/compose/internal/DeferredDispatchKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter;->k:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_3

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iput-object v0, p0, Lcoil3/compose/AsyncImagePainter;->k:Lkotlinx/coroutines/Job;

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcoil3/compose/AsyncImagePainter;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_4
    :try_start_1
    const-string p0, "scope"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcoil3/compose/AsyncImagePainter;->k:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lcoil3/compose/AsyncImagePainter;->k:Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->l()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    instance-of v2, v0, Landroidx/compose/runtime/RememberObserver;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroidx/compose/runtime/RememberObserver;->f()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcoil3/compose/AsyncImagePainter;->j:Z

    return-void
.end method

.method public final g()J
    .locals 2

    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->l()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/painter/Painter;->g()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/geometry/Size;->c:J

    return-wide v0
.end method

.method public final h(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 10

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcoil3/compose/AsyncImagePainter;->m:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/Size;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcoil3/compose/AsyncImagePainter;->m:J

    iget-object v2, p0, Lcoil3/compose/AsyncImagePainter;->l:Lkotlinx/coroutines/flow/SharedFlowImpl;

    if-eqz v2, :cond_0

    new-instance v3, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->l()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v6

    iget v8, p0, Lcoil3/compose/AsyncImagePainter;->h:F

    iget-object v9, p0, Lcoil3/compose/AsyncImagePainter;->i:Landroidx/compose/ui/graphics/ColorFilter;

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/compose/ui/graphics/painter/Painter;->e(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcoil3/compose/AsyncImagePainter;->k:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lcoil3/compose/AsyncImagePainter;->k:Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->l()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    instance-of v2, v0, Landroidx/compose/runtime/RememberObserver;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroidx/compose/runtime/RememberObserver;->i()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcoil3/compose/AsyncImagePainter;->j:Z

    return-void
.end method

.method public final l()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 0

    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter;->g:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/painter/Painter;

    return-object p0
.end method

.method public final m(Lcoil3/compose/AsyncImagePainter$Input;)V
    .locals 3

    iget-object v0, p0, Lcoil3/compose/AsyncImagePainter;->t:Lcoil3/compose/AsyncImagePainter$Input;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter;->t:Lcoil3/compose/AsyncImagePainter$Input;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter;->k:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v0, p0, Lcoil3/compose/AsyncImagePainter;->k:Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcoil3/compose/AsyncImagePainter;->j:Z

    if-eqz v1, :cond_5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter;->n:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v1, :cond_4

    new-instance v2, Lcoil3/compose/AsyncImagePainter$launchJob$1;

    invoke-direct {v2, p0, p1, v0}, Lcoil3/compose/AsyncImagePainter$launchJob$1;-><init>(Lcoil3/compose/AsyncImagePainter;Lcoil3/compose/AsyncImagePainter$Input;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v2}, Lcoil3/compose/internal/DeferredDispatchKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object v1

    iget-object v2, p0, Lcoil3/compose/AsyncImagePainter;->k:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_3

    invoke-interface {v2, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iput-object v1, p0, Lcoil3/compose/AsyncImagePainter;->k:Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_4
    const-string p0, "scope"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
