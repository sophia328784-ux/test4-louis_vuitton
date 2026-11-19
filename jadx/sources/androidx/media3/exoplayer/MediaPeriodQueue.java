package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class MediaPeriodQueue {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsCollector f14729c;
    public final HandlerWrapper d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MediaPeriodHolder.Factory f14730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f14731f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f14732h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ExoPlayer.PreloadConfiguration f14733i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MediaPeriodHolder f14734j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public MediaPeriodHolder f14735k;
    public MediaPeriodHolder l;
    public MediaPeriodHolder m;
    public MediaPeriodHolder n;
    public int o;
    public Object p;
    public long q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Timeline.Period f14727a = new Timeline.Period();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Timeline.Window f14728b = new Timeline.Window();
    public ArrayList r = new ArrayList();

    public MediaPeriodQueue(AnalyticsCollector analyticsCollector, HandlerWrapper handlerWrapper, MediaPeriodHolder.Factory factory, ExoPlayer.PreloadConfiguration preloadConfiguration) {
        this.f14729c = analyticsCollector;
        this.d = handlerWrapper;
        this.f14730e = factory;
        this.f14733i = preloadConfiguration;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005e  */
    /* JADX WARN: Code duplicated, block: B:28:0x0062 A[LOOP:0: B:3:0x0013->B:28:0x0062, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:40:0x006d A[EDGE_INSN: B:40:0x006d->B:29:0x006d BREAK  A[LOOP:0: B:3:0x0013->B:28:0x0062], SYNTHETIC] */
    public static MediaSource.MediaPeriodId s(Timeline timeline, Object obj, long j2, long j3, Timeline.Window window, Timeline.Period period) {
        timeline.g(obj, period);
        timeline.n(period.f13961c, window);
        int iB = timeline.b(obj);
        Object obj2 = obj;
        while (true) {
            int i2 = period.g.f13671b;
            if (i2 == 0) {
                break;
            }
            if ((i2 == 1 && period.g(0)) || !period.h(period.g.f13673e)) {
                break;
            }
            long j4 = 0;
            if (period.c(0L) != -1) {
                break;
            }
            if (period.d == 0) {
                if (iB <= window.o) {
                    break;
                    break;
                }
                timeline.f(iB, period, true);
                obj2 = period.f13960b;
                obj2.getClass();
                iB++;
            } else {
                int i3 = i2 - (period.g(i2 + (-1)) ? 2 : 1);
                for (int i4 = 0; i4 <= i3; i4++) {
                    j4 += period.g.a(i4).f13682j;
                }
                if (period.d > j4) {
                    break;
                }
                if (iB <= window.o) {
                    break;
                }
                timeline.f(iB, period, true);
                obj2 = period.f13960b;
                obj2.getClass();
                iB++;
            }
        }
        timeline.g(obj2, period);
        int iC = period.c(j2);
        return iC == -1 ? new MediaSource.MediaPeriodId(obj2, j3, period.b(j2)) : new MediaSource.MediaPeriodId(obj2, iC, period.f(iC), j3);
    }

    public final MediaPeriodHolder a() {
        MediaPeriodHolder mediaPeriodHolder = this.f14734j;
        if (mediaPeriodHolder == null) {
            return null;
        }
        if (mediaPeriodHolder == this.f14735k) {
            this.f14735k = mediaPeriodHolder.n;
        }
        if (mediaPeriodHolder == this.l) {
            this.l = mediaPeriodHolder.n;
        }
        mediaPeriodHolder.i();
        int i2 = this.o - 1;
        this.o = i2;
        if (i2 == 0) {
            this.m = null;
            MediaPeriodHolder mediaPeriodHolder2 = this.f14734j;
            this.p = mediaPeriodHolder2.f14710b;
            this.q = mediaPeriodHolder2.f14714h.f14718a.d;
        }
        this.f14734j = this.f14734j.n;
        n();
        return this.f14734j;
    }

    public final void b() {
        if (this.o == 0) {
            return;
        }
        MediaPeriodHolder mediaPeriodHolder = this.f14734j;
        mediaPeriodHolder.getClass();
        this.p = mediaPeriodHolder.f14710b;
        this.q = mediaPeriodHolder.f14714h.f14718a.d;
        while (mediaPeriodHolder != null) {
            mediaPeriodHolder.i();
            mediaPeriodHolder = mediaPeriodHolder.n;
        }
        this.f14734j = null;
        this.m = null;
        this.f14735k = null;
        this.l = null;
        this.o = 0;
        n();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x005f  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f8  */
    public final MediaPeriodInfo c(Timeline timeline, MediaPeriodHolder mediaPeriodHolder, long j2) {
        Object obj;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long jMax;
        MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.f14714h;
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.f14718a;
        long j8 = mediaPeriodInfo.d;
        int iD = timeline.d(timeline.b(mediaPeriodId.f15516a), this.f14727a, this.f14728b, this.g, this.f14732h);
        if (iD == -1) {
            return null;
        }
        Timeline.Period period = this.f14727a;
        int i2 = timeline.f(iD, period, true).f13961c;
        Object obj2 = period.f13960b;
        obj2.getClass();
        long j9 = mediaPeriodId.d;
        Timeline.Window window = this.f14728b;
        if (timeline.m(i2, window, 0L).n == iD) {
            int i3 = period.f13961c;
            if (period.d != -9223372036854775807L) {
                jMax = -9223372036854775807L;
            } else {
                timeline.n(i3, window);
                if (!window.f13973i || window.f13975k) {
                    jMax = -9223372036854775807L;
                } else {
                    jMax = Math.max(0L, j2);
                }
            }
            Pair pairJ = timeline.j(this.f14728b, this.f14727a, i2, -9223372036854775807L, jMax);
            if (pairJ == null) {
                return null;
            }
            Object obj3 = pairJ.first;
            long jLongValue = ((Long) pairJ.second).longValue();
            MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodHolder.n;
            if (mediaPeriodHolder2 == null || !mediaPeriodHolder2.f14710b.equals(obj3)) {
                long jU = u(obj3);
                if (jU == -1) {
                    jU = this.f14731f;
                    this.f14731f = 1 + jU;
                }
                j9 = jU;
            } else {
                j9 = mediaPeriodHolder2.f14714h.f14718a.d;
            }
            obj = obj3;
            j3 = jLongValue;
            j4 = -9223372036854775807L;
            j5 = jMax;
        } else {
            obj = obj2;
            j3 = 0;
            j4 = 0;
            j5 = -9223372036854775807L;
        }
        MediaSource.MediaPeriodId mediaPeriodIdS = s(timeline, obj, j3, j9, this.f14728b, this.f14727a);
        if (j4 == -9223372036854775807L || j8 == -9223372036854775807L) {
            j6 = j3;
            j7 = j4;
        } else {
            int i4 = timeline.g(mediaPeriodId.f15516a, period).g.f13671b;
            int i5 = period.g.f13673e;
            boolean z = i4 > 0 && period.h(i5) && (i4 > 1 || period.d(i5) != Long.MIN_VALUE);
            if (mediaPeriodIdS.b() && z) {
                j6 = j3;
                j7 = j8;
            } else {
                if (z) {
                    j6 = j8;
                } else {
                    j6 = j3;
                }
                j7 = j4;
            }
        }
        return e(timeline, mediaPeriodIdS, j7, j6, j5);
    }

    public final MediaPeriodInfo d(Timeline timeline, MediaPeriodHolder mediaPeriodHolder, long j2) {
        Timeline timeline2;
        MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.f14714h;
        long j3 = (mediaPeriodHolder.q + mediaPeriodInfo.f14722f) - j2;
        if (mediaPeriodInfo.f14724i) {
            return c(timeline, mediaPeriodHolder, j3);
        }
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.f14718a;
        Object obj = mediaPeriodId.f15516a;
        int i2 = mediaPeriodId.f15519e;
        Timeline.Period period = this.f14727a;
        timeline.g(obj, period);
        boolean z = mediaPeriodInfo.f14723h;
        if (!mediaPeriodId.b()) {
            if (i2 != -1 && period.g(i2)) {
                return c(timeline, mediaPeriodHolder, j3);
            }
            int iF = period.f(i2);
            boolean z2 = period.h(i2) && period.e(i2, iF) == 3;
            if (iF != period.g.a(i2).f13676b && !z2) {
                return f(timeline, mediaPeriodId.f15516a, mediaPeriodId.f15519e, iF, mediaPeriodInfo.f14722f, mediaPeriodId.d, z);
            }
            timeline.g(obj, period);
            long jD = period.d(i2);
            return g(timeline, mediaPeriodId.f15516a, jD == Long.MIN_VALUE ? period.d : period.g.a(i2).f13682j + jD, -9223372036854775807L, mediaPeriodInfo.f14722f, mediaPeriodId.d, false);
        }
        int i3 = mediaPeriodId.f15517b;
        int i4 = period.g.a(i3).f13676b;
        if (i4 == -1) {
            return null;
        }
        int iA = period.g.a(i3).a(mediaPeriodId.f15518c);
        if (iA < i4) {
            return f(timeline, mediaPeriodId.f15516a, i3, iA, mediaPeriodInfo.d, mediaPeriodId.d, z);
        }
        long jLongValue = mediaPeriodInfo.d;
        long jMax = -9223372036854775807L;
        if (jLongValue == -9223372036854775807L) {
            int i5 = period.f13961c;
            if (period.d == -9223372036854775807L) {
                Timeline.Window window = this.f14728b;
                timeline.n(i5, window);
                if (window.f13973i && !window.f13975k) {
                    jMax = Math.max(0L, j3);
                }
            }
            long j4 = jMax;
            timeline2 = timeline;
            Pair pairJ = timeline2.j(this.f14728b, period, period.f13961c, -9223372036854775807L, j4);
            if (pairJ == null) {
                return null;
            }
            jLongValue = ((Long) pairJ.second).longValue();
            jMax = j4;
        } else {
            timeline2 = timeline;
        }
        int i6 = mediaPeriodId.f15517b;
        timeline2.g(obj, period);
        long jD2 = period.d(i6);
        return g(timeline2, mediaPeriodId.f15516a, Math.max(jD2 == Long.MIN_VALUE ? period.d : period.g.a(i6).f13682j + jD2, jLongValue), jMax, mediaPeriodInfo.d, mediaPeriodId.d, z);
    }

    public final MediaPeriodInfo e(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j2, long j3, long j4) {
        timeline.g(mediaPeriodId.f15516a, this.f14727a);
        boolean zB = mediaPeriodId.b();
        Object obj = mediaPeriodId.f15516a;
        return zB ? f(timeline, obj, mediaPeriodId.f15517b, mediaPeriodId.f15518c, j2, mediaPeriodId.d, false) : g(timeline, obj, j3, j4, j2, mediaPeriodId.d, false);
    }

    public final MediaPeriodInfo f(Timeline timeline, Object obj, int i2, int i3, long j2, long j3, boolean z) {
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(obj, i2, i3, j3);
        Object obj2 = mediaPeriodId.f15516a;
        Timeline.Period period = this.f14727a;
        Timeline.Period periodG = timeline.g(obj2, period);
        int i4 = mediaPeriodId.f15518c;
        int i5 = mediaPeriodId.f15517b;
        long jA = periodG.a(i5, i4);
        long jMax = i3 == period.f(i2) ? period.g.f13672c : 0L;
        boolean zH = period.h(i5);
        if (jA != -9223372036854775807L && jMax >= jA) {
            jMax = Math.max(0L, jA - 1);
        }
        return new MediaPeriodInfo(mediaPeriodId, jMax, -9223372036854775807L, j2, -9223372036854775807L, jA, z, zH, false, false, false);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0057  */
    /* JADX WARN: Code duplicated, block: B:62:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:72:0x00da  */
    public final MediaPeriodInfo g(Timeline timeline, Object obj, long j2, long j3, long j4, long j5, boolean z) {
        boolean z2;
        boolean z3;
        long j6;
        long jD;
        long j7;
        long jMax;
        Timeline.Period period = this.f14727a;
        timeline.g(obj, period);
        int iB = period.b(j2);
        int i2 = 1;
        if (iB == -1) {
            AdPlaybackState adPlaybackState = period.g;
            if (adPlaybackState.f13671b <= 0 || !period.h(adPlaybackState.f13673e)) {
                z3 = false;
            } else {
                z3 = true;
            }
        } else if (period.h(iB) && period.d(iB) == period.d) {
            AdPlaybackState.AdGroup adGroupA = period.g.a(iB);
            int i3 = adGroupA.f13676b;
            if (i3 == -1) {
                z2 = true;
                break;
            }
            int i4 = 0;
            while (true) {
                if (i4 >= i3) {
                    z2 = false;
                    break;
                }
                int i5 = adGroupA.f13679f[i4];
                if (i5 == 0 || i5 == 1) {
                    z2 = true;
                    break;
                }
                i4++;
            }
            if (z2) {
                z3 = false;
            } else {
                z3 = true;
                iB = -1;
            }
        } else {
            z3 = false;
        }
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(obj, j5, iB);
        boolean z4 = !mediaPeriodId.b() && mediaPeriodId.f15519e == -1;
        boolean zL = l(timeline, mediaPeriodId);
        boolean zK = k(timeline, mediaPeriodId, z4);
        boolean z5 = (iB == -1 || !period.h(iB) || period.g(iB)) ? false : true;
        boolean z6 = iB != -1 && period.g(iB) && period.h(iB);
        if (iB == -1 || z6) {
            if (z3) {
                jD = period.d;
            } else {
                j6 = -9223372036854775807L;
            }
            if (j6 != -9223372036854775807L || j6 == Long.MIN_VALUE) {
                j7 = period.d;
            } else {
                j7 = j6;
            }
            if (j7 != -9223372036854775807L || j2 < j7) {
                jMax = j2;
            } else {
                if (!zK && z3) {
                    i2 = 0;
                }
                jMax = Math.max(0L, j7 - ((long) i2));
            }
            return new MediaPeriodInfo(mediaPeriodId, jMax, j3, j4, j6, j7, z, z5, z4, zL, zK);
        }
        jD = period.d(iB);
        j6 = jD;
        if (j6 != -9223372036854775807L) {
            j7 = period.d;
        } else {
            j7 = period.d;
        }
        if (j7 != -9223372036854775807L) {
            jMax = j2;
        } else {
            jMax = j2;
        }
        return new MediaPeriodInfo(mediaPeriodId, jMax, j3, j4, j6, j7, z, z5, z4, zL, zK);
    }

    public final MediaPeriodHolder h() {
        return this.l;
    }

    public final MediaPeriodInfo i(Timeline timeline, MediaPeriodInfo mediaPeriodInfo) {
        long jA;
        boolean z;
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.f14718a;
        boolean zB = mediaPeriodId.b();
        int i2 = mediaPeriodId.f15519e;
        boolean zH = false;
        boolean z2 = !zB && i2 == -1;
        int i3 = mediaPeriodId.f15517b;
        boolean zL = l(timeline, mediaPeriodId);
        boolean zK = k(timeline, mediaPeriodId, z2);
        Object obj = mediaPeriodId.f15516a;
        Timeline.Period period = this.f14727a;
        timeline.g(obj, period);
        long jD = (mediaPeriodId.b() || i2 == -1) ? -9223372036854775807L : period.d(i2);
        if (mediaPeriodId.b()) {
            jA = period.a(i3, mediaPeriodId.f15518c);
        } else {
            jA = (jD == -9223372036854775807L || jD == Long.MIN_VALUE) ? period.d : jD;
        }
        if (!mediaPeriodId.b()) {
            if (i2 != -1 && period.h(i2)) {
                z = true;
            }
            return new MediaPeriodInfo(mediaPeriodId, mediaPeriodInfo.f14719b, mediaPeriodInfo.f14720c, mediaPeriodInfo.d, jD, jA, mediaPeriodInfo.g, z, z2, zL, zK);
        }
        zH = period.h(i3);
        z = zH;
        return new MediaPeriodInfo(mediaPeriodId, mediaPeriodInfo.f14719b, mediaPeriodInfo.f14720c, mediaPeriodInfo.d, jD, jA, mediaPeriodInfo.g, z, z2, zL, zK);
    }

    public final void j(Timeline timeline) {
        MediaPeriodHolder mediaPeriodHolder;
        if (this.f14733i.f14643a == -9223372036854775807L || (mediaPeriodHolder = this.m) == null) {
            if (this.r.isEmpty()) {
                return;
            }
            p(new ArrayList());
            return;
        }
        ArrayList arrayList = new ArrayList();
        Object obj = mediaPeriodHolder.f14714h.f14718a.f15516a;
        Timeline.Period period = this.f14727a;
        int iE = timeline.e(timeline.g(obj, period).f13961c, this.g, this.f14732h);
        Pair pairJ = iE != -1 ? timeline.j(this.f14728b, this.f14727a, iE, -9223372036854775807L, 0L) : null;
        if (pairJ != null && !timeline.m(timeline.g(pairJ.first, period).f13961c, this.f14728b, 0L).a()) {
            long jU = u(pairJ.first);
            if (jU == -1) {
                jU = this.f14731f;
                this.f14731f = 1 + jU;
            }
            long j2 = jU;
            Object obj2 = pairJ.first;
            long jLongValue = ((Long) pairJ.second).longValue();
            MediaSource.MediaPeriodId mediaPeriodIdS = s(timeline, obj2, jLongValue, j2, this.f14728b, this.f14727a);
            boolean zB = mediaPeriodIdS.b();
            Object obj3 = mediaPeriodIdS.f15516a;
            MediaPeriodInfo mediaPeriodInfoF = zB ? f(timeline, obj3, mediaPeriodIdS.f15517b, mediaPeriodIdS.f15518c, jLongValue, mediaPeriodIdS.d, false) : g(timeline, obj3, jLongValue, -9223372036854775807L, -9223372036854775807L, mediaPeriodIdS.d, false);
            MediaPeriodHolder mediaPeriodHolderR = r(mediaPeriodInfoF);
            if (mediaPeriodHolderR == null) {
                mediaPeriodHolderR = this.f14730e.a(mediaPeriodInfoF, (mediaPeriodHolder.q + mediaPeriodHolder.f14714h.f14722f) - mediaPeriodInfoF.f14719b);
            }
            arrayList.add(mediaPeriodHolderR);
        }
        p(arrayList);
    }

    public final boolean k(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, boolean z) {
        int iB = timeline.b(mediaPeriodId.f15516a);
        if (!timeline.m(timeline.f(iB, this.f14727a, false).f13961c, this.f14728b, 0L).f13973i) {
            if (timeline.d(iB, this.f14727a, this.f14728b, this.g, this.f14732h) == -1 && z) {
                return true;
            }
        }
        return false;
    }

    public final boolean l(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        boolean z = !mediaPeriodId.b() && mediaPeriodId.f15519e == -1;
        Object obj = mediaPeriodId.f15516a;
        if (z) {
            if (timeline.m(timeline.g(obj, this.f14727a).f13961c, this.f14728b, 0L).o == timeline.b(obj)) {
                return true;
            }
        }
        return false;
    }

    public final void m() {
        MediaPeriodHolder mediaPeriodHolder = this.n;
        if (mediaPeriodHolder == null || mediaPeriodHolder.h()) {
            this.n = null;
            for (int i2 = 0; i2 < this.r.size(); i2++) {
                MediaPeriodHolder mediaPeriodHolder2 = (MediaPeriodHolder) this.r.get(i2);
                if (!mediaPeriodHolder2.h()) {
                    this.n = mediaPeriodHolder2;
                    return;
                }
            }
        }
    }

    public final void n() {
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        for (MediaPeriodHolder mediaPeriodHolder = this.f14734j; mediaPeriodHolder != null; mediaPeriodHolder = mediaPeriodHolder.n) {
            builder.e(mediaPeriodHolder.f14714h.f14718a);
        }
        MediaPeriodHolder mediaPeriodHolder2 = this.f14735k;
        this.d.k(new r(this, builder, mediaPeriodHolder2 == null ? null : mediaPeriodHolder2.f14714h.f14718a, 0));
    }

    public final void o(long j2) {
        MediaPeriodHolder mediaPeriodHolder = this.m;
        if (mediaPeriodHolder != null) {
            Preconditions.q(mediaPeriodHolder.n == null);
            if (mediaPeriodHolder.f14713f) {
                mediaPeriodHolder.f14709a.v(j2 - mediaPeriodHolder.q);
            }
        }
    }

    public final void p(ArrayList arrayList) {
        for (int i2 = 0; i2 < this.r.size(); i2++) {
            ((MediaPeriodHolder) this.r.get(i2)).i();
        }
        this.r = arrayList;
        this.n = null;
        m();
    }

    public final int q(MediaPeriodHolder mediaPeriodHolder) {
        mediaPeriodHolder.getClass();
        int i2 = 0;
        if (mediaPeriodHolder != this.m) {
            this.m = mediaPeriodHolder;
            while (true) {
                mediaPeriodHolder = mediaPeriodHolder.n;
                if (mediaPeriodHolder == null) {
                    break;
                }
                if (mediaPeriodHolder == this.f14735k) {
                    MediaPeriodHolder mediaPeriodHolder2 = this.f14734j;
                    this.f14735k = mediaPeriodHolder2;
                    this.l = mediaPeriodHolder2;
                    i2 = 3;
                }
                if (mediaPeriodHolder == this.l) {
                    this.l = this.f14735k;
                    i2 |= 2;
                }
                mediaPeriodHolder.i();
                this.o--;
            }
            MediaPeriodHolder mediaPeriodHolder3 = this.m;
            mediaPeriodHolder3.getClass();
            if (mediaPeriodHolder3.n != null) {
                mediaPeriodHolder3.b();
                mediaPeriodHolder3.n = null;
                mediaPeriodHolder3.c();
            }
            n();
        }
        return i2;
    }

    public final MediaPeriodHolder r(MediaPeriodInfo mediaPeriodInfo) {
        for (int i2 = 0; i2 < this.r.size(); i2++) {
            MediaPeriodInfo mediaPeriodInfo2 = ((MediaPeriodHolder) this.r.get(i2)).f14714h;
            long j2 = mediaPeriodInfo2.f14722f;
            long j3 = mediaPeriodInfo.f14722f;
            if ((j2 == -9223372036854775807L || j2 == j3) && mediaPeriodInfo2.f14719b == mediaPeriodInfo.f14719b && mediaPeriodInfo2.f14718a.equals(mediaPeriodInfo.f14718a)) {
                return (MediaPeriodHolder) this.r.remove(i2);
            }
        }
        return null;
    }

    public final MediaSource.MediaPeriodId t(Timeline timeline, Object obj, long j2) {
        long jU;
        int iB;
        Object obj2 = obj;
        Timeline.Period period = this.f14727a;
        int i2 = timeline.g(obj2, period).f13961c;
        Object obj3 = this.p;
        if (obj3 == null || (iB = timeline.b(obj3)) == -1 || timeline.f(iB, period, false).f13961c != i2) {
            MediaPeriodHolder mediaPeriodHolder = this.f14734j;
            while (true) {
                if (mediaPeriodHolder == null) {
                    MediaPeriodHolder mediaPeriodHolder2 = this.f14734j;
                    while (true) {
                        if (mediaPeriodHolder2 == null) {
                            jU = u(obj2);
                            if (jU != -1) {
                                break;
                            }
                            jU = this.f14731f;
                            this.f14731f = 1 + jU;
                            if (this.f14734j != null) {
                                break;
                            }
                            this.p = obj2;
                            this.q = jU;
                            break;
                        }
                        int iB2 = timeline.b(mediaPeriodHolder2.f14710b);
                        if (iB2 != -1 && timeline.f(iB2, period, false).f13961c == i2) {
                            jU = mediaPeriodHolder2.f14714h.f14718a.d;
                            break;
                        }
                        mediaPeriodHolder2 = mediaPeriodHolder2.n;
                    }
                } else {
                    if (mediaPeriodHolder.f14710b.equals(obj2)) {
                        jU = mediaPeriodHolder.f14714h.f14718a.d;
                        break;
                    }
                    mediaPeriodHolder = mediaPeriodHolder.n;
                }
            }
        } else {
            jU = this.q;
        }
        timeline.g(obj2, period);
        int i3 = period.f13961c;
        Timeline.Window window = this.f14728b;
        timeline.n(i3, window);
        boolean z = false;
        for (int iB3 = timeline.b(obj); iB3 >= window.n; iB3--) {
            timeline.f(iB3, period, true);
            boolean z2 = period.g.f13671b > 0;
            z |= z2;
            if (period.c(period.d) != -1) {
                obj2 = period.f13960b;
                obj2.getClass();
            }
            if (z && (!z2 || period.d != 0)) {
                break;
            }
        }
        return s(timeline, obj2, j2, jU, this.f14728b, this.f14727a);
    }

    public final long u(Object obj) {
        for (int i2 = 0; i2 < this.r.size(); i2++) {
            MediaPeriodHolder mediaPeriodHolder = (MediaPeriodHolder) this.r.get(i2);
            if (mediaPeriodHolder.f14710b.equals(obj)) {
                return mediaPeriodHolder.f14714h.f14718a.d;
            }
        }
        return -1L;
    }

    public final int v(Timeline timeline) {
        Timeline timeline2;
        MediaPeriodHolder mediaPeriodHolder;
        MediaPeriodHolder mediaPeriodHolder2 = this.f14734j;
        if (mediaPeriodHolder2 == null) {
            return 0;
        }
        int iB = timeline.b(mediaPeriodHolder2.f14710b);
        while (true) {
            timeline2 = timeline;
            iB = timeline2.d(iB, this.f14727a, this.f14728b, this.g, this.f14732h);
            while (true) {
                mediaPeriodHolder = mediaPeriodHolder2.n;
                if (mediaPeriodHolder == null || mediaPeriodHolder2.f14714h.f14724i) {
                    break;
                }
                mediaPeriodHolder2 = mediaPeriodHolder;
            }
            if (iB == -1 || mediaPeriodHolder == null || timeline2.b(mediaPeriodHolder.f14710b) != iB) {
                break;
            }
            mediaPeriodHolder2 = mediaPeriodHolder;
            timeline = timeline2;
        }
        int iQ = q(mediaPeriodHolder2);
        mediaPeriodHolder2.f14714h = i(timeline2, mediaPeriodHolder2.f14714h);
        return iQ;
    }

    /* JADX WARN: Code duplicated, block: B:61:0x00c9  */
    public final int w(Timeline timeline, long j2, long j3, long j4) {
        long j5;
        int i2;
        MediaPeriodInfo mediaPeriodInfoB;
        int i3;
        MediaPeriodHolder mediaPeriodHolder = this.f14734j;
        MediaPeriodHolder mediaPeriodHolder2 = null;
        while (mediaPeriodHolder != null) {
            MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.f14714h;
            if (mediaPeriodHolder2 != null) {
                MediaPeriodInfo mediaPeriodInfoD = d(timeline, mediaPeriodHolder2, j2);
                if (mediaPeriodInfoD != null) {
                    long j6 = mediaPeriodInfoD.f14719b;
                    MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.f14718a;
                    long j7 = mediaPeriodInfo.f14720c;
                    j5 = -9223372036854775807L;
                    long j8 = mediaPeriodInfo.f14719b;
                    i2 = 0;
                    if (mediaPeriodId.equals(mediaPeriodInfoD.f14718a)) {
                        if (j8 != j6) {
                            if (j7 != -9223372036854775807L) {
                                long j9 = mediaPeriodInfoD.f14720c;
                                if (j9 != -9223372036854775807L) {
                                    if (Math.abs((j6 - j9) - (j8 - j7)) >= 5000000) {
                                    }
                                }
                            }
                        }
                        mediaPeriodInfoB = j8 != j6 ? mediaPeriodInfoD.b(j8, j7) : mediaPeriodInfoD;
                    }
                }
                return q(mediaPeriodHolder2);
            }
            mediaPeriodInfoB = i(timeline, mediaPeriodInfo);
            j5 = -9223372036854775807L;
            i2 = 0;
            long j10 = mediaPeriodInfoB.f14722f;
            long j11 = mediaPeriodInfo.d;
            long j12 = mediaPeriodInfo.f14722f;
            mediaPeriodHolder.f14714h = mediaPeriodInfoB.a(j11);
            if (j12 != j10) {
                mediaPeriodHolder.k();
                long j13 = j10 == j5 ? Long.MAX_VALUE : j10 + mediaPeriodHolder.q;
                int i4 = 1;
                int i5 = (mediaPeriodHolder != this.f14735k || mediaPeriodHolder.f14714h.f14723h || (j3 != Long.MIN_VALUE && j3 < j13)) ? i2 : 1;
                int i6 = (mediaPeriodHolder != this.l || (j4 != Long.MIN_VALUE && j4 < j13)) ? i2 : 1;
                int iQ = q(mediaPeriodHolder);
                if (iQ != 0) {
                    return iQ;
                }
                if (j12 == j5 && mediaPeriodInfo.f14721e == Long.MIN_VALUE) {
                    long j14 = mediaPeriodInfoB.f14721e;
                    if (j14 == j5 || j14 == Long.MIN_VALUE) {
                        i3 = i2;
                    } else {
                        i3 = 1;
                    }
                } else {
                    i3 = i2;
                }
                if (i5 == 0 || (j12 == j5 && i3 == 0)) {
                    i4 = i2;
                }
                return i6 != 0 ? i4 | 2 : i4;
            }
            mediaPeriodHolder2 = mediaPeriodHolder;
            mediaPeriodHolder = mediaPeriodHolder.n;
        }
        return 0;
    }
}
