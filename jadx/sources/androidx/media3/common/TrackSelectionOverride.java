package androidx.media3.common;

import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import defpackage.zy0;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TrackSelectionOverride {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f13981c;
    public static final String d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TrackGroup f13982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList f13983b;

    static {
        String str = Util.f14242a;
        f13981c = Integer.toString(0, 36);
        d = Integer.toString(1, 36);
    }

    public TrackSelectionOverride(TrackGroup trackGroup, List<Integer> list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= trackGroup.f13977a)) {
            zy0.b();
            throw null;
        }
        this.f13982a = trackGroup;
        this.f13983b = ImmutableList.t(list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && TrackSelectionOverride.class == obj.getClass()) {
            TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) obj;
            if (this.f13982a.equals(trackSelectionOverride.f13982a) && this.f13983b.equals(trackSelectionOverride.f13983b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f13983b.hashCode() * 31) + this.f13982a.hashCode();
    }

    public TrackSelectionOverride(TrackGroup trackGroup, int i2) {
        this(trackGroup, ImmutableList.A(Integer.valueOf(i2)));
    }
}
