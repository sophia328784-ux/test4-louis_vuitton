.class final Lcom/batch/android/j0/g$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/j0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:F

.field B:I

.field C:Z

.field D:Z

.field E:Z

.field F:Z

.field G:Landroid/content/res/ColorStateList;

.field H:Landroid/graphics/PorterDuff$Mode;

.field I:[I

.field J:[I

.field K:[I

.field L:[I

.field M:[I

.field N:[I

.field O:[I

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/batch/android/j0/g$c;

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/content/res/ColorStateList;

.field public h:[I

.field public i:[I

.field public j:[F

.field public k:[F

.field public l:I

.field public m:F

.field public n:F

.field public o:F

.field public p:[F

.field public q:Landroid/graphics/Rect;

.field public r:I

.field public s:I

.field public t:F

.field public u:F

.field public v:I

.field public w:I

.field public x:Z

.field y:F

.field z:F


# direct methods
.method public constructor <init>(Lcom/batch/android/j0/g$b;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/j0/g$b;->b:I

    iput v0, p0, Lcom/batch/android/j0/g$b;->c:I

    iput v0, p0, Lcom/batch/android/j0/g$b;->d:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/batch/android/j0/g$b;->l:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/batch/android/j0/g$b;->m:F

    iput v2, p0, Lcom/batch/android/j0/g$b;->n:F

    iput v2, p0, Lcom/batch/android/j0/g$b;->o:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/batch/android/j0/g$b;->p:[F

    iput-object v2, p0, Lcom/batch/android/j0/g$b;->q:Landroid/graphics/Rect;

    iput v1, p0, Lcom/batch/android/j0/g$b;->r:I

    iput v1, p0, Lcom/batch/android/j0/g$b;->s:I

    const/high16 v3, 0x40400000    # 3.0f

    iput v3, p0, Lcom/batch/android/j0/g$b;->t:F

    const/high16 v3, 0x41100000    # 9.0f

    iput v3, p0, Lcom/batch/android/j0/g$b;->u:F

    iput v1, p0, Lcom/batch/android/j0/g$b;->v:I

    iput v1, p0, Lcom/batch/android/j0/g$b;->w:I

    iput-boolean v0, p0, Lcom/batch/android/j0/g$b;->x:Z

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/batch/android/j0/g$b;->y:F

    iput v1, p0, Lcom/batch/android/j0/g$b;->z:F

    iput v1, p0, Lcom/batch/android/j0/g$b;->A:F

    iput v0, p0, Lcom/batch/android/j0/g$b;->B:I

    iput-boolean v0, p0, Lcom/batch/android/j0/g$b;->C:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/j0/g$b;->D:Z

    iput-object v2, p0, Lcom/batch/android/j0/g$b;->G:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->H:Landroid/graphics/PorterDuff$Mode;

    iget v0, p1, Lcom/batch/android/j0/g$b;->a:I

    iput v0, p0, Lcom/batch/android/j0/g$b;->a:I

    iget v0, p1, Lcom/batch/android/j0/g$b;->b:I

    iput v0, p0, Lcom/batch/android/j0/g$b;->b:I

    iget v0, p1, Lcom/batch/android/j0/g$b;->c:I

    iput v0, p0, Lcom/batch/android/j0/g$b;->c:I

    iget v0, p1, Lcom/batch/android/j0/g$b;->d:I

    iput v0, p0, Lcom/batch/android/j0/g$b;->d:I

    iget-object v0, p1, Lcom/batch/android/j0/g$b;->e:Lcom/batch/android/j0/g$c;

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->e:Lcom/batch/android/j0/g$c;

    iget-object v0, p1, Lcom/batch/android/j0/g$b;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->f:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Lcom/batch/android/j0/g$b;->h:[I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->h:[I

    :cond_0
    iget-object v0, p1, Lcom/batch/android/j0/g$b;->k:[F

    if-eqz v0, :cond_1

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->k:[F

    :cond_1
    iget-object v0, p1, Lcom/batch/android/j0/g$b;->g:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->g:Landroid/content/res/ColorStateList;

    iget v0, p1, Lcom/batch/android/j0/g$b;->l:I

    iput v0, p0, Lcom/batch/android/j0/g$b;->l:I

    iget v0, p1, Lcom/batch/android/j0/g$b;->m:F

    iput v0, p0, Lcom/batch/android/j0/g$b;->m:F

    iget v0, p1, Lcom/batch/android/j0/g$b;->n:F

    iput v0, p0, Lcom/batch/android/j0/g$b;->n:F

    iget v0, p1, Lcom/batch/android/j0/g$b;->o:F

    iput v0, p0, Lcom/batch/android/j0/g$b;->o:F

    iget-object v0, p1, Lcom/batch/android/j0/g$b;->p:[F

    if-eqz v0, :cond_2

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->p:[F

    :cond_2
    iget-object v0, p1, Lcom/batch/android/j0/g$b;->q:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/batch/android/j0/g$b;->q:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->q:Landroid/graphics/Rect;

    :cond_3
    iget v0, p1, Lcom/batch/android/j0/g$b;->r:I

    iput v0, p0, Lcom/batch/android/j0/g$b;->r:I

    iget v0, p1, Lcom/batch/android/j0/g$b;->s:I

    iput v0, p0, Lcom/batch/android/j0/g$b;->s:I

    iget v0, p1, Lcom/batch/android/j0/g$b;->t:F

    iput v0, p0, Lcom/batch/android/j0/g$b;->t:F

    iget v0, p1, Lcom/batch/android/j0/g$b;->u:F

    iput v0, p0, Lcom/batch/android/j0/g$b;->u:F

    iget v0, p1, Lcom/batch/android/j0/g$b;->v:I

    iput v0, p0, Lcom/batch/android/j0/g$b;->v:I

    iget v0, p1, Lcom/batch/android/j0/g$b;->w:I

    iput v0, p0, Lcom/batch/android/j0/g$b;->w:I

    iget-boolean v0, p1, Lcom/batch/android/j0/g$b;->x:Z

    iput-boolean v0, p0, Lcom/batch/android/j0/g$b;->x:Z

    iget v0, p1, Lcom/batch/android/j0/g$b;->y:F

    iput v0, p0, Lcom/batch/android/j0/g$b;->y:F

    iget v0, p1, Lcom/batch/android/j0/g$b;->z:F

    iput v0, p0, Lcom/batch/android/j0/g$b;->z:F

    iget v0, p1, Lcom/batch/android/j0/g$b;->A:F

    iput v0, p0, Lcom/batch/android/j0/g$b;->A:F

    iget v0, p1, Lcom/batch/android/j0/g$b;->B:I

    iput v0, p0, Lcom/batch/android/j0/g$b;->B:I

    iget-boolean v0, p1, Lcom/batch/android/j0/g$b;->C:Z

    iput-boolean v0, p0, Lcom/batch/android/j0/g$b;->C:Z

    iget-boolean v0, p1, Lcom/batch/android/j0/g$b;->D:Z

    iput-boolean v0, p0, Lcom/batch/android/j0/g$b;->D:Z

    iget-boolean v0, p1, Lcom/batch/android/j0/g$b;->E:Z

    iput-boolean v0, p0, Lcom/batch/android/j0/g$b;->E:Z

    iget-boolean v0, p1, Lcom/batch/android/j0/g$b;->F:Z

    iput-boolean v0, p0, Lcom/batch/android/j0/g$b;->F:Z

    iget-object v0, p1, Lcom/batch/android/j0/g$b;->G:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->G:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Lcom/batch/android/j0/g$b;->H:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->H:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p1, Lcom/batch/android/j0/g$b;->I:[I

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->I:[I

    iget-object v0, p1, Lcom/batch/android/j0/g$b;->J:[I

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->J:[I

    iget-object v0, p1, Lcom/batch/android/j0/g$b;->K:[I

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->K:[I

    iget-object v0, p1, Lcom/batch/android/j0/g$b;->L:[I

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->L:[I

    iget-object v0, p1, Lcom/batch/android/j0/g$b;->M:[I

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->M:[I

    iget-object v0, p1, Lcom/batch/android/j0/g$b;->N:[I

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->N:[I

    iget-object p1, p1, Lcom/batch/android/j0/g$b;->O:[I

    iput-object p1, p0, Lcom/batch/android/j0/g$b;->O:[I

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/j0/g$c;[I[F)V
    .locals 4

    .line 254
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 255
    iput v0, p0, Lcom/batch/android/j0/g$b;->b:I

    .line 256
    iput v0, p0, Lcom/batch/android/j0/g$b;->c:I

    .line 257
    iput v0, p0, Lcom/batch/android/j0/g$b;->d:I

    const/4 v1, -0x1

    .line 258
    iput v1, p0, Lcom/batch/android/j0/g$b;->l:I

    const/4 v2, 0x0

    .line 259
    iput v2, p0, Lcom/batch/android/j0/g$b;->m:F

    .line 260
    iput v2, p0, Lcom/batch/android/j0/g$b;->n:F

    .line 261
    iput v2, p0, Lcom/batch/android/j0/g$b;->o:F

    const/4 v2, 0x0

    .line 262
    iput-object v2, p0, Lcom/batch/android/j0/g$b;->p:[F

    .line 263
    iput-object v2, p0, Lcom/batch/android/j0/g$b;->q:Landroid/graphics/Rect;

    .line 264
    iput v1, p0, Lcom/batch/android/j0/g$b;->r:I

    .line 265
    iput v1, p0, Lcom/batch/android/j0/g$b;->s:I

    const/high16 v3, 0x40400000    # 3.0f

    .line 266
    iput v3, p0, Lcom/batch/android/j0/g$b;->t:F

    const/high16 v3, 0x41100000    # 9.0f

    .line 267
    iput v3, p0, Lcom/batch/android/j0/g$b;->u:F

    .line 268
    iput v1, p0, Lcom/batch/android/j0/g$b;->v:I

    .line 269
    iput v1, p0, Lcom/batch/android/j0/g$b;->w:I

    .line 270
    iput-boolean v0, p0, Lcom/batch/android/j0/g$b;->x:Z

    const/high16 v1, 0x3f000000    # 0.5f

    .line 271
    iput v1, p0, Lcom/batch/android/j0/g$b;->y:F

    .line 272
    iput v1, p0, Lcom/batch/android/j0/g$b;->z:F

    .line 273
    iput v1, p0, Lcom/batch/android/j0/g$b;->A:F

    .line 274
    iput v0, p0, Lcom/batch/android/j0/g$b;->B:I

    .line 275
    iput-boolean v0, p0, Lcom/batch/android/j0/g$b;->C:Z

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/batch/android/j0/g$b;->D:Z

    .line 277
    iput-object v2, p0, Lcom/batch/android/j0/g$b;->G:Landroid/content/res/ColorStateList;

    .line 278
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/batch/android/j0/g$b;->H:Landroid/graphics/PorterDuff$Mode;

    .line 279
    iput-object p1, p0, Lcom/batch/android/j0/g$b;->e:Lcom/batch/android/j0/g$c;

    .line 280
    invoke-virtual {p0, p2}, Lcom/batch/android/j0/g$b;->a([I)V

    .line 281
    invoke-virtual {p0, p3}, Lcom/batch/android/j0/g$b;->b([F)V

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/j0/g$b;->E:Z

    iput-boolean v0, p0, Lcom/batch/android/j0/g$b;->F:Z

    iget-object v1, p0, Lcom/batch/android/j0/g$b;->h:[I

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/batch/android/j0/g$b;->h:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    invoke-static {v2}, Lcom/batch/android/j0/g;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/batch/android/j0/g$b;->h:[I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/batch/android/j0/g$b;->f:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_2

    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/batch/android/j0/g$b;->F:Z

    iget v2, p0, Lcom/batch/android/j0/g$b;->b:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/batch/android/j0/g$b;->o:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/batch/android/j0/g$b;->p:[F

    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    iput-boolean v0, p0, Lcom/batch/android/j0/g$b;->E:Z

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/j0/g$b;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/batch/android/j0/g$b;->a()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 73
    :cond_0
    iput p1, p0, Lcom/batch/android/j0/g$b;->o:F

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/batch/android/j0/g$b;->p:[F

    return-void
.end method

.method public a(FF)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/batch/android/j0/g$b;->y:F

    .line 60
    iput p2, p0, Lcom/batch/android/j0/g$b;->z:F

    return-void
.end method

.method public a(FI)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/batch/android/j0/g$b;->A:F

    .line 80
    iput p2, p0, Lcom/batch/android/j0/g$b;->B:I

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/batch/android/j0/g$b;->c:I

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/batch/android/j0/g$b;->r:I

    .line 78
    iput p2, p0, Lcom/batch/android/j0/g$b;->s:I

    return-void
.end method

.method public a(ILandroid/content/res/ColorStateList;FF)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/batch/android/j0/g$b;->l:I

    .line 69
    iput-object p2, p0, Lcom/batch/android/j0/g$b;->g:Landroid/content/res/ColorStateList;

    .line 70
    iput p3, p0, Lcom/batch/android/j0/g$b;->m:F

    .line 71
    iput p4, p0, Lcom/batch/android/j0/g$b;->n:F

    .line 72
    invoke-direct {p0}, Lcom/batch/android/j0/g$b;->a()V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/batch/android/j0/g$b;->h:[I

    .line 65
    iput-object p1, p0, Lcom/batch/android/j0/g$b;->f:Landroid/content/res/ColorStateList;

    .line 66
    invoke-direct {p0}, Lcom/batch/android/j0/g$b;->a()V

    return-void
.end method

.method public a([F)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/batch/android/j0/g$b;->p:[F

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 76
    iput p1, p0, Lcom/batch/android/j0/g$b;->o:F

    :cond_0
    return-void
.end method

.method public a([I)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/batch/android/j0/g$b;->h:[I

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/batch/android/j0/g$b;->f:Landroid/content/res/ColorStateList;

    .line 63
    invoke-direct {p0}, Lcom/batch/android/j0/g$b;->a()V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/batch/android/j0/g$b;->b:I

    invoke-direct {p0}, Lcom/batch/android/j0/g$b;->a()V

    return-void
.end method

.method public b([F)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/batch/android/j0/g$b;->k:[F

    .line 7
    invoke-direct {p0}, Lcom/batch/android/j0/g$b;->a()V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/batch/android/j0/g$b;->I:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/j0/g$b;->J:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/j0/g$b;->K:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/j0/g$b;->L:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/j0/g$b;->M:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/j0/g$b;->N:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/j0/g$b;->O:[I

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

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

.method public getChangingConfigurations()I
    .locals 3

    iget v0, p0, Lcom/batch/android/j0/g$b;->a:I

    iget-object v1, p0, Lcom/batch/android/j0/g$b;->g:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/batch/android/j0/g$b;->f:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    iget-object p0, p0, Lcom/batch/android/j0/g$b;->G:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v2

    :cond_2
    or-int p0, v0, v2

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/batch/android/j0/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/batch/android/j0/g;-><init>(Lcom/batch/android/j0/g$b;Landroid/content/res/Resources;Lcom/batch/android/j0/g$a;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 7
    new-instance v0, Lcom/batch/android/j0/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/batch/android/j0/g;-><init>(Lcom/batch/android/j0/g$b;Landroid/content/res/Resources;Lcom/batch/android/j0/g$a;)V

    return-object v0
.end method
