package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
final class zzeb implements Comparator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzkn f30062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbv f30063c;

    public zzeb(zzkn zzknVar, zzbv zzbvVar) {
        this.f30062b = zzknVar;
        this.f30063c = zzbvVar;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        zzkk zzkkVar = (zzkk) obj;
        zzkk zzkkVar2 = (zzkk) obj2;
        if (zzkkVar == null) {
            return zzkkVar2 != null ? 1 : 0;
        }
        if (zzkkVar2 == null) {
            return -1;
        }
        zzkk zzkkVarA = this.f30062b.f30169b.a(this.f30063c, zzkkVar, zzkkVar2);
        Preconditions.k(zzkkVarA instanceof zzkm);
        return (int) ((zzkm) zzkkVarA).f30167b.doubleValue();
    }
}
