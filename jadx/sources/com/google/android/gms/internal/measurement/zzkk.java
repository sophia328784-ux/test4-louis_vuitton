package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;

/* JADX INFO: loaded from: classes2.dex */
public final class zzkk extends GoogleApi {
    public static final /* synthetic */ int l = 0;

    static {
        Pair.create(new zzkm(), Tasks.f(null));
    }

    public final void j(final String str, final String[] strArr) {
        TaskApiCall.Builder builderA = TaskApiCall.a();
        builderA.f29063a = new RemoteCall() { // from class: com.google.android.gms.internal.measurement.zzki
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                int i2 = zzkk.l;
                zzkj zzkjVar = new zzkj((TaskCompletionSource) obj2);
                zzkt zzktVar = (zzkt) ((zzku) obj).v();
                Parcel parcelF2 = zzktVar.F2();
                zzbn.c(parcelF2, zzkjVar);
                parcelF2.writeString(str);
                parcelF2.writeInt(0);
                parcelF2.writeStringArray(strArr);
                parcelF2.writeByteArray(null);
                zzktVar.G2(1, parcelF2);
            }
        };
        i(0, builderA.a());
    }

    public final Task k(final String str) {
        TaskApiCall.Builder builderA = TaskApiCall.a();
        builderA.f29063a = new RemoteCall() { // from class: com.google.android.gms.internal.measurement.zzkc
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                int i2 = zzkk.l;
                zzkj zzkjVar = new zzkj((TaskCompletionSource) obj2);
                zzkt zzktVar = (zzkt) ((zzku) obj).v();
                Parcel parcelF2 = zzktVar.F2();
                zzbn.c(parcelF2, zzkjVar);
                parcelF2.writeString(str);
                zzktVar.G2(5, parcelF2);
            }
        };
        return i(0, builderA.a());
    }
}
