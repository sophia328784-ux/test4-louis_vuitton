.class public final Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;
.super Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetPosition;
.implements Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetColor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000  2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001 B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u0008\u0010\u0017\u001a\u00020\u0012H\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\u001d\u001a\u00020\u001bH\u0016J\u0008\u0010\u001e\u001a\u00020\u001bH\u0016J\u0008\u0010\u001f\u001a\u00020\u001bH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;",
        "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
        "Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetPosition;",
        "Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetColor;",
        "view",
        "Landroid/view/ViewGroup;",
        "position",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;",
        "color",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;",
        "<init>",
        "(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V",
        "strokeWidth",
        "",
        "outlineWidth",
        "cornerRadius",
        "pointerRadius",
        "outline",
        "Landroid/graphics/Paint;",
        "stroke",
        "getStroke",
        "annotationColor",
        "fill",
        "getFill",
        "content",
        "Lcom/sightcall/advancedannotations/domain/drawer/DrawableView;",
        "reloadLayout",
        "",
        "set",
        "moveToFront",
        "updateLayout",
        "delete",
        "Companion",
        "advancedannotations_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation$Companion;

.field private static final FILL_OPACITY:I = 0x33


# instance fields
.field private final content:Lcom/sightcall/advancedannotations/domain/drawer/DrawableView;

.field private final cornerRadius:F

.field private fill:Landroid/graphics/Paint;

.field private final outline:Landroid/graphics/Paint;

.field private final outlineWidth:F

.field private final pointerRadius:F

.field private position:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

.field private stroke:Landroid/graphics/Paint;

.field private final strokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->Companion:Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->position:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    sget p2, Lcom/sightcall/advancedannotations/R$dimen;->path_stroke_width:I

    invoke-virtual {p0, p2}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->strokeWidth:F

    sget v0, Lcom/sightcall/advancedannotations/R$dimen;->path_outline_width:I

    invoke-virtual {p0, v0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->outlineWidth:F

    sget v1, Lcom/sightcall/advancedannotations/R$dimen;->path_radius_effect:I

    invoke-virtual {p0, v1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->cornerRadius:F

    sget v2, Lcom/sightcall/advancedannotations/R$dimen;->pointer_radius:I

    invoke-virtual {p0, v2}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->pointerRadius:F

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-float/2addr p2, v0

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance p2, Landroid/graphics/CornerPathEffect;

    invoke-direct {p2, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iput-object v2, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->outline:Landroid/graphics/Paint;

    invoke-direct {p0, p3}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->getStroke(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->stroke:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->getFill()Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->fill:Landroid/graphics/Paint;

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/DrawableView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/advancedannotations/domain/drawer/DrawableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p2, Lxg0;

    const/16 p3, 0x18

    invoke-direct {p2, p0, p1, p3}, Lxg0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p2}, Lcom/sightcall/advancedannotations/domain/drawer/DrawableView;->setOnDraw(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->content:Lcom/sightcall/advancedannotations/domain/drawer/DrawableView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    instance-of p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p2, Ltb0;

    const/16 p3, 0x1d

    invoke-direct {p2, p0, p3}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p2}, Lcom/sightcall/libraries/ui/ConstraintSet;->applyConstraints(Landroidx/constraintlayout/widget/ConstraintLayout;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method

.method private static final _init_$lambda$0(Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;Landroidx/constraintlayout/widget/ConstraintSet;)Lkotlin/Unit;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->content:Lcom/sightcall/advancedannotations/domain/drawer/DrawableView;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1, v0}, Lcom/sightcall/libraries/ui/ConstraintSet;->layoutOver$default(Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final content$lambda$0$0(Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;Landroid/view/ViewGroup;Landroid/graphics/Canvas;)Lkotlin/Unit;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->position:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    invoke-static {v0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->xFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F

    move-result v0

    iget-object v1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->position:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    invoke-static {v1, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->yFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    iget p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->pointerRadius:F

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->outline:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->pointerRadius:F

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->fill:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v1, p1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->pointerRadius:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v1, p1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic d(Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;Landroidx/constraintlayout/widget/ConstraintSet;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->_init_$lambda$0(Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;Landroidx/constraintlayout/widget/ConstraintSet;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;Landroid/view/ViewGroup;Landroid/graphics/Canvas;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->content$lambda$0$0(Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;Landroid/view/ViewGroup;Landroid/graphics/Canvas;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final getFill()Landroid/graphics/Paint;
    .locals 1

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->stroke:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-object p0
.end method

.method private final getStroke(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->toColor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->strokeWidth:F

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance p1, Landroid/graphics/CornerPathEffect;

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->cornerRadius:F

    invoke-direct {p1, p0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-object v0
.end method


# virtual methods
.method public delete()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->content:Lcom/sightcall/advancedannotations/domain/drawer/DrawableView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->content:Lcom/sightcall/advancedannotations/domain/drawer/DrawableView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public moveToFront()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->content:Lcom/sightcall/advancedannotations/domain/drawer/DrawableView;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method public reloadLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->updateLayout()V

    return-void
.end method

.method public set(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->getStroke(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->stroke:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->getFill()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->fill:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->needsUpdate()V

    return-void
.end method

.method public set(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->position:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    .line 20
    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->needsUpdate()V

    return-void
.end method

.method public updateLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->content:Lcom/sightcall/advancedannotations/domain/drawer/DrawableView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
