package com.google.android.gms.internal.gtm;

import defpackage.cj;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdh extends zzdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public zzbv f30058a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f30060c;
    public final List d;

    public zzdh(zzbv zzbvVar, String str, List list, List list2) {
        this.f30059b = str;
        this.f30060c = list;
        this.d = list2;
    }

    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        try {
            zzbv zzbvVar2 = this.f30058a;
            zzbvVar2.getClass();
            zzbv zzbvVar3 = new zzbv(zzbvVar2);
            int i2 = 0;
            while (true) {
                List list = this.f30060c;
                if (i2 >= list.size()) {
                    break;
                }
                if (zzkkVarArr.length > i2) {
                    zzbvVar3.b(zzkkVarArr[i2], (String) list.get(i2));
                } else {
                    zzbvVar3.b(zzko.f30172h, (String) list.get(i2));
                }
                i2++;
            }
            zzbvVar3.b(new zzkr(Arrays.asList(zzkkVarArr)), "arguments");
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                zzkk zzkkVarD = zzkw.d(zzbvVar3, (zzkt) it.next());
                if (zzkkVarD instanceof zzko) {
                    zzko zzkoVar = (zzko) zzkkVarD;
                    if (zzkoVar.f30174c) {
                        return zzkoVar.d;
                    }
                }
            }
        } catch (RuntimeException e2) {
            e2.getMessage();
            zzbg.a();
        }
        return zzko.f30172h;
    }

    public final String toString() {
        String string = this.f30060c.toString();
        String string2 = this.d.toString();
        StringBuilder sb = new StringBuilder();
        cj.C(sb, this.f30059b, "\n\tparams: ", string, "\n\t: statements: ");
        sb.append(string2);
        return sb.toString();
    }
}
