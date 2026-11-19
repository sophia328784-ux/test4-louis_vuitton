package com.google.android.gms.internal.clearcut;

import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl;
import com.google.android.gms.common.api.internal.zabq;

/* JADX INFO: loaded from: classes2.dex */
final class zzh extends BaseImplementation$ApiMethodImpl<Status, zzj> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final com.google.android.gms.clearcut.zze f29765k;

    public zzh(com.google.android.gms.clearcut.zze zzeVar, zabq zabqVar) {
        super(ClearcutLogger.f28876k, zabqVar);
        this.f29765k = zzeVar;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result c(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl
    public final void i(Api.AnyClient anyClient) {
        zzj zzjVar = (zzj) anyClient;
        zzi zziVar = new zzi(this);
        try {
            com.google.android.gms.clearcut.zze zzeVar = this.f29765k;
            ClearcutLogger.zzb zzbVar = zzeVar.f28899k;
            if (zzbVar != null) {
                zzha zzhaVar = zzeVar.f28898j;
                if (zzhaVar.f29771j.length == 0) {
                    zzhaVar.f29771j = zzbVar.d0();
                }
            }
            zzha zzhaVar2 = zzeVar.f28898j;
            int iC = zzhaVar2.c();
            zzhaVar2.f29754b = iC;
            byte[] bArr = new byte[iC];
            zzfz.b(zzhaVar2, bArr, iC);
            zzeVar.f28893c = bArr;
            ((zzn) zzjVar.v()).B(zziVar, this.f29765k);
        } catch (RuntimeException unused) {
            j(new Status(10, "MessageProducer"));
        }
    }
}
