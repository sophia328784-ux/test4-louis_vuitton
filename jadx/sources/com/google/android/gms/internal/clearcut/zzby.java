package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzca;
import defpackage.md;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzby<FieldDescriptorType extends zzca<FieldDescriptorType>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzby f29665c = new zzby(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzej f29666a = new zzej(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f29667b;

    public zzby(int i2) {
        g();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0013. Please report as an issue. */
    public static void c(zzfl zzflVar, Object obj) {
        Charset charset = zzci.f29677a;
        obj.getClass();
        boolean z = true;
        boolean z2 = false;
        switch (zzbz.f29668a[zzflVar.a().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                z2 = z;
                break;
            case 2:
                z = obj instanceof Long;
                z2 = z;
                break;
            case 3:
                z = obj instanceof Float;
                z2 = z;
                break;
            case 4:
                z = obj instanceof Double;
                z2 = z;
                break;
            case 5:
                z = obj instanceof Boolean;
                z2 = z;
                break;
            case 6:
                z = obj instanceof String;
                z2 = z;
                break;
            case 7:
                if (!(obj instanceof zzbb) && !(obj instanceof byte[])) {
                    z = false;
                }
                z2 = z;
                break;
            case 8:
                if (!(obj instanceof Integer) && !(obj instanceof zzcj)) {
                    z = false;
                }
                z2 = z;
                break;
            case 9:
                if (!(obj instanceof zzdo)) {
                    z = false;
                }
                z2 = z;
                break;
        }
        if (z2) {
            return;
        }
        md.n("Wrong object type used with protocol message reflection.");
    }

    public static boolean d(Map.Entry entry) {
        zzca zzcaVar = (zzca) entry.getKey();
        if (zzcaVar.r() != zzfq.MESSAGE) {
            return true;
        }
        boolean zS = zzcaVar.s();
        Object value = entry.getValue();
        if (!zS) {
            if (value instanceof zzdo) {
                return ((zzdo) value).a();
            }
            md.n("Wrong object type used with protocol message reflection.");
            return false;
        }
        Iterator it = ((List) value).iterator();
        while (it.hasNext()) {
            if (!((zzdo) it.next()).a()) {
                return false;
            }
        }
        return true;
    }

    public static Object f(Object obj) {
        if (obj instanceof zzdv) {
            return ((zzdv) obj).s();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public final boolean a() {
        int i2 = 0;
        while (true) {
            zzej zzejVar = this.f29666a;
            if (i2 >= zzejVar.f29726c.size()) {
                Iterator it = zzejVar.f().iterator();
                while (it.hasNext()) {
                    if (!d((Map.Entry) it.next())) {
                        break;
                    }
                }
                return true;
            }
            if (!d(zzejVar.d(i2))) {
                break;
            }
            i2++;
        }
        return false;
    }

    public final void b(zzca zzcaVar, Object obj) {
        if (!zzcaVar.s()) {
            c(zzcaVar.u(), obj);
        } else {
            if (!(obj instanceof List)) {
                md.n("Wrong object type used with protocol message reflection.");
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj2 = arrayList.get(i2);
                i2++;
                c(zzcaVar.u(), obj2);
            }
            obj = arrayList;
        }
        this.f29666a.put(zzcaVar, obj);
    }

    public final Object clone() {
        zzej zzejVar;
        zzby zzbyVar = new zzby();
        int i2 = 0;
        while (true) {
            zzejVar = this.f29666a;
            if (i2 >= zzejVar.f29726c.size()) {
                break;
            }
            Map.Entry entryD = zzejVar.d(i2);
            zzbyVar.b((zzca) entryD.getKey(), entryD.getValue());
            i2++;
        }
        for (Map.Entry entry : zzejVar.f()) {
            zzbyVar.b((zzca) entry.getKey(), entry.getValue());
        }
        return zzbyVar;
    }

    public final void e(Map.Entry entry) {
        Object obj;
        Object objM;
        zzca zzcaVar = (zzca) entry.getKey();
        Object value = entry.getValue();
        boolean zS = zzcaVar.s();
        zzej zzejVar = this.f29666a;
        if (zS) {
            Object arrayList = zzejVar.get(zzcaVar);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) arrayList).add(f(it.next()));
            }
            zzejVar.put(zzcaVar, arrayList);
            return;
        }
        if (zzcaVar.r() != zzfq.MESSAGE || (obj = zzejVar.get(zzcaVar)) == null) {
            zzejVar.put(zzcaVar, f(value));
            return;
        }
        if (obj instanceof zzdv) {
            objM = zzcaVar.m33d0();
        } else {
            ((zzdo) obj).b();
            objM = zzcaVar.d0().m();
        }
        zzejVar.put(zzcaVar, objM);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzby) {
            return this.f29666a.equals(((zzby) obj).f29666a);
        }
        return false;
    }

    public final void g() {
        if (this.f29667b) {
            return;
        }
        zzej zzejVar = this.f29666a;
        if (!zzejVar.f29727e) {
            for (int i2 = 0; i2 < zzejVar.f29726c.size(); i2++) {
                Map.Entry entryD = zzejVar.d(i2);
                if (((zzca) entryD.getKey()).s()) {
                    entryD.setValue(Collections.unmodifiableList((List) entryD.getValue()));
                }
            }
            for (Map.Entry entry : zzejVar.f()) {
                if (((zzca) entry.getKey()).s()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        if (!zzejVar.f29727e) {
            zzejVar.d = zzejVar.d.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(zzejVar.d);
            zzejVar.g = zzejVar.g.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(zzejVar.g);
            zzejVar.f29727e = true;
        }
        this.f29667b = true;
    }

    public final int hashCode() {
        return this.f29666a.hashCode();
    }

    public zzby() {
    }
}
