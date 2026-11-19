.class Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$MySimpleOnScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySimpleOnScaleGestureListener"
.end annotation


# instance fields
.field private final DELTA:J

.field private final EPSILON:F

.field final synthetic this$0:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;)V
    .locals 2

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$MySimpleOnScaleGestureListener;->this$0:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const p1, 0x3ccccccd    # 0.025f

    iput p1, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$MySimpleOnScaleGestureListener;->EPSILON:F

    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$MySimpleOnScaleGestureListener;->DELTA:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$MySimpleOnScaleGestureListener;-><init>(Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3ccccccd    # 0.025f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$MySimpleOnScaleGestureListener;->this$0:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->a(Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;)F

    move-result v1

    mul-float/2addr v1, p1

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$MySimpleOnScaleGestureListener;->this$0:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->a(Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$MySimpleOnScaleGestureListener;->this$0:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-static {v2, p1}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->c(Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;F)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$MySimpleOnScaleGestureListener;->this$0:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->b(Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$MySimpleOnScaleGestureListener;->this$0:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->d(Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$MySimpleOnScaleGestureListener;->this$0:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->d(Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;)V

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$MySimpleOnScaleGestureListener;->this$0:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->d(Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;)V

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method
