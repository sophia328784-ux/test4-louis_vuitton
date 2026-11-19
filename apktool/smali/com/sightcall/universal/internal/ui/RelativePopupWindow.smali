.class Lcom/sightcall/universal/internal/ui/RelativePopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/ui/RelativePopupWindow$HorizontalPosition;,
        Lcom/sightcall/universal/internal/ui/RelativePopupWindow$VerticalPosition;
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(II)V

    return-void
.end method

.method private static getDropDownMeasureSpecMode(I)I
    .locals 1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static makeDropDownMeasureSpec(I)I
    .locals 1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/RelativePopupWindow;->getDropDownMeasureSpecMode(I)I

    move-result p0

    invoke-static {v0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public showOnAnchor(Landroid/view/View;IIIIZ)V
    .locals 7

    invoke-virtual {p0, p6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    invoke-static {v1}, Lcom/sightcall/universal/internal/ui/RelativePopupWindow;->makeDropDownMeasureSpec(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    invoke-static {v2}, Lcom/sightcall/universal/internal/ui/RelativePopupWindow;->makeDropDownMeasureSpec(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez p6, :cond_0

    new-array v5, v4, [I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v6, v5, v3

    add-int/2addr p4, v6

    aget v5, v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    add-int/2addr p5, v6

    :cond_0
    const/4 v5, 0x4

    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    const/4 v6, 0x3

    if-eq p2, v6, :cond_2

    if-eq p2, v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    sub-int/2addr p5, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    :goto_1
    sub-int/2addr p5, p2

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p2, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v4

    div-int/2addr v0, v4

    add-int/2addr v0, p2

    goto :goto_0

    :goto_2
    if-eqz p3, :cond_8

    if-eq p3, v2, :cond_6

    if-eq p3, v4, :cond_7

    if-eq p3, v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr v1, p2

    :cond_6
    sub-int/2addr p4, v1

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    :goto_3
    add-int/2addr p4, p2

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/2addr p2, v4

    div-int/2addr v1, v4

    sub-int/2addr p2, v1

    goto :goto_3

    :goto_4
    if-eqz p6, :cond_9

    invoke-virtual {p0, p1, p4, p5, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void

    :cond_9
    invoke-virtual {p0, p1, v3, p4, p5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showOnAnchor(Landroid/view/View;IIZ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 128
    invoke-virtual/range {v0 .. v6}, Lcom/sightcall/universal/internal/ui/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIIIZ)V

    return-void
.end method
