package com.google.android.gms.internal.measurement;

import android.os.Build;
import com.github.druk.dnssd.DNSSDException;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import defpackage.z81;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes2.dex */
public final class zzid extends zzadu implements zzafd {
    private static final zzid zzaw;
    private static volatile zzafj zzax;
    private long zzA;
    private int zzB;
    private String zzC;
    private String zzD;
    private boolean zzE;
    private zzaef zzF;
    private String zzG;
    private int zzH;
    private int zzI;
    private int zzJ;
    private String zzK;
    private long zzL;
    private long zzM;
    private String zzN;
    private String zzO;
    private int zzP;
    private String zzQ;
    private zzig zzR;
    private zzaeb zzS;
    private long zzT;
    private long zzU;
    private String zzV;
    private String zzW;
    private int zzX;
    private boolean zzY;
    private String zzZ;
    private boolean zzaa;
    private zzhy zzab;
    private String zzac;
    private zzaef zzad;
    private String zzae;
    private long zzaf;
    private boolean zzag;
    private String zzah;
    private boolean zzai;
    private String zzaj;
    private int zzak;
    private String zzal;
    private zzhe zzam;
    private int zzan;
    private zzha zzao;
    private String zzap;
    private zzis zzaq;
    private long zzar;
    private String zzas;
    private zzho zzat;
    private String zzau;
    private zzaef zzav;
    private int zzb;
    private int zze;
    private int zzf;
    private zzaef zzg;
    private zzaef zzh;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private String zzn;
    private String zzo;
    private String zzp;
    private String zzq;
    private int zzr;
    private String zzs;
    private String zzt;
    private String zzu;
    private long zzv;
    private long zzw;
    private String zzx;
    private boolean zzy;
    private String zzz;

    static {
        zzid zzidVar = new zzid();
        zzaw = zzidVar;
        zzadu.v(zzid.class, zzidVar);
    }

    public zzid() {
        zzafm zzafmVar = zzafm.f30452f;
        this.zzg = zzafmVar;
        this.zzh = zzafmVar;
        this.zzn = "";
        this.zzo = "";
        this.zzp = "";
        this.zzq = "";
        this.zzs = "";
        this.zzt = "";
        this.zzu = "";
        this.zzx = "";
        this.zzz = "";
        this.zzC = "";
        this.zzD = "";
        this.zzF = zzafmVar;
        this.zzG = "";
        this.zzK = "";
        this.zzN = "";
        this.zzO = "";
        this.zzQ = "";
        this.zzS = zzadv.f30409f;
        this.zzV = "";
        this.zzW = "";
        this.zzZ = "";
        this.zzac = "";
        this.zzad = zzafmVar;
        this.zzae = "";
        this.zzah = "";
        this.zzaj = "";
        this.zzal = "";
        this.zzap = "";
        this.zzas = "";
        this.zzau = "";
        this.zzav = zzafmVar;
    }

    public static zzic f0() {
        return (zzic) zzaw.q();
    }

    public static zzic g0(zzid zzidVar) {
        zzadp zzadpVarQ = zzaw.q();
        zzadpVarQ.w(zzidVar);
        return (zzic) zzadpVarQ;
    }

    public final String A() {
        return this.zzt;
    }

    public final boolean A0() {
        return (this.zze & 2) != 0;
    }

    public final /* synthetic */ void A1() {
        String str = Build.MODEL;
        str.getClass();
        this.zzb |= 256;
        this.zzp = str;
    }

    public final String B() {
        return this.zzu;
    }

    public final int B0() {
        return this.zzP;
    }

    public final /* synthetic */ void B1() {
        this.zzb &= -257;
        this.zzp = zzaw.zzp;
    }

    public final boolean C() {
        return (this.zzb & 16384) != 0;
    }

    public final boolean C0() {
        return (this.zze & 16) != 0;
    }

    public final /* synthetic */ void C1(String str) {
        str.getClass();
        this.zzb |= 512;
        this.zzq = str;
    }

    public final long D() {
        return this.zzv;
    }

    public final long D0() {
        return this.zzT;
    }

