package com.dynatrace.android.agent;

import com.dynatrace.android.agent.crash.PlatformType;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;
import com.linkplay.medialib.ContentTree;
import defpackage.n00;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class CustomSegment implements Segment {
    public static final AtomicInteger s = new AtomicInteger(0);
    public static final int t = 200;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f27292a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f27293b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f27294c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f27295e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f27296f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Session f27297h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f27298i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public EventType f27299j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public DTXActionImpl f27300k;
    public DTXActionImpl l;
    public final AtomicInteger m;
    public final AtomicInteger n;
    public final String o;
    public final int p;
    public final long q;
    public final boolean r;

    /* JADX INFO: renamed from: com.dynatrace.android.agent.CustomSegment$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f27301a;

        static {
            int[] iArr = new int[EventType.values().length];
            f27301a = iArr;
            try {
                iArr[EventType.VALUE_DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27301a[EventType.VALUE_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27301a[EventType.VALUE_INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f27301a[EventType.NAMED_EVENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f27301a[EventType.IDENTIFY_USER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f27301a[EventType.ERROR_INT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f27301a[EventType.SELF_MONITORING_EVENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public CustomSegment(String str, int i2, EventType eventType, long j2, Session session, int i3, boolean z) {
        this.f27293b = -1L;
        this.f27294c = -1L;
        this.d = 0L;
        this.f27295e = false;
        this.f27296f = true;
        this.f27300k = null;
        this.l = null;
        this.m = new AtomicInteger(0);
        this.n = new AtomicInteger(1);
        this.o = "";
        this.q = 0L;
        this.f27297h = session;
        this.p = i2;
        this.f27299j = eventType;
        long jC = session.c();
        this.f27293b = jC;
        this.f27294c = jC;
        this.d = j2;
        this.q = Utility.f27586b.incrementAndGet();
        this.g = Utility.f27585a.getAndIncrement();
        this.f27298i = i3;
        this.f27295e = i2 != 5;
        if (str == null) {
            this.o = "";
        } else {
            this.o = Utility.k(250, str);
        }
        if (j2 == 0) {
            session.j(TimeLineProvider.f27311c.a());
        }
        this.r = z;
    }

    public static void g(String str, String str2, StringBuilder sb) {
        if (str2 != null) {
            sb.append(str);
            if (str2.isEmpty()) {
                return;
            }
            sb.append(str2);
        }
    }

    public StringBuilder h() {
        StringBuilder sbT = n00.t("et=");
        sbT.append(this.f27299j.b());
        switch (AnonymousClass1.f27301a[this.f27299j.ordinal()]) {
            case 1:
                i(sbT);
                sbT.append("&vl=");
                sbT.append(Utility.m(this.f27292a));
                break;
            case 2:
                i(sbT);
                g("&vl=", Utility.m(this.f27292a), sbT);
                break;
            case 3:
                i(sbT);
                sbT.append("&vl=");
                sbT.append(Utility.m(this.f27292a));
                break;
            case 4:
                i(sbT);
                break;
            case 5:
                i(sbT);
                break;
            case 6:
                i(sbT);
                sbT.append("&ev=");
                sbT.append(Utility.m(this.f27292a));
                sbT.append("&tt=");
                sbT.append(PlatformType.CUSTOM.a());
                break;
            case 7:
                sbT.append("&na=");
                sbT.append(Utility.m(this.o));
                g("&pl=", Utility.m(this.f27292a), sbT);
                sbT.append("&t0=");
                sbT.append(this.f27293b);
                break;
        }
        sbT.append("&fw=");
        sbT.append(this.r ? "1" : ContentTree.ROOT_ID);
        return sbT;
    }

    public final void i(StringBuilder sb) {
        sb.append("&na=");
        sb.append(Utility.m(this.o));
        sb.append("&it=");
        sb.append(Utility.e());
        sb.append("&pa=");
        sb.append(this.d);
        sb.append("&s0=");
        sb.append(this.g);
        sb.append("&t0=");
        sb.append(this.f27293b);
    }

    public long j() {
        return 0L;
    }

    public int k() {
        return this.p;
    }

    public final boolean l() {
        return this.l.n.get() >= t;
    }

    public final void m() {
        long j2 = j();
        if (j2 > 0) {
            n(j2);
        } else {
            n(this.f27297h.c());
        }
    }

    public final void n(long j2) {
        if (this.f27295e) {
            return;
        }
        this.f27294c = j2;
        this.f27295e = true;
        if (this.d == 0) {
            this.f27297h.j(TimeLineProvider.f27311c.a());
        }
    }

    public CustomSegment(String str, int i2, EventType eventType, long j2, int i3, long j3, long j4, Session session, int i4, boolean z) {
        this.f27293b = -1L;
        this.f27294c = -1L;
        this.d = 0L;
        this.f27295e = false;
        this.f27296f = true;
        this.f27300k = null;
        this.l = null;
        this.m = new AtomicInteger(0);
        this.n = new AtomicInteger(1);
        this.o = "";
        this.f27297h = session;
        this.p = i2;
        this.f27299j = eventType;
        this.f27293b = j3;
        this.f27294c = j4;
        this.d = j2;
        this.q = 0L;
        this.g = i3;
        this.f27298i = i4;
        this.f27295e = true;
        if (str == null) {
            this.o = "";
        } else {
            this.o = Utility.k(250, str);
        }
        if (j2 == 0) {
            session.j(TimeLineProvider.f27311c.a());
        }
        this.r = z;
    }

    public CustomSegment(String str, int i2, Session session, int i3, boolean z) {
        this.f27293b = -1L;
        this.f27294c = -1L;
        this.d = 0L;
        this.f27295e = false;
        this.f27296f = true;
        this.f27300k = null;
        this.l = null;
        this.m = new AtomicInteger(0);
        this.n = new AtomicInteger(1);
        this.o = "";
        this.q = 0L;
        this.p = i2;
        this.q = Utility.f27586b.incrementAndGet();
        this.f27297h = session;
        this.f27298i = i3;
        if (str == null) {
            this.o = "";
        } else {
            this.o = Utility.k(250, str);
        }
        this.r = z;
    }
}
