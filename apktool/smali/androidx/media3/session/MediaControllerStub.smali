.class Landroidx/media3/session/MediaControllerStub;
.super Landroidx/media3/session/IMediaController$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaControllerStub$ControllerTask;
    }
.end annotation


# static fields
.field public static final synthetic j:I


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public b:I


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/session/IMediaController$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerStub;->a:Ljava/lang/ref/WeakReference;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/session/MediaControllerStub;->b:I

    return-void
.end method


# virtual methods
.method public final A1(ILandroid/os/Bundle;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/media3/session/MediaControllerStub;->b:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Landroidx/media3/session/SessionPositionInfo;->b(ILandroid/os/Bundle;)Landroidx/media3/session/SessionPositionInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Landroidx/media3/session/o0;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Landroidx/media3/session/o0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for SessionPositionInfo"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final C1(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/SessionCommand;->a(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommand;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroidx/media3/session/m0;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media3/session/m0;-><init>(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for SessionCommand"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "Ignoring custom command with null args."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final E(ILandroid/os/Bundle;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/ConnectionState;->a(Landroid/os/Bundle;)Landroidx/media3/session/ConnectionState;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget p2, p1, Landroidx/media3/session/ConnectionState;->b:I

    iput p2, p0, Landroidx/media3/session/MediaControllerStub;->b:I

    new-instance p2, Landroidx/media3/session/o0;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroidx/media3/session/o0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Malformed Bundle for ConnectionResult. Disconnected from the session."

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerStub;->e()V

    return-void
.end method

.method public final F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerStub;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/MediaControllerImplBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    iget-object v2, v2, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/session/g0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, v4}, Landroidx/media3/session/g0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final G2(ILjava/lang/Object;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerStub;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/MediaControllerImplBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->b:Landroidx/media3/session/SequencedFutureManager;

    invoke-virtual {v2, p1, p2}, Landroidx/media3/session/SequencedFutureManager;->d(ILjava/lang/Object;)V

    iget-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    new-instance v2, Landroidx/media3/session/o1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, v3}, Landroidx/media3/session/o1;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p2, v2}, Landroidx/media3/session/MediaController;->Y0(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final H1(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/media3/session/MediaControllerStub;->b:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Landroidx/media3/session/PlayerInfo;->h(ILandroid/os/Bundle;)Landroidx/media3/session/PlayerInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p2, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    sget-object v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v2, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->e:Ljava/lang/String;

    invoke-virtual {p3, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-direct {p2, v0, p3}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;-><init>(ZZ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance p3, Landroidx/media3/session/s;

    const/4 v0, 0x5

    invoke-direct {p3, p1, p2, v0}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p3}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for BundlingExclusions"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for PlayerInfo"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final O0(ILandroid/os/Bundle;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/SessionResult;->a(Landroid/os/Bundle;)Landroidx/media3/session/SessionResult;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaControllerStub;->G2(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for SessionResult"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a0(ILandroid/os/Bundle;)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/session/MediaControllerStub;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {v0, p2}, Landroidx/media3/session/LibraryResult;->a(ILandroid/os/Bundle;)Landroidx/media3/session/LibraryResult;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaControllerStub;->G2(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for LibraryResult"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e()V
    .locals 2

    new-instance v0, Landroidx/media3/session/q0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void
.end method

.method public final f(I)V
    .locals 1

    new-instance p1, Landroidx/media3/session/q0;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void
.end method

.method public final g(III)V
    .locals 1

    new-instance p1, Landroidx/media3/session/r0;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroidx/media3/session/r0;-><init>(III)V

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void
.end method

.method public final v2(ILandroid/os/Bundle;Z)V
    .locals 3

    new-instance v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;-><init>(ZZ)V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->d:Ljava/lang/String;

    iget-boolean v2, v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->a:Z

    invoke-virtual {p3, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->e:Ljava/lang/String;

    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->b:Z

    invoke-virtual {p3, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerStub;->H1(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public final w1(ILandroid/os/Bundle;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/common/Player$Commands;->b(Landroid/os/Bundle;)Landroidx/media3/common/Player$Commands;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Landroidx/media3/session/p0;

    invoke-direct {p2, p1}, Landroidx/media3/session/p0;-><init>(Landroidx/media3/common/Player$Commands;)V

    invoke-virtual {p0, p2}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for Commands"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