    public final /* synthetic */ void D1(int i2) {
        this.zzb |= 1024;
        this.zzr = i2;
    }

    public final boolean E() {
        return (this.zzb & 32768) != 0;
    }

    public final boolean E0() {
        return (this.zze & 128) != 0;
    }

    public final /* synthetic */ void E1(String str) {
        str.getClass();
        this.zzb |= 2048;
        this.zzs = str;
    }

    public final long F() {
        return this.zzw;
    }

    public final String F0() {
        return this.zzW;
    }

    public final /* synthetic */ void F1(String str) {
        str.getClass();
        this.zzb |= 4096;
        this.zzt = str;
    }

    public final String G() {
        return this.zzx;
    }

    public final boolean G0() {
        return (this.zze & 8192) != 0;
    }

    public final /* synthetic */ void G1(String str) {
        str.getClass();
        this.zzb |= 8192;
        this.zzu = str;
    }

    public final boolean H() {
        return (this.zzb & 131072) != 0;
    }

    public final String H0() {
        return this.zzac;
    }

    public final /* synthetic */ void H1(long j2) {
        this.zzb |= 16384;
        this.zzv = j2;
    }

    public final boolean I() {
        return this.zzy;
    }

    public final boolean I0() {
        return (this.zze & 32768) != 0;
    }

    public final /* synthetic */ void I1() {
        this.zzb |= 32768;
        this.zzw = 161000L;
    }

    public final String J() {
        return this.zzz;
    }

    public final long J0() {
        return this.zzaf;
    }

    public final /* synthetic */ void J1(String str) {
        str.getClass();
        this.zzb |= 65536;
        this.zzx = str;
    }

    public final boolean K() {
        return (this.zzb & 524288) != 0;
    }

    public final boolean K0() {
        return this.zzag;
    }

    public final /* synthetic */ void K1() {
        this.zzb &= DNSSDException.UNKNOWN;
        this.zzx = zzaw.zzx;
    }

    public final long L() {
        return this.zzA;
    }

    public final boolean L0() {
        return (this.zze & 131072) != 0;
    }

    public final /* synthetic */ void L1(boolean z) {
        this.zzb |= 131072;
        this.zzy = z;
    }

    public final boolean M() {
        return (this.zzb & 1048576) != 0;
    }

    public final String M0() {
        return this.zzah;
    }

    public final /* synthetic */ void M1() {
        this.zzb &= -131073;
        this.zzy = false;
    }

    public final int N() {
        return this.zzB;
    }

    public final boolean N0() {
        return (this.zze & 262144) != 0;
    }

    public final /* synthetic */ void N1(String str) {
        this.zzb |= 262144;
        this.zzz = str;
    }

    public final String O() {
        return this.zzC;
    }

    public final boolean O0() {
        return this.zzai;
    }

    public final /* synthetic */ void O1() {
        this.zzb &= -262145;
        this.zzz = zzaw.zzz;
    }

    public final String P() {
        return this.zzD;
    }

    public final boolean P0() {
        return (this.zze & 524288) != 0;
    }

    public final /* synthetic */ void P1(long j2) {
        this.zzb |= 524288;
        this.zzA = j2;
    }

    public final boolean Q() {
        return (this.zzb & 8388608) != 0;
    }

    public final String Q0() {
        return this.zzaj;
    }

    public final /* synthetic */ void Q1(int i2) {
        this.zzb |= 1048576;
        this.zzB = i2;
    }

    public final boolean R() {
        return this.zzE;
    }

    public final int R0() {
        return this.zzak;
    }

    public final /* synthetic */ void R1(String str) {
        this.zzb |= PKIFailureInfo.badSenderNonce;
        this.zzC = str;
    }

    public final zzaef S() {
        return this.zzF;
    }

    public final boolean S0() {
        return (this.zze & 4194304) != 0;
    }

    public final /* synthetic */ void S1() {
        this.zzb &= -2097153;
        this.zzC = zzaw.zzC;
    }

    public final String T() {
        return this.zzG;
    }

    public final zzhe T0() {
        zzhe zzheVar = this.zzam;
        return zzheVar == null ? zzhe.I() : zzheVar;
    }

