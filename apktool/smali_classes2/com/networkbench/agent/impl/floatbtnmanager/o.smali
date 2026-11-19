.class public Lcom/networkbench/agent/impl/floatbtnmanager/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/o;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 2

    .line 179
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->e()Landroid/app/Application;

    move-result-object v0

    .line 180
    const-string v1, "activity"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 182
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 183
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 184
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a([Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/floatbtnmanager/n;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->a()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/networkbench/agent/impl/floatbtnmanager/o;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/floatbtnmanager/n;

    invoke-interface {v0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v2

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    return-object v2

    :cond_4
    :try_start_0
    invoke-virtual {v4}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->a()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/o;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gtz v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gtz v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    int-to-long v3, v3

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/o;->a()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_2
    move-object v2, v1

    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_8
    :goto_3
    return-object v2

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v3, Lcom/networkbench/agent/impl/floatbtnmanager/o;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "create bitmap error:"

    invoke-interface {v3, v4, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {v0, v2, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/o;->a(Ljava/util/List;Landroid/graphics/Bitmap;[Landroid/view/View;)V

    :catch_0
    return-object v2
.end method

.method public static a(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal.policy.DecorView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 178
    :cond_0
    const-string v0, "mWindow"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/view/View;Landroid/graphics/Canvas;)Ljava/util/ArrayList;
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

    .line 203
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 204
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 206
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 208
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 209
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 210
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-static {v3, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/o;->a(Landroid/view/View;Landroid/graphics/Canvas;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    instance-of v5, v3, Landroid/view/TextureView;

    if-eqz v5, :cond_1

    .line 214
    move-object v5, v3

    check-cast v5, Landroid/view/TextureView;

    invoke-static {v5, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/o;->a(Landroid/view/TextureView;Landroid/graphics/Canvas;)V

    .line 215
    :cond_1
    instance-of v5, v3, Landroid/opengl/GLSurfaceView;

    if-eqz v5, :cond_2

    .line 216
    check-cast v3, Landroid/opengl/GLSurfaceView;

    invoke-static {v3, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/o;->a(Landroid/opengl/GLSurfaceView;Landroid/graphics/Canvas;)V

    .line 217
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static a(Landroid/opengl/GLSurfaceView;Landroid/graphics/Canvas;)V
    .locals 13

    .line 218
    const-string v0, "Drawing GLSurfaceView"

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/e;->c(Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 220
    new-array v0, v0, [I

    .line 221
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int v3, v1, v2

    .line 224
    new-array v3, v3, [I

    .line 225
    invoke-static {v3}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v4

    const/4 v5, 0x0

    .line 226
    invoke-virtual {v4, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 228
    new-instance v8, Lcom/networkbench/agent/impl/floatbtnmanager/o$1;

    invoke-direct {v8, v1, v2, v4, v6}, Lcom/networkbench/agent/impl/floatbtnmanager/o$1;-><init>(IILjava/nio/IntBuffer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v8}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 229
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    mul-int p0, v1, v2

    .line 230
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

    .line 231
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

    .line 232
    aput v9, p0, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 233
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 234
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 235
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 236
    aget v2, v0, v5

    int-to-float v2, v2

    aget v0, v0, v7

    int-to-float v0, v0

    invoke-virtual {p1, p0, v2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 237
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method

.method private static a(Landroid/view/TextureView;Landroid/graphics/Canvas;)V
    .locals 4

    .line 238
    const-string v0, "Drawing TextureView"

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/e;->c(Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 239
    new-array v0, v0, [I

    .line 240
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 241
    invoke-virtual {p0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 242
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 243
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v2, 0x0

    .line 244
    aget v2, v0, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, p0, v2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 245
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private static a(Lcom/networkbench/agent/impl/floatbtnmanager/n;Landroid/graphics/Bitmap;[Landroid/view/View;)V
    .locals 5

    .line 187
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->d()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 188
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->d()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 190
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 191
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 192
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->c()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz p2, :cond_1

    .line 193
    array-length p1, p2

    new-array p1, p1, [I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_3

    move v1, v2

    .line 194
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_3

    .line 195
    aget-object v3, p2, v1

    if-eqz v3, :cond_2

    .line 196
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    aput v3, p1, v1

    .line 197
    aget-object v3, p2, v1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 199
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/n;->a()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/o;->a(Landroid/view/View;Landroid/graphics/Canvas;)Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    .line 200
    :goto_2
    array-length p0, p2

    if-ge v2, p0, :cond_5

    .line 201
    aget-object p0, p2, v2

    if-eqz p0, :cond_4

    .line 202
    aget v0, p1, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private static a(Ljava/util/List;Landroid/graphics/Bitmap;[Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/floatbtnmanager/n;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 185
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/floatbtnmanager/n;

    .line 186
    invoke-static {v0, p1, p2}, Lcom/networkbench/agent/impl/floatbtnmanager/o;->a(Lcom/networkbench/agent/impl/floatbtnmanager/n;Landroid/graphics/Bitmap;[Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .line 174
    const-string v0, "android.widget.PopupWindow$PopupDecorView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.internal.policy.DecorView"

    .line 175
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
