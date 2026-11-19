.class Lcom/sightcall/universal/internal/ui/CallOverlay$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/CallOverlay;->addCallView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$2;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$2;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->c(Lcom/sightcall/universal/internal/ui/CallOverlay;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$2;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->a(Lcom/sightcall/universal/internal/ui/CallOverlay;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$2;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->b(Lcom/sightcall/universal/internal/ui/CallOverlay;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$2;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    invoke-static {v2}, Lcom/sightcall/universal/internal/ui/CallOverlay;->c(Lcom/sightcall/universal/internal/ui/CallOverlay;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    neg-int v4, v2

    iget-object v5, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$2;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    invoke-static {v5}, Lcom/sightcall/universal/internal/ui/CallOverlay;->c(Lcom/sightcall/universal/internal/ui/CallOverlay;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v3

    neg-int v6, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    if-eq v7, v8, :cond_1

    if-eq v7, v3, :cond_1

    const/4 v3, 0x3

    if-eq v7, v3, :cond_1

    return v1

    :cond_1
    iget v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$2;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v7, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$2;->initialTouchX:F

    sub-float/2addr v3, v7

    float-to-int v3, v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$2;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v7, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$2;->initialTouchY:F

    sub-float/2addr p2, v7

    float-to-int p2, p2

    add-int/2addr v3, p2

    invoke-static {v4, v1, v2}, Lcom/sightcall/universal/internal/ui/CallOverlay;->f(III)I

    move-result p2

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v6, v3, v5}, Lcom/sightcall/universal/internal/ui/CallOverlay;->f(III)I

    move-result p2

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$2;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->d(Lcom/sightcall/universal/internal/ui/CallOverlay;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v8

    :cond_2
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v4, p1, v2}, Lcom/sightcall/universal/internal/ui/CallOverlay;->f(III)I

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$2;->initialX:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v6, p1, v5}, Lcom/sightcall/universal/internal/ui/CallOverlay;->f(III)I

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$2;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$2;->initialTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$2;->initialTouchY:F

    return v8

    :cond_3
    :goto_0
    return v1
.end method
