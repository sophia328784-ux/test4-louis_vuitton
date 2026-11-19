package com.google.android.gms.auth;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
final class zzn {
    public static final zzn zza;
    public static final zzn zzb;
    public static final zzn zzc;
    private static final /* synthetic */ zzn[] zzd;

    static {
        zzn zznVar = new zzn("LEGACY", 0);
        zza = zznVar;
        zzn zznVar2 = new zzn("AUTH_INSTANTIATION", 1);
        zzb = zznVar2;
        zzn zznVar3 = new zzn("CALLER_INSTANTIATION", 2);
        zzc = zznVar3;
        zzd = new zzn[]{zznVar, zznVar2, zznVar3};
    }

    public static zzn[] values() {
        return (zzn[]) zzd.clone();
    }
}
