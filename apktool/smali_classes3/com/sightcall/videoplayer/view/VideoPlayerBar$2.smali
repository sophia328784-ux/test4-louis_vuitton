.class Lcom/sightcall/videoplayer/view/VideoPlayerBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/videoplayer/view/VideoPlayerBar;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;


# direct methods
.method public constructor <init>(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$2;->this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$2;->this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

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
