package androidx.media3.exoplayer.source;

import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;

/* JADX INFO: loaded from: classes.dex */
public final class TrackGroupArray {
    public static final TrackGroupArray d = new TrackGroupArray(new TrackGroup[0]);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f15635e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList f15637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15638c;

    static {
        String str = Util.f14242a;
        f15635e = Integer.toString(0, 36);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TrackGroupArray(TrackGroup... trackGroupArr) {
        ImmutableList immutableListU = ImmutableList.u(trackGroupArr);
        this.f15637b = immutableListU;
        this.f15636a = trackGroupArr.length;
        int i2 = 0;
        while (i2 < immutableListU.size()) {
            int i3 = i2 + 1;
            for (int i4 = i3; i4 < immutableListU.size(); i4++) {
                if (((TrackGroup) immutableListU.get(i2)).equals(immutableListU.get(i4))) {
                    Log.e("", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i2 = i3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TrackGroup a(int i2) {
        return (TrackGroup) this.f15637b.get(i2);
    }

    public final int b(TrackGroup trackGroup) {
        int iIndexOf = this.f15637b.indexOf(trackGroup);
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && TrackGroupArray.class == obj.getClass()) {
            TrackGroupArray trackGroupArray = (TrackGroupArray) obj;
            if (this.f15636a == trackGroupArray.f15636a && this.f15637b.equals(trackGroupArray.f15637b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f15638c == 0) {
            this.f15638c = this.f15637b.hashCode();
        }
        return this.f15638c;
    }

    public final String toString() {
        return this.f15637b.toString();
    }
}
