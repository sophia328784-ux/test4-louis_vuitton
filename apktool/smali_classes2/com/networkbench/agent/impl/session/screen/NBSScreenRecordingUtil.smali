.class public Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSScreenRecordingUtil"

.field static handler:Landroid/os/Handler; = null

.field static hideRect:Landroid/graphics/Rect; = null

.field private static mPaint:Lcom/networkbench/agent/impl/session/screen/NBSPaint; = null

.field private static scaleValue:F = 1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->hideRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/networkbench/agent/impl/session/screen/NBSPaint;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/session/screen/NBSPaint;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->mPaint:Lcom/networkbench/agent/impl/session/screen/NBSPaint;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->extracted(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;Ljava/util/List;)V

    return-void
.end method

.method private static attachContentView(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    const/high16 p1, -0x1000000

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x42a00000    # 80.0f

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, p0, p1, v0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->getTextLinesVector(Landroid/text/TextPaint;Ljava/lang/String;FF)Ljava/util/Vector;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->vectorToString(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget p1, p3, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, p1

    iget p1, p3, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    invoke-static {v2}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->getFontHeight(Landroid/text/TextPaint;)F

    move-result v2

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v2, p0

    sub-float/2addr p3, v2

    div-float/2addr p3, v3

    add-float/2addr p3, p1

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private static calcIgnoredRects(Landroid/view/View;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "II)",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->isActivityInIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getCurrentActivityMaskRect(II)Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getIgnoreFragmentRect()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getIgnoreFragmentRect()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getIgnoredRects()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;->getIgnoreViewsRectFromRoot(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_6

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->isContainViewRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {v1, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;

    invoke-virtual {v2, p1, p2}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->isRectOutofScreen(II)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static calcuCaptureHeight(DI)I
    .locals 2

    int-to-double v0, p2

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private static declared-synchronized captureViewOverO(Ljava/util/List;Landroid/view/Window;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/floatbtnmanager/n;",
            ">;",
            "Landroid/view/Window;",
            "Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;",
            "II)V"
        }
    .end annotation

    const-string v0, "captureViewOverO rootSize:"

    const-class v1, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;

    monitor-enter v1

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const-string v2, "NBSScreenRecordingUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-static {p0, p3, p4}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->calcIgnoredRects(Landroid/view/View;II)Ljava/util/List;

    move-result-object p3

    new-instance p4, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    aget v0, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    invoke-direct {p4, v2, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p2, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->image_data:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1;

    invoke-direct {v0, p2, p3}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$1;-><init>(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;Ljava/util/List;)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p1, p4, p0, v0, p2}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    const-string p1, "NBSScreenRecordingUtil"

    const-string p2, " PixelCopy request error :"

    invoke-static {p1, p2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static draw(Landroid/graphics/Rect;Landroid/graphics/Canvas;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)V
    .locals 4

    iget-wide v0, p2, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_width:J

    long-to-float v0, v0

    iget-wide v1, p2, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->width:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iget-wide v1, p2, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_height:J

    long-to-float v1, v1

    iget-wide v2, p2, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->height:J

    long-to-float p2, v2

    div-float/2addr v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget p2, p0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private static drawGLSurfaceView(Landroid/opengl/GLSurfaceView;Landroid/graphics/Canvas;)V
    .locals 13

    const-string v0, "Drawing GLSurfaceView"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->w(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int v3, v1, v2

    new-array v3, v3, [I

    invoke-static {v3}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v8, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$2;

    invoke-direct {v8, v1, v2, v4, v6}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil$2;-><init>(IILjava/nio/IntBuffer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v8}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    mul-int p0, v1, v2

    new-array p0, p0, [I

    move v4, v5

    move v6, v4

    :goto_0
    if-ge v4, v2, :cond_1

    move v8, v5

    :goto_1
    if-ge v8, v1, :cond_0

    mul-int v9, v4, v1

    add-int/2addr v9, v8

    aget v9, v3, v9

    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v11, v9, 0x10

    const/high16 v12, 0xff0000

    and-int/2addr v11, v12

    const v12, -0xff0100

    and-int/2addr v9, v12

    or-int/2addr v9, v11

    or-int/2addr v9, v10

    sub-int v10, v2, v6

    sub-int/2addr v10, v7

    mul-int/2addr v10, v1

    add-int/2addr v10, v8

    aput v9, p0, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    aget v2, v0, v5

    int-to-float v2, v2

    aget v0, v0, v7

    int-to-float v0, v0

    invoke-virtual {p1, p0, v2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method

.method private static drawHideRects(Landroid/graphics/Canvas;Ljava/util/List;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;",
            ">;",
            "Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "drawHideRects begin"

    const-string v3, "NBSScreenRecordingUtil"

    invoke-static {v3, v2}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "drawHideRects size:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v6

    invoke-static {v5, v0, v1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->draw(Landroid/graphics/Rect;Landroid/graphics/Canvas;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)V

    sget-object v7, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->hideRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v9, v8, v5}, Landroid/graphics/Rect;->set(IIII)V

    const-string v5, "#C8C9CC"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->getViewType()Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    move-result-object v7

    sget-object v8, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;->WEB_VIEW:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    if-eq v7, v8, :cond_1

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->getViewType()Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    move-result-object v7

    sget-object v10, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;->ACTIVITY:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    if-eq v7, v10, :cond_1

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->getViewType()Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    move-result-object v7

    sget-object v10, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;->FRAGMENT:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    if-ne v7, v10, :cond_2

    :cond_1
    move-object/from16 v17, v2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->getViewType()Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    move-result-object v4

    sget-object v7, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;->IMAGE:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    if-ne v4, v7, :cond_3

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const-string v7, "#FAFAFA"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->hideRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v5, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->hideRect:Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v10, v8

    iget v11, v5, Landroid/graphics/Rect;->top:I

    int-to-float v12, v11

    iget v13, v5, Landroid/graphics/Rect;->right:I

    int-to-float v14, v13

    int-to-float v15, v11

    move/from16 p1, v7

    int-to-float v7, v8

    move/from16 v16, v9

    int-to-float v9, v11

    move-object/from16 v17, v2

    int-to-float v2, v8

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v2

    int-to-float v2, v5

    move/from16 v19, v2

    int-to-float v2, v8

    move/from16 v20, v2

    int-to-float v2, v5

    move/from16 v21, v2

    int-to-float v2, v13

    move/from16 v22, v2

    int-to-float v2, v5

    move/from16 v23, v2

    int-to-float v2, v13

    move/from16 v24, v2

    int-to-float v2, v11

    move/from16 v25, v2

    int-to-float v2, v13

    move/from16 v26, v2

    int-to-float v2, v5

    move/from16 v27, v2

    int-to-float v2, v8

    move/from16 v28, v2

    int-to-float v2, v11

    move/from16 v29, v2

    int-to-float v2, v13

    move/from16 v30, v2

    int-to-float v2, v5

    int-to-float v8, v8

    int-to-float v5, v5

    int-to-float v13, v13

    int-to-float v11, v11

    move/from16 v31, v2

    const/16 v2, 0x18

    new-array v2, v2, [F

    aput v10, v2, v16

    aput v12, v2, p1

    const/4 v10, 0x2

    aput v14, v2, v10

    const/4 v10, 0x3

    aput v15, v2, v10

    const/4 v10, 0x4

    aput v7, v2, v10

    const/4 v7, 0x5

    aput v9, v2, v7

    const/4 v7, 0x6

    aput v18, v2, v7

    const/4 v7, 0x7

    aput v19, v2, v7

    const/16 v7, 0x8

    aput v20, v2, v7

    const/16 v7, 0x9

    aput v21, v2, v7

    const/16 v7, 0xa

    aput v22, v2, v7

    const/16 v7, 0xb

    aput v23, v2, v7

    const/16 v7, 0xc

    aput v24, v2, v7

    const/16 v7, 0xd

    aput v25, v2, v7

    const/16 v7, 0xe

    aput v26, v2, v7

    const/16 v7, 0xf

    aput v27, v2, v7

    const/16 v7, 0x10

    aput v28, v2, v7

    const/16 v7, 0x11

    aput v29, v2, v7

    const/16 v7, 0x12

    aput v30, v2, v7

    const/16 v7, 0x13

    aput v31, v2, v7

    const/16 v7, 0x14

    aput v8, v2, v7

    const/16 v7, 0x15

    aput v5, v2, v7

    const/16 v5, 0x16

    aput v13, v2, v5

    const/16 v5, 0x17

    aput v11, v2, v5

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_3
    move-object/from16 v17, v2

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->hideRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    :goto_1
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->hideRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v5

    sget-object v7, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->hideRect:Landroid/graphics/Rect;

    invoke-static {v2, v5, v0, v7}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->attachContentView(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_4
    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->getViewType()Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    move-result-object v2

    if-ne v2, v8, :cond_5

    new-instance v9, Lcom/networkbench/agent/impl/session/screen/NBSWebViewItem;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->getViewId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->scaleValue:F

    mul-float/2addr v2, v5

    float-to-int v11, v2

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->scaleValue:F

    mul-float/2addr v2, v5

    float-to-int v12, v2

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sget v5, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->scaleValue:F

    mul-float/2addr v2, v5

    float-to-int v13, v2

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sget v4, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->scaleValue:F

    mul-float/2addr v2, v4

    float-to-int v14, v2

    invoke-direct/range {v9 .. v14}, Lcom/networkbench/agent/impl/session/screen/NBSWebViewItem;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v1, v9}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->addWebViewItem(Lcom/networkbench/agent/impl/session/screen/NBSWebViewItem;)V

    :cond_5
    :goto_2
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move-object/from16 v2, v17

    goto/16 :goto_0

    :cond_6
    :goto_3
    const-string v0, "maskViewRect rect is wrong"

    invoke-static {v3, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    return-void
.end method

.method private static drawRootToBitmap(Lcom/networkbench/agent/impl/floatbtnmanager/n;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/agent/impl/util/d;
        }
    .end annotation

    new-instance v0, Landroid/graphics/Canvas;

    iget-object p1, p1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->image_data:Landroid/graphics/Bitmap;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->d()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x2

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->d()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->c()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "canvas scale:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->scaleValue:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NBSScreenRecordingUtil"

    invoke-static {v1, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->scaleValue:F

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->a()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->drawUnDrawableViews(Landroid/view/View;Landroid/graphics/Canvas;)Ljava/util/ArrayList;

    return-void
.end method

.method private static drawRootToBitmapHigh(Ljava/util/List;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/floatbtnmanager/n;",
            ">;",
            "Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/agent/impl/util/d;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/floatbtnmanager/n;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->d()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->image_data:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/floatbtnmanager/n;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->d()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :cond_0
    const-string v0, "Build.VERSION.SDK_INT >= Build.VERSION_CODES.O"

    const-string v1, "NBSScreenRecordingUtil"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "begin captureViewOverO"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->captureViewOverO(Ljava/util/List;Landroid/view/Window;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;II)V

    return-void

    :cond_1
    new-instance p0, Lcom/networkbench/agent/impl/util/d;

    const-string p1, "current activity is not get"

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/util/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static drawRootsToBitmap(Ljava/util/List;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/floatbtnmanager/n;",
            ">;",
            "Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/agent/impl/util/d;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->drawRootToBitmapHigh(Ljava/util/List;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;II)V
    :try_end_0
    .catch Lcom/networkbench/agent/impl/util/d; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->drawPath:Z

    return-void
.end method

.method private static drawTextureView(Landroid/view/TextureView;Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "NBSScreenRecordingUtil"

    const-string v1, "Drawing TextureView"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, p0, v2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private static drawUnDrawableViews(Landroid/view/View;Landroid/graphics/Canvas;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/graphics/Canvas;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, p1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->drawUnDrawableViews(Landroid/view/View;Landroid/graphics/Canvas;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    instance-of v5, v3, Landroid/view/TextureView;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Landroid/view/TextureView;

    invoke-static {v5, p1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->drawTextureView(Landroid/view/TextureView;Landroid/graphics/Canvas;)V

    :cond_1
    instance-of v5, v3, Landroid/opengl/GLSurfaceView;

    if-eqz v5, :cond_2

    check-cast v3, Landroid/opengl/GLSurfaceView;

    invoke-static {v3, p1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->drawGLSurfaceView(Landroid/opengl/GLSurfaceView;Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static extracted(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;",
            ">;)V"
        }
    .end annotation

    const-string v0, "NBSScreenRecordingUtil"

    const-string v1, "screenRecordBitmap is null : "

    const-string v2, "NBSScreenRecordTimer  bitmap path : "

    :try_start_0
    iget-object v3, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->image_data:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->image_data:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v3, p1, p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->drawHideRects(Landroid/graphics/Canvas;Ljava/util/List;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->getImage_data()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->getImage_data()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "tingyunScreen"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)V

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->firstBean:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string p1, "NBSScreenRecordTimer  extracted error : "

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getAvailableMemory()J
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->e()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static getFontHeight(Landroid/text/TextPaint;)F
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public static getScreenRecordBitmap(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)V
    .locals 15

    const-string v0, ", height:"

    const-string v1, "NBSScreenRecordingUtil"

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSViewHelper;->getRootViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/floatbtnmanager/n;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->a()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->isDecorViewClass(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/networkbench/agent/impl/floatbtnmanager/n;

    invoke-interface {v2, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v5, v6

    :cond_3
    :goto_1
    if-nez v5, :cond_4

    goto/16 :goto_5

    :cond_4
    :try_start_0
    invoke-virtual {v5}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->a()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->getWindowByRootview(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create bitmap, width:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    if-gtz v5, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->setWidthAndHeight(II)V

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->getReplay()D

    move-result-wide v7

    double-to-float v9, v7

    sput v9, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->scaleValue:F

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->calcuCaptureHeight(DI)I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-static {v7, v8, v10}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->calcuCaptureHeight(DI)I

    move-result v10

    int-to-long v11, v9

    iput-wide v11, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_width:J

    int-to-long v11, v10

    iput-wide v11, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->frame_height:J

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v11, v4

    mul-int/lit8 v11, v11, 0x4

    int-to-long v11, v11

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->getAvailableMemory()J

    move-result-wide v13

    cmp-long v4, v11, v13

    if-gez v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bitmap.createBitmap width:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move v4, v3

    move v3, v5

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_6

    :catchall_1
    move-exception v0

    move v4, v3

    goto :goto_3

    :cond_6
    :goto_2
    :try_start_2
    const-string v0, "decorView width or height is small zero, skip"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "create bitmap error:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v3

    move v3, v4

    :goto_4
    if-nez v6, :cond_7

    const-string p0, "bitmap == null, skip"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    iput-object v6, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->image_data:Landroid/graphics/Bitmap;

    :try_start_3
    invoke-static {v2, p0, v5, v3}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->drawRootsToBitmap(Ljava/util/List;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;II)V
    :try_end_3
    .catch Lcom/networkbench/agent/impl/util/d; {:try_start_3 .. :try_end_3} :catch_1

    :cond_8
    :goto_5
    return-void

    :catch_1
    move-exception p0

    const-string v0, "CustomException happened, please check"

    invoke-static {v1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :goto_6
    const-string v0, "IllegalArgumentException createBmp"

    invoke-static {v1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getTextLinesVector(Landroid/text/TextPaint;Ljava/lang/String;FF)Ljava/util/Vector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextPaint;",
            "Ljava/lang/String;",
            "FF)",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->getFontHeight(Landroid/text/TextPaint;)F

    move-result v1

    div-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x1

    new-array v9, v8, [F

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v9}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/16 v10, 0xa

    if-ne v7, v10, :cond_0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v3, 0x1

    move v6, v4

    :goto_1
    move v4, v2

    goto :goto_2

    :cond_0
    aget v7, v9, v2

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    add-int/2addr v4, v7

    int-to-float v7, v4

    cmpl-float v7, v7, p3

    if-lez v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v3, -0x1

    move v6, v3

    move v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v1, -0x1

    if-ne v3, v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    if-ne v5, p2, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v3, v8

    goto :goto_0

    :cond_4
    :goto_3
    return-object v0
.end method

.method public static getWindowByRootview(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal.policy.DecorView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "mWindow"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isDecorViewClass(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.widget.PopupWindow$PopupDecorView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.internal.policy.DecorView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static vectorToString(Ljava/util/Vector;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
