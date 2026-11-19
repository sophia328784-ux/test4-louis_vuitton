.class public Lcom/sightcall/universal/internal/proposition/SignatureView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/proposition/SignatureView$Point;,
        Lcom/sightcall/universal/internal/proposition/SignatureView$SignatureListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x3

.field public static final DEFAULT_MAX_STROKE_WIDTH:F = 5.0f

.field public static final DEFAULT_MIN_STROKE_WIDTH:F = 1.5f

.field public static final DEFAULT_SMOOTHING_RATIO:F = 0.75f

.field private static final DEFAULT_STROKE_COLOR:I = -0x1000000

.field private static final FILTER_RATIO_ACCELERATION_MODIFIER:F = 0.1f

.field private static final FILTER_RATIO_MIN:F = 0.22f

.field public static final FLAG_INTERPOLATION:I = 0x1

.field public static final FLAG_RESPONSIVE_WIDTH:I = 0x2

.field private static final THRESHOLD_ACCELERATION:F = 3.0f

.field private static final THRESHOLD_VELOCITY:F = 7.0f


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private density:F

.field private dirty:Landroid/graphics/RectF;

.field private flags:I

.field private hasSignature:Z

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sightcall/universal/internal/proposition/SignatureView$SignatureListener;",
            ">;"
        }
    .end annotation
.end field

.field private maxStrokeWidth:F

.field private minStrokeWidth:F

.field private paint:Landroid/graphics/Paint;

.field private final pointQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sightcall/universal/internal/proposition/SignatureView$Point;",
            ">;"
        }
    .end annotation
.end field

.field private final pointRecycle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sightcall/universal/internal/proposition/SignatureView$Point;",
            ">;"
        }
    .end annotation
.end field

