package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzahh;
import com.google.android.gms.internal.measurement.zzahi;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzio implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ zzjd zzb;

    public zzio(zzjd zzjdVar, zzr zzrVar) {
        this.zza = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzb = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjd zzjdVar = this.zzb;
        zzjdVar.f31847a.W();
        zzpg zzpgVar = zzjdVar.f31847a;
        zzr zzrVar = this.zza;
        if (zzpgVar.y != null) {
            ArrayList arrayList = new ArrayList();
            zzpgVar.z = arrayList;
            arrayList.addAll(zzpgVar.y);
        }
        zzaw zzawVar = zzpgVar.f31982c;
        zzpg.U(zzawVar);
        zzic zzicVar = zzawVar.f31850a;
        String str = zzrVar.f32016b;
        Preconditions.h(str);
        Preconditions.e(str);
        zzawVar.g();
        zzawVar.h();
        try {
            SQLiteDatabase sQLiteDatabaseX = zzawVar.X();
            String[] strArr = {str};
            int iDelete = sQLiteDatabaseX.delete("apps", "app_id=?", strArr) + sQLiteDatabaseX.delete(DbParams.TABLE_EVENTS, "app_id=?", strArr) + sQLiteDatabaseX.delete("events_snapshot", "app_id=?", strArr) + sQLiteDatabaseX.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseX.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseX.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseX.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseX.delete("queue", "app_id=?", strArr) + sQLiteDatabaseX.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseX.delete("main_event_params", "app_id=?", strArr) + sQLiteDatabaseX.delete("default_event_params", "app_id=?", strArr) + sQLiteDatabaseX.delete("trigger_uris", "app_id=?", strArr) + sQLiteDatabaseX.delete("upload_queue", "app_id=?", strArr);
            ((zzahi) zzahh.f30504c.f30505b.get()).getClass();
            if (zzicVar.d.r(null, zzfy.c1)) {
                iDelete += sQLiteDatabaseX.delete("no_data_mode_events", "app_id=?", strArr);
            }
            int iDelete2 = iDelete + sQLiteDatabaseX.delete("diagnostic_signals", "app_id=?", strArr);
            if (iDelete2 > 0) {
                zzgu zzguVar = zzicVar.f31842f;
                zzic.m(zzguVar);
                zzguVar.n.c("Reset analytics data. app, records", str, Integer.valueOf(iDelete2));
            }
        } catch (SQLiteException e2) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.c("Error resetting analytics data. appId, error", zzgu.o(str), e2);
        }
        if (zzrVar.f32021i) {
            zzpgVar.Z(zzrVar);
        }
    }
}
