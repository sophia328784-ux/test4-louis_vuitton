.class Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/widget/AutoScrollHelper;


# direct methods
.method public constructor <init>(Landroidx/core/widget/AutoScrollHelper;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-boolean v1, v0, Landroidx/core/widget/AutoScrollHelper;->p:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Landroidx/core/widget/AutoScrollHelper;->n:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Landroidx/core/widget/AutoScrollHelper;->n:Z

    iget-object v0, v0, Landroidx/core/widget/AutoScrollHelper;->b:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->e:J

    const-wide/16 v5, -0x1

    iput-wide v5, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->g:J

    iput-wide v3, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->f:J

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->h:F

    :cond_1
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-object v0, v0, Landroidx/core/widget/AutoScrollHelper;->b:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    iget-wide v3, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->g:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget-wide v7, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->g:J

    iget v1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->i:I

    int-to-long v9, v1

    add-long/2addr v7, v9

    cmp-long v1, v3, v7

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    invoke-virtual {v1}, Landroidx/core/widget/AutoScrollHelper;->g()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    iget-object p0, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iput-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->p:Z

    return-void

    :cond_3
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-boolean v3, v1, Landroidx/core/widget/AutoScrollHelper;->o:Z

    if-eqz v3, :cond_4

    iput-boolean v2, v1, Landroidx/core/widget/AutoScrollHelper;->o:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-wide v9, v7

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v1, v1, Landroidx/core/widget/AutoScrollHelper;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    iget-wide v1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->f:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->a(J)F

    move-result v3

    const/high16 v4, -0x3f800000    # -4.0f

    mul-float/2addr v4, v3

    mul-float/2addr v4, v3

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    iget-wide v4, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->f:J

    sub-long v4, v1, v4

    iput-wide v1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->f:J

    long-to-float v1, v4

    mul-float/2addr v1, v3

    iget v0, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->d:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    invoke-virtual {v1, v0}, Landroidx/core/widget/AutoScrollHelper;->f(I)V

    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-object v0, v0, Landroidx/core/widget/AutoScrollHelper;->d:Landroid/view/View;

    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    const-string p0, "Cannot compute scroll delta before calling start()"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method
