.class final Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/PixelBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EGLConfigChooserImpl"
.end annotation


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:[I


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->g:[I

    iget v0, p1, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->a:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->b:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->b:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->c:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->c:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->d:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->d:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->e:I

    iget p1, p1, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->e:I

    iput p1, p0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->f:I

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Z)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 18

    move-object/from16 v0, p0

    const/4 v14, 0x4

    const/16 v15, 0x3038

    const/16 v1, 0x3025

    iget v2, v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->b:I

    const/16 v3, 0x3026

    const/4 v4, 0x0

    const/16 v5, 0x3024

    iget v6, v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->c:I

    const/16 v7, 0x3023

    iget v8, v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->d:I

    const/16 v9, 0x3022

    iget v10, v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->e:I

    const/16 v11, 0x3021

    iget v12, v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->f:I

    const/16 v13, 0x3040

    filled-new-array/range {v1 .. v15}, [I

    move-result-object v3

    const/4 v1, 0x1

    new-array v6, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz p3, :cond_1

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "eglChooseConfig size"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    :goto_0
    const/4 v8, 0x0

    aget v5, v6, v8

    if-eqz p3, :cond_3

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "No EGL config can be used"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v7

    :cond_3
    :goto_1
    new-array v4, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-eqz p3, :cond_5

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->a()V

    goto :goto_2

    :cond_4
    const-string v0, "eglChooseConfig configs"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_5
    :goto_2
    if-eqz p3, :cond_a

    move v3, v8

    :goto_3
    if-ge v3, v5, :cond_9

    aget-object v6, v4, v3

    const/16 v9, 0x3025

    invoke-virtual {v0, v1, v2, v6, v9}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v10

    const/16 v11, 0x3026

    invoke-virtual {v0, v1, v2, v6, v11}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v12

    iget v13, v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->b:I

    if-lt v10, v13, :cond_7

    if-ltz v12, :cond_7

    const/16 v10, 0x3024

    invoke-virtual {v0, v1, v2, v6, v10}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v12

    const/16 v13, 0x3023

    invoke-virtual {v0, v1, v2, v6, v13}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v14

    const/16 v15, 0x3022

    move-object/from16 v16, v7

    invoke-virtual {v0, v1, v2, v6, v15}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v7

    move/from16 v17, v8

    const/16 v8, 0x3021

    invoke-virtual {v0, v1, v2, v6, v8}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v15

    iget v8, v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->c:I

    if-ne v12, v8, :cond_8

    iget v8, v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->d:I

    if-ne v14, v8, :cond_8

    iget v8, v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->e:I

    if-ne v7, v8, :cond_8

    iget v7, v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->f:I

    if-ne v15, v7, :cond_8

    filled-new-array {v6}, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    move/from16 v4, v17

    :goto_4
    if-gtz v4, :cond_6

    aget-object v5, v3, v17

    invoke-virtual {v0, v1, v2, v5, v9}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    invoke-virtual {v0, v1, v2, v5, v11}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    invoke-virtual {v0, v1, v2, v5, v10}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    invoke-virtual {v0, v1, v2, v5, v13}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    const/16 v7, 0x3022

    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    const/16 v8, 0x3021

    invoke-virtual {v0, v1, v2, v5, v8}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    return-object v6

    :cond_7
    move-object/from16 v16, v7

    move/from16 v17, v8

    :cond_8
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v16

    move/from16 v8, v17

    goto :goto_3

    :cond_9
    move-object/from16 v16, v7

    const-string v0, "No config chosen"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v16

    :cond_a
    move/from16 v17, v8

    aget-object v0, v4, v17

    return-object v0
.end method

.method public final b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 0

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;->g:[I

    invoke-interface {p1, p2, p3, p4, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    aget p0, p0, p2

    return p0

    :cond_0
    return p2
.end method
