.class public final Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;
.super Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeveloperModeLabel"
.end annotation


# instance fields
.field public d:Landroid/graphics/Bitmap;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-direct {p0, v1, v0}, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;-><init>([F[F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->a:Lcom/perfectcorp/perfectlib/gpuimage/a;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/gpuimage/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/perfectcorp/perfectlib/gpuimage/b;

    invoke-direct {v3, v1, v0}, Lcom/perfectcorp/perfectlib/gpuimage/b;-><init>(Lcom/perfectcorp/perfectlib/gpuimage/a;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->a()V

    return-void
.end method

.method public final c()V
    .locals 10

    invoke-super {p0}, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->c()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v0, 0x118

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/perfectcorp/common/utility/Bitmaps;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;->d:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;->d:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;->d:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/text/StaticLayout;

    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const v1, -0x9c9d

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v3, -0x1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "DEVELOPER MODE"

    const/16 v5, 0x118

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v2, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;->d:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->a:Lcom/perfectcorp/perfectlib/gpuimage/a;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/gpuimage/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/perfectcorp/perfectlib/gpuimage/b;

    invoke-direct {v2, p0, v0}, Lcom/perfectcorp/perfectlib/gpuimage/b;-><init>(Lcom/perfectcorp/perfectlib/gpuimage/a;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
