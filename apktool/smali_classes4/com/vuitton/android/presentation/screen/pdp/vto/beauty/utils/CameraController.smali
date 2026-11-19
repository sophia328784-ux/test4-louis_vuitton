.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\nB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/perfectcorp/perfectlib/MakeupCam;",
        "makeupCam",
        "Lcom/perfectcorp/perfectlib/ShadeFinder;",
        "shadeFinder",
        "<init>",
        "(Landroid/content/Context;Lcom/perfectcorp/perfectlib/MakeupCam;Lcom/perfectcorp/perfectlib/ShadeFinder;)V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/perfectcorp/perfectlib/MakeupCam;

.field public final c:Lcom/perfectcorp/perfectlib/ShadeFinder;

.field public d:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;

.field public e:I

.field public f:I

.field public g:Z

.field public h:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/perfectcorp/perfectlib/MakeupCam;Lcom/perfectcorp/perfectlib/ShadeFinder;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->b:Lcom/perfectcorp/perfectlib/MakeupCam;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->c:Lcom/perfectcorp/perfectlib/ShadeFinder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->g:Z

    return-void
.end method

.method public static c(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;)V
    .locals 4

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->c()Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;->e()Ljava/util/List;

    move-result-object v1

    const-string v2, "continuous-picture"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "auto"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v2}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Ltimber/log/Timber;->a:Ltimber/log/Timber$Forest;

    const-string v2, "CameraController"

    invoke-virtual {v1, v2}, Ltimber/log/Timber$Forest;->g(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "No supported focus mode found."

    invoke-virtual {v1, v3, v2}, Ltimber/log/Timber$Forest;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->f(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;)V
    .locals 7

    const-string v0, "Camera info: facing="

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ltimber/log/Timber;->a:Ltimber/log/Timber$Forest;

    const-string v2, "CameraController"

    invoke-virtual {v1, v2}, Ltimber/log/Timber$Forest;->g(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "[startCamera]"

    invoke-virtual {v1, v5, v4}, Ltimber/log/Timber$Forest;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->b()V

    :try_start_0
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->d(Landroid/content/Context;Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;)Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->d:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;

    invoke-virtual {p1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->l()V

    invoke-virtual {p1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->c()Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;

    move-result-object p2

    invoke-interface {p2}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;->getPreviewSize()Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    move-result-object p2

    iget v4, p2, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;->a:I

    iput v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->e:I

    iget p2, p2, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;->b:I

    iput p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->f:I

    new-instance p2, Ls3;

    const/16 v4, 0xe

    invoke-direct {p2, p0, v4}, Ls3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->g(Ls3;)V

    new-instance p2, Landroid/graphics/SurfaceTexture;

    const/16 v4, 0xa

    invoke-direct {p2, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->h:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p2}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->i(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->b()Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;

    move-result-object p2

    invoke-virtual {v1, v2}, Ltimber/log/Timber$Forest;->g(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;->a:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    iget v5, p2, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;->b:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", orientation="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ltimber/log/Timber$Forest;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lui;

    invoke-direct {v0, p0, p2, v3}, Lui;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;I)V

    new-instance v1, Lkotlin/concurrent/ThreadsKt$thread$thread$1;

    invoke-direct {v1, v0}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v0, Lui;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lui;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;I)V

    new-instance p2, Lkotlin/concurrent/ThreadsKt$thread$thread$1;

    invoke-direct {p2, v0}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->c(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->d:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->j()V

    new-instance p2, Lmd;

    const/16 v0, 0x18

    invoke-direct {p2, v0}, Lmd;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->a(Lmd;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-object p2, Ltimber/log/Timber;->a:Ltimber/log/Timber$Forest;

    invoke-virtual {p2, v2}, Ltimber/log/Timber$Forest;->g(Ljava/lang/String;)V

    const-string v0, "[startPreview] failed"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0, v1}, Ltimber/log/Timber$Forest;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    sget-object p2, Ltimber/log/Timber;->a:Ltimber/log/Timber$Forest;

    invoke-virtual {p2, v2}, Ltimber/log/Timber$Forest;->g(Ljava/lang/String;)V

    const-string v0, "[startCamera] error"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0, v1}, Ltimber/log/Timber$Forest;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->d:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->e()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->d:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 3

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$Forest;

    const-string v1, "CameraController"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->g(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[stopCamera]"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->d:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->k()V

    invoke-virtual {v0, v1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->g(Ls3;)V

    invoke-virtual {v0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->h()V

    invoke-virtual {v0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->e()V

    :cond_0
    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->d:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->h:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_1
    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->h:Landroid/graphics/SurfaceTexture;

    return-void
.end method
