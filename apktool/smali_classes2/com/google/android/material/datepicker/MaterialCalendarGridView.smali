.class final Lcom/google/android/material/datepicker/MaterialCalendarGridView;
.super Landroid/widget/GridView;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/Calendar;

.field public final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/material/datepicker/UtcDates;->g(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b:Ljava/util/Calendar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x101020d

    invoke-static {p2, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->L(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0a00cd

    invoke-virtual {p0, p1}, Landroid/view/View;->setNextFocusLeftId(I)V

    const p1, 0x7f0a0129

    invoke-virtual {p0, p1}, Landroid/view/View;->setNextFocusRightId(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0404a5

    invoke-static {p2, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->L(ILandroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->c:Z

    new-instance p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;

    invoke-direct {p1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->t(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/material/datepicker/MonthAdapter;
    .locals 0

    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/datepicker/MonthAdapter;

    return-object p0
.end method

.method public final b(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getAdapter()Landroid/widget/Adapter;
    .locals 0

    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/datepicker/MonthAdapter;

    return-object p0
.end method

.method public final getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    .line 7
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/datepicker/MonthAdapter;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/datepicker/MonthAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-super {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/MonthAdapter;

    iget-object v2, v1, Lcom/google/android/material/datepicker/MonthAdapter;->c:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v3, v1, Lcom/google/android/material/datepicker/MonthAdapter;->b:Lcom/google/android/material/datepicker/Month;

    iget-object v4, v1, Lcom/google/android/material/datepicker/MonthAdapter;->e:Lcom/google/android/material/datepicker/CalendarStyle;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->d()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/MonthAdapter;->c(I)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6}, Lcom/google/android/material/datepicker/MonthAdapter;->c(I)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2}, Lcom/google/android/material/datepicker/DateSelector;->S0()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/util/Pair;

    iget-object v10, v9, Landroidx/core/util/Pair;->a:Ljava/lang/Object;

    if-eqz v10, :cond_10

    iget-object v11, v9, Landroidx/core/util/Pair;->b:Ljava/lang/Object;

    if-nez v11, :cond_0

    goto :goto_0

    :cond_0
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v9, v9, Landroidx/core/util/Pair;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v10, v15, v17

    if-gtz v10, :cond_1

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v9, v9, v15

    if-gez v9, :cond_2

    :cond_1
    move-object/from16 v20, v1

    move-object/from16 v16, v2

    move-object v15, v3

    goto/16 :goto_b

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    const/4 v15, 0x1

    if-ne v9, v15, :cond_3

    move v9, v15

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v16, v11, v16

    const/4 v10, 0x5

    move/from16 v18, v15

    iget-object v15, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b:Ljava/util/Calendar;

    if-gez v16, :cond_6

    iget v11, v3, Lcom/google/android/material/datepicker/Month;->e:I

    rem-int v11, v5, v11

    if-nez v11, :cond_4

    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    if-nez v9, :cond_5

    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v0, v11}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    goto :goto_2

    :cond_5
    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v0, v11}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    :goto_2
    move v12, v5

    goto :goto_3

    :cond_6
    invoke-virtual {v15, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v15, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    move-result v12

    add-int/2addr v12, v11

    invoke-virtual {v0, v12}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v16

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v11, v11, v16

    :goto_3
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    cmp-long v16, v13, v19

    if-lez v16, :cond_9

    add-int/lit8 v10, v6, 0x1

    iget v13, v3, Lcom/google/android/material/datepicker/Month;->e:I

    rem-int/2addr v10, v13

    if-nez v10, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    goto :goto_4

    :cond_7
    if-nez v9, :cond_8

    invoke-virtual {v0, v6}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v6}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    :goto_4
    move v13, v6

    goto :goto_5

    :cond_9
    invoke-virtual {v15, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v15, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v0, v13}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v14

    :goto_5
    invoke-virtual {v1, v12}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v16, v2

    move-object v15, v3

    invoke-virtual {v1, v13}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    move-result-wide v2

    long-to-int v2, v2

    :goto_6
    if-gt v14, v2, :cond_f

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v3

    mul-int/2addr v3, v14

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v19

    add-int v19, v19, v3

    move-object/from16 v20, v1

    add-int/lit8 v1, v19, -0x1

    invoke-virtual {v0, v3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v21

    iget-object v0, v4, Lcom/google/android/material/datepicker/CalendarStyle;->a:Lcom/google/android/material/datepicker/CalendarItemStyle;

    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarItemStyle;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int v0, v21, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v19

    move/from16 v21, v2

    iget-object v2, v4, Lcom/google/android/material/datepicker/CalendarStyle;->a:Lcom/google/android/material/datepicker/CalendarItemStyle;

    iget-object v2, v2, Lcom/google/android/material/datepicker/CalendarItemStyle;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v19, v2

    if-nez v9, :cond_c

    if-le v3, v12, :cond_a

    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    move v3, v11

    :goto_7
    if-le v13, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_a

    :cond_b
    move v1, v10

    goto :goto_a

    :cond_c
    if-le v13, v1, :cond_d

    const/4 v1, 0x0

    goto :goto_8

    :cond_d
    move v1, v10

    :goto_8
    if-le v3, v12, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_9

    :cond_e
    move v3, v11

    :goto_9
    move/from16 v28, v3

    move v3, v1

    move/from16 v1, v28

    :goto_a
    int-to-float v3, v3

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    move/from16 v24, v0

    iget-object v0, v4, Lcom/google/android/material/datepicker/CalendarStyle;->h:Landroid/graphics/Paint;

    move-object/from16 v22, p1

    move-object/from16 v27, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move/from16 v23, v3

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    goto :goto_6

    :cond_f
    move-object/from16 v0, p0

    move-object v3, v15

    move-object/from16 v2, v16

    goto/16 :goto_0

    :goto_b
    move-object/from16 v0, p0

    move-object v3, v15

    move-object/from16 v2, v16

    move-object/from16 v1, v20

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_2

    const/16 p1, 0x21

    if-ne p2, p1, :cond_0

    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MonthAdapter;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    return-void

    :cond_0
    const/16 p1, 0x82

    if-ne p2, p1, :cond_1

    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MonthAdapter;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p2, v1, :cond_3

    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/MonthAdapter;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    move-result v1

    if-lt p2, v1, :cond_1

    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/MonthAdapter;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->d()I

    move-result v1

    if-gt p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x13

    if-ne p2, p1, :cond_2

    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MonthAdapter;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    return v2

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->c:Z

    if-eqz v0, :cond_0

    const p2, 0xffffff

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    return-void
.end method

.method public final bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 30
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/datepicker/MonthAdapter;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    const-class p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/google/android/material/datepicker/MonthAdapter;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%1$s must have its Adapter set to a %2$s"

    invoke-static {p1, p0}, Ld20;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setSelection(I)V
    .locals 1

    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MonthAdapter;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    return-void
.end method
