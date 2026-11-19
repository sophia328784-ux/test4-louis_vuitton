.class final Lcom/google/android/filament/AndroidPlatform;
.super Lcom/google/android/filament/Platform;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Landroid/opengl/EGLContext;

    invoke-virtual {p1}, Landroid/opengl/EGLObjectHandle;->getNativeHandle()J

    move-result-wide p0

    return-wide p0
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Landroid/opengl/EGLContext;

    return p0
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Landroid/view/Surface;

    return p0
.end method
