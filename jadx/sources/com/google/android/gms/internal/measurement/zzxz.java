package com.google.android.gms.internal.measurement;

import defpackage.md;
import defpackage.r81;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzxz implements zzyi, zzzd {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f31078h = new String();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Level f31079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f31080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public zzxy f31081c;
    public zzyc d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public zzyq f31082e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public zzaaf f31083f;
    public Object[] g;

    public zzxz(Level level) {
        zzaab.f30298a.getClass();
        long nanos = TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
        this.f31081c = null;
        this.d = null;
        this.f31082e = null;
        this.f31083f = null;
        this.g = null;
        zzabr.a(level, "level");
        this.f31079a = level;
        this.f31080b = nanos;
    }

    @Override // com.google.android.gms.internal.measurement.zzyi
    public final zzyi P() {
        zzyc zzycVar = zzyc.f31087a;
        zzyb zzybVar = new zzyb();
        if (this.d == null) {
            this.d = zzybVar;
        }
        return (zzxq) this;
    }

    @Override // com.google.android.gms.internal.measurement.zzyi
    public final zzyi a(Throwable th) {
        zzyl zzylVar = zzxx.f31069a;
        zzabr.a(zzylVar, "metadata key");
        if (th != null) {
            g(zzylVar, th);
        }
        return (zzxq) this;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00fc  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18, types: [com.google.android.gms.internal.measurement.zzyq] */
    /* JADX WARN: Type inference failed for: r11v20, types: [com.google.android.gms.internal.measurement.zzyt] */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r18v0, types: [com.google.android.gms.internal.measurement.zzxz] */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14, types: [com.google.android.gms.internal.measurement.zzyq] */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16, types: [com.google.android.gms.internal.measurement.zzyq] */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v24 */
    @Override // com.google.android.gms.internal.measurement.zzyi
    public final void b(String str, Object[] objArr) {
        boolean z;
        zzxy zzxyVar;
        int iF;
        int i2;
        zzxk zzxkVar;
        ?? zzynVar;
        ?? r11;
        zzyq zzyqVar;
        if (this.d == null) {
            ((zzaaj.AnonymousClass1) zzaab.f30298a.a()).getClass();
            this.d = zzyc.f31087a;
        }
        zzyd zzyuVar = this.d;
        if (zzyuVar != zzyc.f31087a) {
            zzxy zzxyVar2 = this.f31081c;
            if (zzxyVar2 != null && zzxyVar2.f31077b > 0) {
                zzabr.a(zzyuVar, "logSiteKey");
                int i3 = zzxyVar2.f31077b;
                for (int i4 = 0; i4 < i3; i4++) {
                    if (zzxx.f31073f.equals(zzxyVar2.b(i4))) {
                        zzyuVar = new zzyu(zzyuVar, zzxyVar2.c(i4));
                    }
                }
            }
        } else {
            zzyuVar = null;
        }
        zzxo zzxoVar = (zzxo) this;
        zzzj zzzjVarF = zzxoVar.f();
        int iA = zzzjVarF.a();
        for (int i5 = 0; i5 < iA; i5++) {
            if (zzzjVarF.b(i5).f31089a == "eye3tag") {
                if (zzzjVarF.d(zzxx.f31069a) != null) {
                    break;
                }
                zzyl zzylVar = zzxx.f31075i;
                if (zzzjVarF.d(zzylVar) != null) {
                    break;
                }
                zzxoVar.g(zzylVar, zzyv.SMALL);
                break;
            }
        }
        zzxy zzxyVar3 = zzxoVar.f31081c;
        int i6 = -1;
        zzyq zzyqVar2 = zzyq.f31097a;
        if (zzxyVar3 != null) {
            if (zzyuVar != null) {
                int i7 = zzxn.d;
                if (zzxyVar3.d(zzxx.d) != null) {
                    r81.h();
                    return;
                }
                zzxy zzxyVar4 = zzxoVar.f31081c;
                zzyf zzyfVar = zzxk.d;
                Integer num = (Integer) zzxyVar4.d(zzxx.f31070b);
                if (num == null) {
                    zzynVar = 0;
                } else {
                    zzxkVar = (zzxk) zzxk.d.b(zzyuVar, zzxyVar4);
                    if (zzxkVar.f31065c.incrementAndGet() < num.intValue()) {
                        zzynVar = zzxkVar;
                        zzynVar = zzyqVar2;
                    }
                }
                zzynVar = zzxkVar;
                zzxy zzxyVar5 = zzxoVar.f31081c;
                zzyf zzyfVar2 = zzyt.d;
                Integer num2 = (Integer) zzxyVar5.d(zzxx.f31071c);
                if (num2 == null || num2.intValue() <= 0) {
                    r11 = 0;
                } else {
                    r11 = (zzyt) zzyt.d.b(zzyuVar, zzxyVar5);
                    int iNextInt = ((Random) zzyt.f31099e.get()).nextInt(num2.intValue());
                    AtomicInteger atomicInteger = r11.f31100c;
                    if ((iNextInt == 0 ? atomicInteger.incrementAndGet() : atomicInteger.get()) <= 0) {
                        r11 = zzyqVar2;
                    }
                }
                if (zzynVar == 0) {
                    zzynVar = r11;
                } else if (r11 != 0 && zzynVar != zzyqVar2 && r11 != (zzyqVar = zzyq.f31098b)) {
                    if (r11 == zzyqVar2 || zzynVar == zzyqVar) {
                        zzynVar = r11;
                    } else {
                        zzynVar = new zzyn(zzynVar, r11);
                    }
                }
                zzxoVar.f31082e = zzynVar;
                z = zzynVar != zzyqVar2;
            }
            zzxy zzxyVar6 = zzxoVar.f31081c;
            zzyl zzylVar2 = zzxx.f31075i;
            zzyv zzyvVar = (zzyv) zzxyVar6.d(zzylVar2);
            if (zzyvVar != null) {
                zzxy zzxyVar7 = zzxoVar.f31081c;
                if (zzxyVar7 != null && (iF = zzxyVar7.f(zzylVar2)) >= 0) {
                    int i8 = iF + iF;
                    int i9 = i8 + 2;
                    while (true) {
                        i2 = zzxyVar7.f31077b;
                        if (i9 >= i2 + i2) {
                            break;
                        }
                        Object obj = zzxyVar7.f31076a[i9];
                        if (!obj.equals(zzylVar2)) {
                            Object[] objArr2 = zzxyVar7.f31076a;
                            objArr2[i8] = obj;
                            objArr2[i8 + 1] = objArr2[i9 + 1];
                            i8 += 2;
                        }
                        i9 += 2;
                    }
                    zzxyVar7.f31077b = i2 - ((i9 - i8) >> 1);
                    while (i8 < i9) {
                        zzxyVar7.f31076a[i8] = null;
                        i8++;
                    }
                }
                zzzj zzzjVarF2 = zzxoVar.f();
                zzyl zzylVar3 = zzxx.f31069a;
                Throwable th = (Throwable) zzzjVarF2.d(zzylVar3);
                int iD0 = zzyvVar.d0();
                String[] strArr = zzabq.f30350a;
                if (iD0 <= 0 && iD0 != -1) {
                    md.n("invalid maximum depth: 0");
                    return;
                }
                StackTraceElement[] stackTraceElementArrG = zzabq.f30351b.g(iD0);
                zzyg zzygVar = new zzyg(zzyvVar.toString(), th);
                zzygVar.setStackTrace(stackTraceElementArrG);
                zzxoVar.g(zzylVar3, zzygVar);
            }
        }
        zzyq zzyqVar3 = this.f31082e;
        if (zzyqVar3 != null) {
            zzyp zzypVar = (zzyp) zzyp.f31094c.b(zzyuVar, this.f31081c);
            AtomicInteger atomicInteger2 = zzypVar.f31096b;
            AtomicBoolean atomicBoolean = zzypVar.f31095a;
            int iIncrementAndGet = atomicInteger2.incrementAndGet();
            if (zzyqVar3 != zzyqVar2 && atomicBoolean.compareAndSet(false, true)) {
                try {
                    zzyqVar3.a();
                    atomicBoolean.set(false);
                    atomicInteger2.addAndGet(-iIncrementAndGet);
                    i6 = (-1) + iIncrementAndGet;
                } catch (Throwable th2) {
                    atomicBoolean.set(false);
                    throw th2;
                }
            }
            if (z && i6 > 0 && (zzxyVar = this.f31081c) != null) {
                zzxyVar.e(zzxx.f31072e, Integer.valueOf(i6));
            }
            z &= i6 >= 0;
        }
        if (z) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            this.g = objArrCopyOf;
            for (int i10 = 0; i10 < objArrCopyOf.length; i10++) {
                Object obj2 = objArrCopyOf[i10];
                if (obj2 instanceof zzxu) {
                    objArrCopyOf[i10] = ((zzxu) obj2).d0();
                }
            }
            if (str != f31078h) {
                this.f31083f = new zzaaf(zzabl.f30345b, str);
            }
            zzabe zzabeVarB = zzaab.f30298a.c().b();
            if (!zzabeVarB.f30340a.isEmpty()) {
                zzzj zzzjVarF3 = f();
                zzyl zzylVar4 = zzxx.f31074h;
                zzabe zzabeVar = (zzabe) zzzjVarF3.d(zzylVar4);
                if (zzabeVar != null) {
                    zzabc zzabcVar = zzabeVar.f30340a;
                    if (!zzabcVar.isEmpty()) {
                        zzabc zzabcVar2 = zzabeVarB.f30340a;
                        if (!zzabcVar2.isEmpty()) {
                            zzabeVar = new zzabe(new zzabc(zzabcVar2, zzabcVar));
                        }
                        zzabeVarB = zzabeVar;
                    }
                }
                g(zzylVar4, zzabeVarB);
            }
            zzzf zzzfVar = ((zzxq) this).f31067i.f31064a;
            try {
                zzabt zzabtVar = (zzabt) zzabt.f30352c.get();
                int i11 = zzabtVar.f30353b + 1;
                zzabtVar.f30353b = i11;
                if (i11 == 0) {
                    throw new AssertionError("Overflow of RecursionDepth (possible error in core library)");
                }
                try {
                    if (i11 <= 100) {
                        zzzfVar.c(this);
                    } else {
                        zzxi.a("unbounded recursion in log statement", this);
                    }
                    zzabtVar.close();
                } catch (Throwable th3) {
                    try {
                        zzabtVar.close();
                        throw th3;
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                        throw th3;
                    }
                }
            } catch (RuntimeException e2) {
                try {
                    zzzfVar.d(e2, this);
                } catch (zzzg e3) {
                    throw e3;
                } catch (RuntimeException e4) {
                    String name = e4.getClass().getName();
                    String message = e4.getMessage();
                    StringBuilder sb = new StringBuilder(name.length() + 2 + String.valueOf(message).length());
                    sb.append(name);
                    sb.append(": ");
                    sb.append(message);
                    zzxi.a(sb.toString(), this);
                    try {
                        e4.printStackTrace(System.err);
                    } catch (RuntimeException unused) {
                    }
                }
            }
        }
    }

    public final zzyc c() {
        zzyc zzycVar = this.d;
        if (zzycVar != null) {
            return zzycVar;
        }
        md.k("cannot request log site information prior to postProcess()");
        return null;
    }

    public final Object[] d() {
        if (!(this.f31083f != null)) {
            md.k("cannot get arguments unless a template context exists");
            return null;
        }
        Object[] objArr = this.g;
        if (objArr != null) {
            return objArr;
        }
        md.k("cannot get arguments before calling log()");
        return null;
    }

    public final Object e() {
        if (!(this.f31083f == null)) {
            md.k("cannot get literal argument if a template context exists");
            return null;
        }
        Object[] objArr = this.g;
        if (objArr != null) {
            return objArr[0];
        }
        md.k("cannot get literal argument before calling log()");
        return null;
    }

    public final zzzj f() {
        zzxy zzxyVar = this.f31081c;
        return zzxyVar != null ? zzxyVar : zzzi.f31117a;
    }

    public final void g(zzyl zzylVar, Object obj) {
        if (this.f31081c == null) {
            zzxy zzxyVar = new zzxy();
            zzxyVar.f31076a = new Object[8];
            zzxyVar.f31077b = 0;
            this.f31081c = zzxyVar;
        }
        this.f31081c.e(zzylVar, obj);
    }
}
