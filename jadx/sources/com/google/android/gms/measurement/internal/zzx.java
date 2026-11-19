package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class zzx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzic f32025a;

    public zzx(zzic zzicVar) {
        this.f32025a = zzicVar;
    }

    public final void a(String str, Bundle bundle) {
        String string;
        zzic zzicVar = this.f32025a;
        zzhz zzhzVar = zzicVar.g;
        zzhh zzhhVar = zzicVar.f31841e;
        zzic.m(zzhzVar);
        zzhzVar.g();
        if (zzicVar.f()) {
            return;
        }
        if (bundle.isEmpty()) {
            string = null;
        } else {
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            string = builder.build().toString();
        }
        if (TextUtils.isEmpty(string)) {
            return;
        }
        zzic.k(zzhhVar);
        zzhhVar.w.b(string);
        zzhe zzheVar = zzhhVar.x;
        zzicVar.f31846k.getClass();
        zzheVar.b(System.currentTimeMillis());
    }

    public final boolean b() {
        if (!c()) {
            return false;
        }
        zzic zzicVar = this.f32025a;
        zzicVar.f31846k.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        zzhh zzhhVar = zzicVar.f31841e;
        zzic.k(zzhhVar);
        return jCurrentTimeMillis - zzhhVar.x.a() > zzicVar.d.o(null, zzfy.i0);
    }

    public final boolean c() {
        zzhh zzhhVar = this.f32025a.f31841e;
        zzic.k(zzhhVar);
        return zzhhVar.x.a() > 0;
    }
}
