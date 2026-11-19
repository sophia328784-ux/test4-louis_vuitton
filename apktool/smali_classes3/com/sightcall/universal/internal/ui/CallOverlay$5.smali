.class Lcom/sightcall/universal/internal/ui/CallOverlay$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/CallOverlay;->moveCallViewTo(FFZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

.field final synthetic val$END_X:I

.field final synthetic val$END_Y:I

.field final synthetic val$START_X:I

.field final synthetic val$START_Y:I

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallOverlay;Landroid/view/WindowManager$LayoutParams;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->val$params:Landroid/view/WindowManager$LayoutParams;

    iput p3, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->val$START_X:I

    iput p4, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->val$END_X:I

    iput p5, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->val$START_Y:I

    iput p6, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->val$END_Y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->a(Lcom/sightcall/universal/internal/ui/CallOverlay;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->b(Lcom/sightcall/universal/internal/ui/CallOverlay;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->val$START_X:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->val$END_X:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->val$START_Y:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->val$END_Y:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    float-to-int p1, v2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/CallOverlay;->d(Lcom/sightcall/universal/internal/ui/CallOverlay;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->a(Lcom/sightcall/universal/internal/ui/CallOverlay;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$5;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
