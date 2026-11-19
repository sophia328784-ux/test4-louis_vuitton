package com.google.android.gms.measurement.internal;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzhn implements com.google.android.gms.internal.measurement.zzr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzht f31819a;

    public zzhn(zzht zzhtVar) {
        this.f31819a = zzhtVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzr
    public final void a(int i2, String str, List list, boolean z, boolean z2) {
        zzgs zzgsVar;
        int i3 = i2 - 1;
        zzht zzhtVar = this.f31819a;
        if (i3 == 0) {
            zzgu zzguVar = zzhtVar.f31850a.f31842f;
            zzic.m(zzguVar);
            zzgsVar = zzguVar.m;
        } else if (i3 != 1) {
            if (i3 == 3) {
                zzgu zzguVar2 = zzhtVar.f31850a.f31842f;
                zzic.m(zzguVar2);
                zzgsVar = zzguVar2.n;
            } else if (i3 != 4) {
                zzgu zzguVar3 = zzhtVar.f31850a.f31842f;
                zzic.m(zzguVar3);
                zzgsVar = zzguVar3.l;
            } else if (z) {
                zzgu zzguVar4 = zzhtVar.f31850a.f31842f;
                zzic.m(zzguVar4);
                zzgsVar = zzguVar4.f31772j;
            } else if (z2) {
                zzgu zzguVar5 = zzhtVar.f31850a.f31842f;
                zzic.m(zzguVar5);
                zzgsVar = zzguVar5.f31771i;
            } else {
                zzgu zzguVar6 = zzhtVar.f31850a.f31842f;
                zzic.m(zzguVar6);
                zzgsVar = zzguVar6.f31773k;
            }
        } else if (z) {
            zzgu zzguVar7 = zzhtVar.f31850a.f31842f;
            zzic.m(zzguVar7);
            zzgsVar = zzguVar7.g;
        } else if (z2) {
            zzgu zzguVar8 = zzhtVar.f31850a.f31842f;
            zzic.m(zzguVar8);
            zzgsVar = zzguVar8.f31769f;
        } else {
            zzgu zzguVar9 = zzhtVar.f31850a.f31842f;
            zzic.m(zzguVar9);
            zzgsVar = zzguVar9.f31770h;
        }
        int size = list.size();
        if (size == 1) {
            zzgsVar.b(list.get(0), str);
            return;
        }
        if (size == 2) {
            zzgsVar.c(str, list.get(0), list.get(1));
        } else if (size != 3) {
            zzgsVar.a(str);
        } else {
            zzgsVar.d(str, list.get(0), list.get(1), list.get(2));
        }
    }
}
