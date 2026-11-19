.class Lcom/sightcall/universal/internal/ui/CallOverlay$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/CallOverlay$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sightcall/universal/internal/ui/CallOverlay$3;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallOverlay$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$3$1;->this$1:Lcom/sightcall/universal/internal/ui/CallOverlay$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$3$1;->this$1:Lcom/sightcall/universal/internal/ui/CallOverlay$3;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$3;->val$windowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$3;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/sightcall/universal/internal/view/ViewUtils;->removeViewSilently(Landroid/view/WindowManager;Landroid/view/View;Z)V

    return-void
.end method
