package androidx.media3.session;

import android.os.Bundle;
import androidx.media3.common.Player;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.o60;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class SessionPositionInfo {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Player.PositionInfo f17551k;
    public static final SessionPositionInfo l;
    public static final String m;
    public static final String n;
    public static final String o;
    public static final String p;
    public static final String q;
    public static final String r;
    public static final String s;
    public static final String t;
    public static final String u;
    public static final String v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Player.PositionInfo f17552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f17553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f17554c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f17555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f17556f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f17557h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f17558i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f17559j;

    static {
        Player.PositionInfo positionInfo = new Player.PositionInfo(null, 0, null, null, 0, 0L, 0L, -1, -1);
        f17551k = positionInfo;
        l = new SessionPositionInfo(positionInfo, false, -9223372036854775807L, -9223372036854775807L, 0L, 0, 0L, -9223372036854775807L, -9223372036854775807L, 0L);
        String str = Util.f14242a;
        m = Integer.toString(0, 36);
        n = Integer.toString(1, 36);
        o = Integer.toString(2, 36);
        p = Integer.toString(3, 36);
        q = Integer.toString(4, 36);
        r = Integer.toString(5, 36);
        s = Integer.toString(6, 36);
        t = Integer.toString(7, 36);
        u = Integer.toString(8, 36);
        v = Integer.toString(9, 36);
    }

    public SessionPositionInfo(Player.PositionInfo positionInfo, boolean z, long j2, long j3, long j4, int i2, long j5, long j6, long j7, long j8) {
        Preconditions.g(z == (positionInfo.f13935h != -1));
        this.f17552a = positionInfo;
        this.f17553b = z;
        this.f17554c = j2;
        this.d = j3;
        this.f17555e = j4;
        this.f17556f = i2;
        this.g = j5;
        this.f17557h = j6;
        this.f17558i = j7;
        this.f17559j = j8;
    }

    public static SessionPositionInfo b(int i2, Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(m);
        return new SessionPositionInfo(bundle2 == null ? f17551k : Player.PositionInfo.c(i2, bundle2), bundle.getBoolean(n, false), bundle.getLong(o, -9223372036854775807L), bundle.getLong(p, -9223372036854775807L), bundle.getLong(q, 0L), bundle.getInt(r, 0), bundle.getLong(s, 0L), bundle.getLong(t, -9223372036854775807L), bundle.getLong(u, -9223372036854775807L), bundle.getLong(v, 0L));
    }

    public final SessionPositionInfo a(boolean z, boolean z2) {
        if (z && z2) {
            return this;
        }
        return new SessionPositionInfo(this.f17552a.b(z, z2), z && this.f17553b, this.f17554c, z ? this.d : -9223372036854775807L, z ? this.f17555e : 0L, z ? this.f17556f : 0, z ? this.g : 0L, z ? this.f17557h : -9223372036854775807L, z ? this.f17558i : -9223372036854775807L, z ? this.f17559j : 0L);
    }

    public final Bundle c(int i2) {
        Bundle bundle = new Bundle();
        Player.PositionInfo positionInfo = this.f17552a;
        if (i2 < 3 || !f17551k.a(positionInfo)) {
            bundle.putBundle(m, positionInfo.d(i2));
        }
        boolean z = this.f17553b;
        if (z) {
            bundle.putBoolean(n, z);
        }
        long j2 = this.f17554c;
        if (j2 != -9223372036854775807L) {
            bundle.putLong(o, j2);
        }
        long j3 = this.d;
        if (j3 != -9223372036854775807L) {
            bundle.putLong(p, j3);
        }
        long j4 = this.f17555e;
        if (i2 < 3 || j4 != 0) {
            bundle.putLong(q, j4);
        }
        int i3 = this.f17556f;
        if (i3 != 0) {
            bundle.putInt(r, i3);
        }
        long j5 = this.g;
        if (j5 != 0) {
            bundle.putLong(s, j5);
        }
        long j6 = this.f17557h;
        if (j6 != -9223372036854775807L) {
            bundle.putLong(t, j6);
        }
        long j7 = this.f17558i;
        if (j7 != -9223372036854775807L) {
            bundle.putLong(u, j7);
        }
        long j8 = this.f17559j;
        if (i2 >= 3 && j8 == 0) {
            return bundle;
        }
        bundle.putLong(v, j8);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SessionPositionInfo.class == obj.getClass()) {
            SessionPositionInfo sessionPositionInfo = (SessionPositionInfo) obj;
            if (this.f17554c == sessionPositionInfo.f17554c && this.f17552a.equals(sessionPositionInfo.f17552a) && this.f17553b == sessionPositionInfo.f17553b && this.d == sessionPositionInfo.d && this.f17555e == sessionPositionInfo.f17555e && this.f17556f == sessionPositionInfo.f17556f && this.g == sessionPositionInfo.g && this.f17557h == sessionPositionInfo.f17557h && this.f17558i == sessionPositionInfo.f17558i && this.f17559j == sessionPositionInfo.f17559j) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f17552a, Boolean.valueOf(this.f17553b));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SessionPositionInfo {PositionInfo {mediaItemIndex=");
        Player.PositionInfo positionInfo = this.f17552a;
        sb.append(positionInfo.f13931b);
        sb.append(", periodIndex=");
        sb.append(positionInfo.f13933e);
        sb.append(", positionMs=");
        sb.append(positionInfo.f13934f);
        sb.append(", contentPositionMs=");
        sb.append(positionInfo.g);
        sb.append(", adGroupIndex=");
        sb.append(positionInfo.f13935h);
        sb.append(", adIndexInAdGroup=");
        sb.append(positionInfo.f13936i);
        sb.append("}, isPlayingAd=");
        sb.append(this.f17553b);
        sb.append(", eventTimeMs=");
        sb.append(this.f17554c);
        sb.append(", durationMs=");
        sb.append(this.d);
        sb.append(", bufferedPositionMs=");
        sb.append(this.f17555e);
        sb.append(", bufferedPercentage=");
        sb.append(this.f17556f);
        sb.append(", totalBufferedDurationMs=");
        sb.append(this.g);
        sb.append(", currentLiveOffsetMs=");
        sb.append(this.f17557h);
        sb.append(", contentDurationMs=");
        sb.append(this.f17558i);
        sb.append(", contentBufferedPositionMs=");
        return o60.j(this.f17559j, "}", sb);
    }
}
