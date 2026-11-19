package androidx.media3.common;

import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Tracks {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Tracks f14010b = new Tracks(ImmutableList.x());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f14011c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableList f14012a;

    public static final class Group {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f14013f;
        public static final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final String f14014h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final String f14015i;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14016a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackGroup f14017b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f14018c;
        public final int[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean[] f14019e;

        static {
            String str = Util.f14242a;
            f14013f = Integer.toString(0, 36);
            g = Integer.toString(1, 36);
            f14014h = Integer.toString(3, 36);
            f14015i = Integer.toString(4, 36);
        }

        public Group(TrackGroup trackGroup, boolean z, int[] iArr, boolean[] zArr) {
            int i2 = trackGroup.f13977a;
            this.f14016a = i2;
            boolean z2 = false;
            Preconditions.g(i2 == iArr.length && i2 == zArr.length);
            this.f14017b = trackGroup;
            if (z && i2 > 1) {
                z2 = true;
            }
            this.f14018c = z2;
            this.d = (int[]) iArr.clone();
            this.f14019e = (boolean[]) zArr.clone();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Group.class == obj.getClass()) {
                Group group = (Group) obj;
                if (this.f14018c == group.f14018c && this.f14017b.equals(group.f14017b) && Arrays.equals(this.d, group.d) && Arrays.equals(this.f14019e, group.f14019e)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Arrays.hashCode(this.f14019e) + ((Arrays.hashCode(this.d) + (((this.f14017b.hashCode() * 31) + (this.f14018c ? 1 : 0)) * 31)) * 31);
        }
    }

    static {
        String str = Util.f14242a;
        f14011c = Integer.toString(0, 36);
    }

    public Tracks(List<Group> list) {
        this.f14012a = ImmutableList.t(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean a(int i2) {
        int i3 = 0;
        while (true) {
            ImmutableList immutableList = this.f14012a;
            if (i3 >= immutableList.size()) {
                return false;
            }
            Group group = (Group) immutableList.get(i3);
            for (boolean z : group.f14019e) {
                if (z) {
                    if (group.f14017b.f13979c != i2) {
                        break;
                    }
                    return true;
                }
            }
            i3++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Tracks.class != obj.getClass()) {
            return false;
        }
        return this.f14012a.equals(((Tracks) obj).f14012a);
    }

    public final int hashCode() {
        return this.f14012a.hashCode();
    }
}
