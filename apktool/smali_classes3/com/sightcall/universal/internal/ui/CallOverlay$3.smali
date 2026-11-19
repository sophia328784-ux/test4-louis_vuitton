.class Lcom/sightcall/universal/internal/ui/CallOverlay$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/CallOverlay;->animateAndRemove(Landroid/view/View;Landroid/view/WindowManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallOverlay;Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$3;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$3;->val$windowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$3;->val$view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$3;->val$view:Landroid/view/View;

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallOverlay$3$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/ui/CallOverlay$3$1;-><init>(Lcom/sightcall/universal/internal/ui/CallOverlay$3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
