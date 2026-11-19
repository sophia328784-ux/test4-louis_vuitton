.class public final synthetic Landroidx/media3/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Landroidx/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/f;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    iget-object p0, p0, Landroidx/media3/ui/f;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p7

    sub-int/2addr p5, p7

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result p7

    sub-int/2addr p5, p7

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p7

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p9

    sub-int/2addr p7, p9

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p7, p3

    iget-object p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d:Landroid/view/ViewGroup;

    invoke-static {p3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->c(Landroid/view/View;)I

    move-result p9

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    sub-int/2addr p9, v2

    if-nez p3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    add-int/2addr p3, v2

    goto :goto_2

    :cond_3
    move p3, v0

    :goto_2
    sub-int/2addr v1, p3

    iget-object p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->j:Landroid/view/ViewGroup;

    invoke-static {p3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->c(Landroid/view/View;)I

    move-result p3

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->l:Landroid/view/View;

    invoke-static {v2}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {p9, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object p9, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->e:Landroid/view/ViewGroup;

    if-nez p9, :cond_4

    move v2, v0

    goto :goto_3

    :cond_4
    invoke-virtual {p9}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p9

    instance-of v3, p9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_5

    check-cast p9, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p9, p9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, p9

    add-int/2addr v2, v3

    :cond_5
    :goto_3
    const/4 p9, 0x2

    mul-int/2addr v2, p9

    add-int/2addr v2, v1

    const/4 v1, 0x1

    if-le p5, p3, :cond_7

    if-gt p7, v2, :cond_6

    goto :goto_4

    :cond_6
    move p3, v0

    goto :goto_5

    :cond_7
    :goto_4
    move p3, v1

    :goto_5
    iget-boolean p5, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->B:Z

    if-eq p5, p3, :cond_8

    iput-boolean p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->B:Z

    new-instance p3, Landroidx/media3/ui/d;

    invoke-direct {p3, p0, v1}, Landroidx/media3/ui/d;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-eq p4, p8, :cond_9

    move v0, v1

    :cond_9
    iget-boolean p2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->B:Z

    if-nez p2, :cond_a

    if-eqz v0, :cond_a

    new-instance p2, Landroidx/media3/ui/d;

    invoke-direct {p2, p0, p9}, Landroidx/media3/ui/d;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method
