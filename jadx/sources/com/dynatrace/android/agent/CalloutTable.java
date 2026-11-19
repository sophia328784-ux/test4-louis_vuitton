package com.dynatrace.android.agent;

import com.dynatrace.android.agent.util.Utility;
import defpackage.n00;
import defpackage.o60;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class CalloutTable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f27257a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f27259c = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f27258b = 0;

    public class CTElement {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f27260a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f27261b;

        public CTElement(CalloutTable calloutTable, CustomSegment customSegment, long j2) {
            this.f27260a = customSegment.o + customSegment.hashCode();
            this.f27261b = j2;
        }
    }

    static {
        boolean z = Global.f27307a;
    }

    public CalloutTable(int i2) {
        this.f27257a = i2;
    }

    public final void a(DTXActionImpl dTXActionImpl) {
        if (dTXActionImpl == null) {
            return;
        }
        if (Global.f27307a) {
            Utility.n(String.format("Add segment %s (id=%d pid=%d) currTimeout=%s", dTXActionImpl.o + dTXActionImpl.hashCode(), Long.valueOf(dTXActionImpl.q), Long.valueOf(dTXActionImpl.d), Long.valueOf(this.f27258b)));
        }
        synchronized (this.f27259c) {
            try {
                long j2 = this.f27257a - this.f27258b;
                int i2 = 0;
                while (true) {
                    int size = this.f27259c.size();
                    ArrayList arrayList = this.f27259c;
                    if (i2 >= size) {
                        arrayList.add(new CTElement(this, dTXActionImpl, j2));
                        return;
                    }
                    long j3 = ((CTElement) arrayList.get(i2)).f27261b;
                    ArrayList arrayList2 = this.f27259c;
                    if (j3 >= j2) {
                        ((CTElement) arrayList2.get(i2)).f27261b -= j2;
                        this.f27259c.add(i2, new CTElement(this, dTXActionImpl, j2));
                        return;
                    }
                    j2 -= ((CTElement) arrayList2.get(i2)).f27261b;
                    i2++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        synchronized (this.f27259c) {
            try {
                if (this.f27259c.size() > 0) {
                    return;
                }
                if (this.f27258b == 0) {
                    this.f27258b = this.f27257a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(long j2) {
        synchronized (this.f27259c) {
            try {
                if (j2 == this.f27257a) {
                    return;
                }
                this.f27257a = j2;
                if (this.f27258b > j2) {
                    if (this.f27259c.size() > 0) {
                        ((CTElement) this.f27259c.get(0)).f27261b += this.f27258b - j2;
                    }
                    this.f27258b = j2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        synchronized (this.f27259c) {
            this.f27259c.clear();
            this.f27258b = 0L;
        }
    }

    public final void e(CustomSegment customSegment) {
        if (customSegment == null) {
            return;
        }
        String str = customSegment.o + customSegment.hashCode();
        synchronized (this.f27259c) {
            for (int i2 = 0; i2 < this.f27259c.size(); i2++) {
                try {
                    if (((CTElement) this.f27259c.get(i2)).f27260a.equals(str)) {
                        int i3 = i2 + 1;
                        if (i3 < this.f27259c.size()) {
                            ((CTElement) this.f27259c.get(i3)).f27261b += ((CTElement) this.f27259c.get(i2)).f27261b;
                        } else if (this.f27258b == 0) {
                            this.f27258b = ((CTElement) this.f27259c.get(i2)).f27261b;
                        }
                        this.f27259c.remove(i2);
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final String toString() {
        String strJ = o60.j(this.f27258b, ";", new StringBuilder());
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f27259c;
            if (i2 >= arrayList.size()) {
                return strJ;
            }
            strJ = o60.j(((CTElement) arrayList.get(i2)).f27261b, ";", n00.t(strJ));
            i2++;
        }
    }
}
