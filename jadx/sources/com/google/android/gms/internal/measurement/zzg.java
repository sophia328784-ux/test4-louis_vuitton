package com.google.android.gms.internal.measurement;

import defpackage.d21;
import defpackage.md;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzg f30628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzaw f30629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f30630c = new HashMap();
    public final HashMap d = new HashMap();

    public zzg(zzg zzgVar, zzaw zzawVar) {
        this.f30628a = zzgVar;
        this.f30629b = zzawVar;
    }

    public final zzao a(zzao zzaoVar) {
        return this.f30629b.b(this, zzaoVar);
    }

    public final zzao b(zzae zzaeVar) {
        zzao zzaoVarB = zzao.k0;
        Iterator itN = zzaeVar.n();
        while (itN.hasNext()) {
            zzaoVarB = this.f30629b.b(this, zzaeVar.p(((Integer) itN.next()).intValue()));
            if (zzaoVarB instanceof zzag) {
                break;
            }
        }
        return zzaoVarB;
    }

    public final zzg c() {
        return new zzg(this, this.f30629b);
    }

    public final boolean d(String str) {
        if (this.f30630c.containsKey(str)) {
            return true;
        }
        zzg zzgVar = this.f30628a;
        if (zzgVar != null) {
            return zzgVar.d(str);
        }
        return false;
    }

    public final void e(String str, zzao zzaoVar) {
        zzg zzgVar;
        HashMap map = this.f30630c;
        if (!map.containsKey(str) && (zzgVar = this.f30628a) != null && zzgVar.d(str)) {
            zzgVar.e(str, zzaoVar);
        } else {
            if (this.d.containsKey(str)) {
                return;
            }
            if (zzaoVar == null) {
                map.remove(str);
            } else {
                map.put(str, zzaoVar);
            }
        }
    }

    public final void f(String str, zzao zzaoVar) {
        if (this.d.containsKey(str)) {
            return;
        }
        HashMap map = this.f30630c;
        if (zzaoVar == null) {
            map.remove(str);
        } else {
            map.put(str, zzaoVar);
        }
    }

    public final zzao g(String str) {
        HashMap map = this.f30630c;
        if (map.containsKey(str)) {
            return (zzao) map.get(str);
        }
        zzg zzgVar = this.f30628a;
        if (zzgVar != null) {
            return zzgVar.g(str);
        }
        md.n(d21.j(str, " is not defined"));
        return null;
    }
}
