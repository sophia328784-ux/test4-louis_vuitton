package com.google.android.gms.internal.measurement;

import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaas extends zzaag {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Set f30321f;
    public static final zzzq g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzaaq f30322h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Level f30324c;
    public final Set d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzzq f30325e;

    static {
        Set setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(zzxx.f31069a, zzyw.f31103e, zzyx.f31104a)));
        f30321f = setUnmodifiableSet;
        zzzn zzznVar = new zzzn(zzzt.a(setUnmodifiableSet));
        g = zzznVar;
        f30322h = new zzaaq(Level.ALL, setUnmodifiableSet, zzznVar);
    }

    public /* synthetic */ zzaas(String str, Level level, Set set, zzzq zzzqVar) {
        super(str);
        this.f30323b = zzaal.a(str);
        this.f30324c = level;
        this.d = set;
        this.f30325e = zzzqVar;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0073  */
    /* JADX WARN: Code duplicated, block: B:30:0x0083  */
    /* JADX WARN: Code duplicated, block: B:35:0x009c  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:51:0x0115  */
    public static void e(zzxz zzxzVar, Level level, Set set, zzzq zzzqVar) {
        zzaaa zzzyVar;
        StringBuilder sb;
        zzaaf zzaafVar;
        zzzc zzzcVar;
        int i2;
        Level level2 = zzxzVar.f31079a;
        Boolean bool = (Boolean) zzxzVar.f().d(zzyx.f31104a);
        if (bool == null || !bool.booleanValue()) {
            zzzj zzzjVarC = zzaab.f30298a.c().c();
            zzzj zzzjVarF = zzxzVar.f();
            int iA = zzzjVarF.a();
            if (iA == 0) {
                zzzyVar = zzaaa.f30297a;
            } else {
                zzzyVar = iA <= 28 ? new zzzy(zzzjVarC, zzzjVarF) : new zzzz(zzzjVarC, zzzjVarF);
            }
            boolean z = level2.intValue() < level.intValue();
            if (z) {
                sb = new StringBuilder();
                if (zzze.a(2, zzxzVar.c(), sb)) {
                    sb.append(" ");
                }
                if (z) {
                    zzaafVar = zzxzVar.f31083f;
                    if (zzaafVar != null) {
                        zzyy zzyyVar = new zzyy(zzaafVar, zzxzVar.d(), sb);
                        zzaaf zzaafVar2 = zzyyVar.f30346a;
                        zzaafVar2.f30301a.a(zzyyVar);
                        i2 = zzyyVar.f30347b;
                        if (((i2 + 1) & i2) == 0) {
                        }
                        throw new zzabo(String.format("unreferenced arguments [first missing index=%d]", Integer.valueOf(Integer.numberOfTrailingZeros(~i2))));
                    }
                    sb.append(zzzh.a(zzxzVar.e()));
                    Set set2 = zzaae.f30300a;
                    zzzcVar = new zzzc("[CONTEXT ", " ]", sb);
                    zzzyVar.a(zzzqVar, zzzcVar);
                    if (zzzcVar.f31115b) {
                        zzzcVar.f31114a.append(" ]");
                    }
                } else {
                    zzaafVar = zzxzVar.f31083f;
                    if (zzaafVar != null) {
                        zzyy zzyyVar2 = new zzyy(zzaafVar, zzxzVar.d(), sb);
                        zzaaf zzaafVar3 = zzyyVar2.f30346a;
                        zzaafVar3.f30301a.a(zzyyVar2);
                        i2 = zzyyVar2.f30347b;
                        if (((i2 + 1) & i2) == 0) {
                        }
                        throw new zzabo(String.format("unreferenced arguments [first missing index=%d]", Integer.valueOf(Integer.numberOfTrailingZeros(~i2))));
                    }
                    sb.append(zzzh.a(zzxzVar.e()));
                    Set set3 = zzaae.f30300a;
                    zzzcVar = new zzzc("[CONTEXT ", " ]", sb);
                    zzzyVar.a(zzzqVar, zzzcVar);
                    if (zzzcVar.f31115b) {
                        zzzcVar.f31114a.append(" ]");
                    }
                }
            } else {
                Set set4 = zzaae.f30300a;
                if (zzxzVar.f31083f == null && zzzyVar.b() <= set.size() && set.containsAll(zzzyVar.c())) {
                    zzzh.a(zzxzVar.e());
                } else {
                    sb = new StringBuilder();
                    if (zzze.a(2, zzxzVar.c(), sb)) {
                        sb.append(" ");
                    }
                    if (z || zzxzVar.f31083f == null) {
                        zzaafVar = zzxzVar.f31083f;
                        if (zzaafVar != null) {
                            zzyy zzyyVar3 = new zzyy(zzaafVar, zzxzVar.d(), sb);
                            zzaaf zzaafVar4 = zzyyVar3.f30346a;
                            zzaafVar4.f30301a.a(zzyyVar3);
                            i2 = zzyyVar3.f30347b;
                            if (((i2 + 1) & i2) == 0 || (zzyyVar3.f30348c > 31 && i2 != -1)) {
                                throw new zzabo(String.format("unreferenced arguments [first missing index=%d]", Integer.valueOf(Integer.numberOfTrailingZeros(~i2))));
                            }
                            zzabn zzabnVar = zzaafVar4.f30301a;
                            String str = zzaafVar4.f30302b;
                            int i3 = zzyyVar3.f31106f;
                            int length = str.length();
                            StringBuilder sb2 = zzyyVar3.f31105e;
                            zzabnVar.b(i3, length, str, sb2);
                            if (zzxzVar.d().length > zzyyVar3.f30348c + 1) {
                                sb2.append(" [ERROR: UNUSED LOG ARGUMENTS]");
                            }
                        } else {
                            sb.append(zzzh.a(zzxzVar.e()));
                        }
                        Set set5 = zzaae.f30300a;
                        zzzcVar = new zzzc("[CONTEXT ", " ]", sb);
                        zzzyVar.a(zzzqVar, zzzcVar);
                        if (zzzcVar.f31115b) {
                            zzzcVar.f31114a.append(" ]");
                        }
                    } else {
                        sb.append("(REDACTED) ");
                        sb.append(zzxzVar.f31083f.f30302b);
                    }
                }
            }
            zzaal.b(level2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzf
    public final boolean b(Level level) {
        int iB = zzaal.b(level);
        return Log.isLoggable(this.f30323b, iB) || Log.isLoggable("all", iB);
    }

    @Override // com.google.android.gms.internal.measurement.zzzf
    public final void c(zzxz zzxzVar) {
        e(zzxzVar, this.f30324c, this.d, this.f30325e);
    }
}
