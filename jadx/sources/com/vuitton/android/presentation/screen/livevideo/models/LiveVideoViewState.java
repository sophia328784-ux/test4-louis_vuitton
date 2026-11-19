package com.vuitton.android.presentation.screen.livevideo.models;

import androidx.media3.exoplayer.ExoPlayer;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;", "", "Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;", "liveVideoState", "", "isLive", "", "videoUrl", "Landroidx/media3/exoplayer/ExoPlayer;", "videoPlayer", "<init>", "(Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;ZLjava/lang/String;Landroidx/media3/exoplayer/ExoPlayer;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LiveVideoViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LiveVideoState f58967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f58968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f58969c;
    public final ExoPlayer d;

    public /* synthetic */ LiveVideoViewState(LiveVideoState liveVideoState, boolean z, String str, ExoPlayer exoPlayer, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? LiveVideoState.WAITING : liveVideoState, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? null : exoPlayer);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LiveVideoViewState)) {
            return false;
        }
        LiveVideoViewState liveVideoViewState = (LiveVideoViewState) obj;
        return this.f58967a == liveVideoViewState.f58967a && this.f58968b == liveVideoViewState.f58968b && Intrinsics.c(this.f58969c, liveVideoViewState.f58969c) && Intrinsics.c(this.d, liveVideoViewState.d);
    }

    public final int hashCode() {
        int iB = o60.b(this.f58967a.hashCode() * 31, 31, this.f58968b);
        String str = this.f58969c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        ExoPlayer exoPlayer = this.d;
        return iHashCode + (exoPlayer != null ? exoPlayer.hashCode() : 0);
    }

    public final String toString() {
        return "LiveVideoViewState(liveVideoState=" + this.f58967a + ", isLive=" + this.f58968b + ", videoUrl=" + this.f58969c + ", videoPlayer=" + this.d + ")";
    }

    public LiveVideoViewState(LiveVideoState liveVideoState, boolean z, String str, ExoPlayer exoPlayer) {
        liveVideoState.getClass();
        this.f58967a = liveVideoState;
        this.f58968b = z;
        this.f58969c = str;
        this.d = exoPlayer;
    }

    public LiveVideoViewState() {
        this(null, false, null, null, 15, null);
    }
}
