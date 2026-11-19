package androidx.media3.exoplayer.trackselection;

import android.os.SystemClock;
import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.x5;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseTrackSelection implements ExoTrackSelection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TrackGroup f15682a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f15684c;
    public final Format[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f15685e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f15686f;

    public BaseTrackSelection(TrackGroup trackGroup, int[] iArr, int i2) {
        Format[] formatArr;
        int i3 = 0;
        Preconditions.q(iArr.length > 0);
        trackGroup.getClass();
        this.f15682a = trackGroup;
        int length = iArr.length;
        this.f15683b = length;
        this.d = new Format[length];
        int i4 = 0;
        while (true) {
            int length2 = iArr.length;
            formatArr = this.d;
            if (i4 >= length2) {
                break;
            }
            formatArr[i4] = trackGroup.d[iArr[i4]];
            i4++;
        }
        Arrays.sort(formatArr, new x5(3));
        this.f15684c = new int[this.f15683b];
        while (true) {
            int i5 = this.f15683b;
            if (i3 >= i5) {
                this.f15685e = new long[i5];
                return;
            } else {
                this.f15684c[i3] = trackGroup.b(this.d[i3]);
                i3++;
            }
        }
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final boolean b(int i2, long j2) {
        return this.f15685e[i2] > j2;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void c() {
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final Format e(int i2) {
        return this.d[i2];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            BaseTrackSelection baseTrackSelection = (BaseTrackSelection) obj;
            if (this.f15682a.equals(baseTrackSelection.f15682a) && Arrays.equals(this.f15684c, baseTrackSelection.f15684c)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final int f(int i2) {
        return this.f15684c[i2];
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final boolean h(int i2, long j2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zB = b(i2, jElapsedRealtime);
        int i3 = 0;
        while (i3 < this.f15683b && !zB) {
            zB = (i3 == i2 || b(i3, jElapsedRealtime)) ? false : true;
            i3++;
        }
        if (!zB) {
            return false;
        }
        long[] jArr = this.f15685e;
        jArr[i2] = Math.max(jArr[i2], Util.a(jElapsedRealtime, j2));
        return true;
    }

    public final int hashCode() {
        if (this.f15686f == 0) {
            this.f15686f = Arrays.hashCode(this.f15684c) + (System.identityHashCode(this.f15682a) * 31);
        }
        return this.f15686f;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void i(float f2) {
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final int l(int i2) {
        for (int i3 = 0; i3 < this.f15683b; i3++) {
            if (this.f15684c[i3] == i2) {
                return i3;
            }
        }
        return -1;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final int length() {
        return this.f15684c.length;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final TrackGroup m() {
        return this.f15682a;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final void o(boolean z) {
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void p() {
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int q(long j2, List list) {
        return list.size();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final int r() {
        return this.f15684c[d()];
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final Format s() {
        return this.d[d()];
    }

    public BaseTrackSelection(TrackGroup trackGroup, int... iArr) {
        this(trackGroup, iArr, 0);
    }
}
