.class public Lcom/batch/android/messaging/view/CloseButton;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/s0/c;


# static fields
.field private static final q:Ljava/lang/String; = "CloseButton"

.field private static final r:I = 0x20

.field private static final s:I = 0xa

.field private static final t:I = 0xa

.field private static final u:I = 0x2


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field protected g:F

.field private h:I

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint$Cap;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/RectF;

.field private o:Landroid/graphics/RectF;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x20

    iput p1, p0, Lcom/batch/android/messaging/view/CloseButton;->a:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/batch/android/messaging/view/CloseButton;->b:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/batch/android/messaging/view/CloseButton;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/batch/android/messaging/view/CloseButton;->d:I

    iput v0, p0, Lcom/batch/android/messaging/view/CloseButton;->e:I

    iput v0, p0, Lcom/batch/android/messaging/view/CloseButton;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/batch/android/messaging/view/CloseButton;->g:F

    iput v0, p0, Lcom/batch/android/messaging/view/CloseButton;->h:I

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->l:Landroid/graphics/Paint$Cap;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->n:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->o:Landroid/graphics/RectF;

    iput-boolean p1, p0, Lcom/batch/android/messaging/view/CloseButton;->p:Z

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x20

    .line 51
    iput p1, p0, Lcom/batch/android/messaging/view/CloseButton;->a:I

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcom/batch/android/messaging/view/CloseButton;->b:I

    const/high16 p2, -0x1000000

    .line 53
    iput p2, p0, Lcom/batch/android/messaging/view/CloseButton;->c:I

    const/4 p2, -0x1

    .line 54
    iput p2, p0, Lcom/batch/android/messaging/view/CloseButton;->d:I

    .line 55
    iput p2, p0, Lcom/batch/android/messaging/view/CloseButton;->e:I

    .line 56
    iput p2, p0, Lcom/batch/android/messaging/view/CloseButton;->f:I

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/batch/android/messaging/view/CloseButton;->g:F

    .line 58
    iput p2, p0, Lcom/batch/android/messaging/view/CloseButton;->h:I

    .line 59
    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    iput-object p2, p0, Lcom/batch/android/messaging/view/CloseButton;->l:Landroid/graphics/Paint$Cap;

    .line 60
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/batch/android/messaging/view/CloseButton;->n:Landroid/graphics/RectF;

    .line 61
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/batch/android/messaging/view/CloseButton;->o:Landroid/graphics/RectF;

    .line 62
    iput-boolean p1, p0, Lcom/batch/android/messaging/view/CloseButton;->p:Z

    .line 63
    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x20

    .line 65
    iput p1, p0, Lcom/batch/android/messaging/view/CloseButton;->a:I

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/batch/android/messaging/view/CloseButton;->b:I

    const/high16 p2, -0x1000000

    .line 67
    iput p2, p0, Lcom/batch/android/messaging/view/CloseButton;->c:I

    const/4 p2, -0x1

    .line 68
    iput p2, p0, Lcom/batch/android/messaging/view/CloseButton;->d:I

    .line 69
    iput p2, p0, Lcom/batch/android/messaging/view/CloseButton;->e:I

    .line 70
    iput p2, p0, Lcom/batch/android/messaging/view/CloseButton;->f:I

    const/4 p3, 0x0

    .line 71
    iput p3, p0, Lcom/batch/android/messaging/view/CloseButton;->g:F

    .line 72
    iput p2, p0, Lcom/batch/android/messaging/view/CloseButton;->h:I

    .line 73
    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    iput-object p2, p0, Lcom/batch/android/messaging/view/CloseButton;->l:Landroid/graphics/Paint$Cap;

    .line 74
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/batch/android/messaging/view/CloseButton;->n:Landroid/graphics/RectF;

    .line 75
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/batch/android/messaging/view/CloseButton;->o:Landroid/graphics/RectF;

    .line 76
    iput-boolean p1, p0, Lcom/batch/android/messaging/view/CloseButton;->p:Z

    .line 77
    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x20

    .line 79
    iput p1, p0, Lcom/batch/android/messaging/view/CloseButton;->a:I

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/batch/android/messaging/view/CloseButton;->b:I

    const/high16 p2, -0x1000000

    .line 81
    iput p2, p0, Lcom/batch/android/messaging/view/CloseButton;->c:I

    const/4 p2, -0x1

    .line 82
    iput p2, p0, Lcom/batch/android/messaging/view/CloseButton;->d:I

    .line 83
    iput p2, p0, Lcom/batch/android/messaging/view/CloseButton;->e:I

    .line 84
    iput p2, p0, Lcom/batch/android/messaging/view/CloseButton;->f:I

    const/4 p3, 0x0

    .line 85
    iput p3, p0, Lcom/batch/android/messaging/view/CloseButton;->g:F

    .line 86
    iput p2, p0, Lcom/batch/android/messaging/view/CloseButton;->h:I

    .line 87
    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    iput-object p2, p0, Lcom/batch/android/messaging/view/CloseButton;->l:Landroid/graphics/Paint$Cap;

    .line 88
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/batch/android/messaging/view/CloseButton;->n:Landroid/graphics/RectF;

    .line 89
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/batch/android/messaging/view/CloseButton;->o:Landroid/graphics/RectF;

    .line 90
    iput-boolean p1, p0, Lcom/batch/android/messaging/view/CloseButton;->p:Z

    .line 91
    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 295
    new-instance v0, Lcom/batch/android/messaging/view/CloseButton$a;

    invoke-direct {v0, p0}, Lcom/batch/android/messaging/view/CloseButton$a;-><init>(Lcom/batch/android/messaging/view/CloseButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 296
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 297
    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->c()V

    .line 298
    const-string v0, "Close button"

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/batch/android/messaging/view/CloseButton;->setPadding(I)V

    .line 300
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x101030e

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 301
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/batch/android/messaging/view/CloseButton;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 303
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "background-color"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "CloseButton"

    const-string v5, ")"

    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/batch/android/messaging/view/CloseButton;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unparsable background color ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "color"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/batch/android/messaging/view/CloseButton;->setGlyphColor(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unparsable glyph color ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "glyph-padding"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/batch/android/o0/b;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/batch/android/messaging/view/CloseButton;->setGlyphPadding(I)V

    goto/16 :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "glyph-width"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/batch/android/o0/b;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/batch/android/messaging/view/CloseButton;->setGlyphWidth(I)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "elevation"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/batch/android/o0/b;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0, v2}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setElevation(F)V

    goto/16 :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "z-index"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/batch/android/o0/b;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0, v2}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setZ(F)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public b()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/batch/android/messaging/view/CloseButton;->a:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    div-float/2addr v3, v4

    iget v4, p0, Lcom/batch/android/messaging/view/CloseButton;->e:I

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v4, v0

    mul-float/2addr v4, v3

    float-to-int v4, v4

    :goto_0
    iput v4, p0, Lcom/batch/android/messaging/view/CloseButton;->h:I

    iget-object v4, p0, Lcom/batch/android/messaging/view/CloseButton;->j:Landroid/graphics/Paint;

    iget v5, p0, Lcom/batch/android/messaging/view/CloseButton;->f:I

    const/high16 v6, 0x40000000    # 2.0f

    if-ltz v5, :cond_1

    int-to-float v0, v5

    goto :goto_1

    :cond_1
    mul-float/2addr v0, v6

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    :goto_1
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->k:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/batch/android/messaging/view/CloseButton;->j:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v3, v1, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/batch/android/messaging/view/CloseButton;->j:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/batch/android/messaging/view/CloseButton;->n:Landroid/graphics/RectF;

    sub-int v5, v0, v3

    int-to-float v5, v5

    sub-int v6, v1, v3

    int-to-float v6, v6

    add-int/2addr v0, v3

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->o:Landroid/graphics/RectF;

    int-to-float v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr p0, v2

    int-to-float p0, p0

    invoke-virtual {v0, v1, v1, v3, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public c()V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->i:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->i:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->i:Landroid/graphics/Paint;

    iget v2, p0, Lcom/batch/android/messaging/view/CloseButton;->c:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->j:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->j:Landroid/graphics/Paint;

    iget v3, p0, Lcom/batch/android/messaging/view/CloseButton;->d:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->j:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/batch/android/messaging/view/CloseButton;->l:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/batch/android/messaging/view/CloseButton;->d:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->b()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/batch/android/messaging/view/CloseButton;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object p0, p0, Lcom/batch/android/messaging/view/CloseButton;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 0

    invoke-super {p0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object p0

    return-object p0
.end method

.method public getPadding()I
    .locals 0

    iget p0, p0, Lcom/batch/android/messaging/view/CloseButton;->b:I

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object p0, p0, Lcom/batch/android/messaging/view/CloseButton;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/batch/android/messaging/view/CloseButton;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/batch/android/messaging/view/CloseButton;->h:I

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v3, v1

    iget v0, p0, Lcom/batch/android/messaging/view/CloseButton;->h:I

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/batch/android/messaging/view/CloseButton;->h:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/batch/android/messaging/view/CloseButton;->h:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/batch/android/messaging/view/CloseButton;->j:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v8, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/batch/android/messaging/view/CloseButton;->h:I

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float v9, p1

    iget p1, p0, Lcom/batch/android/messaging/view/CloseButton;->h:I

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float v10, v0

    iget p1, p0, Lcom/batch/android/messaging/view/CloseButton;->h:I

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float v11, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/batch/android/messaging/view/CloseButton;->h:I

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float v12, p1

    iget-object v13, p0, Lcom/batch/android/messaging/view/CloseButton;->j:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-boolean p1, p0, Lcom/batch/android/messaging/view/CloseButton;->p:Z

    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/batch/android/messaging/view/CloseButton;->o:Landroid/graphics/RectF;

    iget-object v13, p0, Lcom/batch/android/messaging/view/CloseButton;->k:Landroid/graphics/Paint;

    const/high16 v11, 0x43b40000    # 360.0f

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    iget p1, p0, Lcom/batch/android/messaging/view/CloseButton;->g:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v9, p0, Lcom/batch/android/messaging/view/CloseButton;->n:Landroid/graphics/RectF;

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float v11, p1, v0

    iget-object v13, p0, Lcom/batch/android/messaging/view/CloseButton;->j:Landroid/graphics/Paint;

    const/high16 v10, -0x3d4c0000    # -90.0f

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/batch/android/messaging/view/CloseButton;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr v0, p2

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    iget p1, p0, Lcom/batch/android/messaging/view/CloseButton;->a:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p1, p2

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->b()V

    iget-object p0, p0, Lcom/batch/android/messaging/view/CloseButton;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/batch/android/messaging/view/CloseButton;->c:I

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->c()V

    return-void
.end method

.method public setCountdownProgress(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/batch/android/messaging/view/CloseButton;->g:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setForegoundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/messaging/view/CloseButton;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGlyphColor(I)V
    .locals 0

    iput p1, p0, Lcom/batch/android/messaging/view/CloseButton;->d:I

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->c()V

    return-void
.end method

.method public setGlyphPadding(I)V
    .locals 0

    iput p1, p0, Lcom/batch/android/messaging/view/CloseButton;->e:I

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->b()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGlyphStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/messaging/view/CloseButton;->l:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->b()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGlyphWidth(I)V
    .locals 0

    iput p1, p0, Lcom/batch/android/messaging/view/CloseButton;->f:I

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->b()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    iput p1, p0, Lcom/batch/android/messaging/view/CloseButton;->b:I

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->b()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/batch/android/messaging/view/CloseButton;->setPadding(I)V

    return-void
.end method

.method public setShowBorder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/batch/android/messaging/view/CloseButton;->p:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/batch/android/messaging/view/CloseButton;->a:I

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->b()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/batch/android/messaging/view/CloseButton;->m:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
