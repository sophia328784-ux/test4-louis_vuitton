.class Lcom/sightcall/universal/internal/proposition/SignatureView$Point;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/proposition/SignatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Point"
.end annotation


# instance fields
.field private c1x:F

.field private c1y:F

.field private c2x:F

.field private c2y:F

.field final synthetic this$0:Lcom/sightcall/universal/internal/proposition/SignatureView;

.field private time:J

.field private velocity:F

.field private x:F

.field private y:F


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/internal/proposition/SignatureView;FFJ)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->this$0:Lcom/sightcall/universal/internal/proposition/SignatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->reset(FFJ)Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/internal/proposition/SignatureView;FFJI)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;-><init>(Lcom/sightcall/universal/internal/proposition/SignatureView;FFJ)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c1x:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c1y:F

    return p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c2x:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c2y:F

    return p0
.end method

.method private distanceTo(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F
    .locals 2

    iget v0, p1, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->x:F

    iget v1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->x:F

    sub-float/2addr v0, v1

    iget p1, p1, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->y:F

    iget p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->y:F

    sub-float/2addr p1, p0

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr p1, v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static bridge synthetic e(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)J
    .locals 2

    iget-wide v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->time:J

    return-wide v0
.end method

.method private equals(FF)Z
    .locals 1

    iget v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->x:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    iget p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->y:F

    cmpl-float p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic f(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->velocity:F

    return p0
.end method

.method private findControlPoints(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)V
    .locals 8

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->this$0:Lcom/sightcall/universal/internal/proposition/SignatureView;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/proposition/SignatureView;->getSmoothingRatio()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez p1, :cond_1

    iget p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->x:F

    iget v2, p2, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->x:F

    sub-float/2addr v2, p1

    mul-float/2addr v2, v0

    div-float/2addr v2, v1

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c2x:F

    iget p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->y:F

    iget p2, p2, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->y:F

    sub-float/2addr p2, p1

    mul-float/2addr p2, v0

    div-float/2addr p2, v1

    add-float/2addr p2, p1

    iput p2, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c2y:F

    return-void

    :cond_1
    iget v2, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->x:F

    if-nez p2, :cond_2

    iget p2, p1, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->x:F

    sub-float/2addr p2, v2

    mul-float/2addr p2, v0

    div-float/2addr p2, v1

    add-float/2addr p2, v2

    iput p2, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c1x:F

    iget p2, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->y:F

    iget p1, p1, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->y:F

    sub-float/2addr p1, p2

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    add-float/2addr p1, p2

    iput p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c1y:F

    return-void

    :cond_2
    iget v3, p1, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->x:F

    add-float/2addr v3, v2

    div-float/2addr v3, v1

    iput v3, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c1x:F

    iget v3, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->y:F

    iget v4, p1, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->y:F

    add-float/2addr v4, v3

    div-float/2addr v4, v1

    iput v4, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c1y:F

    iget v4, p2, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->x:F

    add-float/2addr v2, v4

    div-float/2addr v2, v1

    iput v2, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c2x:F

    iget v2, p2, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->y:F

    add-float/2addr v3, v2

    div-float/2addr v3, v1

    iput v3, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c2y:F

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->distanceTo(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result p1

    invoke-direct {p0, p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->distanceTo(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result p2

    add-float/2addr p2, p1

    div-float/2addr p1, p2

    iget p2, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c1x:F

    iget v1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c2x:F

    invoke-static {v1, p2, p1, p2}, Ltr;->a(FFFF)F

    move-result v2

    iget v3, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c1y:F

    iget v4, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c2y:F

    invoke-static {v4, v3, p1, v3}, Ltr;->a(FFFF)F

    move-result p1

    iget v5, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->x:F

    sub-float/2addr v5, v2

    iget v6, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->y:F

    sub-float/2addr v6, p1

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v0

    sub-float v0, v2, p2

    mul-float/2addr v0, v7

    add-float/2addr v0, v5

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c1x:F

    sub-float p2, p1, v3

    mul-float/2addr p2, v7

    add-float/2addr p2, v6

    add-float/2addr p2, v3

    iput p2, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c1y:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, v7

    add-float/2addr v2, v5

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c2x:F

    sub-float/2addr p1, v4

    mul-float/2addr p1, v7

    add-float/2addr p1, v6

    add-float/2addr p1, v4

    iput p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c2y:F

    return-void
.end method

.method public static bridge synthetic g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->x:F

    return p0
.end method

.method public static bridge synthetic h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->y:F

    return p0
.end method

.method public static bridge synthetic i(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;F)V
    .locals 0

    iput p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->velocity:F

    return-void
.end method

.method public static bridge synthetic j(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->equals(FF)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic k(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->findControlPoints(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;FFJ)Lcom/sightcall/universal/internal/proposition/SignatureView$Point;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->reset(FFJ)Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->velocityTo(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result p0

    return p0
.end method

.method private reset(FFJ)Lcom/sightcall/universal/internal/proposition/SignatureView$Point;
    .locals 0

    iput p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->x:F

    iput p2, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->y:F

    iput-wide p3, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->time:J

    const/4 p3, 0x0

    iput p3, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->velocity:F

    iput p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c1x:F

    iput p2, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c1y:F

    iput p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c2x:F

    iput p2, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c2y:F

    return-object p0
.end method

.method private velocityTo(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F
    .locals 6

    const/high16 v0, 0x447a0000    # 1000.0f

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->distanceTo(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v1

    mul-float/2addr v1, v0

    iget-wide v2, p1, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->time:J

    iget-wide v4, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->time:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-float p1, v2

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->this$0:Lcom/sightcall/universal/internal/proposition/SignatureView;

    invoke-static {p0}, Lcom/sightcall/universal/internal/proposition/SignatureView;->a(Lcom/sightcall/universal/internal/proposition/SignatureView;)F

    move-result p0

    mul-float/2addr p0, p1

    div-float/2addr v1, p0

    return v1
.end method
