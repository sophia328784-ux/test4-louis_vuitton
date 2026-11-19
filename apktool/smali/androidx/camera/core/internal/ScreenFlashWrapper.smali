.class public final Landroidx/camera/core/internal/ScreenFlashWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageCapture$ScreenFlash;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/internal/ScreenFlashWrapper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/camera/core/internal/ScreenFlashWrapper;",
        "Landroidx/camera/core/ImageCapture$ScreenFlash;",
        "Companion",
        "camera-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final e:Landroidx/camera/core/internal/ScreenFlashWrapper$Companion;


# instance fields
.field public final a:Landroidx/camera/core/ImageCapture$ScreenFlash;

.field public final b:Ljava/lang/Object;

.field public c:Z

.field public d:Landroidx/camera/core/ImageCapture$ScreenFlashListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/internal/ScreenFlashWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/internal/ScreenFlashWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/core/internal/ScreenFlashWrapper;->e:Landroidx/camera/core/internal/ScreenFlashWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/ImageCapture$ScreenFlash;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/internal/ScreenFlashWrapper;->a:Landroidx/camera/core/ImageCapture$ScreenFlash;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/internal/ScreenFlashWrapper;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(JLandroidx/camera/core/ImageCapture$ScreenFlashListener;)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/core/internal/ScreenFlashWrapper;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/camera/core/internal/ScreenFlashWrapper;->c:Z

    iput-object p3, p0, Landroidx/camera/core/internal/ScreenFlashWrapper;->d:Landroidx/camera/core/ImageCapture$ScreenFlashListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p3, p0, Landroidx/camera/core/internal/ScreenFlashWrapper;->a:Landroidx/camera/core/ImageCapture$ScreenFlash;

    if-eqz p3, :cond_0

    new-instance v0, Lpi;

    invoke-direct {v0, p0, v1}, Lpi;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p3, p1, p2, v0}, Landroidx/camera/core/ImageCapture$ScreenFlash;->a(JLandroidx/camera/core/ImageCapture$ScreenFlashListener;)V

    return-void

    :cond_0
    const-string p1, "ScreenFlashWrapper"

    invoke-static {p1}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/core/internal/ScreenFlashWrapper;->c()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/internal/ScreenFlashWrapper;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/internal/ScreenFlashWrapper;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/core/internal/ScreenFlashWrapper;->a:Landroidx/camera/core/ImageCapture$ScreenFlash;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/camera/core/ImageCapture$ScreenFlash;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v1, "ScreenFlashWrapper"

    invoke-static {v1}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "ScreenFlashWrapper"

    const/4 v2, 0x5

    invoke-static {v2, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/camera/core/internal/ScreenFlashWrapper;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/internal/ScreenFlashWrapper;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/internal/ScreenFlashWrapper;->d:Landroidx/camera/core/ImageCapture$ScreenFlashListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/camera/core/ImageCapture$ScreenFlashListener;->onCompleted()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/camera/core/internal/ScreenFlashWrapper;->d:Landroidx/camera/core/ImageCapture$ScreenFlashListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final clear()V
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/core/internal/ScreenFlashWrapper;->b()V

    return-void
.end method
