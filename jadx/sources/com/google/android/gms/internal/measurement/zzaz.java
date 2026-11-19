package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
final class zzaz implements Comparator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzai f30576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzg f30577c;

    public zzaz(zzai zzaiVar, zzg zzgVar) {
        this.f30576b = zzaiVar;
        this.f30577c = zzgVar;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        zzao zzaoVar = (zzao) obj;
        zzao zzaoVar2 = (zzao) obj2;
        if (zzaoVar instanceof zzat) {
            return !(zzaoVar2 instanceof zzat) ? 1 : 0;
        }
        if (zzaoVar2 instanceof zzat) {
            return -1;
        }
        zzai zzaiVar = this.f30576b;
        return zzaiVar == null ? zzaoVar.f0().compareTo(zzaoVar2.f0()) : (int) zzh.h(zzaiVar.c(this.f30577c, Arrays.asList(zzaoVar, zzaoVar2)).g0().doubleValue());
    }
}
