.class public Lcom/batch/android/q0/c;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/s0/c;


# static fields
.field static final synthetic A:Z = true

.field private static final r:I = -0x2

.field private static final s:I = 0x0

.field private static final t:I = 0x1

.field private static final u:I = 0x2

.field private static final v:Ljava/lang/String; = "RoundedImageView"

.field public static final w:F

.field public static final x:F

.field public static final y:Landroid/graphics/Shader$TileMode;

.field private static final z:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private final a:[F

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/content/res/ColorStateList;

.field private d:F

.field private e:Landroid/graphics/ColorFilter;

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Landroid/widget/ImageView$ScaleType;

.field private n:Landroid/graphics/Shader$TileMode;

.field private o:Landroid/graphics/Shader$TileMode;

.field private p:F

.field private final q:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/batch/android/q0/c;->y:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    filled-new-array/range {v1 .. v8}, [Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sput-object v0, Lcom/batch/android/q0/c;->z:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    new-array v0, p1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/batch/android/q0/c;->a:[F

    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/q0/c;->c:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/q0/c;->d:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/batch/android/q0/c;->e:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/batch/android/q0/c;->f:Z

    iput-boolean v1, p0, Lcom/batch/android/q0/c;->h:Z

    iput-boolean v1, p0, Lcom/batch/android/q0/c;->i:Z

    iput-boolean v1, p0, Lcom/batch/android/q0/c;->j:Z

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lcom/batch/android/q0/c;->m:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Lcom/batch/android/q0/c;->y:Landroid/graphics/Shader$TileMode;

    iput-object v1, p0, Lcom/batch/android/q0/c;->n:Landroid/graphics/Shader$TileMode;

    iput-object v1, p0, Lcom/batch/android/q0/c;->o:Landroid/graphics/Shader$TileMode;

    iput v0, p0, Lcom/batch/android/q0/c;->p:F

    new-array p1, p1, [Z

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/batch/android/q0/c;->q:[Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/batch/android/q0/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x4

    .line 56
    new-array p2, p1, [F

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/batch/android/q0/c;->a:[F

    const/high16 p2, -0x1000000

    .line 57
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/batch/android/q0/c;->c:Landroid/content/res/ColorStateList;

    const/4 p2, 0x0

    .line 58
    iput p2, p0, Lcom/batch/android/q0/c;->d:F

    const/4 p3, 0x0

    .line 59
    iput-object p3, p0, Lcom/batch/android/q0/c;->e:Landroid/graphics/ColorFilter;

    const/4 p3, 0x0

    .line 60
    iput-boolean p3, p0, Lcom/batch/android/q0/c;->f:Z

    .line 61
    iput-boolean p3, p0, Lcom/batch/android/q0/c;->h:Z

    .line 62
    iput-boolean p3, p0, Lcom/batch/android/q0/c;->i:Z

    .line 63
    iput-boolean p3, p0, Lcom/batch/android/q0/c;->j:Z

    .line 64
    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p3, p0, Lcom/batch/android/q0/c;->m:Landroid/widget/ImageView$ScaleType;

    .line 65
    sget-object p3, Lcom/batch/android/q0/c;->y:Landroid/graphics/Shader$TileMode;

    iput-object p3, p0, Lcom/batch/android/q0/c;->n:Landroid/graphics/Shader$TileMode;

    .line 66
    iput-object p3, p0, Lcom/batch/android/q0/c;->o:Landroid/graphics/Shader$TileMode;

    .line 67
    iput p2, p0, Lcom/batch/android/q0/c;->p:F

    .line 68
    new-array p1, p1, [Z

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/batch/android/q0/c;->q:[Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private a()V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/batch/android/q0/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/batch/android/q0/c;->f:Z

    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/q0/c;->g:Landroid/graphics/drawable/Drawable;

    .line 542
    iget-boolean v1, p0, Lcom/batch/android/q0/c;->h:Z

    if-eqz v1, :cond_0

    .line 543
    iget-object p0, p0, Lcom/batch/android/q0/c;->e:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    .line 507
    :cond_0
    instance-of v0, p1, Lcom/batch/android/q0/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 508
    check-cast p1, Lcom/batch/android/q0/b;

    invoke-virtual {p1, p2}, Lcom/batch/android/q0/b;->a(Landroid/widget/ImageView$ScaleType;)Lcom/batch/android/q0/b;

    move-result-object p2

    iget v0, p0, Lcom/batch/android/q0/c;->d:F

    .line 509
    invoke-virtual {p2, v0}, Lcom/batch/android/q0/b;->a(F)Lcom/batch/android/q0/b;

    move-result-object p2

    iget-object v0, p0, Lcom/batch/android/q0/c;->c:Landroid/content/res/ColorStateList;

    .line 510
    invoke-virtual {p2, v0}, Lcom/batch/android/q0/b;->a(Landroid/content/res/ColorStateList;)Lcom/batch/android/q0/b;

    move-result-object p2

    iget-boolean v0, p0, Lcom/batch/android/q0/c;->i:Z

    .line 511
    invoke-virtual {p2, v0}, Lcom/batch/android/q0/b;->a(Z)Lcom/batch/android/q0/b;

    move-result-object p2

    iget-object v0, p0, Lcom/batch/android/q0/c;->n:Landroid/graphics/Shader$TileMode;

    .line 512
    invoke-virtual {p2, v0}, Lcom/batch/android/q0/b;->a(Landroid/graphics/Shader$TileMode;)Lcom/batch/android/q0/b;

    move-result-object p2

    iget-object v0, p0, Lcom/batch/android/q0/c;->o:Landroid/graphics/Shader$TileMode;

    .line 513
    invoke-virtual {p2, v0}, Lcom/batch/android/q0/b;->b(Landroid/graphics/Shader$TileMode;)Lcom/batch/android/q0/b;

    .line 514
    iget-object p2, p0, Lcom/batch/android/q0/c;->a:[F

    if-eqz p2, :cond_1

    .line 515
    aget v0, p2, v1

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget p2, p2, v3

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/batch/android/q0/b;->a(FFFF)Lcom/batch/android/q0/b;

    .line 516
    :cond_1
    invoke-direct {p0}, Lcom/batch/android/q0/c;->a()V

    return-void

    .line 517
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    .line 518
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 519
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 520
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/batch/android/q0/c;->a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private static b(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 22
    :cond_0
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 23
    :cond_1
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 24
    :cond_2
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method private b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/batch/android/q0/c;->j:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/batch/android/q0/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/batch/android/q0/b;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/q0/c;->b:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p1, p0, Lcom/batch/android/q0/c;->b:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, p1, v0}, Lcom/batch/android/q0/c;->a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method private d()Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Lcom/batch/android/q0/c;->l:I

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/q0/c;->l:I

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/batch/android/q0/b;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private e()Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Lcom/batch/android/q0/c;->k:I

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/q0/c;->k:I

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/batch/android/q0/b;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/q0/c;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/batch/android/q0/c;->m:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/batch/android/q0/c;->a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/batch/android/q0/c;->a:[F

    aget p0, p0, p1

    return p0
.end method

.method public a(FFFF)V
    .locals 6

    .line 528
    iget-object v0, p0, Lcom/batch/android/q0/c;->a:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    cmpl-float v2, v2, p1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v2, :cond_0

    aget v2, v0, v5

    cmpl-float v2, v2, p2

    if-nez v2, :cond_0

    aget v2, v0, v4

    cmpl-float v2, v2, p4

    if-nez v2, :cond_0

    aget v2, v0, v3

    cmpl-float v2, v2, p3

    if-nez v2, :cond_0

    return-void

    .line 529
    :cond_0
    aput p1, v0, v1

    .line 530
    aput p2, v0, v5

    .line 531
    aput p3, v0, v3

    .line 532
    aput p4, v0, v4

    .line 533
    invoke-direct {p0}, Lcom/batch/android/q0/c;->f()V

    .line 534
    invoke-direct {p0, v1}, Lcom/batch/android/q0/c;->b(Z)V

    .line 535
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public a(IF)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/batch/android/q0/c;->a:[F

    aget v1, v0, p1

    cmpl-float v1, v1, p2

    if-nez v1, :cond_0

    return-void

    .line 524
    :cond_0
    aput p2, v0, p1

    .line 525
    invoke-direct {p0}, Lcom/batch/android/q0/c;->f()V

    const/4 p1, 0x0

    .line 526
    invoke-direct {p0, p1}, Lcom/batch/android/q0/c;->b(Z)V

    .line 527
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 522
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/q0/c;->a(IF)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Float;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const/4 v5, 0x2

    aput-object v1, v2, v5

    const/4 v6, 0x3

    aput-object v1, v2, v6

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "border-radius"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/batch/android/o0/b;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v1

    int-to-float v1, v1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/batch/android/q0/c;->setCornerRadius(F)V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "opacity"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/batch/android/o0/b;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "elevation"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/batch/android/o0/b;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setElevation(F)V

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "scale"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "fill"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/batch/android/q0/c;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0

    :cond_6
    const-string v7, "fit"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/batch/android/q0/c;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "z-index"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/batch/android/o0/b;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setZ(F)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "rounded-corners"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "all"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v1, p0, Lcom/batch/android/q0/c;->q:[Z

    aput-boolean v4, v1, v3

    aput-boolean v4, v1, v4

    aput-boolean v4, v1, v6

    aput-boolean v4, v1, v5

    goto :goto_2

    :cond_9
    const-string v7, "left"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v1, p0, Lcom/batch/android/q0/c;->q:[Z

    aput-boolean v4, v1, v3

    aput-boolean v3, v1, v4

    aput-boolean v4, v1, v6

    aput-boolean v3, v1, v5

    goto :goto_2

    :cond_a
    const-string v7, "right"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v1, p0, Lcom/batch/android/q0/c;->q:[Z

    aput-boolean v3, v1, v3

    aput-boolean v4, v1, v4

    aput-boolean v3, v1, v6

    aput-boolean v4, v1, v5

    goto :goto_2

    :cond_b
    const-string v7, "top"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v1, p0, Lcom/batch/android/q0/c;->q:[Z

    aput-boolean v4, v1, v3

    aput-boolean v4, v1, v4

    aput-boolean v3, v1, v6

    aput-boolean v3, v1, v5

    goto :goto_2

    :cond_c
    const-string v7, "bottom"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/batch/android/q0/c;->q:[Z

    aput-boolean v3, v1, v3

    aput-boolean v3, v1, v4

    aput-boolean v4, v1, v6

    aput-boolean v4, v1, v5

    :cond_d
    :goto_2
    iget v1, p0, Lcom/batch/android/q0/c;->p:F

    invoke-virtual {p0, v1}, Lcom/batch/android/q0/c;->setCornerRadius(F)V

    goto/16 :goto_0

    :cond_e
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "padding-left"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/batch/android/o0/b;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v3

    goto/16 :goto_0

    :cond_f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "padding-top"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/batch/android/o0/b;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v4

    goto/16 :goto_0

    :cond_10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "padding-right"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/batch/android/o0/b;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v5

    goto/16 :goto_0

    :cond_11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "padding-bottom"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/batch/android/o0/b;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v6

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    aget-object v0, v2, v3

    invoke-static {p1, v0}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v0

    aget-object v1, v2, v4

    invoke-static {p1, v1}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v1

    aget-object v3, v2, v5

    invoke-static {p1, v3}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v3

    aget-object v2, v2, v6

    invoke-static {p1, v2}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result p1

    invoke-virtual {p0, v0, v1, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 536
    iget-boolean v0, p0, Lcom/batch/android/q0/c;->j:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 537
    :cond_0
    iput-boolean p1, p0, Lcom/batch/android/q0/c;->j:Z

    const/4 p1, 0x1

    .line 538
    invoke-direct {p0, p1}, Lcom/batch/android/q0/c;->b(Z)V

    .line 539
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public b()Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/batch/android/q0/c;->i:Z

    return p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/q0/c;->j:Z

    return p0
.end method

.method public drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getBorderColor()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/q0/c;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/q0/c;->c:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getBorderWidth()F
    .locals 0

    iget p0, p0, Lcom/batch/android/q0/c;->d:F

    return p0
.end method

.method public getCornerRadius()F
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/q0/c;->getMaxCornerRadius()F

    move-result p0

    return p0
.end method

.method public getMaxCornerRadius()F
    .locals 4

    iget-object p0, p0, Lcom/batch/android/q0/c;->a:[F

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/q0/c;->m:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/q0/c;->n:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/q0/c;->o:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/batch/android/q0/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/q0/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/batch/android/q0/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/batch/android/q0/c;->b:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/batch/android/q0/c;->b(Z)V

    iget-object p1, p0, Lcom/batch/android/q0/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    iget v0, p0, Lcom/batch/android/q0/c;->l:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/batch/android/q0/c;->l:I

    invoke-direct {p0}, Lcom/batch/android/q0/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/q0/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/batch/android/q0/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 38
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/batch/android/q0/c;->setBorderColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/q0/c;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x1000000

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/batch/android/q0/c;->c:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/batch/android/q0/c;->f()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/batch/android/q0/c;->b(Z)V

    iget p1, p0, Lcom/batch/android/q0/c;->d:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    iget v0, p0, Lcom/batch/android/q0/c;->d:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/batch/android/q0/c;->d:F

    invoke-direct {p0}, Lcom/batch/android/q0/c;->f()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/batch/android/q0/c;->b(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/batch/android/q0/c;->setBorderWidth(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/q0/c;->e:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/batch/android/q0/c;->e:Landroid/graphics/ColorFilter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/batch/android/q0/c;->h:Z

    iput-boolean p1, p0, Lcom/batch/android/q0/c;->f:Z

    invoke-direct {p0}, Lcom/batch/android/q0/c;->a()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 6

    iput p1, p0, Lcom/batch/android/q0/c;->p:F

    iget-object v0, p0, Lcom/batch/android/q0/c;->q:[Z

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x1

    aget-boolean v3, v0, v3

    if-eqz v3, :cond_1

    move v3, p1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v4, 0x2

    aget-boolean v4, v0, v4

    if-eqz v4, :cond_2

    move v4, p1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    const/4 v5, 0x3

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move p1, v2

    :goto_3
    invoke-virtual {p0, v1, v3, v4, p1}, Lcom/batch/android/q0/c;->a(FFFF)V

    return-void
.end method

.method public setCornerRadiusDimen(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/batch/android/q0/c;->a(FFFF)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/q0/c;->k:I

    invoke-static {p1}, Lcom/batch/android/q0/b;->a(Landroid/graphics/Bitmap;)Lcom/batch/android/q0/b;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/q0/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/batch/android/q0/c;->f()V

    iget-object p1, p0, Lcom/batch/android/q0/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/q0/c;->k:I

    invoke-static {p1}, Lcom/batch/android/q0/b;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/q0/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/batch/android/q0/c;->f()V

    iget-object p1, p0, Lcom/batch/android/q0/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    iget v0, p0, Lcom/batch/android/q0/c;->k:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/batch/android/q0/c;->k:I

    invoke-direct {p0}, Lcom/batch/android/q0/c;->e()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/q0/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/batch/android/q0/c;->f()V

    iget-object p1, p0, Lcom/batch/android/q0/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/batch/android/q0/c;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOval(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/batch/android/q0/c;->i:Z

    invoke-direct {p0}, Lcom/batch/android/q0/c;->f()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/batch/android/q0/c;->b(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    sget-boolean v0, Lcom/batch/android/q0/c;->A:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, La61;->h()V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/batch/android/q0/c;->m:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/batch/android/q0/c;->m:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-direct {p0}, Lcom/batch/android/q0/c;->f()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/batch/android/q0/c;->b(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/q0/c;->n:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/batch/android/q0/c;->n:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0}, Lcom/batch/android/q0/c;->f()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/batch/android/q0/c;->b(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/q0/c;->o:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/batch/android/q0/c;->o:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0}, Lcom/batch/android/q0/c;->f()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/batch/android/q0/c;->b(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
