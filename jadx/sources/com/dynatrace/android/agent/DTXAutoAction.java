package com.dynatrace.android.agent;

import com.dynatrace.android.agent.conf.ConfigurationPreset;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.useraction.AppStartPlaceholderSegment;
import com.dynatrace.android.useraction.LifecyclePlaceholderSegment;
import com.github.druk.dnssd.DNSSD;
import com.linkplay.medialib.ContentTree;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class DTXAutoAction extends DTXActionImpl {
    public static final String J;
    public static int K;
    public static int L;
    public static boolean M;
    public static volatile DTXAutoAction N;
    public static final List O;
    public volatile int A;
    public volatile int B;
    public volatile boolean C;
    public volatile boolean D;
    public volatile boolean E;
    public volatile boolean F;
    public volatile boolean G;
    public volatile boolean H;
    public volatile Timer I;
    public volatile long z;

    /* JADX INFO: renamed from: com.dynatrace.android.agent.DTXAutoAction$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f27302a;

        static {
            int[] iArr = new int[EventType.values().length];
            f27302a = iArr;
            try {
                iArr[EventType.VALUE_INT64.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27302a[EventType.VALUE_DOUBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27302a[EventType.VALUE_STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f27302a[EventType.ERROR_INT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f27302a[EventType.ERROR_EXCEPTION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f27302a[EventType.NAMED_EVENT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    static {
        boolean z = Global.f27307a;
        J = "dtxDTXAutoAction";
        ConfigurationPreset.a();
        K = 500;
        ConfigurationPreset.a();
        L = DNSSD.DNSSD_DEFAULT_TIMEOUT;
        M = true;
        O = Collections.synchronizedList(new ArrayList(5));
    }

    public DTXAutoAction(String str, Session session, int i2) {
        super(str, EventType.ACTION_AUTO, 0L, session, i2, true, null);
        this.z = 0L;
        this.A = 0;
        this.B = 0;
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = false;
        this.I = null;
        Core.a(str, 1, this.d, this, session, i2, new String[0]);
    }

    public static DTXAutoAction B(String str, Session session, int i2) {
        DTXAutoAction dTXAutoAction = new DTXAutoAction(str, session, i2);
        synchronized (DTXAutoAction.class) {
            DTXAutoAction dTXAutoAction2 = N;
            N = dTXAutoAction;
            if (dTXAutoAction2 != null) {
                O.add(dTXAutoAction2);
            }
        }
        if (Global.f27307a) {
            Utility.n(String.format("onUA: new GAUA %s @ %d", str, Long.valueOf(dTXAutoAction.f27293b)));
        }
        return dTXAutoAction;
    }

    public final void A(Timer timer) {
        this.H = this.G;
        if (Global.f27307a) {
            Utility.n("onUA: cancel timer=" + timer + " graceTimeOver=" + this.H);
        }
        if (timer != null) {
            timer.cancel();
            timer.purge();
        }
    }

    public final synchronized Timer C(boolean z) {
        Timer timer;
        timer = this.I;
        try {
            if (z) {
                if (timer != null) {
                    A(this.I);
                }
                timer = new Timer(J);
                this.I = timer;
            } else {
                this.I = null;
            }
        } catch (Throwable th) {
            throw th;
        }
        return timer;
    }

    public final synchronized void D() {
        if (this.f27295e) {
            return;
        }
        this.z = this.f27297h.c();
        if (Global.f27307a) {
            Utility.n(String.format("onUA: new eT=%d dur=%d", Long.valueOf(this.z), Long.valueOf(this.z - this.f27293b)));
        }
    }

    public final void E(int i2) {
        int i3;
        this.H = true;
        if (Global.f27307a) {
            Utility.n(String.format("onUA: onTimerPop for %s intv=%d WR=%d action=%d", this.o, Integer.valueOf(i2), Integer.valueOf(this.A), Integer.valueOf(this.B)));
        }
        if (!this.G) {
            y(this, true);
        }
        if (this.A > 0 || this.B > 0) {
            if (!this.G) {
                this.G = true;
                if (this.o.equals("Loading " + AdkSettings.f27247i) && this.B > 0) {
                    AppStartPlaceholderSegment appStartPlaceholderSegment = null;
                    boolean z = false;
                    for (CustomSegment customSegment : r()) {
                        if (customSegment instanceof LifecyclePlaceholderSegment) {
                            z = true;
                        } else if (customSegment instanceof AppStartPlaceholderSegment) {
                            appStartPlaceholderSegment = (AppStartPlaceholderSegment) customSegment;
                        }
                    }
                    if (!z && appStartPlaceholderSegment != null) {
                        if (Global.f27307a) {
                            Utility.n("onUA: detected pending AppStart action after grace period; dropping AppStart action");
                        }
                        G(appStartPlaceholderSegment.o);
                        this.F = true;
                        appStartPlaceholderSegment.y();
                    }
                }
                if (Global.f27307a) {
                    Utility.n("onUA: starting waiting period for " + this.o);
                }
                long jC = ((long) L) - (this.f27297h.c() - this.f27293b);
                if (jC > 1000) {
                    i3 = 1000;
                } else {
                    if (jC < 0) {
                        jC = 0;
                    }
                    i3 = 100;
                }
                long j2 = i3;
                I(j2, j2, true, Math.round(jC / i3) - 1);
                return;
            }
            if (i2 > 0) {
                return;
            }
        }
        z();
        if (Global.f27307a) {
            Utility.n("onUA: closing " + this.o);
        }
        a();
    }

    public final void F(long j2) {
        boolean z = this.f27295e;
        int i2 = this.A;
        if (!z && i2 > 0 && j2 == this.q) {
            D();
            this.A--;
        }
    }

    public final void G(String str) {
        if (str.startsWith("MT_3_")) {
            this.A--;
        } else {
            this.B--;
        }
        for (CustomSegment customSegment : r()) {
            if (customSegment.o.equals(str)) {
                this.v.remove(customSegment);
                Core.f27287j.e(customSegment);
                if (Global.f27307a) {
                    Utility.n("Removing child: ".concat(str));
                    return;
                }
                return;
            }
        }
    }

    public final void H(int i2) {
        z();
        if (i2 <= 0) {
            E(0);
            return;
        }
        if (Global.f27307a) {
            Utility.n("onUA: start grace period for " + this.o);
        }
        long j2 = i2;
        I(j2, j2, false, 0);
    }

    public final void I(long j2, long j3, boolean z, int i2) {
        if (Global.f27307a) {
            Utility.n(String.format("onUA: startTimer for %s delay=%dms period=%dms #period=%d", this.o, Long.valueOf(j2), Long.valueOf(j3), Integer.valueOf(i2)));
        }
        TimerTask timerTask = new TimerTask(i2, z) { // from class: com.dynatrace.android.agent.DTXAutoAction.1
            int intervals;
            final /* synthetic */ boolean val$execOnEachInterval;
            final /* synthetic */ int val$numPeriods;

            {
                this.val$numPeriods = i2;
                this.val$execOnEachInterval = z;
                this.intervals = i2;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                int i3 = this.intervals;
                if (i3 > 0) {
                    this.intervals = i3 - 1;
                    if (!this.val$execOnEachInterval) {
                        return;
                    }
                } else {
                    DTXAutoAction.this.z();
                }
                DTXAutoAction dTXAutoAction = DTXAutoAction.this;
                int i4 = this.intervals;
                String str = DTXAutoAction.J;
                dTXAutoAction.E(i4);
            }
        };
        for (int i3 = 3; i3 > 0; i3--) {
            try {
                C(true).schedule(timerTask, j2, j3);
                return;
            } catch (IllegalArgumentException unused) {
                return;
            } catch (IllegalStateException unused2) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00e1  */
    @Override // com.dynatrace.android.agent.DTXActionImpl, com.dynatrace.android.agent.DTXAction
    public final void a() {
        z();
        this.G = true;
        this.H = true;
        boolean z = false;
        y(this, false);
        O.remove(this);
        if (Global.f27307a) {
            Utility.n(String.format("onUA: leave %s - abandon=%b WR=%b action=%b modified=%b eT=%d", this.o, Boolean.FALSE, Boolean.valueOf(this.C), Boolean.valueOf(this.D), Boolean.valueOf(this.E), Long.valueOf(this.z)));
        }
        boolean z2 = ((this.C || this.D) && this.z > 0) || M || this.E;
        if (z2) {
            if (!this.o.equals("Loading " + AdkSettings.f27247i)) {
                z = z2;
            } else if (this.B != 0) {
                AppStartPlaceholderSegment appStartPlaceholderSegment = null;
                boolean z3 = false;
                for (CustomSegment customSegment : r()) {
                    if (customSegment instanceof LifecyclePlaceholderSegment) {
                        z3 = true;
                    } else if (customSegment instanceof AppStartPlaceholderSegment) {
                        appStartPlaceholderSegment = (AppStartPlaceholderSegment) customSegment;
                    }
                }
                if (z3 || appStartPlaceholderSegment == null) {
                    z = z2;
                } else {
                    appStartPlaceholderSegment.y();
                    if (Global.f27307a) {
                        Utility.n("onUA: dropping pending AppStart action because AUA " + this.o + " is closed");
                    }
                }
            } else if (!this.F) {
                z = z2;
            } else if (Global.f27307a) {
                Utility.n("onUA: dropping AUA " + this.o + " after already dropping AppStart action");
            }
        } else {
            z = z2;
        }
        v(z);
    }

    @Override // com.dynatrace.android.agent.DTXActionImpl, com.dynatrace.android.agent.CustomSegment
    public final StringBuilder h() {
        StringBuilder sbT = n00.t("et=");
        sbT.append(this.f27299j.b());
        sbT.append("&na=");
        sbT.append(Utility.m(this.o));
        sbT.append("&it=");
        sbT.append(Utility.e());
        sbT.append("&ca=");
        sbT.append(this.q);
        sbT.append("&pa=");
        sbT.append(this.d);
        sbT.append("&s0=");
        sbT.append(this.g);
        sbT.append("&t0=");
        sbT.append(this.f27293b);
        sbT.append("&s1=");
        sbT.append(this.u);
        sbT.append("&t1=");
        sbT.append(this.f27294c - this.f27293b);
        sbT.append("&mo=");
        String str = ContentTree.ROOT_ID;
        sbT.append(ContentTree.ROOT_ID);
        sbT.append("&fw=");
        if (this.w) {
            str = "1";
        }
        sbT.append(str);
        return sbT;
    }

    @Override // com.dynatrace.android.agent.CustomSegment
    public final long j() {
        if (this.C || this.D) {
            if (Global.f27307a) {
                Utility.n(String.format("onUA: use adjusted eT=%d dur=%d", Long.valueOf(this.z), Long.valueOf(this.z - this.f27293b)));
            }
            return this.z;
        }
        if (this.z <= 0) {
            return 0L;
        }
        if (Global.f27307a) {
            Utility.n(String.format("onUA (empty): use adjusted eT=%d dur=%d", Long.valueOf(this.z), Long.valueOf(this.z - this.f27293b)));
        }
        return this.z;
    }

    @Override // com.dynatrace.android.agent.DTXActionImpl
    public final WebReqTag s() {
        if (this.H) {
            return null;
        }
        return super.s();
    }

    @Override // com.dynatrace.android.agent.DTXActionImpl
    public final void x(CustomSegment customSegment) {
        if (Global.f27307a) {
            Utility.n("onUA: add child " + customSegment.o + " to " + this.o);
        }
        int iK = customSegment.k();
        boolean z = true;
        if (iK == 5) {
            this.B++;
            this.D = true;
        } else {
            if (iK == 100 || iK == 110) {
                this.A++;
                this.C = true;
                return;
            }
            switch (AnonymousClass2.f27302a[customSegment.f27299j.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    break;
                default:
                    z = false;
                    break;
            }
            this.E = z;
        }
    }

    public final synchronized void y(DTXAutoAction dTXAutoAction, boolean z) {
        if (N == dTXAutoAction) {
            N = null;
            if (z) {
                O.add(dTXAutoAction);
            }
        }
    }

    public final void z() {
        A(C(false));
    }
}
