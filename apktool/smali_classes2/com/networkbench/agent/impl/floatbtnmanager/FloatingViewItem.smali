.class public abstract Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final b:F = 46.0f

.field protected static n:I

.field protected static o:I


# instance fields
.field private final a:Lcom/networkbench/agent/impl/c/e;

.field protected e:Landroid/app/Activity;

.field protected f:Lcom/networkbench/agent/impl/floatbtnmanager/g;

.field protected g:Landroid/view/WindowManager$LayoutParams;

.field protected h:Landroid/widget/Button;

.field protected i:Lcom/networkbench/agent/impl/floatbtnmanager/k;

.field protected j:Z

.field protected k:Ljava/lang/String;

.field protected l:Z

.field protected m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/networkbench/agent/impl/floatbtnmanager/k;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->a:Lcom/networkbench/agent/impl/c/e;

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->e:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit16 v0, v0, -0xc8

    sput v0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->n:I

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit16 v0, v0, -0x12c

    sput v0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->o:I

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->h:Landroid/widget/Button;

    new-instance p1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {p1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    const v1, -0xae9011

    invoke-virtual {p0, v1, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->a(ILandroid/graphics/drawable/shapes/Shape;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->e:Landroid/app/Activity;

    invoke-static {p1}, Lcom/networkbench/agent/impl/floatbtnmanager/g;->a(Landroid/content/Context;)Lcom/networkbench/agent/impl/floatbtnmanager/g;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->f:Lcom/networkbench/agent/impl/floatbtnmanager/g;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->l:Z

    iput-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->i:Lcom/networkbench/agent/impl/floatbtnmanager/k;

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->j:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->m:Ljava/lang/String;

    return-void
.end method

.method private b(ILandroid/graphics/drawable/shapes/Shape;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 0

    .line 34
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 35
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method


# virtual methods
.method public a(ILandroid/graphics/drawable/shapes/Shape;)Landroid/graphics/drawable/LayerDrawable;
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->b(ILandroid/graphics/drawable/shapes/Shape;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    return-object v0
.end method

.method public abstract a()V
.end method

.method public abstract a(Landroid/view/MotionEvent;II)V
.end method

.method public a(Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;)Z
    .locals 0

    .line 24
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->i:Lcom/networkbench/agent/impl/floatbtnmanager/k;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/k;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->a(Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setVisible(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->l:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->l:Z

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->i:Lcom/networkbench/agent/impl/floatbtnmanager/k;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/k;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->a(Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setVisible(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBtnRadius()F
    .locals 0

    const/high16 p0, 0x42380000    # 46.0f

    return p0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->e:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getPosBeginX()I
    .locals 0

    sget p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->n:I

    return p0
.end method

.method public getPosBeginY()I
    .locals 0

    sget p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->o:I

    return p0
.end method

.method public getViewImageBmpPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->k:Ljava/lang/String;

    return-object p0
.end method

.method public h()V
    .locals 3

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setViewImage()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getPosBeginX()I

    move-result v0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getPosBeginY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setViewXY(II)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->f:Lcom/networkbench/agent/impl/floatbtnmanager/g;

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->h:Landroid/widget/Button;

    iget-object v2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/floatbtnmanager/g;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Z

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setVisible(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->j:Z

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->f:Lcom/networkbench/agent/impl/floatbtnmanager/g;

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/g;->a(Landroid/view/View;)Z

    return-void
.end method

.method public j()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x50128

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getBtnRadius()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getBtnRadius()F

    move-result p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-object v0
.end method

.method public k()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public l()V
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getPosBeginX()I

    move-result v0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getPosBeginY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->setViewXY(II)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->f:Lcom/networkbench/agent/impl/floatbtnmanager/g;

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->h:Landroid/widget/Button;

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/g;->b(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->h:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->h:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setViewImage()V
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->h:Landroid/widget/Button;

    if-eqz v0, :cond_1

    :try_start_1
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->h:Landroid/widget/Button;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->h:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "set view image error"

    invoke-interface {p0, v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setViewXY(II)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->g:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method public setVisible(I)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->h:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setmContext(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->e:Landroid/app/Activity;

    return-void
.end method
