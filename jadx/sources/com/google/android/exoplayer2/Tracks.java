package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class Tracks implements Bundleable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList f28193b;

    public static final class Group implements Bundleable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackGroup f28194b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f28195c;
        public final int[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean[] f28196e;

        static {
            Util.e(0);
            Util.e(1);
            Util.e(3);
            Util.e(4);
        }

        public Group(TrackGroup trackGroup, boolean z, int[] iArr, boolean[] zArr) {
            int i2 = trackGroup.f28306b;
            boolean z2 = false;
            Assertions.a(i2 == iArr.length && i2 == zArr.length);
            this.f28194b = trackGroup;
            if (z && i2 > 1) {
                z2 = true;
            }
            this.f28195c = z2;
            this.d = (int[]) iArr.clone();
            this.f28196e = (boolean[]) zArr.clone();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Group.class == obj.getClass()) {
                Group group = (Group) obj;
                if (this.f28195c == group.f28195c && this.f28194b.equals(group.f28194b) && Arrays.equals(this.d, group.d) && Arrays.equals(this.f28196e, group.f28196e)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Arrays.hashCode(this.f28196e) + ((Arrays.hashCode(this.d) + (((this.f28194b.hashCode() * 31) + (this.f28195c ? 1 : 0)) * 31)) * 31);
        }
    }

    static {
        new Tracks(ImmutableList.x());
        Util.e(0);
    }

    public Tracks(List<Group> list) {
        this.f28193b = ImmutableList.t(list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Tracks.class != obj.getClass()) {
            return false;
        }
        return this.f28193b.equals(((Tracks) obj).f28193b);
    }

    public final int hashCode() {
        return this.f28193b.hashCode();
    }
}
