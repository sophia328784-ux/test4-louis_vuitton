.class public final Landroidx/compose/ui/input/pointer/MotionEventAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/MotionEventAdapter;",
        "",
        "<init>",
        "()V",
        "IndirectPointerEventData",
        "ui"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:J

.field public final b:Landroid/util/SparseLongArray;

.field public final c:Landroid/util/SparseBooleanArray;

.field public final d:Ljava/util/ArrayList;

.field public final e:Landroidx/collection/LongSparseArray;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Landroidx/compose/ui/geometry/Offset;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->b:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->c:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->d:Ljava/util/ArrayList;

    new-instance v0, Landroidx/collection/LongSparseArray;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/LongSparseArray;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->e:Landroidx/collection/LongSparseArray;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->f:I

    iput v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->g:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v1, 0x1

    iget-object v3, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->b:Landroid/util/SparseLongArray;

    if-eqz v0, :cond_1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_2

    iget-wide v4, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->a:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->a:J

    invoke-virtual {v3, p1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_2

    iget-wide v5, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->a:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->a:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->c:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x1

    invoke-virtual {p0, v4, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    iget v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->f:I

    if-ne v0, v1, :cond_2

    iget v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->g:I

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    iput v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->f:I

    iput p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->g:I

    iget-object p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->b:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clear()V

    return-void
.end method

.method public final c(Landroid/view/MotionEvent;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v1, p2

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->b(Landroid/view/MotionEvent;)V

    const/4 v3, 0x3

    const/4 v5, 0x0

    iget-object v6, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->b:Landroid/util/SparseLongArray;

    if-ne v2, v3, :cond_0

    invoke-virtual {v6}, Landroid/util/SparseLongArray;->clear()V

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-object v5

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->a(Landroid/view/MotionEvent;)V

    const/4 v3, 0x6

    const/4 v8, 0x1

    if-eq v2, v8, :cond_2

    if-eq v2, v3, :cond_1

    const/4 v9, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x5

    const/4 v11, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v11, :cond_3

    if-eq v2, v10, :cond_3

    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    move v12, v8

    :goto_1
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v13, :cond_c

    move-object/from16 v16, v5

    invoke-virtual {v4, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v3

    const-wide/16 v17, 0x1

    if-ltz v3, :cond_4

    invoke-virtual {v6, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v19

    move/from16 v21, v8

    move-wide/from16 v10, v19

    goto :goto_3

    :cond_4
    iget-wide v10, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->a:J

    move/from16 v21, v8

    add-long v7, v10, v17

    iput-wide v7, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->a:J

    invoke-virtual {v6, v5, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    :goto_3
    invoke-virtual {v4, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v4, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v3, v5

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move v7, v9

    int-to-long v8, v5

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    const-wide v22, 0xffffffffL

    and-long v8, v8, v22

    or-long v27, v3, v8

    sget-object v3, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    if-eq v15, v7, :cond_5

    move/from16 v29, v21

    goto :goto_4

    :cond_5
    const/16 v29, 0x0

    :goto_4
    iget-object v3, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->e:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v10, v11}, Landroidx/collection/LongSparseArray;->b(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;

    const-wide/32 v24, 0x7fffffff

    if-ne v15, v7, :cond_6

    invoke-virtual {v3, v10, v11}, Landroidx/collection/LongSparseArray;->f(J)V

    move/from16 v26, v5

    move-object/from16 v37, v6

    move-wide/from16 v8, v22

    const v6, 0xffff

    goto :goto_6

    :cond_6
    if-eqz v12, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v30

    and-long v30, v30, v24

    shl-long v30, v30, v21

    or-long v30, v17, v30

    sget-object v9, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->b:Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;

    move/from16 v26, v5

    move-object/from16 v37, v6

    shr-long v5, v27, v26

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    float-to-int v5, v5

    int-to-short v5, v5

    move-object/from16 v32, v9

    const v6, 0xffff

    and-long v8, v27, v22

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    float-to-int v8, v8

    int-to-short v8, v8

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 v5, v5, 0x10

    and-int/2addr v8, v6

    or-int/2addr v5, v8

    int-to-long v8, v5

    shl-long v8, v8, v26

    or-long v8, v30, v8

    new-instance v5, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;

    invoke-direct {v5, v8, v9}, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;-><init>(J)V

    invoke-virtual {v3, v10, v11, v5}, Landroidx/collection/LongSparseArray;->e(JLjava/lang/Object;)V

    :goto_5
    move-wide/from16 v8, v22

    goto :goto_6

    :cond_7
    move/from16 v26, v5

    move-object/from16 v37, v6

    const v6, 0xffff

    goto :goto_5

    :goto_6
    new-instance v22, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    move-wide/from16 v23, v24

    move/from16 v3, v26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v25

    move-object/from16 v5, p1

    invoke-virtual {v5, v15}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v30

    move/from16 v31, v6

    move/from16 v38, v7

    if-eqz v4, :cond_8

    iget-wide v6, v4, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->a:J

    shr-long v6, v6, v21

    and-long v6, v6, v23

    goto :goto_7

    :cond_8
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    :goto_7
    if-eqz v4, :cond_9

    move-wide/from16 v23, v8

    iget-wide v8, v4, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->a:J

    ushr-long/2addr v8, v3

    long-to-int v8, v8

    sget-object v9, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->b:Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    ushr-int/lit8 v9, v8, 0x10

    int-to-short v9, v9

    int-to-float v9, v9

    and-int v8, v8, v31

    int-to-short v8, v8

    int-to-float v8, v8

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    move/from16 v32, v3

    move-object/from16 v31, v4

    int-to-long v3, v9

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    shl-long v3, v3, v32

    and-long v8, v8, v23

    or-long/2addr v3, v8

    move-wide/from16 v33, v3

    goto :goto_8

    :cond_9
    move-object/from16 v31, v4

    move-wide/from16 v33, v27

    :goto_8
    if-eqz v31, :cond_b

    move-object/from16 v4, v31

    iget-wide v3, v4, Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;->a:J

    and-long v3, v3, v17

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-eqz v3, :cond_a

    move/from16 v3, v21

    goto :goto_9

    :cond_a
    const/4 v3, 0x0

    :goto_9
    move/from16 v35, v3

    goto :goto_a

    :cond_b
    const/16 v35, 0x0

    :goto_a
    const/16 v36, 0x0

    move-wide/from16 v31, v6

    move-wide/from16 v23, v10

    invoke-direct/range {v22 .. v36}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;-><init>(JJJZFJJZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v22

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object v4, v5

    move-object/from16 v5, v16

    move/from16 v8, v21

    move-object/from16 v6, v37

    move/from16 v9, v38

    const/4 v3, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x2

    goto/16 :goto_2

    :cond_c
    move-object/from16 v16, v5

    move/from16 v21, v8

    move-object v5, v4

    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->f(Landroid/view/MotionEvent;)V

    if-eqz v1, :cond_d

    iget v0, v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->a:I

    const/4 v1, 0x0

    :goto_b
    move v3, v0

    goto/16 :goto_e

    :cond_d
    const/high16 v0, 0x200000

    invoke-virtual {v5, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v5}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v3

    move/from16 v4, v21

    invoke-virtual {v0, v4}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-eqz v3, :cond_e

    if-nez v0, :cond_e

    sget-object v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->b:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->c:I

    goto :goto_b

    :cond_e
    if-eqz v0, :cond_f

    if-nez v3, :cond_f

    sget-object v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->b:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->d:I

    goto :goto_b

    :cond_f
    if-eqz v3, :cond_13

    if-eqz v0, :cond_13

    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v0

    cmpl-float v4, v3, v0

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    if-lez v4, :cond_11

    cmpg-float v4, v0, v7

    if-nez v4, :cond_10

    goto :goto_c

    :cond_10
    div-float v4, v3, v0

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_11

    :goto_c
    sget-object v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->b:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->c:I

    goto :goto_b

    :cond_11
    cmpl-float v4, v0, v3

    if-lez v4, :cond_13

    cmpg-float v4, v3, v7

    if-nez v4, :cond_12

    goto :goto_d

    :cond_12
    div-float/2addr v0, v3

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_13

    :goto_d
    sget-object v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->b:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->d:I

    goto :goto_b

    :cond_13
    sget-object v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->b:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, v1

    goto :goto_b

    :goto_e
    new-instance v0, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;

    if-eqz v2, :cond_16

    const/4 v4, 0x1

    if-eq v2, v4, :cond_15

    const/4 v4, 0x2

    if-eq v2, v4, :cond_14

    const/4 v8, 0x5

    if-eq v2, v8, :cond_16

    const/4 v4, 0x6

    if-eq v2, v4, :cond_15

    sget-object v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventType;->a:Landroidx/compose/ui/input/indirect/IndirectPointerEventType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, v1

    goto :goto_10

    :cond_14
    sget-object v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventType;->a:Landroidx/compose/ui/input/indirect/IndirectPointerEventType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Landroidx/compose/ui/input/indirect/IndirectPointerEventType;->d:I

    :goto_f
    move v2, v7

    goto :goto_10

    :cond_15
    sget-object v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventType;->a:Landroidx/compose/ui/input/indirect/IndirectPointerEventType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Landroidx/compose/ui/input/indirect/IndirectPointerEventType;->c:I

    goto :goto_f

    :cond_16
    sget-object v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventType;->a:Landroidx/compose/ui/input/indirect/IndirectPointerEventType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Landroidx/compose/ui/input/indirect/IndirectPointerEventType;->b:I

    goto :goto_f

    :goto_10
    const/4 v5, 0x0

    move-object/from16 v4, p1

    move-object v1, v14

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;-><init>(Ljava/util/List;IILandroid/view/MotionEvent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_17
    const-string v0, "MotionEvent must be a touch navigation source"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v16
.end method

.method public final d(Landroid/view/MotionEvent;Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/input/pointer/PointerInputEvent;
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v6, 0x0

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->c:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_12

    const/4 v4, 0x4

    if-eq v0, v4, :cond_12

    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->b(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->a(Landroid/view/MotionEvent;)V

    const/16 v4, 0x9

    const/4 v8, 0x1

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v9, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v8

    :goto_1
    const/16 v4, 0x8

    if-ne v0, v4, :cond_2

    move v10, v8

    goto :goto_2

    :cond_2
    move v10, v7

    :goto_2
    if-eqz v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v1, v4, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_3
    if-eq v0, v8, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v0, -0x1

    :goto_3
    move v11, v0

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    goto :goto_3

    :cond_5
    move v11, v7

    :goto_4
    iget-object v12, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x22

    if-nez v0, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    if-eq v0, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_7

    :cond_6
    move v0, v8

    goto :goto_5

    :cond_7
    move v0, v7

    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-nez v4, :cond_9

    const/16 v4, 0x2002

    invoke-virtual {p1, v4}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v4

    if-nez v4, :cond_8

    const v4, 0x100008

    invoke-virtual {p1, v4}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move v4, v8

    goto :goto_6

    :cond_9
    move v4, v7

    :goto_6
    if-nez v0, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    iput-boolean v8, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->h:Z

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    if-ne v0, v3, :cond_d

    iput-boolean v8, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->i:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    const-wide v9, 0xffffffffL

    and-long/2addr v0, v9

    or-long/2addr v0, v3

    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    iput-object v3, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->j:Landroidx/compose/ui/geometry/Offset;

    :cond_c
    iget-object v3, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->j:Landroidx/compose/ui/geometry/Offset;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->e(Landroidx/compose/ui/platform/AndroidComposeView;Landroid/view/MotionEvent;Landroidx/compose/ui/geometry/Offset;IZ)Landroidx/compose/ui/input/pointer/PointerInputEventData;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    iput-boolean v7, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->i:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    move v4, v7

    :goto_7
    if-ge v4, v13, :cond_10

    if-nez v9, :cond_f

    if-eq v4, v11, :cond_f

    if-eqz v10, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    move v5, v8

    goto :goto_8

    :cond_f
    move v5, v7

    :goto_8
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->e(Landroidx/compose/ui/platform/AndroidComposeView;Landroid/view/MotionEvent;Landroidx/compose/ui/geometry/Offset;IZ)Landroidx/compose/ui/input/pointer/PointerInputEventData;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_10
    :goto_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v8, :cond_11

    iput-boolean v7, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->h:Z

    iput-boolean v7, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->i:Z

    iput-object v6, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->j:Landroidx/compose/ui/geometry/Offset;

    :cond_11
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->f(Landroid/view/MotionEvent;)V

    new-instance p0, Landroidx/compose/ui/input/pointer/PointerInputEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v12, p1}, Landroidx/compose/ui/input/pointer/PointerInputEvent;-><init>(JLjava/util/List;Landroid/view/MotionEvent;)V

    return-object p0

    :cond_12
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->clear()V

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    iput-boolean v7, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->h:Z

    iput-boolean v7, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->i:Z

    iput-object v6, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->j:Landroidx/compose/ui/geometry/Offset;

    return-object v6
.end method

.method public final e(Landroidx/compose/ui/platform/AndroidComposeView;Landroid/view/MotionEvent;Landroidx/compose/ui/geometry/Offset;IZ)Landroidx/compose/ui/input/pointer/PointerInputEventData;
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget-object v6, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_0

    invoke-virtual {v6, v7}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v5

    move-wide v12, v5

    goto :goto_0

    :cond_0
    iget-wide v7, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->a:J

    const-wide/16 v9, 0x1

    add-long/2addr v9, v7

    iput-wide v9, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->a:J

    invoke-virtual {v6, v5, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    move-wide v12, v7

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v7, v5

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    const-wide v10, 0xffffffffL

    and-long/2addr v5, v10

    or-long v30, v7, v5

    sget-object v5, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    iget-wide v5, v3, Landroidx/compose/ui/geometry/Offset;->a:J

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v6, v3

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v14, v3

    shl-long v5, v6, v9

    and-long v7, v14, v10

    or-long/2addr v5, v7

    :goto_1
    invoke-virtual {v1, v5, v6}, Landroidx/compose/ui/platform/AndroidComposeView;->f(J)J

    move-result-wide v7

    :goto_2
    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    goto :goto_4

    :cond_2
    if-eqz v3, :cond_3

    iget-wide v5, v3, Landroidx/compose/ui/geometry/Offset;->a:J

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v3

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v6, v3

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v14, v3

    shl-long v5, v6, v9

    and-long v7, v14, v10

    or-long/2addr v5, v7

    :goto_3
    invoke-virtual {v1, v5, v6}, Landroidx/compose/ui/platform/AndroidComposeView;->f(J)J

    move-result-wide v7

    goto :goto_2

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_b

    const/4 v6, 0x1

    if-eq v1, v6, :cond_7

    const/4 v6, 0x2

    if-eq v1, v6, :cond_6

    if-eq v1, v3, :cond_5

    const/4 v6, 0x4

    if-eq v1, v6, :cond_4

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->b:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    const/16 v22, 0x0

    goto :goto_8

    :cond_4
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->b:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/input/pointer/PointerType;->f:I

    :goto_6
    move/from16 v22, v1

    goto :goto_8

    :cond_5
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->b:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/input/pointer/PointerType;->d:I

    goto :goto_6

    :cond_6
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->b:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/input/pointer/PointerType;->e:I

    goto :goto_6

    :cond_7
    const/16 v1, 0x2002

    invoke-virtual {v2, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_8

    const v1, 0x100008

    invoke-virtual {v2, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iget-boolean v1, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->h:Z

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->i:Z

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->b:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/input/pointer/PointerType;->c:I

    goto :goto_6

    :cond_a
    :goto_7
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->b:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/input/pointer/PointerType;->d:I

    goto :goto_6

    :cond_b
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->b:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :goto_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    const/4 v7, 0x0

    :goto_9
    const/16 v8, 0x33

    const/16 v14, 0x32

    move/from16 v20, v9

    const/16 v9, 0x34

    const-wide/16 v23, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    if-ge v7, v6, :cond_10

    invoke-virtual {v2, v4, v7}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v27

    invoke-virtual {v2, v4, v7}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v29

    const v32, 0x7fffffff

    move-wide/from16 v33, v10

    and-int v10, v29, v32

    const/high16 v11, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v10, v11, :cond_f

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    and-int v10, v10, v32

    if-ge v10, v11, :cond_f

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v15

    move/from16 v27, v6

    int-to-long v5, v15

    shl-long v10, v10, v20

    and-long v5, v5, v33

    or-long v38, v10, v5

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v36

    invoke-virtual {v2, v9, v4, v7}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    cmpl-float v5, v5, v26

    if-lez v5, :cond_c

    move-object v15, v6

    goto :goto_a

    :cond_c
    const/4 v15, 0x0

    :goto_a
    if-eqz v15, :cond_d

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v25

    :cond_d
    move/from16 v40, v25

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getClassification()I

    move-result v5

    if-ne v5, v3, :cond_e

    invoke-virtual {v2, v14, v4, v7}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v5

    invoke-virtual {v2, v8, v4, v7}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v8, v5

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    shl-long v8, v8, v20

    and-long v5, v5, v33

    or-long v23, v8, v5

    :goto_b
    move-wide/from16 v41, v23

    goto :goto_c

    :cond_e
    sget-object v5, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_b

    :goto_c
    new-instance v35, Landroidx/compose/ui/input/pointer/HistoricalChange;

    const/16 v45, 0x0

    move-wide/from16 v43, v38

    invoke-direct/range {v35 .. v45}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJFJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v35

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_f
    move/from16 v27, v6

    :goto_d
    add-int/lit8 v7, v7, 0x1

    move/from16 v9, v20

    move/from16 v6, v27

    move-wide/from16 v10, v33

    goto/16 :goto_9

    :cond_10
    move-wide/from16 v33, v10

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_11

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    neg-float v6, v6

    add-float v6, v6, v26

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v10, v5

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    shl-long v10, v10, v20

    and-long v5, v5, v33

    or-long/2addr v5, v10

    goto :goto_e

    :cond_11
    sget-object v5, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v5, v23

    :goto_e
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getClassification()I

    move-result v7

    const/4 v10, 0x5

    if-ne v7, v10, :cond_13

    invoke-virtual {v2, v9, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    cmpl-float v7, v7, v26

    if-lez v7, :cond_12

    move-object v15, v9

    goto :goto_f

    :cond_12
    const/4 v15, 0x0

    :goto_f
    if-eqz v15, :cond_13

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v25

    :cond_13
    move/from16 v27, v25

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getClassification()I

    move-result v7

    if-ne v7, v3, :cond_14

    invoke-virtual {v2, v14, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v3

    invoke-virtual {v2, v8, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v7

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v8, v3

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v10, v3

    shl-long v7, v8, v20

    and-long v9, v10, v33

    or-long v23, v7, v9

    :goto_10
    move-wide/from16 v28, v23

    goto :goto_11

    :cond_14
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_10

    :goto_11
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v23

    new-instance v11, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    const/16 v32, 0x0

    move/from16 v20, p5

    move-object/from16 v24, v1

    move-wide/from16 v25, v5

    invoke-direct/range {v11 .. v32}, Landroidx/compose/ui/input/pointer/PointerInputEventData;-><init>(JJJJZFIZLjava/util/List;JFJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v11
.end method

.method public final f(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->c:Landroid/util/SparseBooleanArray;

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->b:Landroid/util/SparseLongArray;

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v4, 0x6

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->delete(I)V

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v0, v4, :cond_4

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_1
    const/4 v3, -0x1

    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-ne v6, v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method