    public final /* synthetic */ void T1(String str) {
        str.getClass();
        this.zzb |= 4194304;
        this.zzD = str;
    }

    public final boolean U() {
        return (this.zzb & 33554432) != 0;
    }

    public final boolean U0() {
        return (this.zze & 8388608) != 0;
    }

    public final /* synthetic */ void U1() {
        this.zzb |= 8388608;
        this.zzE = false;
    }

    public final int V() {
        return this.zzH;
    }

    public final int V0() {
        return this.zzan;
    }

    public final void V1(ArrayList arrayList) {
        zzaef zzaefVar = this.zzF;
        if (!zzaefVar.d0()) {
            this.zzF = z81.d(zzaefVar);
        }
        zzacb.k(arrayList, this.zzF);
    }

    public final boolean W() {
        return (this.zzb & PKIFailureInfo.duplicateCertReq) != 0;
    }

    public final boolean W0() {
        return (this.zze & 16777216) != 0;
    }

    public final void W1() {
        this.zzF = zzafm.f30452f;
    }

    public final long X() {
        return this.zzL;
    }

    public final zzha X0() {
        zzha zzhaVar = this.zzao;
        return zzhaVar == null ? zzha.g0() : zzhaVar;
    }

    public final /* synthetic */ void X1(String str) {
        this.zzb |= 16777216;
        this.zzG = str;
    }

    public final boolean Y() {
        return (this.zzb & Integer.MIN_VALUE) != 0;
    }

    public final boolean Y0() {
        return (this.zze & 67108864) != 0;
    }

    public final /* synthetic */ void Y1(int i2) {
        this.zzb |= 33554432;
        this.zzH = i2;
    }

    public final String Z() {
        return this.zzN;
    }

    public final zzis Z0() {
        zzis zzisVar = this.zzaq;
        return zzisVar == null ? zzis.C() : zzisVar;
    }

    public final /* synthetic */ void Z1() {
        this.zzb &= -268435457;
        this.zzK = zzaw.zzK;
    }

    public final boolean a0() {
        return (this.zzb & 1) != 0;
    }

    public final int a1() {
        return this.zzf;
    }

    public final List a2() {
        return this.zzg;
    }

    public final boolean b0() {
        return (this.zze & 134217728) != 0;
    }

    public final /* synthetic */ void b1(long j2) {
        this.zzb |= PKIFailureInfo.duplicateCertReq;
        this.zzL = j2;
    }

    public final void b2() {
        zzaef zzaefVar = this.zzg;
        if (zzaefVar.d0()) {
            return;
        }
        this.zzg = z81.d(zzaefVar);
    }

    public final long c0() {
        return this.zzar;
    }

    public final /* synthetic */ void c1(String str) {
        str.getClass();
        this.zzb |= Integer.MIN_VALUE;
        this.zzN = str;
    }

    public final void c2() {
        zzaef zzaefVar = this.zzh;
        if (zzaefVar.d0()) {
            return;
        }
        this.zzh = z81.d(zzaefVar);
    }

    public final boolean d0() {
        return (this.zze & PKIFailureInfo.duplicateCertReq) != 0;
    }

    public final /* synthetic */ void d1() {
        this.zzb &= Integer.MAX_VALUE;
        this.zzN = zzaw.zzN;
    }

    public final void d2(List list) {
        zzaef zzaefVar = this.zzav;
        if (!zzaefVar.d0()) {
            this.zzav = z81.d(zzaefVar);
        }
        zzacb.k(list, this.zzav);
    }

    public final zzho e0() {
        zzho zzhoVar = this.zzat;
        return zzhoVar == null ? zzho.C() : zzhoVar;
    }

    public final /* synthetic */ void e1(int i2) {
        this.zze |= 2;
        this.zzP = i2;
    }

    public final int e2() {
        return this.zzg.size();
    }

