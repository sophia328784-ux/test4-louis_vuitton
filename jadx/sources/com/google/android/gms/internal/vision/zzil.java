package com.google.android.gms.internal.vision;

import defpackage.r81;
import java.nio.charset.Charset;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
final class zzil implements zzmr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzii f31202a;

    public zzil(zzii zziiVar) {
        Charset charset = zzjf.f31225a;
        if (zziiVar == null) {
            r81.d("output");
            throw null;
        }
        this.f31202a = zziiVar;
        zziiVar.f31199a = this;
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void A(int i2, zzht zzhtVar) throws zzii.zzb {
        zzii.zza zzaVar = (zzii.zza) this.f31202a;
        zzaVar.c(i2, 2);
        zzaVar.f(zzhtVar.f());
        zzid zzidVar = (zzid) zzhtVar;
        zzaVar.u(zzidVar.m(), zzidVar.f(), zzidVar.f31193e);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void B(List list, int i2, boolean z) throws zzii.zzb {
        zzii zziiVar = this.f31202a;
        if (!z) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                long jLongValue = ((Long) list.get(i3)).longValue();
                zziiVar.getClass();
                zzii.zza zzaVar = (zzii.zza) zziiVar;
                zzaVar.c(i2, 0);
                zzaVar.d((jLongValue >> 63) ^ (jLongValue << 1));
            }
            return;
        }
        zziiVar.c(i2, 2);
        int iM = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long jLongValue2 = ((Long) list.get(i4)).longValue();
            iM += zzii.m((jLongValue2 >> 63) ^ (jLongValue2 << 1));
        }
        zziiVar.f(iM);
        for (int i5 = 0; i5 < list.size(); i5++) {
            long jLongValue3 = ((Long) list.get(i5)).longValue();
            zziiVar.d((jLongValue3 >> 63) ^ (jLongValue3 << 1));
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void C(int i2, String str) throws zzii.zzb {
        zzii.zza zzaVar = (zzii.zza) this.f31202a;
        zzaVar.c(i2, 2);
        int i3 = zzaVar.f31200e;
        byte[] bArr = zzaVar.d;
        int i4 = zzaVar.f31201f;
        try {
            int iR = zzii.r(str.length() * 3);
            int iR2 = zzii.r(str.length());
            if (iR2 != iR) {
                zzaVar.f(zzmd.a(str));
                int i5 = zzaVar.f31201f;
                zzaVar.f31201f = zzmd.f31295a.b(str, bArr, i5, i3 - i5);
                return;
            }
            int i6 = i4 + iR2;
            zzaVar.f31201f = i6;
            int iB = zzmd.f31295a.b(str, bArr, i6, i3 - i6);
            zzaVar.f31201f = i4;
            zzaVar.f((iB - i4) - iR2);
            zzaVar.f31201f = iB;
        } catch (zzmg e2) {
            zzaVar.f31201f = i4;
            zzii.f31197b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e2);
            byte[] bytes = str.getBytes(zzjf.f31225a);
            try {
                zzaVar.f(bytes.length);
                zzaVar.u(0, bytes.length, bytes);
            } catch (zzii.zzb e3) {
                throw e3;
            } catch (IndexOutOfBoundsException e4) {
                throw new zzii.zzb(e4);
            }
        } catch (IndexOutOfBoundsException e5) {
            throw new zzii.zzb(e5);
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void D(List list, int i2, boolean z) throws zzii.zzb {
        zzii zziiVar = this.f31202a;
        if (!z) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue = ((Integer) list.get(i3)).intValue();
                zziiVar.getClass();
                zzii.zza zzaVar = (zzii.zza) zziiVar;
                zzaVar.c(i2, 0);
                zzaVar.f((iIntValue >> 31) ^ (iIntValue << 1));
            }
            return;
        }
        zziiVar.c(i2, 2);
        int iR = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int iIntValue2 = ((Integer) list.get(i4)).intValue();
            iR += zzii.r((iIntValue2 >> 31) ^ (iIntValue2 << 1));
        }
        zziiVar.f(iR);
        for (int i5 = 0; i5 < list.size(); i5++) {
            int iIntValue3 = ((Integer) list.get(i5)).intValue();
            zziiVar.f((iIntValue3 >> 31) ^ (iIntValue3 << 1));
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void E(float f2, int i2) throws zzii.zzb {
        zzii zziiVar = this.f31202a;
        zziiVar.getClass();
        int iFloatToRawIntBits = Float.floatToRawIntBits(f2);
        zzii.zza zzaVar = (zzii.zza) zziiVar;
        zzaVar.c(i2, 5);
        zzaVar.j(iFloatToRawIntBits);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void F(List list, int i2, boolean z) throws zzii.zzb {
        int i3 = 0;
        zzii zziiVar = this.f31202a;
        if (!z) {
            while (i3 < list.size()) {
                long jLongValue = ((Long) list.get(i3)).longValue();
                zzii.zza zzaVar = (zzii.zza) zziiVar;
                zzaVar.c(i2, 1);
                zzaVar.i(jLongValue);
                i3++;
            }
            return;
        }
        zziiVar.c(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Long) list.get(i5)).getClass();
            Logger logger = zzii.f31197b;
            i4 += 8;
        }
        zziiVar.f(i4);
        while (i3 < list.size()) {
            zziiVar.i(((Long) list.get(i3)).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void G(List list, int i2, boolean z) throws zzii.zzb {
        int i3 = 0;
        zzii zziiVar = this.f31202a;
        if (!z) {
            while (i3 < list.size()) {
                int iIntValue = ((Integer) list.get(i3)).intValue();
                zzii.zza zzaVar = (zzii.zza) zziiVar;
                zzaVar.c(i2, 5);
                zzaVar.j(iIntValue);
                i3++;
            }
            return;
        }
        zziiVar.c(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Integer) list.get(i5)).getClass();
            Logger logger = zzii.f31197b;
            i4 += 4;
        }
        zziiVar.f(i4);
        while (i3 < list.size()) {
            zziiVar.j(((Integer) list.get(i3)).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void H(int i2, List list, zzlc zzlcVar) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            L(i2, list.get(i3), zzlcVar);
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void I(int i2, Object obj, zzlc zzlcVar) throws zzii.zzb {
        Object obj2 = (zzkk) obj;
        zzii.zza zzaVar = (zzii.zza) this.f31202a;
        zzaVar.c(i2, 2);
        zzhf zzhfVar = (zzhf) obj2;
        int iH = zzhfVar.h();
        if (iH == -1) {
            iH = zzlcVar.c(zzhfVar);
            zzhfVar.f(iH);
        }
        zzaVar.f(iH);
        zzlcVar.d(obj2, zzaVar.f31199a);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void J(double d, int i2) throws zzii.zzb {
        zzii zziiVar = this.f31202a;
        zziiVar.getClass();
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d);
        zzii.zza zzaVar = (zzii.zza) zziiVar;
        zzaVar.c(i2, 1);
        zzaVar.i(jDoubleToRawLongBits);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void K(List list, int i2, boolean z) throws zzii.zzb {
        zzii zziiVar = this.f31202a;
        if (!z) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue = ((Integer) list.get(i3)).intValue();
                zzii.zza zzaVar = (zzii.zza) zziiVar;
                zzaVar.c(i2, 0);
                zzaVar.f(iIntValue);
            }
            return;
        }
        zziiVar.c(i2, 2);
        int iR = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iR += zzii.r(((Integer) list.get(i4)).intValue());
        }
        zziiVar.f(iR);
        for (int i5 = 0; i5 < list.size(); i5++) {
            zziiVar.f(((Integer) list.get(i5)).intValue());
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void L(int i2, Object obj, zzlc zzlcVar) {
        zzii zziiVar = this.f31202a;
        zziiVar.c(i2, 3);
        zzlcVar.d((zzkk) obj, zziiVar.f31199a);
        zziiVar.c(i2, 4);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void M(int i2, List list, zzlc zzlcVar) throws zzii.zzb {
        for (int i3 = 0; i3 < list.size(); i3++) {
            I(i2, list.get(i3), zzlcVar);
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void a(int i2, boolean z) throws zzii.zzb {
        zzii.zza zzaVar = (zzii.zza) this.f31202a;
        zzaVar.c(i2, 0);
        zzaVar.a(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void b(List list, int i2, boolean z) throws zzii.zzb {
        zzii zziiVar = this.f31202a;
        if (!z) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                boolean zBooleanValue = ((Boolean) list.get(i3)).booleanValue();
                zzii.zza zzaVar = (zzii.zza) zziiVar;
                zzaVar.c(i2, 0);
                zzaVar.a(zBooleanValue ? (byte) 1 : (byte) 0);
            }
            return;
        }
        zziiVar.c(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Boolean) list.get(i5)).getClass();
            Logger logger = zzii.f31197b;
            i4++;
        }
        zziiVar.f(i4);
        for (int i6 = 0; i6 < list.size(); i6++) {
            zziiVar.a(((Boolean) list.get(i6)).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void c(int i2, long j2) throws zzii.zzb {
        zzii.zza zzaVar = (zzii.zza) this.f31202a;
        zzaVar.c(i2, 1);
        zzaVar.i(j2);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void d(int i2, int i3) throws zzii.zzb {
        zzii.zza zzaVar = (zzii.zza) this.f31202a;
        zzaVar.c(i2, 0);
        zzaVar.b(i3);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void e(int i2) {
        this.f31202a.c(i2, 3);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void f(List list, int i2, boolean z) throws zzii.zzb {
        zzii zziiVar = this.f31202a;
        if (!z) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue = ((Integer) list.get(i3)).intValue();
                zzii.zza zzaVar = (zzii.zza) zziiVar;
                zzaVar.c(i2, 0);
                zzaVar.b(iIntValue);
            }
            return;
        }
        zziiVar.c(i2, 2);
        int iN = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iN += zzii.n(((Integer) list.get(i4)).intValue());
        }
        zziiVar.f(iN);
        for (int i5 = 0; i5 < list.size(); i5++) {
            zziiVar.b(((Integer) list.get(i5)).intValue());
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void g(int i2) {
        this.f31202a.c(i2, 4);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void h(int i2, int i3) throws zzii.zzb {
        zzii.zza zzaVar = (zzii.zza) this.f31202a;
        zzaVar.c(i2, 0);
        zzaVar.b(i3);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void i(int i2, long j2) throws zzii.zzb {
        zzii.zza zzaVar = (zzii.zza) this.f31202a;
        zzaVar.c(i2, 0);
        zzaVar.d(j2);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void j(int i2, Object obj) throws zzii.zzb {
        boolean z = obj instanceof zzht;
        zzii zziiVar = this.f31202a;
        if (!z) {
            zzkk zzkkVar = (zzkk) obj;
            zzii.zza zzaVar = (zzii.zza) zziiVar;
            zzaVar.c(1, 3);
            zzaVar.c(2, 0);
            zzaVar.f(i2);
            zzaVar.c(3, 2);
            zzaVar.f(zzkkVar.L());
            zzkkVar.c(zzaVar);
            zzaVar.c(1, 4);
            return;
        }
        zzht zzhtVar = (zzht) obj;
        zzii.zza zzaVar2 = (zzii.zza) zziiVar;
        zzaVar2.c(1, 3);
        zzaVar2.c(2, 0);
        zzaVar2.f(i2);
        zzaVar2.c(3, 2);
        zzaVar2.f(zzhtVar.f());
        zzid zzidVar = (zzid) zzhtVar;
        zzaVar2.u(zzidVar.m(), zzidVar.f(), zzidVar.f31193e);
        zzaVar2.c(1, 4);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void k(List list, int i2, boolean z) throws zzii.zzb {
        int i3 = 0;
        zzii zziiVar = this.f31202a;
        if (!z) {
            while (i3 < list.size()) {
                double dDoubleValue = ((Double) list.get(i3)).doubleValue();
                zziiVar.getClass();
                long jDoubleToRawLongBits = Double.doubleToRawLongBits(dDoubleValue);
                zzii.zza zzaVar = (zzii.zza) zziiVar;
                zzaVar.c(i2, 1);
                zzaVar.i(jDoubleToRawLongBits);
                i3++;
            }
            return;
        }
        zziiVar.c(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Double) list.get(i5)).getClass();
            Logger logger = zzii.f31197b;
            i4 += 8;
        }
        zziiVar.f(i4);
        while (i3 < list.size()) {
            zziiVar.i(Double.doubleToRawLongBits(((Double) list.get(i3)).doubleValue()));
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void l(int i2, int i3) throws zzii.zzb {
        zzii.zza zzaVar = (zzii.zza) this.f31202a;
        zzaVar.c(i2, 5);
        zzaVar.j(i3);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void m(List list, int i2, boolean z) throws zzii.zzb {
        int i3 = 0;
        zzii zziiVar = this.f31202a;
        if (!z) {
            while (i3 < list.size()) {
                float fFloatValue = ((Float) list.get(i3)).floatValue();
                zziiVar.getClass();
                int iFloatToRawIntBits = Float.floatToRawIntBits(fFloatValue);
                zzii.zza zzaVar = (zzii.zza) zziiVar;
                zzaVar.c(i2, 5);
                zzaVar.j(iFloatToRawIntBits);
                i3++;
            }
            return;
        }
        zziiVar.c(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Float) list.get(i5)).getClass();
            Logger logger = zzii.f31197b;
            i4 += 4;
        }
        zziiVar.f(i4);
        while (i3 < list.size()) {
            zziiVar.j(Float.floatToRawIntBits(((Float) list.get(i3)).floatValue()));
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void n(int i2, long j2) throws zzii.zzb {
        zzii.zza zzaVar = (zzii.zza) this.f31202a;
        zzaVar.c(i2, 0);
        zzaVar.d(j2);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void o(int i2, int i3) throws zzii.zzb {
        zzii zziiVar = this.f31202a;
        zziiVar.getClass();
        zzii.zza zzaVar = (zzii.zza) zziiVar;
        zzaVar.c(i2, 0);
        zzaVar.f((i3 >> 31) ^ (i3 << 1));
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void p(List list, int i2, boolean z) throws zzii.zzb {
        int i3 = 0;
        zzii zziiVar = this.f31202a;
        if (!z) {
            while (i3 < list.size()) {
                long jLongValue = ((Long) list.get(i3)).longValue();
                zzii.zza zzaVar = (zzii.zza) zziiVar;
                zzaVar.c(i2, 1);
                zzaVar.i(jLongValue);
                i3++;
            }
            return;
        }
        zziiVar.c(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Long) list.get(i5)).getClass();
            Logger logger = zzii.f31197b;
            i4 += 8;
        }
        zziiVar.f(i4);
        while (i3 < list.size()) {
            zziiVar.i(((Long) list.get(i3)).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void q(List list, int i2, boolean z) throws zzii.zzb {
        zzii zziiVar = this.f31202a;
        if (!z) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                long jLongValue = ((Long) list.get(i3)).longValue();
                zzii.zza zzaVar = (zzii.zza) zziiVar;
                zzaVar.c(i2, 0);
                zzaVar.d(jLongValue);
            }
            return;
        }
        zziiVar.c(i2, 2);
        int iM = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iM += zzii.m(((Long) list.get(i4)).longValue());
        }
        zziiVar.f(iM);
        for (int i5 = 0; i5 < list.size(); i5++) {
            zziiVar.d(((Long) list.get(i5)).longValue());
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void r(List list, int i2, boolean z) throws zzii.zzb {
        int i3 = 0;
        zzii zziiVar = this.f31202a;
        if (!z) {
            while (i3 < list.size()) {
                int iIntValue = ((Integer) list.get(i3)).intValue();
                zzii.zza zzaVar = (zzii.zza) zziiVar;
                zzaVar.c(i2, 5);
                zzaVar.j(iIntValue);
                i3++;
            }
            return;
        }
        zziiVar.c(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((Integer) list.get(i5)).getClass();
            Logger logger = zzii.f31197b;
            i4 += 4;
        }
        zziiVar.f(i4);
        while (i3 < list.size()) {
            zziiVar.j(((Integer) list.get(i3)).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void s(int i2, List list) throws zzii.zzb {
        for (int i3 = 0; i3 < list.size(); i3++) {
            zzht zzhtVar = (zzht) list.get(i3);
            zzii.zza zzaVar = (zzii.zza) this.f31202a;
            zzaVar.c(i2, 2);
            zzaVar.f(zzhtVar.f());
            zzid zzidVar = (zzid) zzhtVar;
            zzaVar.u(zzidVar.m(), zzidVar.f(), zzidVar.f31193e);
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void t(int i2, int i3) throws zzii.zzb {
        zzii.zza zzaVar = (zzii.zza) this.f31202a;
        zzaVar.c(i2, 5);
        zzaVar.j(i3);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void u(List list, int i2, boolean z) throws zzii.zzb {
        zzii zziiVar = this.f31202a;
        if (!z) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                long jLongValue = ((Long) list.get(i3)).longValue();
                zzii.zza zzaVar = (zzii.zza) zziiVar;
                zzaVar.c(i2, 0);
                zzaVar.d(jLongValue);
            }
            return;
        }
        zziiVar.c(i2, 2);
        int iM = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iM += zzii.m(((Long) list.get(i4)).longValue());
        }
        zziiVar.f(iM);
        for (int i5 = 0; i5 < list.size(); i5++) {
            zziiVar.d(((Long) list.get(i5)).longValue());
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void v(int i2, long j2) throws zzii.zzb {
        zzii.zza zzaVar = (zzii.zza) this.f31202a;
        zzaVar.c(i2, 1);
        zzaVar.i(j2);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void w(List list, int i2, boolean z) throws zzii.zzb {
        zzii zziiVar = this.f31202a;
        if (!z) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue = ((Integer) list.get(i3)).intValue();
                zzii.zza zzaVar = (zzii.zza) zziiVar;
                zzaVar.c(i2, 0);
                zzaVar.b(iIntValue);
            }
            return;
        }
        zziiVar.c(i2, 2);
        int iN = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iN += zzii.n(((Integer) list.get(i4)).intValue());
        }
        zziiVar.f(iN);
        for (int i5 = 0; i5 < list.size(); i5++) {
            zziiVar.b(((Integer) list.get(i5)).intValue());
        }
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void x(int i2, int i3) throws zzii.zzb {
        zzii.zza zzaVar = (zzii.zza) this.f31202a;
        zzaVar.c(i2, 0);
        zzaVar.f(i3);
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void y(int i2, long j2) throws zzii.zzb {
        zzii zziiVar = this.f31202a;
        zziiVar.getClass();
        zzii.zza zzaVar = (zzii.zza) zziiVar;
        zzaVar.c(i2, 0);
        zzaVar.d((j2 >> 63) ^ (j2 << 1));
    }

    @Override // com.google.android.gms.internal.vision.zzmr
    public final void z(int i2, List list) throws zzii.zzb {
        boolean z = list instanceof zzjv;
        zzii zziiVar = this.f31202a;
        if (!z) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                String str = (String) list.get(i3);
                zzii.zza zzaVar = (zzii.zza) zziiVar;
                zzaVar.c(i2, 2);
                int i4 = zzaVar.f31200e;
                byte[] bArr = zzaVar.d;
                int i5 = zzaVar.f31201f;
                try {
                    int iR = zzii.r(str.length() * 3);
                    int iR2 = zzii.r(str.length());
                    if (iR2 == iR) {
                        int i6 = i5 + iR2;
                        zzaVar.f31201f = i6;
                        int iB = zzmd.f31295a.b(str, bArr, i6, i4 - i6);
                        zzaVar.f31201f = i5;
                        zzaVar.f((iB - i5) - iR2);
                        zzaVar.f31201f = iB;
                    } else {
                        zzaVar.f(zzmd.a(str));
                        int i7 = zzaVar.f31201f;
                        zzaVar.f31201f = zzmd.f31295a.b(str, bArr, i7, i4 - i7);
                    }
                } catch (zzmg e2) {
                    zzaVar.f31201f = i5;
                    zzii.f31197b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e2);
                    byte[] bytes = str.getBytes(zzjf.f31225a);
                    try {
                        zzaVar.f(bytes.length);
                        zzaVar.u(0, bytes.length, bytes);
                    } catch (zzii.zzb e3) {
                        throw e3;
                    } catch (IndexOutOfBoundsException e4) {
                        throw new zzii.zzb(e4);
                    }
                } catch (IndexOutOfBoundsException e5) {
                    throw new zzii.zzb(e5);
                }
            }
            return;
        }
        zzjv zzjvVar = (zzjv) list;
        for (int i8 = 0; i8 < list.size(); i8++) {
            Object objG = zzjvVar.g(i8);
            if (objG instanceof String) {
                String str2 = (String) objG;
                zzii.zza zzaVar2 = (zzii.zza) zziiVar;
                zzaVar2.c(i2, 2);
                int i9 = zzaVar2.f31200e;
                byte[] bArr2 = zzaVar2.d;
                int i10 = zzaVar2.f31201f;
                try {
                    int iR3 = zzii.r(str2.length() * 3);
                    int iR4 = zzii.r(str2.length());
                    if (iR4 == iR3) {
                        int i11 = i10 + iR4;
                        zzaVar2.f31201f = i11;
                        int iB2 = zzmd.f31295a.b(str2, bArr2, i11, i9 - i11);
                        zzaVar2.f31201f = i10;
                        zzaVar2.f((iB2 - i10) - iR4);
                        zzaVar2.f31201f = iB2;
                    } else {
                        zzaVar2.f(zzmd.a(str2));
                        int i12 = zzaVar2.f31201f;
                        zzaVar2.f31201f = zzmd.f31295a.b(str2, bArr2, i12, i9 - i12);
                    }
                } catch (zzmg e6) {
                    zzaVar2.f31201f = i10;
                    zzii.f31197b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e6);
                    byte[] bytes2 = str2.getBytes(zzjf.f31225a);
                    try {
                        zzaVar2.f(bytes2.length);
                        zzaVar2.u(0, bytes2.length, bytes2);
                    } catch (zzii.zzb e7) {
                        throw e7;
                    } catch (IndexOutOfBoundsException e8) {
                        throw new zzii.zzb(e8);
                    }
                } catch (IndexOutOfBoundsException e9) {
                    throw new zzii.zzb(e9);
                }
            } else {
                zzht zzhtVar = (zzht) objG;
                zzii.zza zzaVar3 = (zzii.zza) zziiVar;
                zzaVar3.c(i2, 2);
                zzaVar3.f(zzhtVar.f());
                zzid zzidVar = (zzid) zzhtVar;
                zzaVar3.u(zzidVar.m(), zzidVar.f(), zzidVar.f31193e);
            }
        }
    }
}
