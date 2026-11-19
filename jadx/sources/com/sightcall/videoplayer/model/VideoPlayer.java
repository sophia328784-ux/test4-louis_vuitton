package com.sightcall.videoplayer.model;

import android.net.Uri;
import defpackage.a;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0007HÆ\u0003J)\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u001a\u001a\u00020\u00072\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u001c\u001a\u00020\u0005HÖ\u0081\u0004J\n\u0010\u001d\u001a\u00020\u001eHÖ\u0081\u0004R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001f"}, d2 = {"Lcom/sightcall/videoplayer/model/VideoPlayer;", "", "uri", "Landroid/net/Uri;", "seek", "", "paused", "", "<init>", "(Landroid/net/Uri;IZ)V", "getUri", "()Landroid/net/Uri;", "setUri", "(Landroid/net/Uri;)V", "getSeek", "()I", "setSeek", "(I)V", "getPaused", "()Z", "setPaused", "(Z)V", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "", "videoplayer_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class VideoPlayer {
    private boolean paused;
    private int seek;
    private Uri uri;

    public /* synthetic */ VideoPlayer(Uri uri, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : uri, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? false : z);
    }

    public static /* synthetic */ VideoPlayer copy$default(VideoPlayer videoPlayer, Uri uri, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            uri = videoPlayer.uri;
        }
        if ((i3 & 2) != 0) {
            i2 = videoPlayer.seek;
        }
        if ((i3 & 4) != 0) {
            z = videoPlayer.paused;
        }
        return videoPlayer.copy(uri, i2, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Uri getUri() {
        return this.uri;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getSeek() {
        return this.seek;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getPaused() {
        return this.paused;
    }

    public final VideoPlayer copy(Uri uri, int seek, boolean paused) {
        return new VideoPlayer(uri, seek, paused);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VideoPlayer)) {
            return false;
        }
        VideoPlayer videoPlayer = (VideoPlayer) other;
        return Intrinsics.c(this.uri, videoPlayer.uri) && this.seek == videoPlayer.seek && this.paused == videoPlayer.paused;
    }

    public final boolean getPaused() {
        return this.paused;
    }

    public final int getSeek() {
        return this.seek;
    }

    public final Uri getUri() {
        return this.uri;
    }

    public int hashCode() {
        Uri uri = this.uri;
        return Boolean.hashCode(this.paused) + tr.b(this.seek, (uri == null ? 0 : uri.hashCode()) * 31, 31);
    }

    public final void setPaused(boolean z) {
        this.paused = z;
    }

    public final void setSeek(int i2) {
        this.seek = i2;
    }

    public final void setUri(Uri uri) {
        this.uri = uri;
    }

    public String toString() {
        Uri uri = this.uri;
        int i2 = this.seek;
        boolean z = this.paused;
        StringBuilder sb = new StringBuilder("VideoPlayer(uri=");
        sb.append(uri);
        sb.append(", seek=");
        sb.append(i2);
        sb.append(", paused=");
        return a.p(sb, z, ")");
    }

    public VideoPlayer(Uri uri, int i2, boolean z) {
        this.uri = uri;
        this.seek = i2;
        this.paused = z;
    }

    public VideoPlayer() {
        this(null, 0, false, 7, null);
    }
}
