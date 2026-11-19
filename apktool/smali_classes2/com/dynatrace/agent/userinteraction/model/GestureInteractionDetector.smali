.class public final Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$Companion;,
        Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;,
        Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;",
        "",
        "<init>",
        "()V",
        "TrackedPointer",
        "RawSample",
        "Companion",
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
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;

.field public c:J

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->a:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;

    invoke-direct {v0}, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->b:Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 12

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;

    iget-object v2, v1, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->g:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;

    new-instance v5, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;

    iget v6, v4, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;->a:F

    iget v7, v4, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;->b:F

    iget v8, v1, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->a:I

    iget-wide v9, v4, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;->c:J

    iget-boolean v11, v4, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;->d:Z

    invoke-direct/range {v5 .. v11}, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;-><init>(FFIJZ)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final b()Z
    .locals 2

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;

    iget v0, v0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->d:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Landroid/view/MotionEvent;J)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->d:Z

    iput-wide p2, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->c:J

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;-><init>(IFFJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->b:Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;

    iput v4, p1, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->a:F

    iput v5, p1, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->b:F

    iput v4, p1, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->c:F

    iput v5, p1, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->d:F

    iput v1, p1, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->e:I

    const/4 p2, 0x0

    iput p2, p1, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->f:F

    iput p2, p1, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->g:F

    iput p2, p1, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->h:F

    iput p2, p1, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->i:F

    iput p2, p1, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->j:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->d:Z

    return-void
.end method

.method public final d(Landroid/view/MotionEvent;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->d:Z

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-wide v2, v0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->c:J

    sub-long v7, p2, v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, v0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    new-instance v9, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;

    const/16 v15, 0x8

    const/16 v16, 0x0

    const-wide/16 v13, 0x0

    move v11, v5

    invoke-direct/range {v9 .. v16}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;-><init>(IFFJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v6, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v10, v9

    check-cast v10, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;

    iget v4, v10, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->b:F

    sub-float v4, v5, v4

    float-to-double v13, v4

    iget v4, v10, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->c:F

    sub-float v4, v12, v4

    move/from16 p2, v2

    float-to-double v1, v4

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, v10, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->d:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    iput v1, v10, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->d:F

    :cond_2
    iget v1, v10, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->e:F

    sub-float v1, v5, v1

    float-to-double v1, v1

    iget v4, v10, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->f:F

    sub-float v4, v12, v4

    float-to-double v13, v4

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    iget-object v1, v10, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->g:Ljava/util/ArrayList;

    new-instance v4, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;

    const/4 v9, 0x0

    move v6, v12

    invoke-direct/range {v4 .. v9}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;-><init>(FFJZ)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v5, v10, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->e:F

    iput v12, v10, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->f:F

    :cond_3
    if-nez v3, :cond_4

    iget-object v1, v0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->b:Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;

    invoke-virtual {v1, v5, v12}, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->a(FF)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public final e(Landroid/view/MotionEvent;J)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-wide v0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->c:J

    sub-long v5, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance v1, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;

    invoke-direct/range {v1 .. v6}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;-><init>(IFFJ)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final f(Landroid/view/MotionEvent;J)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget-wide v2, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->c:J

    sub-long v7, p2, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->a:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->g:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    new-instance v4, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;-><init>(FFJZ)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Landroid/view/MotionEvent;J)J
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->d:Z

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget-wide v2, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->c:J

    sub-long v7, p2, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget-object p1, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->b:Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;

    invoke-virtual {p1, v5, v6}, Lcom/dynatrace/agent/userinteraction/model/GestureIntentionClassifier;->a(FF)V

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->a:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$TrackedPointer;->g:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    new-instance v4, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector$RawSample;-><init>(FFJZ)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-wide v7
.end method
