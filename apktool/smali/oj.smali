.class public final synthetic Loj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Loj;->b:I

    iput-object p1, p0, Loj;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    iget v0, p0, Loj;->b:I

    iget-object p0, p0, Loj;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/camera/view/PreviewView;

    sget-object p1, Landroidx/camera/view/PreviewView;->n:Landroidx/camera/view/PreviewView$ImplementationMode;

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->a()V

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getViewPort()Landroidx/camera/core/ViewPort;

    :cond_1
    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/ui/PlayerControlView;

    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->t:I

    move v1, p2

    move-object p2, p1

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->s:Landroid/widget/PopupWindow;

    sub-int/2addr p4, v1

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p4, p8, :cond_2

    if-eq p5, p9, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->t()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p3

    sub-int/2addr p0, p3

    sub-int p3, p0, v0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p0

    neg-int p0, p0

    sub-int p4, p0, v0

    const/4 p5, -0x1

    const/4 p6, -0x1

    invoke-virtual/range {p1 .. p6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_3
    return-void

    :pswitch_1
    move v1, p2

    move-object p2, p1

    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    sub-int/2addr p4, v1

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_4

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_5

    :cond_4
    new-instance p1, Lz1;

    const/16 p3, 0x13

    invoke-direct {p1, p0, p3}, Lz1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
