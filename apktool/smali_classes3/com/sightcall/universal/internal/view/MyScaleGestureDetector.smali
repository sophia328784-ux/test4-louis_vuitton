.class Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$OnScaleCallback;,
        Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$MySimpleOnScaleGestureListener;
    }
.end annotation


# instance fields
.field private final MAX:F

.field private final MIN:F

.field private final callback:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$OnScaleCallback;

.field private final detector:Landroid/view/ScaleGestureDetector;

.field private scaleFactor:F

.field private time:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$OnScaleCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->MIN:F

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->MAX:F

    iput v0, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->scaleFactor:F

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->callback:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$OnScaleCallback;

    new-instance p2, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$MySimpleOnScaleGestureListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$MySimpleOnScaleGestureListener;-><init>(Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;I)V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->detector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->scaleFactor:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;)J
    .locals 2

    iget-wide v0, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->time:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;F)V
    .locals 0

    iput p1, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->scaleFactor:F

    return-void
.end method

.method private callback()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->callback:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$OnScaleCallback;

    iget v1, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->scaleFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$OnScaleCallback;->onScale(F)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->time:J

    return-void
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->callback()V

    return-void
.end method


# virtual methods
.method public configure(F)V
    .locals 1

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->scaleFactor:F

    return-void
.end method

.method public isInProgress()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->detector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->detector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->scaleFactor:F

    return-void
.end method
