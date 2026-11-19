.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:[Lcom/cyberlink/clgpuimage/cosmetic/x$a;

.field private final f:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$c;

.field private synthetic g:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;ZZZZ[Lcom/cyberlink/clgpuimage/cosmetic/x$a;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$c;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->a:Z

    iput-boolean p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->b:Z

    iput-boolean p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->c:Z

    iput-boolean p5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->d:Z

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->e:[Lcom/cyberlink/clgpuimage/cosmetic/x$a;

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$c;

    return-void
.end method

.method private a(II)V
    .locals 3

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string v0, "capture image width, height not valid!, width, "

    const-string v1, " m_makeup_live_filter width, "

    .line 231
    const-string v2, " height, "

    invoke-static {p1, p2, v0, v2, v1}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 232
    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    .line 233
    iget-object p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    .line 234
    invoke-virtual {p2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    .line 235
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    .line 236
    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    .line 237
    const-string p2, "LiveMakeupCtrl"

    invoke-static {p1, p2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const-string v2, "PICTURE_TAKEN"

    const-string v3, "start createBitmap on background"

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v2, "createBitmap"

    const-string v3, "CaptureImage"

    invoke-static {v1, v3, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->b:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    iget-boolean v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->a:Z

    if-nez v7, :cond_2

    iget-boolean v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->b:Z

    if-nez v7, :cond_2

    iget-boolean v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->d:Z

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->e:[Lcom/cyberlink/clgpuimage/cosmetic/x$a;

    aget-object v7, v7, v5

    iget-object v8, v7, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->c:[I

    iget v9, v7, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->a:I

    iget v7, v7, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->b:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v7, v9, v8}, Lcom/perfectcorp/common/utility/ImageUtils;->a(III[I)V

    :cond_1
    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->e:[Lcom/cyberlink/clgpuimage/cosmetic/x$a;

    aget-object v7, v7, v6

    iget-object v8, v7, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->c:[I

    iget v9, v7, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->a:I

    iget v7, v7, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->b:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v7, v9, v8}, Lcom/perfectcorp/common/utility/ImageUtils;->a(III[I)V

    :cond_2
    iget-boolean v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->d:Z

    const/high16 v8, 0x43870000    # 270.0f

    const/high16 v9, 0x42b40000    # 90.0f

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->e:[Lcom/cyberlink/clgpuimage/cosmetic/x$a;

    aget-object v7, v7, v5

    iget v13, v7, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->a:I

    iget v14, v7, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->b:I

    invoke-direct {v0, v13, v14}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->a(II)V

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14}, Lcom/perfectcorp/common/utility/Bitmaps;->a(II)Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->e:[Lcom/cyberlink/clgpuimage/cosmetic/x$a;

    aget-object v5, v7, v5

    iget-object v11, v5, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->c:[I

    move/from16 v17, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    move/from16 v16, v13

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    if-eqz v2, :cond_5

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    if-ne v4, v6, :cond_3

    move v5, v9

    goto :goto_1

    :cond_3
    move v5, v8

    :goto_1
    invoke-virtual {v15, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v12, 0x0

    const/16 v16, 0x1

    const/4 v11, 0x0

    move/from16 v14, v17

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :cond_5
    :goto_2
    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->e:[Lcom/cyberlink/clgpuimage/cosmetic/x$a;

    aget-object v5, v5, v6

    iget v14, v5, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->a:I

    iget v15, v5, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->b:I

    invoke-direct {v0, v14, v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->a(II)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v15}, Lcom/perfectcorp/common/utility/Bitmaps;->a(II)Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->e:[Lcom/cyberlink/clgpuimage/cosmetic/x$a;

    aget-object v0, v0, v6

    iget-object v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->c:[I

    move/from16 v18, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    move/from16 v17, v14

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    if-eqz v2, :cond_7

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    if-ne v4, v6, :cond_6

    move v8, v9

    :cond_6
    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v13, 0x0

    const/16 v17, 0x1

    const/4 v12, 0x0

    move-object/from16 v16, v0

    move/from16 v15, v18

    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    :cond_7
    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;

    invoke-direct {v0, v10, v11}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const-string v2, "onImageCaptured"

    invoke-static {v1, v3, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->a()Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;

    move-result-object p0

    return-object p0
.end method
