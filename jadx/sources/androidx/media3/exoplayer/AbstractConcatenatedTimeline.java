package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.source.ShuffleOrder;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractConcatenatedTimeline extends Timeline {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f14559h = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f14560e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ShuffleOrder f14561f;
    public final boolean g;

    public AbstractConcatenatedTimeline(boolean z, ShuffleOrder shuffleOrder) {
        this.g = z;
        this.f14561f = shuffleOrder;
        this.f14560e = shuffleOrder.getLength();
    }

    @Override // androidx.media3.common.Timeline
    public final int a(boolean z) {
        if (this.f14560e != 0) {
            if (this.g) {
                z = false;
            }
            int iG = z ? this.f14561f.g() : 0;
            while (x(iG).p()) {
                iG = w(iG, z);
                if (iG == -1) {
                }
            }
            return x(iG).a(z) + v(iG);
        }
        return -1;
    }

    @Override // androidx.media3.common.Timeline
    public final int b(Object obj) {
        int iB;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int iQ = q(obj2);
        if (iQ == -1 || (iB = x(iQ).b(obj3)) == -1) {
            return -1;
        }
        return u(iQ) + iB;
    }

    @Override // androidx.media3.common.Timeline
    public final int c(boolean z) {
        int i2 = this.f14560e;
        if (i2 != 0) {
            if (this.g) {
                z = false;
            }
            ShuffleOrder shuffleOrder = this.f14561f;
            int iE = z ? shuffleOrder.e() : i2 - 1;
            while (x(iE).p()) {
                if (z) {
                    iE = shuffleOrder.b(iE);
                } else {
                    iE = iE > 0 ? iE - 1 : -1;
                }
                if (iE == -1) {
                }
            }
            return x(iE).c(z) + v(iE);
        }
        return -1;
    }

    @Override // androidx.media3.common.Timeline
    public final int e(int i2, int i3, boolean z) {
        if (this.g) {
            if (i3 == 1) {
                i3 = 2;
            }
            z = false;
        }
        int iS = s(i2);
        int iV = v(iS);
        int iE = x(iS).e(i2 - iV, i3 != 2 ? i3 : 0, z);
        if (iE != -1) {
            return iV + iE;
        }
        int iW = w(iS, z);
        while (iW != -1 && x(iW).p()) {
            iW = w(iW, z);
        }
        if (iW != -1) {
            return x(iW).a(z) + v(iW);
        }
        if (i3 == 2) {
            return a(z);
        }
        return -1;
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Period f(int i2, Timeline.Period period, boolean z) {
        int iR = r(i2);
        int iV = v(iR);
        x(iR).f(i2 - u(iR), period, z);
        period.f13961c += iV;
        if (z) {
            Object objT = t(iR);
            Object obj = period.f13960b;
            obj.getClass();
            period.f13960b = Pair.create(objT, obj);
        }
        return period;
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Period g(Object obj, Timeline.Period period) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int iQ = q(obj2);
        int iV = v(iQ);
        x(iQ).g(obj3, period);
        period.f13961c += iV;
        period.f13960b = obj;
        return period;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0033, code lost:
    
        r0 = -1;
     */
    @Override // androidx.media3.common.Timeline
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int k(int r7, int r8, boolean r9) {
        /*
            r6 = this;
            boolean r0 = r6.g
            r1 = 1
            r2 = 0
            r3 = 2
            if (r0 == 0) goto Lb
            if (r8 != r1) goto La
            r8 = r3
        La:
            r9 = r2
        Lb:
            int r0 = r6.s(r7)
            int r4 = r6.v(r0)
            androidx.media3.common.Timeline r5 = r6.x(r0)
            int r7 = r7 - r4
            if (r8 != r3) goto L1b
            goto L1c
        L1b:
            r2 = r8
        L1c:
            int r7 = r5.k(r7, r2, r9)
            r2 = -1
            if (r7 == r2) goto L25
            int r4 = r4 + r7
            return r4
        L25:
            androidx.media3.exoplayer.source.ShuffleOrder r7 = r6.f14561f
            if (r9 == 0) goto L2e
            int r0 = r7.b(r0)
            goto L33
        L2e:
            if (r0 <= 0) goto L32
            int r0 = r0 - r1
            goto L33
        L32:
            r0 = r2
        L33:
            if (r0 == r2) goto L4b
            androidx.media3.common.Timeline r1 = r6.x(r0)
            boolean r1 = r1.p()
            if (r1 == 0) goto L4b
            if (r9 == 0) goto L46
            int r0 = r7.b(r0)
            goto L33
        L46:
            if (r0 <= 0) goto L32
            int r0 = r0 + (-1)
            goto L33
        L4b:
            if (r0 == r2) goto L5b
            int r7 = r6.v(r0)
            androidx.media3.common.Timeline r6 = r6.x(r0)
            int r6 = r6.c(r9)
            int r6 = r6 + r7
            return r6
        L5b:
            if (r8 != r3) goto L62
            int r6 = r6.c(r9)
            return r6
        L62:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.AbstractConcatenatedTimeline.k(int, int, boolean):int");
    }

    @Override // androidx.media3.common.Timeline
    public final Object l(int i2) {
        int iR = r(i2);
        return Pair.create(t(iR), x(iR).l(i2 - u(iR)));
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Window m(int i2, Timeline.Window window, long j2) {
        int iS = s(i2);
        int iV = v(iS);
        int iU = u(iS);
        x(iS).m(i2 - iV, window, j2);
        Object objT = t(iS);
        Object obj = Timeline.Window.q;
        Object obj2 = window.f13967a;
        if (obj != obj2) {
            objT = Pair.create(objT, obj2);
        }
        window.f13967a = objT;
        window.n += iU;
        window.o += iU;
        return window;
    }

    public abstract int q(Object obj);

    public abstract int r(int i2);

    public abstract int s(int i2);

    public abstract Object t(int i2);

    public abstract int u(int i2);

    public abstract int v(int i2);

    public final int w(int i2, boolean z) {
        if (z) {
            return this.f14561f.c(i2);
        }
        if (i2 < this.f14560e - 1) {
            return i2 + 1;
        }
        return -1;
    }

    public abstract Timeline x(int i2);
}
