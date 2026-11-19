.class public Lcom/batch/android/j0/g;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/j0/g$b;,
        Lcom/batch/android/j0/g$c;
    }
.end annotation


# static fields
.field private static final A:F = 9.0f

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x3

.field public static final t:I = 0x0

.field public static final u:I = 0x1

.field public static final v:I = 0x2

.field private static final w:I = 0x0

.field private static final x:I = 0x1

.field private static final y:I = 0x2

.field private static final z:F = 3.0f


# instance fields
.field private a:Lcom/batch/android/j0/g$b;

.field private final b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/ColorFilter;

.field private f:Landroid/graphics/PorterDuffColorFilter;

.field private g:I

.field private final h:Landroid/graphics/Path;

.field private final i:Landroid/graphics/RectF;

.field private j:Landroid/graphics/Paint;

.field private k:Z

.field private l:Z

.field private m:Landroid/graphics/Path;

.field private n:Z

.field private o:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/batch/android/j0/g$b;

    sget-object v1, Lcom/batch/android/j0/g$c;->b:Lcom/batch/android/j0/g$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/j0/g$b;-><init>(Lcom/batch/android/j0/g$c;[I[F)V

    invoke-direct {p0, v0, v2}, Lcom/batch/android/j0/g;-><init>(Lcom/batch/android/j0/g$b;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Lcom/batch/android/j0/g$b;Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    const/16 v0, 0xff

    iput v0, p0, Lcom/batch/android/j0/g;->g:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/batch/android/j0/g;->h:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lcom/batch/android/j0/g;->n:Z

    iput-object p1, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-direct {p0, p2}, Lcom/batch/android/j0/g;->a(Landroid/content/res/Resources;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/batch/android/j0/g$b;Landroid/content/res/Resources;Lcom/batch/android/j0/g$a;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/batch/android/j0/g;-><init>(Lcom/batch/android/j0/g$b;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/j0/g$c;[I[F)V
    .locals 1

    .line 38
    new-instance v0, Lcom/batch/android/j0/g$b;

    invoke-direct {v0, p1, p2, p3}, Lcom/batch/android/j0/g$b;-><init>(Lcom/batch/android/j0/g$c;[I[F)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/batch/android/j0/g;-><init>(Lcom/batch/android/j0/g$b;Landroid/content/res/Resources;)V

    return-void
.end method

.method private a(Lcom/batch/android/j0/g$b;)Landroid/graphics/Path;
    .locals 9

    iget-object v0, p0, Lcom/batch/android/j0/g;->m:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    iget-boolean v1, p1, Lcom/batch/android/j0/g$b;->D:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/batch/android/j0/g;->n:Z

    if-nez v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/j0/g;->n:Z

    iget-boolean v1, p1, Lcom/batch/android/j0/g$b;->D:Z

    const/high16 v2, 0x43b40000    # 360.0f

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v5

    iget v5, p1, Lcom/batch/android/j0/g$b;->w:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    int-to-float v5, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v8, p1, Lcom/batch/android/j0/g$b;->u:F

    div-float/2addr v5, v8

    :goto_1
    iget v8, p1, Lcom/batch/android/j0/g$b;->v:I

    if-eq v8, v7, :cond_4

    int-to-float p1, v8

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget p1, p1, Lcom/batch/android/j0/g$b;->t:F

    div-float p1, v7, p1

    :goto_2
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    sub-float v3, v4, p1

    sub-float v8, v6, p1

    invoke-virtual {v7, v3, v8}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    neg-float v8, v5

    invoke-virtual {v3, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v8, p0, Lcom/batch/android/j0/g;->m:Landroid/graphics/Path;

    if-nez v8, :cond_5

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/batch/android/j0/g;->m:Landroid/graphics/Path;

    goto :goto_3

    :cond_5
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    :goto_3
    iget-object p0, p0, Lcom/batch/android/j0/g;->m:Landroid/graphics/Path;

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    const/high16 v2, -0x3c4c0000    # -360.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_6

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    add-float/2addr v4, p1

    invoke-virtual {p0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v4, v5

    invoke-virtual {p0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    neg-float p1, v1

    invoke-virtual {p0, v7, v1, p1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-object p0

    :cond_6
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, v3, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, v7, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    .line 195
    iget-boolean v1, p0, Lcom/batch/android/j0/g;->n:Z

    if-eqz v1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/batch/android/j0/g;->c()Z

    .line 197
    iget-object v1, p0, Lcom/batch/android/j0/g;->h:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 198
    iget-object v1, p0, Lcom/batch/android/j0/g;->h:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    iget-object v0, v0, Lcom/batch/android/j0/g$b;->p:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/batch/android/j0/g;->n:Z

    :cond_0
    return-void
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 7

    .line 206
    iget-object p1, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    .line 207
    iget-object v0, p1, Lcom/batch/android/j0/g$b;->f:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 209
    iget-object v2, p1, Lcom/batch/android/j0/g$b;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 210
    iget-object v2, p0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p1, Lcom/batch/android/j0/g$b;->h:[I

    .line 212
    iget-object v2, p0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 213
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, -0x1000000

    .line 214
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    :goto_0
    iget-object v0, p1, Lcom/batch/android/j0/g$b;->q:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/batch/android/j0/g;->c:Landroid/graphics/Rect;

    .line 216
    iget v0, p1, Lcom/batch/android/j0/g$b;->l:I

    const/4 v2, 0x1

    if-ltz v0, :cond_3

    .line 217
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    .line 218
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 219
    iget-object v0, p0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    iget v3, p1, Lcom/batch/android/j0/g$b;->l:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 220
    iget-object v0, p1, Lcom/batch/android/j0/g$b;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 222
    iget-object v3, p1, Lcom/batch/android/j0/g$b;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 223
    iget-object v3, p0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    :cond_2
    iget v0, p1, Lcom/batch/android/j0/g$b;->m:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    .line 225
    new-instance v0, Landroid/graphics/DashPathEffect;

    iget v4, p1, Lcom/batch/android/j0/g$b;->m:F

    iget v5, p1, Lcom/batch/android/j0/g$b;->n:F

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v4, v6, v1

    aput v5, v6, v2

    invoke-direct {v0, v6, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 226
    iget-object v1, p0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 227
    :cond_3
    iput-boolean v2, p0, Lcom/batch/android/j0/g;->k:Z

    .line 228
    invoke-static {p1}, Lcom/batch/android/j0/g$b;->a(Lcom/batch/android/j0/g$b;)V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    .line 200
    shr-int/lit8 p0, p0, 0x18

    const/16 v0, 0xff

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(I)I
    .locals 1

    .line 61
    iget p0, p0, Lcom/batch/android/j0/g;->g:I

    shr-int/lit8 v0, p0, 0x7

    add-int/2addr p0, v0

    mul-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private b(IIFF)V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    iget-object v0, p0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    cmpl-float p2, p3, p1

    if-lez p2, :cond_1

    new-instance p2, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput p3, v0, v2

    aput p4, v0, v1

    invoke-direct {p2, v0, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object p1, p0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private c()Z
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/batch/android/j0/g;->k:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/batch/android/j0/g;->k:Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, v0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iget-object v6, v0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    iget-object v7, v0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    iget v9, v3, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v9, v4

    iget v10, v3, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v10, v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {v7, v8, v9, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v15, v6, Lcom/batch/android/j0/g$b;->h:[I

    if-eqz v15, :cond_11

    iget-object v3, v0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    iget v4, v6, Lcom/batch/android/j0/g$b;->c:I

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x461c4000    # 10000.0f

    if-nez v4, :cond_2

    iget-boolean v1, v6, Lcom/batch/android/j0/g$b;->C:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v1, v8

    :cond_1
    sget-object v1, Lcom/batch/android/j0/g$a;->a:[I

    iget-object v4, v6, Lcom/batch/android/j0/g$b;->e:Lcom/batch/android/j0/g$c;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v5, v3, Landroid/graphics/RectF;->right:F

    mul-float/2addr v5, v7

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    :goto_1
    mul-float/2addr v7, v3

    move v12, v1

    move v13, v4

    :goto_2
    move v14, v5

    goto :goto_5

    :pswitch_0
    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/RectF;->right:F

    :goto_3
    mul-float v5, v7, v3

    move v12, v1

    move v7, v4

    move v13, v7

    goto :goto_2

    :pswitch_1
    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v3, Landroid/graphics/RectF;->right:F

    mul-float/2addr v5, v7

    iget v3, v3, Landroid/graphics/RectF;->top:F

    goto :goto_1

    :pswitch_2
    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    :goto_4
    mul-float/2addr v7, v3

    move v12, v1

    move v14, v12

    move v13, v4

    goto :goto_5

    :pswitch_3
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v5, v7

    iget v3, v3, Landroid/graphics/RectF;->top:F

    goto :goto_1

    :pswitch_4
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :pswitch_5
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v5, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v5, v7

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :pswitch_6
    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_4

    :goto_5
    iget-object v1, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/LinearGradient;

    iget-object v3, v6, Lcom/batch/android/j0/g$b;->k:[F

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v17, v3

    move-object/from16 v16, v15

    move v15, v7

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_c

    :cond_2
    const/4 v9, 0x2

    if-ne v4, v2, :cond_9

    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v1

    iget v7, v6, Lcom/batch/android/j0/g$b;->y:F

    mul-float/2addr v4, v7

    add-float v12, v4, v1

    iget v1, v3, Landroid/graphics/RectF;->top:F

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v1

    iget v7, v6, Lcom/batch/android/j0/g$b;->z:F

    mul-float/2addr v4, v7

    add-float v13, v4, v1

    iget v1, v6, Lcom/batch/android/j0/g$b;->A:F

    iget v4, v6, Lcom/batch/android/j0/g$b;->B:I

    if-ne v4, v2, :cond_5

    iget v4, v6, Lcom/batch/android/j0/g$b;->r:I

    if-ltz v4, :cond_3

    int-to-float v4, v4

    goto :goto_6

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    :goto_6
    iget v7, v6, Lcom/batch/android/j0/g$b;->s:I

    if-ltz v7, :cond_4

    int-to-float v3, v7

    goto :goto_7

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    :goto_7
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_8
    mul-float/2addr v1, v3

    goto :goto_9

    :cond_5
    if-ne v4, v9, :cond_6

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_8

    :cond_6
    :goto_9
    iget-boolean v3, v6, Lcom/batch/android/j0/g$b;->C:Z

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    mul-float/2addr v1, v3

    :cond_7
    iput v1, v0, Lcom/batch/android/j0/g;->o:F

    cmpg-float v3, v1, v5

    if-gtz v3, :cond_8

    const v1, 0x3a83126f    # 0.001f

    :cond_8
    move v14, v1

    iget-object v1, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/RadialGradient;

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_c

    :cond_9
    if-ne v4, v9, :cond_10

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v4

    iget v9, v6, Lcom/batch/android/j0/g$b;->y:F

    mul-float/2addr v5, v9

    add-float/2addr v5, v4

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    iget v9, v6, Lcom/batch/android/j0/g$b;->z:F

    mul-float/2addr v3, v9

    add-float/2addr v3, v4

    iget-boolean v4, v6, Lcom/batch/android/j0/g$b;->C:Z

    if-eqz v4, :cond_f

    iget-object v4, v6, Lcom/batch/android/j0/g$b;->i:[I

    array-length v9, v15

    if-eqz v4, :cond_a

    array-length v10, v4

    add-int/lit8 v11, v9, 0x1

    if-eq v10, v11, :cond_b

    :cond_a
    add-int/lit8 v4, v9, 0x1

    new-array v4, v4, [I

    iput-object v4, v6, Lcom/batch/android/j0/g$b;->i:[I

    :cond_b
    invoke-static {v15, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v9, -0x1

    aget v11, v15, v10

    aput v11, v4, v9

    iget-object v11, v6, Lcom/batch/android/j0/g$b;->j:[F

    int-to-float v10, v10

    div-float v10, v7, v10

    if-eqz v11, :cond_c

    array-length v12, v11

    add-int/lit8 v13, v9, 0x1

    if-eq v12, v13, :cond_d

    :cond_c
    add-int/lit8 v11, v9, 0x1

    new-array v11, v11, [F

    iput-object v11, v6, Lcom/batch/android/j0/g$b;->j:[F

    :cond_d
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v8

    :goto_a
    if-ge v1, v9, :cond_e

    int-to-float v8, v1

    mul-float/2addr v8, v10

    mul-float/2addr v8, v12

    aput v8, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_e
    aput v7, v11, v9

    move-object v15, v4

    goto :goto_b

    :cond_f
    const/4 v11, 0x0

    :goto_b
    iget-object v1, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/SweepGradient;

    invoke-direct {v4, v5, v3, v15, v11}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_10
    :goto_c
    iget-object v1, v6, Lcom/batch/android/j0/g$b;->f:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_11
    iget-object v0, v0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private f()Z
    .locals 2

    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    iget v0, v0, Lcom/batch/android/j0/g$b;->l:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Lcom/batch/android/j0/g;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    invoke-static {p0}, Lcom/batch/android/j0/g;->a(I)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-virtual {v0, p1}, Lcom/batch/android/j0/g$b;->a(F)V

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Lcom/batch/android/j0/g;->n:Z

    .line 170
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a(FF)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-virtual {v0, p1, p2}, Lcom/batch/android/j0/g$b;->a(FF)V

    const/4 p1, 0x1

    .line 182
    iput-boolean p1, p0, Lcom/batch/android/j0/g;->k:Z

    .line 183
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-virtual {v0, p1, p2}, Lcom/batch/android/j0/g$b;->a(II)V

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lcom/batch/android/j0/g;->n:Z

    .line 180
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a(IIFF)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/batch/android/j0/g$b;->a(ILandroid/content/res/ColorStateList;FF)V

    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/batch/android/j0/g;->b(IIFF)V

    return-void
.end method

.method public a(ILandroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/batch/android/j0/g;->a(ILandroid/content/res/ColorStateList;FF)V

    return-void
.end method

.method public a(ILandroid/content/res/ColorStateList;FF)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/batch/android/j0/g$b;->a(ILandroid/content/res/ColorStateList;FF)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    .line 176
    invoke-virtual {p2, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 177
    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/batch/android/j0/g;->b(IIFF)V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-virtual {v0, p1}, Lcom/batch/android/j0/g$b;->a(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    .line 203
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 204
    :goto_0
    iget-object p1, p0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a(Lcom/batch/android/j0/g$c;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    iput-object p1, v0, Lcom/batch/android/j0/g$b;->e:Lcom/batch/android/j0/g$c;

    const/4 p1, 0x1

    .line 188
    iput-boolean p1, p0, Lcom/batch/android/j0/g;->k:Z

    .line 189
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    iput-boolean p1, v0, Lcom/batch/android/j0/g$b;->C:Z

    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lcom/batch/android/j0/g;->k:Z

    .line 186
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a([F)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-virtual {v0, p1}, Lcom/batch/android/j0/g$b;->a([F)V

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/batch/android/j0/g;->n:Z

    .line 167
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a([I[F)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-virtual {v0, p1}, Lcom/batch/android/j0/g$b;->a([I)V

    if-eqz p2, :cond_0

    .line 191
    iget-object p1, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-virtual {p1, p2}, Lcom/batch/android/j0/g$b;->b([F)V

    :cond_0
    const/4 p1, 0x1

    .line 192
    iput-boolean p1, p0, Lcom/batch/android/j0/g;->k:Z

    .line 193
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/batch/android/j0/g;->l:Z

    return-void
.end method

.method public b(F)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/batch/android/j0/g$b;->a(FI)V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/batch/android/j0/g;->k:Z

    .line 60
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public b(II)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/batch/android/j0/g;->a(IIFF)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/j0/g$b;->a(Landroid/content/res/ColorStateList;)V

    .line 417
    iget-object v0, p0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 418
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public d()F
    .locals 2

    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    iget v0, v0, Lcom/batch/android/j0/g$b;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/batch/android/j0/g;->c()Z

    iget p0, p0, Lcom/batch/android/j0/g;->o:F

    return p0
.end method

.method public d(I)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-virtual {v0, p1}, Lcom/batch/android/j0/g$b;->a(I)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/batch/android/j0/g;->k:Z

    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/batch/android/j0/g;->c()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v1, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    iget-object v1, v0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, v2

    :goto_0
    invoke-direct {v0, v7}, Lcom/batch/android/j0/g;->b(I)I

    move-result v1

    invoke-direct {v0, v8}, Lcom/batch/android/j0/g;->b(I)I

    move-result v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lez v3, :cond_2

    iget-object v4, v0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    cmpl-float v4, v4, v9

    if-lez v4, :cond_2

    move v11, v10

    goto :goto_1

    :cond_2
    move v11, v2

    :goto_1
    if-lez v1, :cond_3

    move v4, v10

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    iget-object v12, v0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    iget-object v5, v0, Lcom/batch/android/j0/g;->e:Landroid/graphics/ColorFilter;

    if-eqz v5, :cond_4

    :goto_3
    move-object v13, v5

    goto :goto_4

    :cond_4
    iget-object v5, v0, Lcom/batch/android/j0/g;->f:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_3

    :goto_4
    const/4 v14, 0x2

    if-eqz v11, :cond_6

    if-eqz v4, :cond_6

    iget v4, v12, Lcom/batch/android/j0/g$b;->b:I

    if-eq v4, v14, :cond_6

    const/16 v4, 0xff

    if-ge v3, v4, :cond_6

    iget v5, v0, Lcom/batch/android/j0/g;->g:I

    if-lt v5, v4, :cond_5

    if-eqz v13, :cond_6

    :cond_5
    move v15, v10

    goto :goto_5

    :cond_6
    move v15, v2

    :goto_5
    if-eqz v15, :cond_8

    iget-object v1, v0, Lcom/batch/android/j0/g;->j:Landroid/graphics/Paint;

    if-nez v1, :cond_7

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/batch/android/j0/g;->j:Landroid/graphics/Paint;

    :cond_7
    iget-object v1, v0, Lcom/batch/android/j0/g;->j:Landroid/graphics/Paint;

    iget-boolean v2, v12, Lcom/batch/android/j0/g$b;->x:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, v0, Lcom/batch/android/j0/g;->j:Landroid/graphics/Paint;

    iget v2, v0, Lcom/batch/android/j0/g;->g:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/batch/android/j0/g;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, v0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    iget-object v2, v0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v1

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v1

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v1

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v1

    iget-object v6, v0, Lcom/batch/android/j0/g;->j:Landroid/graphics/Paint;

    move v1, v5

    move v5, v2

    move v2, v3

    move v3, v4

    move v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-object v2, v1

    iget-object v1, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, v0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_6

    :cond_8
    move-object/from16 v2, p1

    iget-object v4, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    iget-boolean v4, v12, Lcom/batch/android/j0/g$b;->x:Z

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    if-eqz v13, :cond_9

    iget-object v1, v12, Lcom/batch/android/j0/g$b;->f:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    iget v4, v0, Lcom/batch/android/j0/g;->g:I

    shl-int/lit8 v4, v4, 0x18

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_9
    if-eqz v11, :cond_a

    iget-object v1, v0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    iget-boolean v3, v12, Lcom/batch/android/j0/g$b;->x:Z

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, v0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_a
    :goto_6
    iget v1, v12, Lcom/batch/android/j0/g$b;->b:I

    if-eqz v1, :cond_f

    if-eq v1, v10, :cond_e

    if-eq v1, v14, :cond_d

    const/4 v3, 0x3

    if-eq v1, v3, :cond_c

    :cond_b
    :goto_7
    move-object v1, v2

    goto/16 :goto_8

    :cond_c
    invoke-direct {v0, v12}, Lcom/batch/android/j0/g;->a(Lcom/batch/android/j0/g$b;)Landroid/graphics/Path;

    move-result-object v1

    iget-object v3, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v11, :cond_b

    iget-object v3, v0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_7

    :cond_d
    iget-object v1, v0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    if-eqz v11, :cond_b

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget-object v6, v0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    move v5, v3

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :cond_e
    move-object v1, v2

    iget-object v2, v0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz v11, :cond_14

    iget-object v2, v0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_8

    :cond_f
    move-object v1, v2

    iget-object v2, v12, Lcom/batch/android/j0/g$b;->p:[F

    if-eqz v2, :cond_10

    invoke-direct {v0}, Lcom/batch/android/j0/g;->a()V

    iget-object v2, v0, Lcom/batch/android/j0/g;->h:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v11, :cond_14

    iget-object v2, v0, Lcom/batch/android/j0/g;->h:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_8

    :cond_10
    iget v2, v12, Lcom/batch/android/j0/g$b;->o:F

    cmpl-float v3, v2, v9

    if-lez v3, :cond_11

    iget-object v3, v0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, v0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, v0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v11, :cond_14

    iget-object v3, v0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_11
    iget-object v2, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-nez v2, :cond_12

    if-nez v13, :cond_12

    iget-object v2, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-eqz v2, :cond_13

    :cond_12
    iget-object v2, v0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_13
    if-eqz v11, :cond_14

    iget-object v2, v0, Lcom/batch/android/j0/g;->i:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_14
    :goto_8
    if-eqz v15, :cond_15

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_15
    iget-object v1, v0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v11, :cond_16

    iget-object v0, v0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_16
    :goto_9
    return-void
.end method

.method public e()Lcom/batch/android/j0/g$c;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    iget-object p0, p0, Lcom/batch/android/j0/g$b;->e:Lcom/batch/android/j0/g$c;

    return-object p0
.end method

.method public e(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/j0/g;->m:Landroid/graphics/Path;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/j0/g;->n:Z

    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-virtual {v0, p1}, Lcom/batch/android/j0/g$b;->b(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget p0, p0, Lcom/batch/android/j0/g;->g:I

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object p0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-virtual {p0}, Lcom/batch/android/j0/g$b;->getChangingConfigurations()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/j0/g;->e:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-virtual {p0}, Lcom/batch/android/j0/g;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/batch/android/j0/g$b;->a:I

    iget-object p0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    iget p0, p0, Lcom/batch/android/j0/g$b;->s:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    iget p0, p0, Lcom/batch/android/j0/g$b;->r:I

    return p0
.end method

.method public getOpacity()I
    .locals 2

    iget v0, p0, Lcom/batch/android/j0/g;->g:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    iget-boolean v0, v0, Lcom/batch/android/j0/g$b;->E:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/batch/android/j0/g;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 5

    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-boolean v2, v0, Lcom/batch/android/j0/g$b;->F:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/batch/android/j0/g;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/batch/android/j0/g;->g:I

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    iget v2, v0, Lcom/batch/android/j0/g$b;->b:I

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    if-eq v2, v0, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    if-nez p0, :cond_2

    const p0, 0x38d1b717    # 1.0E-4f

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    mul-float/2addr p0, v4

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    sub-float v2, v0, p0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-float/2addr v0, p0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p0, v3

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void

    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    return-void

    :cond_4
    iget-object v2, v0, Lcom/batch/android/j0/g$b;->p:[F

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/batch/android/j0/g;->a()V

    iget-object p0, p0, Lcom/batch/android/j0/g;->h:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    return-void

    :cond_5
    iget p0, v0, Lcom/batch/android/j0/g$b;->o:F

    cmpl-float v0, p0, v3

    if-lez v0, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_6
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/batch/android/j0/g;->c:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/batch/android/j0/g$b;->f:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_0
    iget-object p0, v0, Lcom/batch/android/j0/g$b;->g:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_1
    iget-object p0, v0, Lcom/batch/android/j0/g$b;->G:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Lcom/batch/android/j0/g;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Lcom/batch/android/j0/g$b;

    iget-object v1, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    invoke-direct {v0, v1}, Lcom/batch/android/j0/g$b;-><init>(Lcom/batch/android/j0/g$b;)V

    iput-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/batch/android/j0/g;->a(Landroid/content/res/Resources;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/j0/g;->l:Z

    :cond_0
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/batch/android/j0/g;->m:Landroid/graphics/Path;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/batch/android/j0/g;->n:Z

    iput-boolean p1, p0, Lcom/batch/android/j0/g;->k:Z

    return-void
.end method

.method public onLevelChange(I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/batch/android/j0/g;->k:Z

    iput-boolean p1, p0, Lcom/batch/android/j0/g;->n:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.method public onStateChange([I)Z
    .locals 6

    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    iget-object v1, v0, Lcom/batch/android/j0/g$b;->f:Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v4, p0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    if-eq v4, v1, :cond_0

    iget-object v4, p0, Lcom/batch/android/j0/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/batch/android/j0/g;->d:Landroid/graphics/Paint;

    if-eqz v4, :cond_1

    iget-object v5, v0, Lcom/batch/android/j0/g$b;->g:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_1

    invoke-virtual {v5, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    if-eq v5, p1, :cond_1

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    move v1, v2

    :cond_1
    iget-object p1, v0, Lcom/batch/android/j0/g$b;->G:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/batch/android/j0/g$b;->H:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return v2

    :cond_3
    return v3
.end method

.method public setAlpha(I)V
    .locals 1

    iget v0, p0, Lcom/batch/android/j0/g;->g:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/batch/android/j0/g;->g:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/j0/g;->e:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/batch/android/j0/g;->e:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    iget-boolean v1, v0, Lcom/batch/android/j0/g$b;->x:Z

    if-eq p1, v1, :cond_0

    iput-boolean p1, v0, Lcom/batch/android/j0/g$b;->x:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    iput-object p1, v0, Lcom/batch/android/j0/g$b;->G:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/j0/g;->a:Lcom/batch/android/j0/g$b;

    iput-object p1, v0, Lcom/batch/android/j0/g$b;->H:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
