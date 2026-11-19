.class public final Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;",
        "Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;",
        "Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;",
        "fingerCoordinator",
        "Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;",
        "rotationHandler",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionInformationProvider",
        "<init>",
        "(Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;Lcom/dynatrace/agent/di/SessionInformationProvider;)V",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;

.field public final b:Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;

.field public final c:Lcom/dynatrace/agent/di/SessionInformationProvider;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;Lcom/dynatrace/agent/di/SessionInformationProvider;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;->a:Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;

    iput-object p2, p0, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;->b:Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;

    iput-object p3, p0, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;->c:Lcom/dynatrace/agent/di/SessionInformationProvider;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;->c:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {v3}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v3

    iget-boolean v3, v3, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->c:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;->a:Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;

    iget-object v3, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->d:Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverter;

    iget-object v4, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->b:Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;

    iget-object v5, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->e:Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;

    iget-object v6, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->c:Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;

    instance-of v7, v1, Landroid/view/ViewGroup;

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x0

    sget-object v9, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Idle;->a:Lcom/dynatrace/agent/userinteraction/model/SequenceState$Idle;

    if-eqz v7, :cond_1b

    const/4 v1, 0x0

    const/4 v10, 0x1

    if-eq v7, v10, :cond_6

    const/4 v3, 0x2

    if-eq v7, v3, :cond_5

    const/4 v3, 0x3

    if-eq v7, v3, :cond_3

    const/4 v0, 0x5

    if-eq v7, v0, :cond_2

    const/4 v0, 0x6

    if-eq v7, v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v6, v2}, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;->a(Landroid/view/MotionEvent;)V

    return-void

    :cond_3
    iget-object v2, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->h:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_4

    invoke-interface {v2, v8}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_4
    iput-object v9, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->g:Lcom/dynatrace/agent/userinteraction/model/SequenceState;

    iget-object v0, v6, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;->d:Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;

    iget-object v2, v0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    iput-boolean v1, v0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->d:Z

    invoke-interface {v5, v1}, Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;->b(Z)Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    return-void

    :cond_5
    invoke-virtual {v6, v2}, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;->a(Landroid/view/MotionEvent;)V

    invoke-virtual {v4, v2}, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->b(Landroid/view/MotionEvent;)V

    return-void

    :cond_6
    invoke-virtual {v4, v2}, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->b(Landroid/view/MotionEvent;)V

    iget-object v4, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->g:Lcom/dynatrace/agent/userinteraction/model/SequenceState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v4, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Tracking;

    if-eqz v7, :cond_7

    check-cast v4, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Tracking;

    goto :goto_1

    :cond_7
    move-object v4, v8

    :goto_1
    if-nez v4, :cond_8

    iget-object v0, v6, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;->d:Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;

    iget-object v2, v0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    iput-boolean v1, v0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->d:Z

    return-void

    :cond_8
    new-instance v11, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    invoke-static {v2}, Lcom/dynatrace/agent/userinteraction/util/UserInteractionUtilKt;->b(Landroid/view/MotionEvent;)Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    move-result-object v7

    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    invoke-direct {v11, v7, v12, v13}, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;-><init>(Lcom/dynatrace/agent/userinteraction/model/TouchAction;FF)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v6, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;->d:Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v14, v2, v6, v7}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->g(Landroid/view/MotionEvent;J)J

    move-result-wide v19

    iget-object v6, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->i:Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;

    iput-object v8, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->i:Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;

    if-eqz v6, :cond_b

    iget-object v7, v6, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;->a:Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;

    iget-boolean v12, v7, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;->d:Z

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->f:Lcom/dynatrace/agent/userinteraction/util/RectHelper;

    iget-object v13, v7, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;->a:Landroid/graphics/Rect;

    iget v15, v11, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->b:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    iget v10, v11, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->c:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v12, v13, v15, v10}, Lcom/dynatrace/agent/userinteraction/util/RectHelper;->a(Landroid/graphics/Rect;Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v10, v7

    goto :goto_2

    :cond_9
    move-object v10, v8

    :goto_2
    if-eqz v10, :cond_a

    iget-object v6, v6, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;->b:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;

    invoke-direct {v12, v7, v6, v10}, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;-><init>(Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;Ljava/util/List;Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;)V

    move-object v6, v12

    :cond_a
    move-object v13, v6

    goto :goto_3

    :cond_b
    move-object v13, v8

    :goto_3
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-interface {v3, v6, v7}, Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverter;->a(J)J

    move-result-wide v6

    if-eqz v13, :cond_c

    iget-object v2, v13, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;->c:Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;

    goto :goto_4

    :cond_c
    move-object v2, v8

    :goto_4
    if-eqz v2, :cond_d

    iget-object v2, v14, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    iput-boolean v1, v14, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->d:Z

    iput-object v9, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->g:Lcom/dynatrace/agent/userinteraction/model/SequenceState;

    invoke-interface {v5, v1}, Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;->b(Z)Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    iget-object v3, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->b:Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;

    iget-object v5, v4, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Tracking;->a:Landroid/view/ViewGroup;

    move-wide v8, v6

    const/4 v6, 0x0

    move-object v4, v11

    move-object v7, v13

    invoke-virtual/range {v3 .. v9}, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->a(Lcom/dynatrace/agent/userinteraction/model/TouchEvent;Landroid/view/ViewGroup;Landroid/view/View;Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;J)V

    return-void

    :cond_d
    invoke-virtual {v14}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->b()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v14}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->a()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v14, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->b:Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;

    iget v5, v3, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->e:I

    if-lez v5, :cond_18

    iget v5, v3, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->f:F

    const/4 v9, 0x0

    cmpl-float v5, v5, v9

    if-lez v5, :cond_18

    iget v5, v3, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->c:F

    iget v8, v3, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->a:F

    sub-float/2addr v5, v8

    iget v8, v3, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->d:F

    iget v10, v3, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->b:F

    sub-float/2addr v8, v10

    move-object/from16 v16, v2

    float-to-double v1, v5

    move/from16 p2, v9

    float-to-double v9, v8

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    cmpg-float v2, v1, p2

    if-nez v2, :cond_e

    new-instance v1, Lkotlin/Pair;

    sget-object v2, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->COMPLEX:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_e
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v2, v2, v9

    if-ltz v2, :cond_f

    const/4 v10, 0x1

    goto :goto_5

    :cond_f
    const/4 v10, 0x0

    :goto_5
    iget v2, v3, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->f:F

    div-float/2addr v1, v2

    if-eqz v10, :cond_10

    cmpl-float v2, v5, p2

    if-lez v2, :cond_10

    sget-object v2, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->RIGHT:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    goto :goto_6

    :cond_10
    if-eqz v10, :cond_11

    sget-object v2, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->LEFT:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    goto :goto_6

    :cond_11
    cmpl-float v2, v8, p2

    if-lez v2, :cond_12

    sget-object v2, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->DOWN:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    goto :goto_6

    :cond_12
    sget-object v2, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->UP:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    :goto_6
    if-eqz v10, :cond_14

    iget v5, v3, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->g:F

    iget v3, v3, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->h:F

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpg-float v9, v8, p2

    if-gtz v9, :cond_13

    :goto_7
    move/from16 v3, p2

    goto :goto_9

    :cond_13
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_8
    div-float/2addr v3, v8

    goto :goto_9

    :cond_14
    iget v5, v3, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->i:F

    iget v3, v3, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->j:F

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpg-float v9, v8, p2

    if-gtz v9, :cond_15

    goto :goto_7

    :cond_15
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_8

    :goto_9
    const/high16 v5, 0x3e800000    # 0.25f

    cmpl-float v5, v3, v5

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v9, 0x3f800000    # 1.0f

    if-ltz v5, :cond_17

    const v2, 0x3f266666    # 0.65f

    cmpg-float v5, v1, v2

    if-gez v5, :cond_16

    sub-float v1, v2, v1

    div-float/2addr v1, v2

    goto :goto_a

    :cond_16
    move/from16 v1, p2

    :goto_a
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    new-instance v2, Lkotlin/Pair;

    sget-object v3, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->COMPLEX:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    move/from16 v5, p2

    invoke-static {v1, v5, v9}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_b

    :cond_17
    move/from16 v5, p2

    new-instance v3, Lkotlin/Pair;

    invoke-static {v1, v5, v9}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_b

    :cond_18
    move-object/from16 v16, v2

    new-instance v1, Lkotlin/Pair;

    sget-object v2, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->COMPLEX:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    invoke-direct {v1, v2, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b
    iget-object v2, v1, Lkotlin/Pair;->b:Ljava/lang/Object;

    move-object/from16 v17, v2

    check-cast v17, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    iget-object v1, v1, Lkotlin/Pair;->c:Ljava/lang/Object;

    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/Integer;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    move-object/from16 v3, v16

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;

    iget v5, v5, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_19
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v21

    new-instance v15, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v21}, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;-><init>(Ljava/util/List;Lcom/dynatrace/agent/userinteraction/model/GestureIntention;Ljava/lang/Integer;JI)V

    new-instance v3, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;

    move-wide v9, v6

    iget-wide v7, v4, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Tracking;->b:J

    iget-object v12, v4, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Tracking;->a:Landroid/view/ViewGroup;

    move-object v4, v15

    move-wide/from16 v5, v19

    invoke-direct/range {v3 .. v13}, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;-><init>(Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;JJJLcom/dynatrace/agent/userinteraction/model/TouchEvent;Landroid/view/ViewGroup;Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;)V

    goto :goto_d

    :cond_1a
    new-instance v3, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Touch;

    iget-wide v1, v4, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Tracking;->b:J

    iget-object v9, v4, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Tracking;->a:Landroid/view/ViewGroup;

    move-wide v4, v1

    move-object v8, v11

    move-object v10, v13

    invoke-direct/range {v3 .. v10}, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Touch;-><init>(JJLcom/dynatrace/agent/userinteraction/model/TouchEvent;Landroid/view/ViewGroup;Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;)V

    :goto_d
    iget-object v1, v14, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->d:Z

    iput-object v3, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->g:Lcom/dynatrace/agent/userinteraction/model/SequenceState;

    new-instance v1, Lss;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/dynatrace/agent/util/CoroutineHandler;->a(Lss;)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->h:Lkotlinx/coroutines/Job;

    return-void

    :cond_1b
    iget-object v7, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->h:Lkotlinx/coroutines/Job;

    if-eqz v7, :cond_1c

    invoke-interface {v7, v8}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1c
    iget-object v7, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->g:Lcom/dynatrace/agent/userinteraction/model/SequenceState;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v7, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;

    if-eqz v10, :cond_1d

    move-object v8, v7

    check-cast v8, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;

    :cond_1d
    if-nez v8, :cond_1e

    goto :goto_e

    :cond_1e
    iput-object v9, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->g:Lcom/dynatrace/agent/userinteraction/model/SequenceState;

    invoke-virtual {v0, v8}, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->b(Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;)V

    :goto_e
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-interface {v3, v7, v8}, Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverter;->a(J)J

    move-result-wide v7

    new-instance v3, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Tracking;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v3, v1, v7, v8}, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Tracking;-><init>(Landroid/view/ViewGroup;J)V

    iput-object v3, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->g:Lcom/dynatrace/agent/userinteraction/model/SequenceState;

    invoke-interface {v5}, Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;->a()V

    invoke-virtual {v6, v2}, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;->a(Landroid/view/MotionEvent;)V

    invoke-virtual {v4, v2}, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;->c:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {v0}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v0

    iget-boolean v0, v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->c:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;->a:Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->g:Lcom/dynatrace/agent/userinteraction/model/SequenceState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    check-cast v1, Landroid/view/ViewGroup;

    move-object v5, v1

    goto :goto_1

    :cond_3
    move-object v5, v2

    :goto_1
    if-nez v5, :cond_4

    :goto_2
    return-void

    :cond_4
    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->h:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_5

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    sget-object v1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Idle;->a:Lcom/dynatrace/agent/userinteraction/model/SequenceState$Idle;

    iput-object v1, p0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->g:Lcom/dynatrace/agent/userinteraction/model/SequenceState;

    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->e:Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;->b(Z)Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    iget-object v3, p0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->b:Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;

    invoke-interface {v0}, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;->a()Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    move-result-object v4

    invoke-interface {v0}, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;->b()Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;

    move-result-object v7

    invoke-interface {v0}, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;->c()J

    move-result-wide v8

    move-object v6, p1

    invoke-virtual/range {v3 .. v9}, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->a(Lcom/dynatrace/agent/userinteraction/model/TouchEvent;Landroid/view/ViewGroup;Landroid/view/View;Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;J)V

    return-void
.end method

.method public final c()V
    .locals 9

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;->c:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {v0}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v0

    iget-boolean v0, v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;->b:Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;

    iget-boolean v0, p0, Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;->d:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    invoke-interface {v0}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->b()Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    move-result-object v0

    iget-object v0, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->e:Ljava/util/List;

    const-string v2, "all"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    if-nez v0, :cond_2

    const-string v0, "Rotation User Interaction suppressed, userInteractions config disabled for rotation"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;->a:Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Received Screen Rotation User Interaction"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;->b:Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string p0, "characteristics.has_user_interaction"

    invoke-virtual {v3, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "interaction.type"

    const-string v0, "rotation"

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v2, Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {p0}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;->a(Lorg/json/JSONObject;JJZ)V

    return-void
.end method
