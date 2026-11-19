package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Preconditions;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15748c;
    public final /* synthetic */ Object d;

    public /* synthetic */ u(Object obj, Object obj2, int i2) {
        this.f15747b = i2;
        this.f15748c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        boolean z;
        switch (this.f15747b) {
            case 0:
                MediaSourceList.ForwardingEventListener forwardingEventListener = (MediaSourceList.ForwardingEventListener) this.f15748c;
                Pair pair = (Pair) this.d;
                forwardingEventListener.f14746c.f14741h.l0(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second);
                break;
            case 1:
                MediaSourceList.ForwardingEventListener forwardingEventListener2 = (MediaSourceList.ForwardingEventListener) this.f15748c;
                Pair pair2 = (Pair) this.d;
                forwardingEventListener2.f14746c.f14741h.v0(((Integer) pair2.first).intValue(), (MediaSource.MediaPeriodId) pair2.second);
                break;
            case 2:
                MediaSourceList.ForwardingEventListener forwardingEventListener3 = (MediaSourceList.ForwardingEventListener) this.f15748c;
                Pair pair3 = (Pair) this.d;
                forwardingEventListener3.f14746c.f14741h.Z(((Integer) pair3.first).intValue(), (MediaSource.MediaPeriodId) pair3.second);
                break;
            default:
                ExoPlayerImpl exoPlayerImpl = (ExoPlayerImpl) this.f15748c;
                ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate = (ExoPlayerImplInternal.PlaybackInfoUpdate) this.d;
                int i3 = exoPlayerImpl.J - playbackInfoUpdate.f14684c;
                exoPlayerImpl.J = i3;
                boolean z2 = true;
                if (playbackInfoUpdate.d) {
                    exoPlayerImpl.K = playbackInfoUpdate.f14685e;
                    exoPlayerImpl.L = true;
                }
                if (i3 == 0) {
                    Timeline timeline = playbackInfoUpdate.f14683b.f14754a;
                    int iV = -1;
                    if (!exoPlayerImpl.q0.f14754a.p() && timeline.p()) {
                        exoPlayerImpl.r0 = -1;
                        exoPlayerImpl.s0 = 0L;
                    }
                    if (!timeline.p()) {
                        List listAsList = Arrays.asList(((PlaylistTimeline) timeline).m);
                        Preconditions.q(listAsList.size() == exoPlayerImpl.p.size());
                        for (int i4 = 0; i4 < listAsList.size(); i4++) {
                            ((ExoPlayerImpl.MediaSourceHolderSnapshot) exoPlayerImpl.p.get(i4)).f14660c = (Timeline) listAsList.get(i4);
                        }
                    }
                    long j2 = -9223372036854775807L;
                    if (exoPlayerImpl.L) {
                        boolean z3 = playbackInfoUpdate.f14683b.f14754a.p() && exoPlayerImpl.q0.f14754a.p();
                        boolean zEquals = playbackInfoUpdate.f14683b.f14755b.equals(exoPlayerImpl.q0.f14755b);
                        boolean z4 = playbackInfoUpdate.f14683b.d == exoPlayerImpl.q0.s;
                        if (z3 || (zEquals && z4)) {
                            z2 = false;
                        }
                        if (z2) {
                            iV = exoPlayerImpl.v();
                            if (timeline.p() || playbackInfoUpdate.f14683b.f14755b.b()) {
                                j2 = playbackInfoUpdate.f14683b.d;
                            } else {
                                PlaybackInfo playbackInfo = playbackInfoUpdate.f14683b;
                                MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.f14755b;
                                long j3 = playbackInfo.d;
                                Object obj = mediaPeriodId.f15516a;
                                Timeline.Period period = exoPlayerImpl.o;
                                timeline.g(obj, period);
                                j2 = j3 + period.f13962e;
                            }
                        }
                        i2 = iV;
                        z = z2;
                    } else {
                        i2 = -1;
                        z = false;
                    }
                    exoPlayerImpl.L = false;
                    exoPlayerImpl.w1(playbackInfoUpdate.f14683b, 1, z, exoPlayerImpl.K, j2, i2, false);
                }
                break;
        }
    }
}
