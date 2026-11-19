package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
public final class zzc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzf f30595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public zzg f30596b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzab f30597c;
    public final zzz d;

    public zzc() {
        zzf zzfVar = new zzf();
        this.f30595a = zzfVar;
        this.f30596b = zzfVar.f30622b.c();
        this.f30597c = new zzab();
        this.d = new zzz();
        Callable callable = new Callable() { // from class: com.google.android.gms.internal.measurement.zzb
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return new zzv(this.zza.d);
            }
        };
        zzj zzjVar = zzfVar.d;
        zzjVar.f30642a.put("internal.registerCallback", callable);
        zzjVar.f30642a.put("internal.eventLogger", new Callable() { // from class: com.google.android.gms.internal.measurement.zza
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return new zzk(this.zza.f30597c);
            }
        });
    }

    public final boolean a(zzaa zzaaVar) throws zzd {
        zzab zzabVar = this.f30597c;
        try {
            zzabVar.f30327a = zzaaVar;
            zzabVar.f30328b = zzaaVar.clone();
            zzabVar.f30329c.clear();
            this.f30595a.f30623c.e("runtime.counter", new zzah(Double.valueOf(0.0d)));
            this.d.a(this.f30596b.c(), zzabVar);
            return (zzabVar.f30328b.equals(zzabVar.f30327a) && zzabVar.f30329c.isEmpty()) ? false : true;
        } catch (Throwable th) {
            throw new zzd(th);
        }
    }

    public final void b(zzja zzjaVar) throws zzd {
        zzai zzaiVar;
        try {
            zzf zzfVar = this.f30595a;
            this.f30596b = zzfVar.f30622b.c();
            if (zzfVar.a(this.f30596b, (zzje[]) zzjaVar.A().toArray(new zzje[0])) instanceof zzag) {
                throw new IllegalStateException("Program loading failed");
            }
            for (zziy zziyVar : zzjaVar.B().A()) {
                List listB = zziyVar.B();
                String strA = zziyVar.A();
                Iterator it = listB.iterator();
                while (it.hasNext()) {
                    zzao zzaoVarA = zzfVar.a(this.f30596b, (zzje) it.next());
                    if (!(zzaoVarA instanceof zzal)) {
                        throw new IllegalArgumentException("Invalid rule definition");
                    }
                    zzg zzgVar = this.f30596b;
                    if (zzgVar.d(strA)) {
                        zzao zzaoVarG = zzgVar.g(strA);
                        if (!(zzaoVarG instanceof zzai)) {
                            throw new IllegalStateException("Invalid function name: ".concat(String.valueOf(strA)));
                        }
                        zzaiVar = (zzai) zzaoVarG;
                    } else {
                        zzaiVar = null;
                    }
                    if (zzaiVar == null) {
                        throw new IllegalStateException("Rule function is undefined: ".concat(String.valueOf(strA)));
                    }
                    zzaiVar.c(this.f30596b, Collections.singletonList(zzaoVarA));
                }
            }
        } catch (Throwable th) {
            throw new zzd(th);
        }
    }
}
