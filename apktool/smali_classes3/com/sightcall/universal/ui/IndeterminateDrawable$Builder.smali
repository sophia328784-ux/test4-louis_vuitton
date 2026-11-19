.class public Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/ui/IndeterminateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private padding:F

.field private final paint:Landroid/graphics/Paint;

.field private rotationDuration:I

.field private sweepDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->padding:F

    const/16 v0, 0x535

    iput v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->sweepDuration:I

    const/16 v0, 0x1a09

    iput v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->rotationDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->displayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->paint:Landroid/graphics/Paint;

    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 p0, 0x40800000    # 4.0f

    invoke-static {v1, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    const/high16 p0, -0x1000000

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->padding:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->rotationDuration:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->sweepDuration:I

    return p0
.end method


# virtual methods
.method public build()Lcom/sightcall/universal/ui/IndeterminateDrawable;
    .locals 2

    new-instance v0, Lcom/sightcall/universal/ui/IndeterminateDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sightcall/universal/ui/IndeterminateDrawable;-><init>(Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;I)V

    return-object v0
.end method

.method public color(I)Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public padding(F)Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;
    .locals 0

    .line 11
    iput p1, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->padding:F

    return-object p0
.end method

.method public padding(I)Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;
    .locals 2

    int-to-float p1, p1

    iget-object v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->displayMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->padding:F

    return-object p0
.end method

.method public rotationDuration(I)Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;
    .locals 0

    iput p1, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->rotationDuration:I

    return-object p0
.end method

.method public strokeWidth(F)Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method public strokeWidth(I)Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->paint:Landroid/graphics/Paint;

    int-to-float p1, p1

    iget-object v1, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->displayMetrics:Landroid/util/DisplayMetrics;

    const/4 v2, 0x1

    invoke-static {v2, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method public sweepDuration(I)Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;
    .locals 0

    iput p1, p0, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->sweepDuration:I

    return-object p0
.end method
