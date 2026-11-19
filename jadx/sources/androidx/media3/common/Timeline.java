package androidx.media3.common;

import android.net.Uri;
import android.util.Pair;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import defpackage.r81;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class Timeline {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Timeline f13952a = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f13953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f13954c;
    public static final String d;

    /* JADX INFO: renamed from: androidx.media3.common.Timeline$1, reason: invalid class name */
    public class AnonymousClass1 extends Timeline {
        @Override // androidx.media3.common.Timeline
        public final int b(Object obj) {
            return -1;
        }

        @Override // androidx.media3.common.Timeline
        public final Period f(int i2, Period period, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.Timeline
        public final int h() {
            return 0;
        }

        @Override // androidx.media3.common.Timeline
        public final Object l(int i2) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.Timeline
        public final Window m(int i2, Window window, long j2) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.Timeline
        public final int o() {
            return 0;
        }
    }

    public static final class Period {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final String f13955h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final String f13956i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final String f13957j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final String f13958k;
        public static final String l;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f13959a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f13960b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f13961c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f13962e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f13963f;
        public AdPlaybackState g = AdPlaybackState.g;

        static {
            String str = Util.f14242a;
            f13955h = Integer.toString(0, 36);
            f13956i = Integer.toString(1, 36);
            f13957j = Integer.toString(2, 36);
            f13958k = Integer.toString(3, 36);
            l = Integer.toString(4, 36);
        }

        public final long a(int i2, int i3) {
            AdPlaybackState.AdGroup adGroupA = this.g.a(i2);
            if (adGroupA.f13676b != -1) {
                return adGroupA.g[i3];
            }
            return -9223372036854775807L;
        }

        public final int b(long j2) {
            AdPlaybackState.AdGroup adGroupA;
            int i2;
            AdPlaybackState adPlaybackState = this.g;
            long j3 = this.d;
            int i3 = adPlaybackState.f13671b;
            if (j2 != Long.MIN_VALUE && (j3 == -9223372036854775807L || j2 < j3)) {
                int i4 = adPlaybackState.f13673e;
                while (i4 < i3 && ((adPlaybackState.a(i4).f13675a != Long.MIN_VALUE && adPlaybackState.a(i4).f13675a <= j2) || ((i2 = (adGroupA = adPlaybackState.a(i4)).f13676b) != -1 && adGroupA.a(-1) >= i2))) {
                    i4++;
                }
                if (i4 < i3 && (j3 == -9223372036854775807L || adPlaybackState.a(i4).f13675a <= j3)) {
                    return i4;
                }
            }
            return -1;
        }

        public final int c(long j2) {
            AdPlaybackState adPlaybackState = this.g;
            long j3 = this.d;
            int i2 = adPlaybackState.f13671b - 1;
            int i3 = i2 - (adPlaybackState.b(i2) ? 1 : 0);
            while (i3 >= 0 && j2 != Long.MIN_VALUE) {
                AdPlaybackState.AdGroup adGroupA = adPlaybackState.a(i3);
                long j4 = adGroupA.f13675a;
                if (j4 != Long.MIN_VALUE) {
                    if (j2 >= j4) {
                        break;
                    }
                    i3--;
                } else {
                    if (j3 != -9223372036854775807L && ((!adGroupA.l || j4 != Long.MIN_VALUE || adGroupA.f13676b != -1) && j2 >= j3)) {
                        break;
                    }
                    i3--;
                }
            }
            if (i3 >= 0) {
                AdPlaybackState.AdGroup adGroupA2 = adPlaybackState.a(i3);
                int i4 = adGroupA2.f13676b;
                if (i4 != -1) {
                    for (int i5 = 0; i5 < i4; i5++) {
                        int i6 = adGroupA2.f13679f[i5];
                        if (i6 != 0 && i6 != 1) {
                        }
                    }
                }
                return i3;
            }
            return -1;
        }

        public final long d(int i2) {
            return this.g.a(i2).f13675a;
        }

        public final int e(int i2, int i3) {
            AdPlaybackState.AdGroup adGroupA = this.g.a(i2);
            if (adGroupA.f13676b != -1) {
                return adGroupA.f13679f[i3];
            }
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Period.class.equals(obj.getClass())) {
                Period period = (Period) obj;
                if (Objects.equals(this.f13959a, period.f13959a) && Objects.equals(this.f13960b, period.f13960b) && this.f13961c == period.f13961c && this.d == period.d && this.f13962e == period.f13962e && this.f13963f == period.f13963f && Objects.equals(this.g, period.g)) {
                    return true;
                }
            }
            return false;
        }

        public final int f(int i2) {
            return this.g.a(i2).a(-1);
        }

        public final boolean g(int i2) {
            AdPlaybackState adPlaybackState = this.g;
            return i2 == adPlaybackState.f13671b - 1 && adPlaybackState.b(i2);
        }

        public final boolean h(int i2) {
            return this.g.a(i2).f13683k;
        }

        public final int hashCode() {
            Object obj = this.f13959a;
            int iHashCode = (217 + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.f13960b;
            int iHashCode2 = (((iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.f13961c) * 31;
            long j2 = this.d;
            int i2 = (iHashCode2 + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.f13962e;
            return this.g.hashCode() + ((((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.f13963f ? 1 : 0)) * 31);
        }

        public final void i(Object obj, Object obj2, int i2, long j2, long j3, AdPlaybackState adPlaybackState, boolean z) {
            this.f13959a = obj;
            this.f13960b = obj2;
            this.f13961c = i2;
            this.d = j2;
            this.f13962e = j3;
            this.g = adPlaybackState;
            this.f13963f = z;
        }
    }

    public static final class RemotableTimeline extends Timeline {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ImmutableList f13964e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ImmutableList f13965f;
        public final int[] g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f13966h;

        public RemotableTimeline(ImmutableList<Window> immutableList, ImmutableList<Period> immutableList2, int[] iArr) {
            Preconditions.g(immutableList.size() == iArr.length);
            this.f13964e = immutableList;
            this.f13965f = immutableList2;
            this.g = iArr;
            this.f13966h = new int[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                this.f13966h[iArr[i2]] = i2;
            }
        }

        @Override // androidx.media3.common.Timeline
        public final int a(boolean z) {
            if (p()) {
                return -1;
            }
            if (z) {
                return this.g[0];
            }
            return 0;
        }

        @Override // androidx.media3.common.Timeline
        public final int b(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media3.common.Timeline
        public final int c(boolean z) {
            if (p()) {
                return -1;
            }
            ImmutableList immutableList = this.f13964e;
            if (!z) {
                return immutableList.size() - 1;
            }
            return this.g[immutableList.size() - 1];
        }

        @Override // androidx.media3.common.Timeline
        public final int e(int i2, int i3, boolean z) {
            if (i3 == 1) {
                return i2;
            }
            if (i2 == c(z)) {
                if (i3 == 2) {
                    return a(z);
                }
                return -1;
            }
            if (!z) {
                return i2 + 1;
            }
            return this.g[this.f13966h[i2] + 1];
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.media3.common.Timeline
        public final Period f(int i2, Period period, boolean z) {
            Period period2 = (Period) this.f13965f.get(i2);
            period.i(period2.f13959a, period2.f13960b, period2.f13961c, period2.d, period2.f13962e, period2.g, period2.f13963f);
            return period;
        }

        @Override // androidx.media3.common.Timeline
        public final int h() {
            return this.f13965f.size();
        }

        @Override // androidx.media3.common.Timeline
        public final int k(int i2, int i3, boolean z) {
            if (i3 == 1) {
                return i2;
            }
            if (i2 == a(z)) {
                if (i3 == 2) {
                    return c(z);
                }
                return -1;
            }
            if (!z) {
                return i2 - 1;
            }
            return this.g[this.f13966h[i2] - 1];
        }

        @Override // androidx.media3.common.Timeline
        public final Object l(int i2) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.media3.common.Timeline
        public final Window m(int i2, Window window, long j2) {
            Window window2 = (Window) this.f13964e.get(i2);
            window.b(window2.f13967a, window2.f13969c, window2.d, window2.f13970e, window2.f13971f, window2.g, window2.f13972h, window2.f13973i, window2.f13974j, window2.l, window2.m, window2.n, window2.o, window2.p);
            window.f13975k = window2.f13975k;
            return window;
        }

        @Override // androidx.media3.common.Timeline
        public final int o() {
            return this.f13964e.size();
        }
    }

    public static final class Window {
        public static final String A;
        public static final String B;
        public static final String C;
        public static final String D;
        public static final String E;
        public static final String F;
        public static final Object q = new Object();
        public static final Object r = new Object();
        public static final MediaItem s;
        public static final String t;
        public static final String u;
        public static final String v;
        public static final String w;
        public static final String x;
        public static final String y;
        public static final String z;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f13968b;
        public Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f13970e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f13971f;
        public long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f13972h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f13973i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public MediaItem.LiveConfiguration f13974j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f13975k;
        public long l;
        public long m;
        public int n;
        public int o;
        public long p;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f13967a = q;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public MediaItem f13969c = s;

        static {
            MediaItem.Builder builder = new MediaItem.Builder();
            builder.f13795a = "androidx.media3.common.Timeline";
            builder.f13796b = Uri.EMPTY;
            s = builder.a();
            t = Integer.toString(1, 36);
            u = Integer.toString(2, 36);
            v = Integer.toString(3, 36);
            w = Integer.toString(4, 36);
            x = Integer.toString(5, 36);
            y = Integer.toString(6, 36);
            z = Integer.toString(7, 36);
            A = Integer.toString(8, 36);
            B = Integer.toString(9, 36);
            C = Integer.toString(10, 36);
            D = Integer.toString(11, 36);
            E = Integer.toString(12, 36);
            F = Integer.toString(13, 36);
        }

        public final boolean a() {
            return this.f13974j != null;
        }

        public final void b(Object obj, MediaItem mediaItem, Object obj2, long j2, long j3, long j4, boolean z2, boolean z3, MediaItem.LiveConfiguration liveConfiguration, long j5, long j6, int i2, int i3, long j7) {
            MediaItem.LocalConfiguration localConfiguration;
            this.f13967a = obj;
            this.f13969c = mediaItem != null ? mediaItem : s;
            this.f13968b = (mediaItem == null || (localConfiguration = mediaItem.f13788b) == null) ? null : localConfiguration.f13853h;
            this.d = obj2;
            this.f13970e = j2;
            this.f13971f = j3;
            this.g = j4;
            this.f13972h = z2;
            this.f13973i = z3;
            this.f13974j = liveConfiguration;
            this.l = j5;
            this.m = j6;
            this.n = i2;
            this.o = i3;
            this.p = j7;
            this.f13975k = false;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Window.class.equals(obj.getClass())) {
                Window window = (Window) obj;
                if (Objects.equals(this.f13967a, window.f13967a) && Objects.equals(this.f13969c, window.f13969c) && Objects.equals(this.d, window.d) && Objects.equals(this.f13974j, window.f13974j) && this.f13970e == window.f13970e && this.f13971f == window.f13971f && this.g == window.g && this.f13972h == window.f13972h && this.f13973i == window.f13973i && this.f13975k == window.f13975k && this.l == window.l && this.m == window.m && this.n == window.n && this.o == window.o && this.p == window.p) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int iHashCode = (this.f13969c.hashCode() + ((this.f13967a.hashCode() + 217) * 31)) * 31;
            Object obj = this.d;
            int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            MediaItem.LiveConfiguration liveConfiguration = this.f13974j;
            int iHashCode3 = (iHashCode2 + (liveConfiguration != null ? liveConfiguration.hashCode() : 0)) * 31;
            long j2 = this.f13970e;
            int i2 = (iHashCode3 + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.f13971f;
            int i3 = (i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31;
            long j4 = this.g;
            int i4 = (((((((i3 + ((int) (j4 ^ (j4 >>> 32)))) * 31) + (this.f13972h ? 1 : 0)) * 31) + (this.f13973i ? 1 : 0)) * 31) + (this.f13975k ? 1 : 0)) * 31;
            long j5 = this.l;
            int i5 = (i4 + ((int) (j5 ^ (j5 >>> 32)))) * 31;
            long j6 = this.m;
            int i6 = (((((i5 + ((int) (j6 ^ (j6 >>> 32)))) * 31) + this.n) * 31) + this.o) * 31;
            long j7 = this.p;
            return i6 + ((int) (j7 ^ (j7 >>> 32)));
        }
    }

    static {
        String str = Util.f14242a;
        f13953b = Integer.toString(0, 36);
        f13954c = Integer.toString(1, 36);
        d = Integer.toString(2, 36);
    }

    public int a(boolean z) {
        return p() ? -1 : 0;
    }

    public abstract int b(Object obj);

    public int c(boolean z) {
        if (p()) {
            return -1;
        }
        return o() - 1;
    }

    public final int d(int i2, Period period, Window window, int i3, boolean z) {
        int i4 = f(i2, period, false).f13961c;
        if (m(i4, window, 0L).o != i2) {
            return i2 + 1;
        }
        int iE = e(i4, i3, z);
        if (iE == -1) {
            return -1;
        }
        return m(iE, window, 0L).n;
    }

    public int e(int i2, int i3, boolean z) {
        if (i3 == 0) {
            if (i2 == c(z)) {
                return -1;
            }
            return i2 + 1;
        }
        if (i3 == 1) {
            return i2;
        }
        if (i3 == 2) {
            return i2 == c(z) ? a(z) : i2 + 1;
        }
        r81.b();
        return 0;
    }

    public boolean equals(Object obj) {
        int iC;
        if (this != obj) {
            if (obj instanceof Timeline) {
                Timeline timeline = (Timeline) obj;
                if (timeline.o() == o() && timeline.h() == h()) {
                    Window window = new Window();
                    Period period = new Period();
                    Window window2 = new Window();
                    Period period2 = new Period();
                    for (int i2 = 0; i2 < o(); i2++) {
                        if (m(i2, window, 0L).equals(timeline.m(i2, window2, 0L))) {
                        }
                    }
                    for (int i3 = 0; i3 < h(); i3++) {
                        if (f(i3, period, true).equals(timeline.f(i3, period2, true))) {
                        }
                    }
                    int iA = a(true);
                    if (iA == timeline.a(true) && (iC = c(true)) == timeline.c(true)) {
                        while (iA != iC) {
                            int iE = e(iA, 0, true);
                            if (iE == timeline.e(iA, 0, true)) {
                                iA = iE;
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public abstract Period f(int i2, Period period, boolean z);

    public Period g(Object obj, Period period) {
        return f(b(obj), period, true);
    }

    public abstract int h();

    public int hashCode() {
        Window window = new Window();
        Period period = new Period();
        int iO = o() + 217;
        for (int i2 = 0; i2 < o(); i2++) {
            iO = (iO * 31) + m(i2, window, 0L).hashCode();
        }
        int iH = h() + (iO * 31);
        for (int i3 = 0; i3 < h(); i3++) {
            iH = (iH * 31) + f(i3, period, true).hashCode();
        }
        int iA = a(true);
        while (iA != -1) {
            iH = (iH * 31) + iA;
            iA = e(iA, 0, true);
        }
        return iH;
    }

    public final Pair i(Window window, Period period, int i2, long j2) {
        Pair pairJ = j(window, period, i2, j2, 0L);
        pairJ.getClass();
        return pairJ;
    }

    public final Pair j(Window window, Period period, int i2, long j2, long j3) {
        Preconditions.j(i2, o());
        m(i2, window, j3);
        if (j2 == -9223372036854775807L) {
            j2 = window.l;
            if (j2 == -9223372036854775807L) {
                return null;
            }
        }
        int i3 = window.n;
        f(i3, period, false);
        while (i3 < window.o && period.f13962e != j2) {
            int i4 = i3 + 1;
            if (f(i4, period, false).f13962e > j2) {
                break;
            }
            i3 = i4;
        }
        f(i3, period, true);
        long jMin = j2 - period.f13962e;
        long j4 = period.d;
        if (j4 != -9223372036854775807L) {
            jMin = Math.min(jMin, j4 - 1);
        }
        long jMax = Math.max(0L, jMin);
        Object obj = period.f13960b;
        obj.getClass();
        return Pair.create(obj, Long.valueOf(jMax));
    }

    public int k(int i2, int i3, boolean z) {
        if (i3 == 0) {
            if (i2 == a(z)) {
                return -1;
            }
            return i2 - 1;
        }
        if (i3 == 1) {
            return i2;
        }
        if (i3 == 2) {
            return i2 == a(z) ? c(z) : i2 - 1;
        }
        r81.b();
        return 0;
    }

    public abstract Object l(int i2);

    public abstract Window m(int i2, Window window, long j2);

    public final void n(int i2, Window window) {
        m(i2, window, 0L);
    }

    public abstract int o();

    public final boolean p() {
        return o() == 0;
    }
}
