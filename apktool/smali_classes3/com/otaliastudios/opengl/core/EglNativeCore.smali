.class public Lcom/otaliastudios/opengl/core/EglNativeCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/core/EglNativeCore$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u0008B\u001d\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/core/EglNativeCore;",
        "",
        "Lcom/otaliastudios/opengl/internal/EglContext;",
        "sharedContext",
        "",
        "flags",
        "<init>",
        "(Lcom/otaliastudios/opengl/internal/EglContext;I)V",
        "Companion",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Lcom/otaliastudios/opengl/internal/EglDisplay;

.field public b:Lcom/otaliastudios/opengl/internal/EglContext;

.field public c:Lcom/otaliastudios/opengl/internal/EglConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/core/EglNativeCore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/core/EglNativeCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 168
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/otaliastudios/opengl/core/EglNativeCore;-><init>(Lcom/otaliastudios/opengl/internal/EglContext;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/opengl/internal/EglContext;I)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/otaliastudios/opengl/internal/EglContext;->a:Landroid/opengl/EGLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/otaliastudios/opengl/internal/EglKt;->b:Lcom/otaliastudios/opengl/internal/EglDisplay;

    iput-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->a:Lcom/otaliastudios/opengl/internal/EglDisplay;

    sget-object v1, Lcom/otaliastudios/opengl/internal/EglKt;->a:Lcom/otaliastudios/opengl/internal/EglContext;

    iput-object v1, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->b:Lcom/otaliastudios/opengl/internal/EglContext;

    new-instance v1, Lcom/otaliastudios/opengl/internal/EglDisplay;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/otaliastudios/opengl/internal/EglDisplay;-><init>(Landroid/opengl/EGLDisplay;)V

    iput-object v1, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->a:Lcom/otaliastudios/opengl/internal/EglDisplay;

    const/4 v3, 0x0

    if-eq v1, v0, :cond_5

    const/4 v0, 0x1

    new-array v4, v0, [I

    new-array v5, v0, [I

    iget-object v1, v1, Lcom/otaliastudios/opengl/internal/EglDisplay;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v4, v2, v5, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;

    invoke-direct {v1}, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;-><init>()V

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x2

    and-int/2addr p2, v1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->a:Lcom/otaliastudios/opengl/internal/EglDisplay;

    const/4 v4, 0x3

    invoke-static {p2, v4, v0}, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;->a(Lcom/otaliastudios/opengl/internal/EglDisplay;IZ)Lcom/otaliastudios/opengl/internal/EglConfig;

    move-result-object p2

    if-eqz p2, :cond_1

    sget v5, Lcom/otaliastudios/opengl/internal/EglKt;->i:I

    sget v6, Lcom/otaliastudios/opengl/internal/EglKt;->e:I

    filled-new-array {v5, v4, v6}, [I

    move-result-object v4

    iget-object v5, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->a:Lcom/otaliastudios/opengl/internal/EglDisplay;

    new-instance v6, Lcom/otaliastudios/opengl/internal/EglContext;

    iget-object v5, v5, Lcom/otaliastudios/opengl/internal/EglDisplay;->a:Landroid/opengl/EGLDisplay;

    iget-object v7, p2, Lcom/otaliastudios/opengl/internal/EglConfig;->a:Landroid/opengl/EGLConfig;

    invoke-static {v5, v7, p1, v4, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/otaliastudios/opengl/internal/EglContext;-><init>(Landroid/opengl/EGLContext;)V

    :try_start_0
    const-string v4, "eglCreateContext (3)"

    invoke-static {v4}, Lcom/otaliastudios/opengl/core/Egloo;->a(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->c:Lcom/otaliastudios/opengl/internal/EglConfig;

    iput-object v6, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->b:Lcom/otaliastudios/opengl/internal/EglContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object p2, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->b:Lcom/otaliastudios/opengl/internal/EglContext;

    sget-object v4, Lcom/otaliastudios/opengl/internal/EglKt;->a:Lcom/otaliastudios/opengl/internal/EglContext;

    if-ne p2, v4, :cond_3

    iget-object p2, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->a:Lcom/otaliastudios/opengl/internal/EglDisplay;

    invoke-static {p2, v1, v0}, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;->a(Lcom/otaliastudios/opengl/internal/EglDisplay;IZ)Lcom/otaliastudios/opengl/internal/EglConfig;

    move-result-object p2

    if-eqz p2, :cond_2

    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->i:I

    sget v3, Lcom/otaliastudios/opengl/internal/EglKt;->e:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->a:Lcom/otaliastudios/opengl/internal/EglDisplay;

    new-instance v3, Lcom/otaliastudios/opengl/internal/EglContext;

    iget-object v1, v1, Lcom/otaliastudios/opengl/internal/EglDisplay;->a:Landroid/opengl/EGLDisplay;

    iget-object v4, p2, Lcom/otaliastudios/opengl/internal/EglConfig;->a:Landroid/opengl/EGLConfig;

    invoke-static {v1, v4, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/otaliastudios/opengl/internal/EglContext;-><init>(Landroid/opengl/EGLContext;)V

    const-string p1, "eglCreateContext (2)"

    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->a(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->c:Lcom/otaliastudios/opengl/internal/EglConfig;

    iput-object v3, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->b:Lcom/otaliastudios/opengl/internal/EglContext;

    goto :goto_1

    :cond_2
    const-string p0, "Unable to find a suitable EGLConfig"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string p0, "unable to initialize EGL14"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v3

    :cond_5
    const-string p0, "unable to get EGL14 display"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Lcom/otaliastudios/opengl/internal/EglContext;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 166
    sget-object p1, Lcom/otaliastudios/opengl/internal/EglKt;->a:Lcom/otaliastudios/opengl/internal/EglContext;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 167
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/opengl/core/EglNativeCore;-><init>(Lcom/otaliastudios/opengl/internal/EglContext;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/otaliastudios/opengl/internal/EglSurface;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->e:I

    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->a:Lcom/otaliastudios/opengl/internal/EglDisplay;

    iget-object p0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->c:Lcom/otaliastudios/opengl/internal/EglConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/otaliastudios/opengl/internal/EglSurface;

    iget-object v1, v1, Lcom/otaliastudios/opengl/internal/EglDisplay;->a:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/otaliastudios/opengl/internal/EglConfig;->a:Landroid/opengl/EGLConfig;

    const/4 v3, 0x0

    invoke-static {v1, p0, p1, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/otaliastudios/opengl/internal/EglSurface;-><init>(Landroid/opengl/EGLSurface;)V

    const-string p0, "eglCreateWindowSurface"

    invoke-static {p0}, Lcom/otaliastudios/opengl/core/Egloo;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/otaliastudios/opengl/internal/EglKt;->c:Lcom/otaliastudios/opengl/internal/EglSurface;

    if-eq v2, p0, :cond_0

    return-object v2

    :cond_0
    const-string p0, "surface was null"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
