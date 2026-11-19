.class Lcom/sightcall/universal/ui/IndeterminateImageView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/ui/IndeterminateImageView;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/ui/IndeterminateImageView;

.field final synthetic val$gone:Z


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/ui/IndeterminateImageView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/ui/IndeterminateImageView$1;->this$0:Lcom/sightcall/universal/ui/IndeterminateImageView;

    iput-boolean p2, p0, Lcom/sightcall/universal/ui/IndeterminateImageView$1;->val$gone:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/sightcall/universal/ui/IndeterminateImageView$1;->this$0:Lcom/sightcall/universal/ui/IndeterminateImageView;

    iget-boolean p0, p0, Lcom/sightcall/universal/ui/IndeterminateImageView$1;->val$gone:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {p1, p0}, Lcom/sightcall/universal/ui/IndeterminateImageView;->setVisibility(I)V

    return-void
.end method
