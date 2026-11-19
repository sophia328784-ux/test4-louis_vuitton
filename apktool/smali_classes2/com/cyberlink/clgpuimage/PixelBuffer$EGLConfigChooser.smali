.class public interface abstract Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/PixelBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EGLConfigChooser"
.end annotation


# static fields
.field public static final a:Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->a:I

    const/16 v1, 0x8

    iput v1, v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->b:I

    iput v1, v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->c:I

    iput v1, v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->d:I

    iput v1, v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;->e:I

    new-instance v1, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;

    invoke-direct {v1, v0}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;-><init>(Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;)V

    sput-object v1, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooser;->a:Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooser;

    return-void
.end method


# virtual methods
.method public abstract a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Z)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
