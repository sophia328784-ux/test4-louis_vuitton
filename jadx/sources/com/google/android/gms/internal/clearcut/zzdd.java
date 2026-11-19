package com.google.android.gms.internal.clearcut;

import defpackage.md;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
final class zzdd implements zzeg {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzde f29683b = new zzde();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzdf f29684a;

    public zzdd() {
        zzdn zzdnVar;
        try {
            zzdnVar = (zzdn) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            zzdnVar = f29683b;
        }
        zzdn[] zzdnVarArr = {zzcf.f29673a, zzdnVar};
        zzdf zzdfVar = new zzdf();
        zzdfVar.f29685a = zzdnVarArr;
        Charset charset = zzci.f29677a;
        this.f29684a = zzdfVar;
    }

    @Override // com.google.android.gms.internal.clearcut.zzeg
    public final zzef a(Class cls) {
        zzdw zzdwVar;
        zzcy zzcyVar;
        zzex zzexVar;
        zzbu zzbuVar;
        zzdj zzdjVar;
        Class cls2;
        Class cls3 = zzeh.f29721a;
        if (!zzcg.class.isAssignableFrom(cls) && (cls2 = zzeh.f29721a) != null && !cls2.isAssignableFrom(cls)) {
            md.n("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            return null;
        }
        zzdm zzdmVarA = this.f29684a.a(cls);
        if (zzdmVarA.b()) {
            if (zzcg.class.isAssignableFrom(cls)) {
                return new zzdu(zzeh.d, zzbx.f29663a, zzdmVarA.c());
            }
            zzex zzexVar2 = zzeh.f29722b;
            zzbu zzbuVar2 = zzbx.f29664b;
            if (zzbuVar2 != null) {
                return new zzdu(zzexVar2, zzbuVar2, zzdmVarA.c());
            }
            md.k("Protobuf runtime is not correctly loaded.");
            return null;
        }
        if (zzcg.class.isAssignableFrom(cls)) {
            if (zzdmVarA.a() == 1) {
                zzdwVar = zzdy.f29703b;
                zzcyVar = zzcy.f29681b;
                zzexVar = zzeh.d;
                zzbuVar = zzbx.f29663a;
            } else {
                zzdwVar = zzdy.f29703b;
                zzcyVar = zzcy.f29681b;
                zzexVar = zzeh.d;
                zzbuVar = null;
            }
            zzdjVar = zzdl.f29689b;
        } else {
            if (zzdmVarA.a() == 1) {
                zzdwVar = zzdy.f29702a;
                zzcyVar = zzcy.f29680a;
                zzexVar = zzeh.f29722b;
                zzbuVar = zzbx.f29664b;
                if (zzbuVar == null) {
                    md.k("Protobuf runtime is not correctly loaded.");
                    return null;
                }
            } else {
                zzdwVar = zzdy.f29702a;
                zzcyVar = zzcy.f29680a;
                zzexVar = zzeh.f29723c;
                zzbuVar = null;
            }
            zzdjVar = zzdl.f29688a;
        }
        return zzds.n(zzdmVarA, zzdwVar, zzcyVar, zzexVar, zzbuVar, zzdjVar);
    }
}
