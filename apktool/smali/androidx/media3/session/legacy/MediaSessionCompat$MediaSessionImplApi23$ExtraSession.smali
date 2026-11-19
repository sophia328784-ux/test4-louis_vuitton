.class Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23$ExtraSession;
.super Landroidx/media3/session/legacy/IMediaSession$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraSession"
.end annotation


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi28;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/session/legacy/IMediaSession$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23$ExtraSession;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final C2(Landroidx/media3/session/legacy/IMediaControllerCallback;)V
    .locals 4

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23$ExtraSession;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v2, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    const-string v3, "android.media.session.MediaController"

    invoke-direct {v2, v3, v0, v1}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;->d:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final O1(Landroidx/media3/session/legacy/IMediaControllerCallback;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23$ExtraSession;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;->d:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final h()Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 13

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23$ExtraSession;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    if-eqz p0, :cond_6

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;->g:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;->i:Landroidx/media3/session/legacy/MediaMetadataCompat;

    if-eqz v0, :cond_5

    iget v1, v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->e:F

    iget v2, v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->b:I

    iget-wide v3, v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->c:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x3

    if-eq v2, v7, :cond_1

    const/4 v7, 0x4

    if-eq v2, v7, :cond_1

    const/4 v7, 0x5

    if-ne v2, v7, :cond_5

    :cond_1
    iget-wide v7, v0, Landroidx/media3/session/legacy/PlaybackStateCompat;->i:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v7, v11, v7

    long-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-long v7, v7

    add-long/2addr v7, v3

    if-eqz p0, :cond_2

    iget-object v3, p0, Landroidx/media3/session/legacy/MediaMetadataCompat;->b:Landroid/os/Bundle;

    const-string v4, "android.media.metadata.DURATION"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Landroidx/media3/session/legacy/MediaMetadataCompat;->a(Ljava/lang/String;)J

    move-result-wide v5

    :cond_2
    cmp-long p0, v5, v9

    if-ltz p0, :cond_3

    cmp-long p0, v7, v5

    if-lez p0, :cond_3

    move-wide v9, v5

    goto :goto_0

    :cond_3
    cmp-long p0, v7, v9

    if-gez p0, :cond_4

    goto :goto_0

    :cond_4
    move-wide v9, v7

    :goto_0
    new-instance p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    invoke-direct {p0, v0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;-><init>(Landroidx/media3/session/legacy/PlaybackStateCompat;)V

    iput v2, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->b:I

    iput-wide v9, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->c:J

    iput-wide v11, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->i:J

    iput v1, p0, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->e:F

    invoke-virtual {p0}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->a()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object v0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final i()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23$ExtraSession;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;->j:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final i0()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23$ExtraSession;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;->k:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final j0()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23$ExtraSession;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    const/4 p0, 0x0

    return p0
.end method
