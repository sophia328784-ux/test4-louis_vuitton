.class public final Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 (2\u00020\u0001:\u0001(B\u0013\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001d\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B%\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\nH\u0014J\u0008\u0010#\u001a\u00020 H\u0002J\u0008\u0010$\u001a\u00020 H\u0002J\u0010\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\'H\u0014R(\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\u0013@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "value",
        "LSCCollimator;",
        "collimator",
        "getCollimator",
        "()LSCCollimator;",
        "setCollimator",
        "(LSCCollimator;)V",
        "",
        "focusCornerRadius",
        "getFocusCornerRadius",
        "()F",
        "setFocusCornerRadius",
        "(F)V",
        "focusPaint",
        "Landroid/graphics/Paint;",
        "focusPath",
        "Landroid/graphics/Path;",
        "focusRect",
        "Landroid/graphics/RectF;",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "redrawFocusPath",
        "calculateFocusRect",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "Companion",
        "lib_release"
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
.field public static final Companion:Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView$Companion;

.field private static final DEFAULT_VALUE:F


# instance fields
.field private collimator:LSCCollimator;

.field private focusCornerRadius:F

.field private focusPaint:Landroid/graphics/Paint;

.field private focusPath:Landroid/graphics/Path;

.field private focusRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->Companion:Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, v0, v1}, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->focusPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->focusPath:Landroid/graphics/Path;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p3, Lcom/sightcall/mediacapture/R$styleable;->CollimatorView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    sget p2, Lcom/sightcall/mediacapture/R$styleable;->CollimatorView_focusCornerRadius:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->setFocusCornerRadius(F)V

    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->focusPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private final calculateFocusRect()V
    .locals 5

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->collimator:LSCCollimator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LSCCollimator;->a(II)LSCCollimator$Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, LSCCollimator$Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, LSCCollimator$Rect;-><init>(FFFF)V

    :goto_0
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, LSCCollimator$Rect;->b:F

    iget v3, v0, LSCCollimator$Rect;->a:F

    iget v4, v0, LSCCollimator$Rect;->c:F

    add-float/2addr v4, v2

    iget v0, v0, LSCCollimator$Rect;->d:F

    add-float/2addr v0, v3

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->focusRect:Landroid/graphics/RectF;

    return-void
.end method

.method private final redrawFocusPath()V
    .locals 4

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->calculateFocusRect()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->focusRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->focusCornerRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iput-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->focusPath:Landroid/graphics/Path;

    return-void

    :cond_0
    const-string p0, "focusRect"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final getCollimator()LSCCollimator;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->collimator:LSCCollimator;

    return-object p0
.end method

.method public final getFocusCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->focusCornerRadius:F

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->focusPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->focusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->redrawFocusPath()V

    return-void
.end method

.method public final setCollimator(LSCCollimator;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->collimator:LSCCollimator;

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->redrawFocusPath()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setFocusCornerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->focusCornerRadius:F

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->redrawFocusPath()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