.field private smoothingRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointRecycle:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->listeners:Ljava/util/ArrayList;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->init(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointRecycle:Ljava/util/ArrayList;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->listeners:Ljava/util/ArrayList;

    const/4 p1, 0x3

    .line 33
    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->init(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointRecycle:Ljava/util/ArrayList;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->listeners:Ljava/util/ArrayList;

    const/4 p1, 0x3

    .line 38
    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->init(I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/proposition/SignatureView;)F
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/SignatureView;->getDensity()F

    move-result p0

    return p0
.end method

.method private addPoint(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)V
    .locals 5

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointRecycle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointRecycle:Ljava/util/ArrayList;

    sub-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    invoke-static {v0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->m(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v0

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->i(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;F)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->f(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->computeStrokeWidth(F)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    invoke-static {v0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->m(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v2

    invoke-static {p1, v2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->i(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;F)V

    invoke-static {v0}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->f(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v2

    invoke-static {p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->f(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v3

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    invoke-static {v0, v3}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->i(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;F)V

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->k(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->paint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->f(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sightcall/universal/internal/proposition/SignatureView;->computeStrokeWidth(F)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    iget-object v1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    invoke-static {v1, v0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->k(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)V

    invoke-static {v1, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->m(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v2

    invoke-static {p1, v2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->i(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;F)V

    invoke-direct {p0, v0, v1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->draw(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointRecycle:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private computeStrokeWidth(F)F
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/proposition/SignatureView;->hasFlags(I)Z

    move-result v0

    iget v1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->maxStrokeWidth:F

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->minStrokeWidth:F

    sub-float p0, v1, p0

    const/high16 v0, 0x40e00000    # 7.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float/2addr p1, p0

    sub-float/2addr v1, p1

    :cond_0
    return v1
.end method

.method private draw(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)V
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 467
    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->canvas:Landroid/graphics/Canvas;

    invoke-static {p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v1

    invoke-static {p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result p1

    iget-object v2, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 468
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private draw(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->dirty:Landroid/graphics/RectF;

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v2

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->dirty:Landroid/graphics/RectF;

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v2

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->dirty:Landroid/graphics/RectF;

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v2

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->dirty:Landroid/graphics/RectF;

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v2

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->f(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->f(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->e(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)J

    move-result-wide v2

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->e(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    const v3, 0x3e6147ae    # 0.22f

    add-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->f(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v4

    invoke-direct {v0, v4}, Lcom/sightcall/universal/internal/proposition/SignatureView;->computeStrokeWidth(F)F

    move-result v4

    iget-object v5, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    mul-float/2addr v4, v1

    invoke-static {v3, v1, v5, v4}, Ltr;->a(FFFF)F

    move-result v1

    sub-float v4, v1, v5

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/sightcall/universal/internal/proposition/SignatureView;->hasFlags(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v10

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v11

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    div-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v7, v6, 0x1

    int-to-float v7, v7

    div-float/2addr v3, v7

    mul-float v7, v3, v3

    mul-float v8, v7, v3

    mul-float/2addr v3, v2

    mul-float v9, v7, v2

    const/high16 v10, 0x40c00000    # 6.0f

    mul-float/2addr v7, v10

    mul-float/2addr v10, v8

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v11

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->a(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v12

    add-float/2addr v11, v12

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v12

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->d(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v14

    mul-float/2addr v14, v13

    sub-float/2addr v12, v14

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->b(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v13

    add-float/2addr v12, v13

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v13

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->a(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v14

    sub-float/2addr v13, v14

    mul-float/2addr v13, v2

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v14

    add-float/2addr v13, v14

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->d(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v14

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->b(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v15

    sub-float/2addr v14, v15

    mul-float/2addr v14, v2

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v2

    sub-float/2addr v14, v2

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v2

    add-float/2addr v14, v2

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->c(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v2

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v15

    sub-float/2addr v2, v15

    mul-float/2addr v2, v3

    mul-float v15, v11, v9

    add-float/2addr v15, v2

    mul-float v2, v13, v8

    add-float/2addr v2, v15

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->d(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v15

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v16

    sub-float v15, v15, v16

    mul-float/2addr v15, v3

    mul-float/2addr v9, v12

    add-float/2addr v9, v15

    mul-float/2addr v8, v14

    add-float/2addr v8, v9

    mul-float/2addr v11, v7

    mul-float/2addr v13, v10

    add-float/2addr v11, v13

    mul-float/2addr v12, v7

    mul-float/2addr v14, v10

    add-float/2addr v12, v14

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v7

    const/4 v9, 0x0

    move v15, v8

    move v8, v3

    move v3, v15

    move v15, v9

    move v9, v7

    move v7, v15

    move v15, v11

    move/from16 v16, v12

    :goto_0
    add-int/lit8 v10, v7, 0x1

    iget-object v11, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->paint:Landroid/graphics/Paint;

    if-ge v7, v6, :cond_0

    add-float v7, v8, v2

    add-float v12, v9, v3

    move/from16 p1, v2

    int-to-float v2, v10

    mul-float/2addr v2, v4

    move/from16 v17, v2

    int-to-float v2, v6

    div-float v2, v17, v2

    add-float/2addr v2, v5

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move v2, v7

    iget-object v7, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->canvas:Landroid/graphics/Canvas;

    move v11, v12

    iget-object v12, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->paint:Landroid/graphics/Paint;

    move/from16 v19, v10

    move v10, v2

    move/from16 v2, v19

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v7, p1, v15

    add-float v3, v3, v16

    add-float/2addr v15, v13

    add-float v16, v16, v14

    iget-object v8, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->dirty:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->left:F

    iget-object v8, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->dirty:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->right:F

    iget-object v8, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->dirty:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->top:F

    iget-object v8, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->dirty:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->bottom:F

    move v8, v7

    move v7, v2

    move v2, v8

    move v8, v10

    move v9, v11

    goto :goto_0

    :cond_0
    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v7, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->canvas:Landroid/graphics/Canvas;

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v10

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v11

    iget-object v12, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget-object v13, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->canvas:Landroid/graphics/Canvas;

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v14

    invoke-static/range {p1 .. p1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v15

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->g(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v16

    invoke-static/range {p2 .. p2}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->h(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)F

    move-result v17

    iget-object v2, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->paint:Landroid/graphics/Paint;

    move-object/from16 v18, v2

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/sightcall/universal/internal/proposition/SignatureView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_1
    invoke-direct {v0}, Lcom/sightcall/universal/internal/proposition/SignatureView;->invalidateDirty()V

    return-void
.end method

.method private getDensity()F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->density:F

    return p0
.end method

.method private getRecycledPoint(FFJ)Lcom/sightcall/universal/internal/proposition/SignatureView$Point;
    .locals 8

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointRecycle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;-><init>(Lcom/sightcall/universal/internal/proposition/SignatureView;FFJI)V

    return-object v1

    :cond_0
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    iget-object p0, v2, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointRecycle:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    invoke-static {p0, v3, v4, v5, v6}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->l(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;FFJ)Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    move-result-object p0

    return-object p0
.end method

.method private init(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->setFlags(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->density:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->setColor(I)V

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->setMaxStrokeWidth(F)V

    const/high16 p1, 0x3fc00000    # 1.5f

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->setMinStrokeWidth(F)V

    const/high16 p1, 0x3f400000    # 0.75f

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->setSmoothingRatio(F)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->dirty:Landroid/graphics/RectF;

    return-void
.end method

.method private invalidateDirty()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public addFlag(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->addFlags(I)V

    return-void
.end method

.method public addFlags(I)V
    .locals 1

    iget v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->flags:I

    return-void
.end method

.method public addListener(Lcom/sightcall/universal/internal/proposition/SignatureView$SignatureListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->hasSignature:Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->bitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->canvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/universal/internal/proposition/SignatureView$SignatureListener;

    invoke-interface {v1}, Lcom/sightcall/universal/internal/proposition/SignatureView$SignatureListener;->onSignatureClear()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public clearFlags()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->flags:I

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/proposition/SignatureView;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public getSmoothingRatio()F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->smoothingRatio:F

    return p0
.end method

.method public hasFlag(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->hasFlags(I)Z

    move-result p0

    return p0
.end method

.method public hasFlags(I)Z
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->flags:I

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSignature()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->hasSignature:Z

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/proposition/SignatureView;->clear()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/sightcall/universal/internal/proposition/SignatureView;->getRecycledPoint(FFJ)Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->addPoint(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)V

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->hasSignature:Z

    iget-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sightcall/universal/internal/proposition/SignatureView$SignatureListener;

    invoke-interface {v3}, Lcom/sightcall/universal/internal/proposition/SignatureView$SignatureListener;->onSignatureDraw()V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcj;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->j(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;FF)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/sightcall/universal/internal/proposition/SignatureView;->getRecycledPoint(FFJ)Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->addPoint(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)V

    :cond_1
    if-ne v0, v2, :cond_4

    iget-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->draw(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;->k(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/internal/proposition/SignatureView$Point;

    invoke-direct {p0, p1, v0}, Lcom/sightcall/universal/internal/proposition/SignatureView;->draw(Lcom/sightcall/universal/internal/proposition/SignatureView$Point;Lcom/sightcall/universal/internal/proposition/SignatureView$Point;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointRecycle:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->pointQueue:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    return v2
.end method

.method public removeFlag(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->removeFlags(I)V

    return-void
.end method

.method public removeFlags(I)V
    .locals 1

    iget v0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->flags:I

    return-void
.end method

.method public removeListener(Lcom/sightcall/universal/internal/proposition/SignatureView$SignatureListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->flags:I

    return-void
.end method

.method public setMaxStrokeWidth(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->maxStrokeWidth:F

    return-void
.end method

.method public setMinStrokeWidth(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->minStrokeWidth:F

    return-void
.end method

.method public setSmoothingRatio(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/proposition/SignatureView;->smoothingRatio:F

    return-void
.end method
