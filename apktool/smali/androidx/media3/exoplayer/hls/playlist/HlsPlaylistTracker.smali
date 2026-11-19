.class public interface abstract Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistResetException;,
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;,
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;,
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;,
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;
    }
.end annotation


# virtual methods
.method public abstract a(Landroid/net/Uri;J)Z
.end method

.method public c(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public abstract d(Landroid/net/Uri;)V
.end method

.method public abstract e(I)Lcom/google/common/collect/ImmutableList;
.end method

.method public abstract f()J
.end method

.method public abstract g()Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
.end method

.method public abstract h(Landroid/net/Uri;)V
.end method

.method public abstract i(Landroid/net/Uri;)Z
.end method

.method public abstract j(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
.end method

.method public abstract k(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
.end method

.method public abstract m()Z
.end method

.method public abstract n(Landroid/net/Uri;J)Z
.end method

.method public abstract o(Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;J)Z
.end method

.method public abstract p(Landroid/net/Uri;)Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;
.end method

.method public abstract r(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
.end method
