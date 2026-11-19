package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzkp extends zzbm implements zzkq {
    public zzkp() {
        super("com.google.android.gms.phenotype.internal.IGetStorageInfoCallbacks");
    }

    @Override // com.google.android.gms.internal.measurement.zzbm
    public final boolean E2(int i2, Parcel parcel, Parcel parcel2) {
        if (i2 != 2) {
            return false;
        }
        Status status = (Status) zzbn.a(parcel, Status.CREATOR);
        byte[] bArrCreateByteArray = parcel.createByteArray();
        zzbn.d(parcel);
        TaskCompletionSource taskCompletionSource = ((zzjy) this).f30678a;
        if (!status.W1()) {
            TaskUtil.a(status, null, taskCompletionSource);
            return true;
        }
        try {
            zzadf zzadfVar = zzadf.f30397b;
            int i3 = zzacf.f30358a;
            TaskUtil.a(status, zzno.C(bArrCreateByteArray, zzadf.f30398c), taskCompletionSource);
            return true;
        } catch (zzaeh e2) {
            taskCompletionSource.a(e2);
            return true;
        }
    }
}
