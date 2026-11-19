.class public Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleGestureListener"
.end annotation


# instance fields
.field private maxScale:F

.field private minScale:F

.field private scale:F

.field final synthetic this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

.field private threshold:Z


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->scale:F

    iput p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->minScale:F

    iput p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->maxScale:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->threshold:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->scale:F

    return p0
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-boolean v2, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->threshold:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    goto :goto_0

    :cond_0
    const-wide v2, 0x3fc3333333333333L    # 0.15

    :goto_0
    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->threshold:Z

    iget v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->minScale:F

    iget v2, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->scale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->maxScale:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->scale:F

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->this$0:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->threshold:Z

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method

.method public setAspect(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->scale:F

    iput v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->minScale:F

    div-float p1, v0, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->maxScale:F

    return-void
.end method
