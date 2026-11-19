package com.google.android.gms.internal.vision;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
final class zzkb implements zzlf {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzka f31235b = new zzka();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzkd f31236a;

    public zzkb() {
        zzkl zzklVar;
        try {
            zzklVar = (zzkl) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            zzklVar = f31235b;
        }
        zzkl[] zzklVarArr = {zzjc.f31222a, zzklVar};
        zzkd zzkdVar = new zzkd();
        zzkdVar.f31237a = zzklVarArr;
        Charset charset = zzjf.f31225a;
        this.f31236a = zzkdVar;
    }
}
