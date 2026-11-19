package com.google.android.gms.internal.vision;

import defpackage.r81;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzkg implements zzkh {
    @Override // com.google.android.gms.internal.vision.zzkh
    public final zzke I() {
        zzke zzkeVar = zzke.f31238c;
        if (zzkeVar.isEmpty()) {
            return new zzke();
        }
        zzke zzkeVar2 = new zzke(zzkeVar);
        zzkeVar2.f31239b = true;
        return zzkeVar2;
    }

    @Override // com.google.android.gms.internal.vision.zzkh
    public final zzke a(Object obj) {
        return (zzke) obj;
    }

    @Override // com.google.android.gms.internal.vision.zzkh
    public final boolean b(Object obj) {
        return !((zzke) obj).f31239b;
    }

    @Override // com.google.android.gms.internal.vision.zzkh
    public final void c(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.vision.zzkh
    public final zzke d(Object obj) {
        return (zzke) obj;
    }

    @Override // com.google.android.gms.internal.vision.zzkh
    public final zzke e(Object obj, Object obj2) {
        zzke zzkeVar;
        zzke zzkeVar2 = (zzke) obj;
        zzke zzkeVar3 = (zzke) obj2;
        if (!zzkeVar3.isEmpty()) {
            if (!zzkeVar2.f31239b) {
                if (zzkeVar2.isEmpty()) {
                    zzkeVar = new zzke();
                } else {
                    zzkeVar = new zzke(zzkeVar2);
                    zzkeVar.f31239b = true;
                }
                zzkeVar2 = zzkeVar;
            }
            zzkeVar2.c();
            if (!zzkeVar3.isEmpty()) {
                zzkeVar2.putAll(zzkeVar3);
            }
        }
        return zzkeVar2;
    }

    @Override // com.google.android.gms.internal.vision.zzkh
    public final Object f(Object obj) {
        ((zzke) obj).f31239b = false;
        return obj;
    }

    @Override // com.google.android.gms.internal.vision.zzkh
    /* JADX INFO: renamed from: e, reason: collision with other method in class */
    public final void mo36e(Object obj, Object obj2) {
        zzke zzkeVar = (zzke) obj;
        if (obj2 == null) {
            if (zzkeVar.isEmpty()) {
                return;
            }
            Iterator it = zzkeVar.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                entry.getKey();
                entry.getValue();
                throw new NoSuchMethodError();
            }
            return;
        }
        r81.h();
    }
}
