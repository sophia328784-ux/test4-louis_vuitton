.class public Lcom/batch/android/j0/c;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/batch/android/messaging/Size2D;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/messaging/Size2D;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/batch/android/j0/c;->a(Lcom/batch/android/messaging/Size2D;)V

    return-void
.end method

.method private a(Lcom/batch/android/messaging/Size2D;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/batch/android/j0/c;->setTargetSize(Lcom/batch/android/messaging/Size2D;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 9

    iget-object v0, p0, Lcom/batch/android/j0/c;->a:Lcom/batch/android/messaging/Size2D;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-double v0, p2

    iget-object v2, p0, Lcom/batch/android/j0/c;->a:Lcom/batch/android/messaging/Size2D;

    iget v3, v2, Lcom/batch/android/messaging/Size2D;->b:I

    int-to-double v3, v3

    iget v2, v2, Lcom/batch/android/messaging/Size2D;->c:I

    int-to-double v5, v2

    div-double v7, v3, v5

    mul-double/2addr v7, v0

    int-to-double v0, p1

    div-double/2addr v5, v3

    mul-double/2addr v5, v0

    cmpl-double v0, v7, v0

    if-lez v0, :cond_1

    double-to-int p2, v5

    goto :goto_0

    :cond_1
    double-to-int p1, v7

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setTargetSize(Lcom/batch/android/messaging/Size2D;)V
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/batch/android/messaging/Size2D;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v0, p1, Lcom/batch/android/messaging/Size2D;->c:I

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lcom/batch/android/j0/c;->a:Lcom/batch/android/messaging/Size2D;

    return-void
.end method