    public final /* synthetic */ void f1(List list) {
        zzaeb zzaebVar = this.zzS;
        if (!zzaebVar.d0()) {
            int size = zzaebVar.size();
            this.zzS = zzaebVar.d(size + size);
        }
        zzacb.k(list, this.zzS);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzhs f2(int i2) {
        return (zzhs) this.zzg.get(i2);
    }

    public final /* synthetic */ void g1(long j2) {
        this.zze |= 16;
        this.zzT = j2;
    }

    public final zzaef g2() {
        return this.zzh;
    }

    public final /* synthetic */ void h0() {
        this.zzb |= 1;
        this.zzf = 1;
    }

    public final /* synthetic */ void h1(long j2) {
        this.zze |= 32;
        this.zzU = j2;
    }

    public final int h2() {
        return this.zzh.size();
    }

    public final /* synthetic */ void i0(int i2, zzhs zzhsVar) {
        b2();
        this.zzg.set(i2, zzhsVar);
    }

    public final /* synthetic */ void i1(String str) {
        this.zze |= 128;
        this.zzW = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zziu i2(int i2) {
        return (zziu) this.zzh.get(i2);
    }

    public final /* synthetic */ void j0(zzhs zzhsVar) {
        b2();
        this.zzg.add(zzhsVar);
    }

    public final /* synthetic */ void j1(String str) {
        str.getClass();
        this.zze |= 8192;
        this.zzac = str;
    }

    public final boolean j2() {
        return (this.zzb & 2) != 0;
    }

    public final /* synthetic */ void k0(Iterable iterable) {
        b2();
        zzacb.k(iterable, this.zzg);
    }

    public final /* synthetic */ void k1() {
        this.zze &= -8193;
        this.zzac = zzaw.zzac;
    }

    public final long k2() {
        return this.zzi;
    }

    public final void l0() {
        this.zzg = zzafm.f30452f;
    }

    public final void l1(Set set) {
        zzaef zzaefVar = this.zzad;
        if (!zzaefVar.d0()) {
            this.zzad = z81.d(zzaefVar);
        }
        zzacb.k(set, this.zzad);
    }

    public final boolean l2() {
        return (this.zzb & 4) != 0;
    }

    public final /* synthetic */ void m0(int i2) {
        b2();
        this.zzg.remove(i2);
    }

    public final /* synthetic */ void m1(String str) {
        str.getClass();
        this.zze |= 16384;
        this.zzae = str;
    }

    public final long m2() {
        return this.zzj;
    }

    public final /* synthetic */ void n0(int i2, zziu zziuVar) {
        c2();
        this.zzh.set(i2, zziuVar);
    }

    public final /* synthetic */ void n1(long j2) {
        this.zze |= 32768;
        this.zzaf = j2;
    }

    public final boolean n2() {
        return (this.zzb & 8) != 0;
    }

    public final /* synthetic */ void o0(zziu zziuVar) {
        c2();
        this.zzh.add(zziuVar);
    }

    public final /* synthetic */ void o1(boolean z) {
        this.zze |= 65536;
        this.zzag = z;
    }

    public final long o2() {
        return this.zzk;
    }

    public final /* synthetic */ void p0(int i2) {
        c2();
        this.zzh.remove(i2);
    }

    public final /* synthetic */ void p1(String str) {
        this.zze |= 131072;
        this.zzah = str;
    }

    public final boolean p2() {
        return (this.zzb & 16) != 0;
    }

    public final /* synthetic */ void q0(long j2) {
        this.zzb |= 2;
        this.zzi = j2;
    }

    public final /* synthetic */ void q1(boolean z) {
        this.zze |= 262144;
        this.zzai = z;
    }

    public final long q2() {
        return this.zzl;
    }

    public final /* synthetic */ void r0() {
        this.zzb &= -3;
        this.zzi = 0L;
    }

    public final /* synthetic */ void r1(String str) {
        str.getClass();
        this.zze |= 524288;
        this.zzaj = str;
    }

    public final boolean r2() {
        return (this.zzb & 32) != 0;
    }

    public final /* synthetic */ void s0(long j2) {
        this.zzb |= 4;
        this.zzj = j2;
    }

    public final /* synthetic */ void s1(int i2) {
        this.zze |= 1048576;
        this.zzak = i2;
    }

    public final long s2() {
        return this.zzm;
    }

    public final /* synthetic */ void t0(long j2) {
        this.zzb |= 8;
        this.zzk = j2;
    }

    public final /* synthetic */ void t1(zzhe zzheVar) {
        this.zzam = zzheVar;
        this.zze |= 4194304;
    }

    public final String t2() {
        return this.zzn;
    }

    public final /* synthetic */ void u0(long j2) {
        this.zzb |= 16;
        this.zzl = j2;
    }

    public final /* synthetic */ void u1(int i2) {
        this.zze |= 8388608;
        this.zzan = i2;
    }

    public final String u2() {
        return this.zzo;
    }

    public final /* synthetic */ void v0() {
        this.zzb &= -17;
        this.zzl = 0L;
    }

    public final /* synthetic */ void v1(zzha zzhaVar) {
        this.zzao = zzhaVar;
        this.zze |= 16777216;
    }

    public final String v2() {
        return this.zzp;
    }

    public final /* synthetic */ void w0(long j2) {
        this.zzb |= 32;
        this.zzm = j2;
    }

    public final /* synthetic */ void w1(zzis zzisVar) {
        this.zzaq = zzisVar;
        this.zze |= 67108864;
    }

    public final String w2() {
        return this.zzq;
    }

    public final /* synthetic */ void x0() {
        this.zzb &= -33;
        this.zzm = 0L;
    }

    public final /* synthetic */ void x1(long j2) {
        this.zze |= 134217728;
        this.zzar = j2;
    }

    public final boolean x2() {
        return (this.zzb & 1024) != 0;
    }

    public final /* synthetic */ void y0() {
        this.zzb |= 64;
        this.zzn = ReferenceApiV3ConstKt.OS_NAME;
    }

    public final /* synthetic */ void y1(zzho zzhoVar) {
        this.zzat = zzhoVar;
        this.zze |= PKIFailureInfo.duplicateCertReq;
    }

    public final int y2() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.measurement.zzadu
    public final Object z(int i2) {
        zzafj zzadqVar;
        int i3 = i2 - 1;
        if (i3 == 0) {
            return (byte) 1;
        }
        if (i3 == 2) {
            return new zzafn(zzaw, "\u0004E\u0000\u0002\u0001YE\u0000\u0006\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5᠌(7ဇ)9ဈ*:ဇ+;ဉ,?ဈ-@\u001aAဈ.Cဂ/Dဇ0Gဈ1Hဇ2Iဈ3Jင4Kဈ5Lဉ6Mင7Oဉ8Pဈ9Qဉ:Rဂ;Sဈ<Vဉ=Xဈ>Y\u001b", new Object[]{"zzb", "zze", "zzf", "zzg", zzhs.class, "zzh", zziu.class, "zzi", "zzj", "zzk", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzl", "zzE", "zzF", zzhg.class, "zzG", "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", "zzX", zzgw.f30632a, "zzY", "zzZ", "zzaa", "zzab", "zzac", "zzad", "zzae", "zzaf", "zzag", "zzah", "zzai", "zzaj", "zzak", "zzal", "zzam", "zzan", "zzao", "zzap", "zzaq", "zzar", "zzas", "zzat", "zzau", "zzav", zzfb.class});
        }
        if (i3 == 3) {
            return new zzid();
        }
        if (i3 == 4) {
            return new zzic(zzaw);
        }
        if (i3 == 5) {
            return zzaw;
        }
        if (i3 != 6) {
            throw null;
        }
        zzafj zzafjVar = zzax;
        if (zzafjVar != null) {
            return zzafjVar;
        }
        synchronized (zzid.class) {
            try {
                zzadqVar = zzax;
                if (zzadqVar == null) {
                    zzadqVar = new zzadq(zzaw);
                    zzax = zzadqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadqVar;
    }

    public final /* synthetic */ void z0(String str) {
        str.getClass();
        this.zzb |= 128;
        this.zzo = str;
    }

    public final /* synthetic */ void z1(String str) {
        str.getClass();
        this.zze |= 1073741824;
        this.zzau = str;
    }

    public final String z2() {
        return this.zzs;
    }
}
