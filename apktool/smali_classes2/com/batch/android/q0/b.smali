.class public Lcom/batch/android/q0/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final u:Ljava/lang/String; = "RoundedDrawable"

.field public static final v:I = -0x1000000


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/Bitmap;

.field private final e:Landroid/graphics/Paint;

.field private final f:I

.field private final g:I

.field private final h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/RectF;

.field private l:Landroid/graphics/Shader$TileMode;

.field private m:Landroid/graphics/Shader$TileMode;

.field private n:Z

.field private o:F

.field private final p:[Z

.field private q:Z

.field private r:F

.field private s:Landroid/content/res/ColorStateList;

.field private t:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/batch/android/q0/b;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/batch/android/q0/b;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/batch/android/q0/b;->c:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/batch/android/q0/b;->k:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v1, p0, Lcom/batch/android/q0/b;->l:Landroid/graphics/Shader$TileMode;

    iput-object v1, p0, Lcom/batch/android/q0/b;->m:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/batch/android/q0/b;->n:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/batch/android/q0/b;->o:F

    const/4 v3, 0x4

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/batch/android/q0/b;->p:[Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/batch/android/q0/b;->q:Z

    iput v2, p0, Lcom/batch/android/q0/b;->r:F

    const/high16 v3, -0x1000000

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/batch/android/q0/b;->s:Landroid/content/res/ColorStateList;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v4, p0, Lcom/batch/android/q0/b;->t:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/batch/android/q0/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/batch/android/q0/b;->f:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/batch/android/q0/b;->g:I

    int-to-float v4, v4

    int-to-float p1, p1

    invoke-virtual {v0, v2, v2, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget p0, p0, Lcom/batch/android/q0/b;->r:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 144
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 145
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 147
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 148
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 150
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;)Lcom/batch/android/q0/b;
    .locals 1

    if-eqz p0, :cond_0

    .line 181
    new-instance v0, Lcom/batch/android/q0/b;

    invoke-direct {v0, p0}, Lcom/batch/android/q0/b;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8

    .line 153
    iget-object v0, p0, Lcom/batch/android/q0/b;->p:[Z

    invoke-static {v0}, Lcom/batch/android/q0/b;->a([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget v0, p0, Lcom/batch/android/q0/b;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/batch/android/q0/b;->b:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 156
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 157
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v0, v1

    .line 158
    iget-object v3, p0, Lcom/batch/android/q0/b;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v3, v2

    .line 159
    iget v4, p0, Lcom/batch/android/q0/b;->o:F

    .line 160
    iget-object v5, p0, Lcom/batch/android/q0/b;->p:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-nez v5, :cond_2

    .line 161
    iget-object v5, p0, Lcom/batch/android/q0/b;->k:Landroid/graphics/RectF;

    add-float v6, v1, v4

    add-float v7, v2, v4

    invoke-virtual {v5, v1, v2, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 162
    iget-object v5, p0, Lcom/batch/android/q0/b;->k:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 163
    :cond_2
    iget-object v5, p0, Lcom/batch/android/q0/b;->p:[Z

    const/4 v6, 0x1

    aget-boolean v5, v5, v6

    if-nez v5, :cond_3

    .line 164
    iget-object v5, p0, Lcom/batch/android/q0/b;->k:Landroid/graphics/RectF;

    sub-float v6, v0, v4

    invoke-virtual {v5, v6, v2, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 165
    iget-object v2, p0, Lcom/batch/android/q0/b;->k:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 166
    :cond_3
    iget-object v2, p0, Lcom/batch/android/q0/b;->p:[Z

    const/4 v5, 0x2

    aget-boolean v2, v2, v5

    if-nez v2, :cond_4

    .line 167
    iget-object v2, p0, Lcom/batch/android/q0/b;->k:Landroid/graphics/RectF;

    sub-float v5, v0, v4

    sub-float v6, v3, v4

    invoke-virtual {v2, v5, v6, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 168
    iget-object v0, p0, Lcom/batch/android/q0/b;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/batch/android/q0/b;->p:[Z

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-nez v0, :cond_5

    .line 170
    iget-object v0, p0, Lcom/batch/android/q0/b;->k:Landroid/graphics/RectF;

    sub-float v2, v3, v4

    add-float/2addr v4, v1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 171
    iget-object v0, p0, Lcom/batch/android/q0/b;->k:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static a(I[Z)Z
    .locals 5

    .line 196
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 197
    aget-boolean v4, p1, v2

    if-ne v2, p0, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eq v4, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private static a([Z)Z
    .locals 4

    .line 198
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-eqz p0, :cond_4

    .line 182
    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    return-object p0

    .line 183
    :cond_0
    instance-of v0, p0, Lcom/batch/android/q0/b;

    if-eqz v0, :cond_1

    return-object p0

    .line 184
    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    .line 185
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 186
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 187
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 188
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    invoke-static {v2}, Lcom/batch/android/q0/b;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    .line 189
    :cond_3
    invoke-static {p0}, Lcom/batch/android/q0/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 190
    new-instance p0, Lcom/batch/android/q0/b;

    invoke-direct {p0, v0}, Lcom/batch/android/q0/b;-><init>(Landroid/graphics/Bitmap;)V

    :cond_4
    return-object p0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/batch/android/q0/b;->p:[Z

    invoke-static {v1}, Lcom/batch/android/q0/b;->a([Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v1, v0, Lcom/batch/android/q0/b;->o:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, v0, Lcom/batch/android/q0/b;->b:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr v1, v3

    iget-object v2, v0, Lcom/batch/android/q0/b;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float v13, v2, v6

    iget v14, v0, Lcom/batch/android/q0/b;->o:F

    iget v2, v0, Lcom/batch/android/q0/b;->r:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v15, v2, v4

    iget-object v2, v0, Lcom/batch/android/q0/b;->p:[Z

    const/4 v4, 0x0

    aget-boolean v2, v2, v4

    if-nez v2, :cond_2

    sub-float v5, v3, v15

    add-float v7, v3, v14

    iget-object v9, v0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    move v8, v6

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v8, v15

    add-float v6, v8, v14

    iget-object v7, v0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    move v5, v3

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    move v8, v6

    :goto_0
    iget-object v2, v0, Lcom/batch/android/q0/b;->p:[Z

    const/4 v4, 0x1

    aget-boolean v2, v2, v4

    if-nez v2, :cond_3

    sub-float v2, v1, v14

    sub-float v5, v2, v15

    iget-object v9, v0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    move v6, v8

    move-object/from16 v4, p1

    move v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v8, v7

    sub-float v9, v6, v15

    add-float v11, v6, v14

    iget-object v12, v0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    move v10, v8

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v1, v8

    :cond_3
    iget-object v2, v0, Lcom/batch/android/q0/b;->p:[Z

    const/4 v4, 0x2

    aget-boolean v2, v2, v4

    if-nez v2, :cond_4

    sub-float v2, v1, v14

    sub-float v8, v2, v15

    add-float v10, v1, v15

    iget-object v12, v0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    move v11, v13

    move-object/from16 v7, p1

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v13, v9, v14

    iget-object v12, v0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    move v10, v1

    move v8, v1

    move v11, v9

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v9, v11

    goto :goto_1

    :cond_4
    move v9, v13

    :goto_1
    iget-object v1, v0, Lcom/batch/android/q0/b;->p:[Z

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-nez v1, :cond_5

    sub-float v8, v3, v15

    add-float v10, v3, v14

    iget-object v12, v0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    move v11, v9

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v9, v14

    iget-object v7, v0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    move v5, v3

    move-object/from16 v2, p1

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private static b([Z)Z
    .locals 4

    .line 198
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p0, v2

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private k()V
    .locals 7

    sget-object v0, Lcom/batch/android/q0/b$a;->a:[I

    iget-object v1, p0, Lcom/batch/android/q0/b;->t:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/batch/android/q0/b;->c:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/batch/android/q0/b;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/batch/android/q0/b;->a:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/batch/android/q0/b;->r:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/batch/android/q0/b;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/batch/android/q0/b;->a:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/batch/android/q0/b;->r:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/batch/android/q0/b;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/batch/android/q0/b;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/batch/android/q0/b;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/batch/android/q0/b;->a:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/batch/android/q0/b;->r:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/batch/android/q0/b;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/batch/android/q0/b;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/batch/android/q0/b;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/batch/android/q0/b;->a:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/batch/android/q0/b;->r:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/batch/android/q0/b;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/batch/android/q0/b;->f:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/batch/android/q0/b;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/batch/android/q0/b;->g:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/batch/android/q0/b;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/batch/android/q0/b;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/batch/android/q0/b;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/batch/android/q0/b;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v4, p0, Lcom/batch/android/q0/b;->g:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/batch/android/q0/b;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/batch/android/q0/b;->f:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v1, v4

    mul-float/2addr v1, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/batch/android/q0/b;->a:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/batch/android/q0/b;->g:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    add-float/2addr v4, v3

    float-to-int v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/batch/android/q0/b;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/batch/android/q0/b;->r:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/batch/android/q0/b;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/batch/android/q0/b;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/batch/android/q0/b;->r:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/batch/android/q0/b;->f:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v4, p0, Lcom/batch/android/q0/b;->g:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    cmpl-float v0, v1, v0

    iget-object v1, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    const/4 v4, 0x0

    if-lez v0, :cond_6

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/batch/android/q0/b;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v5, p0, Lcom/batch/android/q0/b;->f:I

    int-to-float v5, v5

    invoke-static {v5, v0, v1, v3}, Lpq0;->a(FFFF)F

    move-result v1

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/batch/android/q0/b;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v5, p0, Lcom/batch/android/q0/b;->g:I

    int-to-float v5, v5

    invoke-static {v5, v0, v1, v3}, Lpq0;->a(FFFF)F

    move-result v1

    move v6, v4

    move v4, v1

    move v1, v6

    :goto_1
    iget-object v5, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    iget v5, p0, Lcom/batch/android/q0/b;->r:F

    div-float/2addr v5, v2

    add-float/2addr v1, v5

    add-float/2addr v4, v3

    float-to-int v2, v4

    int-to-float v2, v2

    add-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/batch/android/q0/b;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/batch/android/q0/b;->r:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/batch/android/q0/b;->f:I

    int-to-float v2, v2

    invoke-static {v1, v2, v3, v3}, Ltr;->a(FFFF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v4, p0, Lcom/batch/android/q0/b;->g:I

    int-to-float v4, v4

    invoke-static {v2, v4, v3, v3}, Ltr;->a(FFFF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_2
    iget-object v0, p0, Lcom/batch/android/q0/b;->b:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/batch/android/q0/b;->p:[Z

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/batch/android/q0/b;->o:F

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a()I
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/batch/android/q0/b;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public a(F)Lcom/batch/android/q0/b;
    .locals 1

    .line 182
    iput p1, p0, Lcom/batch/android/q0/b;->r:F

    .line 183
    iget-object v0, p0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method public a(FFFF)Lcom/batch/android/q0/b;
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_6

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_0

    iput v0, p0, Lcom/batch/android/q0/b;->o:F

    goto :goto_0

    :cond_0
    const-string p0, "Invalid radius value: "

    invoke-static {p0, v0}, La61;->p(Ljava/lang/String;F)V

    return-object v3

    :cond_1
    iput v1, p0, Lcom/batch/android/q0/b;->o:F

    :goto_0
    iget-object v0, p0, Lcom/batch/android/q0/b;->p:[Z

    cmpl-float p1, p1, v1

    const/4 v2, 0x0

    if-lez p1, :cond_2

    move p1, v4

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    aput-boolean p1, v0, v2

    cmpl-float p1, p2, v1

    if-lez p1, :cond_3

    move p1, v4

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    aput-boolean p1, v0, v4

    cmpl-float p1, p3, v1

    if-lez p1, :cond_4

    move p1, v4

    goto :goto_3

    :cond_4
    move p1, v2

    :goto_3
    const/4 p2, 0x2

    aput-boolean p1, v0, p2

    cmpl-float p1, p4, v1

    if-lez p1, :cond_5

    goto :goto_4

    :cond_5
    move v4, v2

    :goto_4
    const/4 p1, 0x3

    aput-boolean v4, v0, p1

    return-object p0

    :cond_6
    const-string p0, "Multiple nonzero corner radii not yet supported."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v3
.end method

.method public a(IF)Lcom/batch/android/q0/b;
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_1

    .line 173
    iget v2, p0, Lcom/batch/android/q0/b;->o:F

    cmpl-float v3, v2, v0

    if-eqz v3, :cond_1

    cmpl-float v2, v2, p2

    if-nez v2, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    const-string p0, "Multiple nonzero corner radii not yet supported."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 175
    iget-object p2, p0, Lcom/batch/android/q0/b;->p:[Z

    invoke-static {p1, p2}, Lcom/batch/android/q0/b;->a(I[Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 176
    iput v0, p0, Lcom/batch/android/q0/b;->o:F

    .line 177
    :cond_2
    iget-object p2, p0, Lcom/batch/android/q0/b;->p:[Z

    const/4 v0, 0x0

    aput-boolean v0, p2, p1

    return-object p0

    .line 178
    :cond_3
    iget v1, p0, Lcom/batch/android/q0/b;->o:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    .line 179
    iput p2, p0, Lcom/batch/android/q0/b;->o:F

    .line 180
    :cond_4
    iget-object p2, p0, Lcom/batch/android/q0/b;->p:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    return-object p0
.end method

.method public a(Landroid/content/res/ColorStateList;)Lcom/batch/android/q0/b;
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 185
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/batch/android/q0/b;->s:Landroid/content/res/ColorStateList;

    .line 186
    iget-object v0, p0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public a(Landroid/graphics/Shader$TileMode;)Lcom/batch/android/q0/b;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/batch/android/q0/b;->l:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_0

    .line 193
    iput-object p1, p0, Lcom/batch/android/q0/b;->l:Landroid/graphics/Shader$TileMode;

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lcom/batch/android/q0/b;->n:Z

    .line 195
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-object p0
.end method

.method public a(Landroid/widget/ImageView$ScaleType;)Lcom/batch/android/q0/b;
    .locals 1

    if-nez p1, :cond_0

    .line 188
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/batch/android/q0/b;->t:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 190
    iput-object p1, p0, Lcom/batch/android/q0/b;->t:Landroid/widget/ImageView$ScaleType;

    .line 191
    invoke-direct {p0}, Lcom/batch/android/q0/b;->k()V

    :cond_1
    return-object p0
.end method

.method public a(Z)Lcom/batch/android/q0/b;
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/batch/android/q0/b;->q:Z

    return-object p0
.end method

.method public b()Landroid/content/res/ColorStateList;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/batch/android/q0/b;->s:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public b(F)Lcom/batch/android/q0/b;
    .locals 0

    .line 191
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/batch/android/q0/b;->a(FFFF)Lcom/batch/android/q0/b;

    return-object p0
.end method

.method public b(I)Lcom/batch/android/q0/b;
    .locals 0

    .line 192
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/batch/android/q0/b;->a(Landroid/content/res/ColorStateList;)Lcom/batch/android/q0/b;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/graphics/Shader$TileMode;)Lcom/batch/android/q0/b;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/batch/android/q0/b;->m:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_0

    .line 195
    iput-object p1, p0, Lcom/batch/android/q0/b;->m:Landroid/graphics/Shader$TileMode;

    const/4 p1, 0x1

    .line 196
    iput-boolean p1, p0, Lcom/batch/android/q0/b;->n:Z

    .line 197
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-object p0
.end method

.method public c()F
    .locals 0

    iget p0, p0, Lcom/batch/android/q0/b;->r:F

    return p0
.end method

.method public d()F
    .locals 0

    iget p0, p0, Lcom/batch/android/q0/b;->o:F

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/batch/android/q0/b;->n:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/batch/android/q0/b;->d:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/batch/android/q0/b;->l:Landroid/graphics/Shader$TileMode;

    iget-object v3, p0, Lcom/batch/android/q0/b;->m:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/batch/android/q0/b;->l:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/batch/android/q0/b;->m:Landroid/graphics/Shader$TileMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/batch/android/q0/b;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v1, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/q0/b;->n:Z

    :cond_1
    iget-boolean v0, p0, Lcom/batch/android/q0/b;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/batch/android/q0/b;->r:F

    cmpl-float v0, v0, v1

    iget-object v1, p0, Lcom/batch/android/q0/b;->b:Landroid/graphics/RectF;

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/batch/android/q0/b;->p:[Z

    invoke-static {v0}, Lcom/batch/android/q0/b;->b([Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/batch/android/q0/b;->o:F

    iget v2, p0, Lcom/batch/android/q0/b;->r:F

    cmpl-float v1, v2, v1

    iget-object v2, p0, Lcom/batch/android/q0/b;->b:Landroid/graphics/RectF;

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lcom/batch/android/q0/b;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/batch/android/q0/b;->b(Landroid/graphics/Canvas;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lcom/batch/android/q0/b;->a(Landroid/graphics/Canvas;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/batch/android/q0/b;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/batch/android/q0/b;->r:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/batch/android/q0/b;->h:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public e()Landroid/widget/ImageView$ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/q0/b;->t:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public f()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/q0/b;->d:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public g()Landroid/graphics/Shader$TileMode;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/q0/b;->l:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method public getAlpha()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/batch/android/q0/b;->g:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/batch/android/q0/b;->f:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public h()Landroid/graphics/Shader$TileMode;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/q0/b;->m:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/q0/b;->q:Z

    return p0
.end method

.method public isStateful()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/q0/b;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    return p0
.end method

.method public j()Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/batch/android/q0/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/batch/android/q0/b;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/batch/android/q0/b;->k()V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 2

    iget-object v0, p0, Lcom/batch/android/q0/b;->s:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/q0/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/q0/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
