package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.internal.measurement.zzaeh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjd extends zzga {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzpg f31847a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Boolean f31848b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f31849j;

    public zzjd(zzpg zzpgVar, String str) {
        Preconditions.h(zzpgVar);
        this.f31847a = zzpgVar;
        this.f31849j = null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final String B0(zzr zzrVar) {
        G2(zzrVar);
        zzpg zzpgVar = this.f31847a;
        try {
            return (String) ((FutureTask) zzpgVar.c().n(new zzoz(zzpgVar, zzrVar))).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            zzpgVar.b().f31769f.c("Failed to get app instance id. appId", zzgu.o(zzrVar.f32016b), e2);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void B2(zzr zzrVar) {
        Preconditions.e(zzrVar.f32016b);
        Preconditions.h(zzrVar.t);
        F2(new zzip(this, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void E1(final zzr zzrVar, final Bundle bundle, final zzge zzgeVar) {
        G2(zzrVar);
        final String str = zzrVar.f32016b;
        Preconditions.h(str);
        this.f31847a.c().p(new Runnable() { // from class: com.google.android.gms.measurement.internal.zziy
            @Override // java.lang.Runnable
            public final void run() {
                zzjd zzjdVar = this.zza;
                zzr zzrVar2 = zzrVar;
                Bundle bundle2 = bundle;
                zzge zzgeVar2 = zzgeVar;
                String str2 = str;
                zzpg zzpgVar = zzjdVar.f31847a;
                zzpgVar.W();
                try {
                    zzgeVar2.u0(zzpgVar.e0(bundle2, zzrVar2));
                } catch (RemoteException e2) {
                    zzpgVar.b().f31769f.c("Failed to return trigger URIs for app", str2, e2);
                }
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List F(String str, String str2, String str3) {
        H2(str, true);
        zzpg zzpgVar = this.f31847a;
        try {
            return (List) ((FutureTask) zzpgVar.c().n(new zzim(this, str, str2, str3))).get();
        } catch (InterruptedException | ExecutionException e2) {
            zzpgVar.b().f31769f.b(e2, "Failed to get conditional user properties as");
            return Collections.EMPTY_LIST;
        }
    }

    public final void F2(Runnable runnable) {
        zzpg zzpgVar = this.f31847a;
        if (zzpgVar.c().m()) {
            runnable.run();
        } else {
            zzpgVar.c().r(runnable);
        }
    }

    public final void G2(zzr zzrVar) {
        Preconditions.h(zzrVar);
        String str = zzrVar.f32016b;
        Preconditions.e(str);
        H2(str, false);
        this.f31847a.l0().m(zzrVar.f32017c);
    }

    public final void H2(String str, boolean z) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        zzpg zzpgVar = this.f31847a;
        if (zIsEmpty) {
            zzpgVar.b().f31769f.a("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.f31848b == null) {
                    boolean z2 = true;
                    if (!"com.google.android.gms".equals(this.f31849j)) {
                        if (!UidVerifier.a(Binder.getCallingUid(), zzpgVar.l.f31838a) && !GoogleSignatureVerifier.a(zzpgVar.l.f31838a).b(Binder.getCallingUid())) {
                            z2 = false;
                        }
                    }
                    this.f31848b = Boolean.valueOf(z2);
                }
                if (this.f31848b.booleanValue()) {
                    return;
                }
            } catch (SecurityException e2) {
                zzpgVar.b().f31769f.b(zzgu.o(str), "Measurement Service called with invalid calling package. appId");
                throw e2;
            }
        }
        if (this.f31849j == null) {
            Context context = zzpgVar.l.f31838a;
            int callingUid = Binder.getCallingUid();
            int i2 = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
            if (UidVerifier.b(context, callingUid, str)) {
                this.f31849j = str;
            }
        }
        if (str.equals(this.f31849j)) {
            return;
        }
        throw new SecurityException("Unknown calling package name '" + str + "'.");
    }

    public final void I2(Runnable runnable) {
        zzpg zzpgVar = this.f31847a;
        if (zzpgVar.c().m()) {
            runnable.run();
        } else {
            zzpgVar.c().p(runnable);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final byte[] K(zzbh zzbhVar, String str) {
        Preconditions.e(str);
        Preconditions.h(zzbhVar);
        H2(str, true);
        zzpg zzpgVar = this.f31847a;
        zzgs zzgsVar = zzpgVar.b().m;
        zzic zzicVar = zzpgVar.l;
        zzgn zzgnVar = zzicVar.f31845j;
        String str2 = zzbhVar.f31603b;
        zzgsVar.b(zzgnVar.a(str2), "Log and bundle. event");
        ((DefaultClock) zzpgVar.e()).getClass();
        long jNanoTime = System.nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) ((FutureTask) zzpgVar.c().o(new zzit(this, zzbhVar, str))).get();
            if (bArr == null) {
                zzpgVar.b().f31769f.b(zzgu.o(str), "Log and bundle returned null. appId");
                bArr = new byte[0];
            }
            ((DefaultClock) zzpgVar.e()).getClass();
            zzpgVar.b().m.d("Log and bundle processed. event, size, time_ms", zzicVar.f31845j.a(str2), Integer.valueOf(bArr.length), Long.valueOf((System.nanoTime() / 1000000) - jNanoTime));
            return bArr;
        } catch (InterruptedException | ExecutionException e2) {
            zzpgVar.b().f31769f.d("Failed to log and bundle. appId, event, error", zzgu.o(str), zzicVar.f31845j.a(str2), e2);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final ArrayList M0(zzr zzrVar, boolean z) {
        G2(zzrVar);
        String str = zzrVar.f32016b;
        Preconditions.h(str);
        zzpg zzpgVar = this.f31847a;
        try {
            List<zzpn> list = (List) ((FutureTask) zzpgVar.c().n(new zzid(this, str))).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzpn zzpnVar : list) {
                if (z || !zzpp.K(zzpnVar.f32006c)) {
                    arrayList.add(new zzpl(zzpnVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e2) {
            zzpgVar.b().f31769f.c("Failed to get user properties. appId", zzgu.o(str), e2);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void N1(final zzr zzrVar, final zzaf zzafVar) {
        G2(zzrVar);
        I2(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzja
            /* JADX WARN: Code duplicated, block: B:35:0x0122  */
            /* JADX WARN: Code duplicated, block: B:67:0x025e  */
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                zzaf zzafVar2;
                int i2;
                long j2;
                Cursor cursorQuery;
                Cursor cursor;
                zzjd zzjdVar = this.zza;
                zzr zzrVar2 = zzrVar;
                zzaf zzafVar3 = zzafVar;
                zzpg zzpgVar = zzjdVar.f31847a;
                zzpgVar.W();
                String str = zzrVar2.f32016b;
                Preconditions.h(str);
                HashMap map = zzpgVar.E;
                zzpgVar.c().g();
                zzpgVar.m0();
                zzaw zzawVar = zzpgVar.f31982c;
                zzpg.U(zzawVar);
                long j3 = zzafVar3.f31541b;
                long j4 = zzafVar3.d;
                int i3 = zzafVar3.f31542c;
                zzawVar.g();
                zzawVar.h();
                Cursor cursor2 = null;
                zzpjVarJ = null;
                zzpj zzpjVarJ = null;
                try {
                    cursorQuery = zzawVar.X().query("upload_queue", new String[]{"rowId", "app_id", "measurement_batch", "upload_uri", "upload_headers", "upload_type", "retry_count", "creation_timestamp", "associated_row_id", "last_upload_timestamp"}, "rowId=?", new String[]{String.valueOf(j3)}, null, null, null, "1");
                    try {
                        try {
                            if (cursorQuery.moveToFirst()) {
                                try {
                                    String string = cursorQuery.getString(1);
                                    Preconditions.h(string);
                                    try {
                                        zzafVar2 = zzafVar3;
                                        i2 = i3;
                                        cursor = cursorQuery;
                                        j2 = j4;
                                        try {
                                            zzpjVarJ = zzawVar.J(string, j3, cursorQuery.getBlob(2), cursorQuery.getString(3), cursorQuery.getString(4), cursorQuery.getInt(5), cursorQuery.getInt(6), cursorQuery.getLong(7), cursorQuery.getLong(8), cursorQuery.getLong(9));
                                            cursor.close();
                                        } catch (SQLiteException e2) {
                                            e = e2;
                                            cursorQuery = cursor;
                                            try {
                                                zzgu zzguVar = zzawVar.f31850a.f31842f;
                                                zzic.m(zzguVar);
                                                zzguVar.f31769f.c("Error to querying MeasurementBatch from upload_queue. rowId", Long.valueOf(j3), e);
                                                if (cursorQuery != null) {
                                                    cursorQuery.close();
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                cursor2 = cursorQuery;
                                                if (cursor2 != null) {
                                                    cursor2.close();
                                                }
                                                throw th;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            cursor2 = cursor;
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            throw th;
                                        }
                                    } catch (SQLiteException e3) {
                                        e = e3;
                                        zzafVar2 = zzafVar3;
                                        j2 = j4;
                                        cursor = cursorQuery;
                                        i2 = i3;
                                    }
                                } catch (SQLiteException e4) {
                                    e = e4;
                                    zzafVar2 = zzafVar3;
                                    j2 = j4;
                                    cursor = cursorQuery;
                                    i2 = i3;
                                }
                            } else {
                                zzafVar2 = zzafVar3;
                                i2 = i3;
                                j2 = j4;
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                            }
                        } catch (SQLiteException e5) {
                            e = e5;
                            zzafVar2 = zzafVar3;
                            i2 = i3;
                            j2 = j4;
                            cursor = cursorQuery;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        cursor = cursorQuery;
                    }
                } catch (SQLiteException e6) {
                    e = e6;
                    zzafVar2 = zzafVar3;
                    i2 = i3;
                    j2 = j4;
                    cursorQuery = null;
                } catch (Throwable th4) {
                    th = th4;
                }
                zzpj zzpjVar = zzpjVarJ;
                if (zzpjVar == null) {
                    zzpgVar.b().f31771i.c("[sgtm] Queued batch doesn't exist. appId, rowId", str, Long.valueOf(j3));
                    return;
                }
                String str2 = zzpjVar.f31993c;
                if (i2 != zzlr.SUCCESS.d0()) {
                    if (i2 == zzlr.BACKOFF.d0()) {
                        zzpe zzpeVar = (zzpe) map.get(str2);
                        if (zzpeVar == null) {
                            zzpeVar = new zzpe(zzpgVar);
                            map.put(str2, zzpeVar);
                        } else {
                            zzpeVar.f31977b++;
                            zzpeVar.f31978c = zzpeVar.a();
                        }
                        ((DefaultClock) zzpgVar.e()).getClass();
                        zzpgVar.b().n.d("[sgtm] Putting sGTM server in backoff mode. appId, destination, nextRetryInSeconds", str, str2, Long.valueOf((zzpeVar.f31978c - System.currentTimeMillis()) / 1000));
                    }
                    zzaw zzawVar2 = zzpgVar.f31982c;
                    zzpg.U(zzawVar2);
                    Long lValueOf = Long.valueOf(zzafVar2.f31541b);
                    zzawVar2.s(lValueOf);
                    zzpgVar.b().n.c("[sgtm] increased batch retry count after failed client upload. appId, rowId", str, lValueOf);
                    return;
                }
                if (map.containsKey(str2)) {
                    map.remove(str2);
                }
                zzaw zzawVar3 = zzpgVar.f31982c;
                zzpg.U(zzawVar3);
                Long lValueOf2 = Long.valueOf(j3);
                zzawVar3.n(lValueOf2);
                zzpgVar.b().n.c("[sgtm] queued batch deleted after successful client upload. appId, rowId", str, lValueOf2);
                if (j2 > 0) {
                    zzaw zzawVar4 = zzpgVar.f31982c;
                    zzpg.U(zzawVar4);
                    zzic zzicVar = zzawVar4.f31850a;
                    zzawVar4.g();
                    zzawVar4.h();
                    Long lValueOf3 = Long.valueOf(j2);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("upload_type", Integer.valueOf(zzls.GOOGLE_SIGNAL.d0()));
                    DefaultClock defaultClock = zzicVar.f31846k;
                    zzgu zzguVar2 = zzicVar.f31842f;
                    defaultClock.getClass();
                    contentValues.put("creation_timestamp", Long.valueOf(System.currentTimeMillis()));
                    try {
                        if (zzawVar4.X().update("upload_queue", contentValues, "rowid=? AND app_id=? AND upload_type=?", new String[]{String.valueOf(j2), str, String.valueOf(zzls.GOOGLE_SIGNAL_PENDING.d0())}) != 1) {
                            zzic.m(zzguVar2);
                            zzguVar2.f31771i.c("Google Signal pending batch not updated. appId, rowId", str, lValueOf3);
                        }
                        zzpgVar.b().n.c("[sgtm] queued Google Signal batch updated. appId, signalRowId", str, Long.valueOf(j2));
                        zzpgVar.t(str);
                    } catch (SQLiteException e7) {
                        zzic.m(zzguVar2);
                        zzguVar2.f31769f.d("Failed to update google Signal pending batch. appid, rowId", str, Long.valueOf(j2), e7);
                        throw e7;
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void O(final zzr zzrVar) {
        Preconditions.e(zzrVar.f32016b);
        Preconditions.h(zzrVar.t);
        F2(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzjc
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzjd zzjdVar = this.zza;
                zzr zzrVar2 = zzrVar;
                zzpg zzpgVar = zzjdVar.f31847a;
                zzpgVar.W();
                zzpgVar.n0(zzrVar2);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final zzao R1(zzr zzrVar) {
        G2(zzrVar);
        String str = zzrVar.f32016b;
        Preconditions.e(str);
        zzpg zzpgVar = this.f31847a;
        try {
            return (zzao) ((FutureTask) zzpgVar.c().o(new zziq(this, zzrVar))).get(10000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            zzpgVar.b().f31769f.c("Failed to get consent. appId", zzgu.o(str), e2);
            return new zzao(null);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void S1(final Bundle bundle, final zzr zzrVar) {
        G2(zzrVar);
        final String str = zzrVar.f32016b;
        Preconditions.h(str);
        I2(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzjb
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                zzjd zzjdVar = this.zza;
                Bundle bundle2 = bundle;
                String str2 = str;
                zzr zzrVar2 = zzrVar;
                zzjdVar.getClass();
                boolean zIsEmpty = bundle2.isEmpty();
                zzpg zzpgVar = zzjdVar.f31847a;
                if (zIsEmpty) {
                    zzaw zzawVar = zzpgVar.f31982c;
                    zzpg.U(zzawVar);
                    zzawVar.g();
                    zzawVar.h();
                    try {
                        zzawVar.X().execSQL("delete from default_event_params where app_id=?", new String[]{str2});
                        return;
                    } catch (SQLiteException e2) {
                        zzgu zzguVar = zzawVar.f31850a.f31842f;
                        zzic.m(zzguVar);
                        zzguVar.f31769f.b(e2, "Error clearing default event params");
                        return;
                    }
                }
                zzaw zzawVar2 = zzpgVar.f31982c;
                zzpg.U(zzawVar2);
                zzic zzicVar = zzawVar2.f31850a;
                zzawVar2.g();
                zzawVar2.h();
                zzbc zzbcVar = new zzbc(zzawVar2.f31850a, "", str2, "dep", 0L, 0L, 0L, bundle2);
                zzpk zzpkVar = zzawVar2.f31948b.g;
                zzpg.U(zzpkVar);
                byte[] bArrI = zzpkVar.G(zzbcVar).i();
                zzgu zzguVar2 = zzicVar.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.n.c("Saving default event parameters, appId, data size", str2, Integer.valueOf(bArrI.length));
                ContentValues contentValues = new ContentValues();
                contentValues.put("app_id", str2);
                contentValues.put("parameters", bArrI);
                try {
                    if (zzawVar2.X().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                        zzic.m(zzguVar2);
                        zzguVar2.f31769f.b(zzgu.o(str2), "Failed to insert default event parameters (got -1). appId");
                    }
                } catch (SQLiteException e3) {
                    zzic.m(zzguVar2);
                    zzguVar2.f31769f.c("Error storing default event parameters. appId", zzgu.o(str2), e3);
                }
                zzaw zzawVar3 = zzpgVar.f31982c;
                zzpg.U(zzawVar3);
                long j2 = zzrVar2.E;
                try {
                    if (zzawVar3.D("select count(*) from raw_events where app_id=? and timestamp >= ? and name not like '!_%' escape '!' limit 1;", new String[]{str2, String.valueOf(j2)}, 0L) <= 0 && zzawVar3.D("select count(*) from raw_events where app_id=? and timestamp >= ? and name like '!_%' escape '!' limit 1;", new String[]{str2, String.valueOf(j2)}, 0L) > 0) {
                        zzaw zzawVar4 = zzpgVar.f31982c;
                        zzpg.U(zzawVar4);
                        zzawVar4.z(str2, Long.valueOf(j2), null, bundle2);
                    }
                } catch (SQLiteException e4) {
                    zzgu zzguVar3 = zzawVar3.f31850a.f31842f;
                    zzic.m(zzguVar3);
                    zzguVar3.f31769f.b(e4, "Error checking backfill conditions");
                }
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void U(zzr zzrVar) {
        G2(zzrVar);
        I2(new zzin(this, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void X(final zzr zzrVar) {
        Preconditions.e(zzrVar.f32016b);
        Preconditions.h(zzrVar.t);
        F2(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzix
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzjd zzjdVar = this.zza;
                zzr zzrVar2 = zzrVar;
                zzpg zzpgVar = zzjdVar.f31847a;
                zzpgVar.W();
                zzpgVar.o0(zzrVar2);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void b0(zzpl zzplVar, zzr zzrVar) {
        Preconditions.h(zzplVar);
        G2(zzrVar);
        I2(new zziu(this, zzplVar, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void d2(zzr zzrVar) {
        G2(zzrVar);
        I2(new zzie(this, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void f1(long j2, String str, String str2, String str3) {
        I2(new zzig(this, str2, str3, str, j2));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void g1(zzr zzrVar) {
        String str = zzrVar.f32016b;
        Preconditions.e(str);
        H2(str, false);
        I2(new zzio(this, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void l(zzr zzrVar, final zzoo zzooVar, final zzgh zzghVar) {
        G2(zzrVar);
        final String str = zzrVar.f32016b;
        Preconditions.h(str);
        this.f31847a.c().p(new Runnable() { // from class: com.google.android.gms.measurement.internal.zziz
            @Override // java.lang.Runnable
            public final void run() {
                zzjd zzjdVar = this.zza;
                String str2 = str;
                zzoo zzooVar2 = zzooVar;
                zzgh zzghVar2 = zzghVar;
                zzpg zzpgVar = zzjdVar.f31847a;
                zzpgVar.W();
                zzpgVar.c().g();
                zzpgVar.m0();
                zzaw zzawVar = zzpgVar.f31982c;
                zzpg.U(zzawVar);
                List<zzpj> listL = zzawVar.l(str2, zzooVar2, ((Integer) zzfy.B.a(null)).intValue());
                ArrayList arrayList = new ArrayList();
                for (zzpj zzpjVar : listL) {
                    String str3 = zzpjVar.f31993c;
                    long j2 = zzpjVar.f31996h;
                    long j3 = zzpjVar.f31991a;
                    if (zzpgVar.s(str2, str3)) {
                        int i2 = zzpjVar.f31997i;
                        if (i2 > 0) {
                            if (i2 <= ((Integer) zzfy.z.a(null)).intValue()) {
                                long jMin = Math.min(((Long) zzfy.x.a(null)).longValue() * (1 << (i2 - 1)), ((Long) zzfy.y.a(null)).longValue());
                                ((DefaultClock) zzpgVar.e()).getClass();
                                if (System.currentTimeMillis() >= jMin + j2) {
                                }
                            }
                            zzpgVar.b().n.d("[sgtm] batch skipped waiting for next retry. appId, rowId, lastUploadMillis", str2, Long.valueOf(j3), Long.valueOf(j2));
                        }
                        Bundle bundle = new Bundle();
                        for (Map.Entry entry : zzpjVar.d.entrySet()) {
                            bundle.putString((String) entry.getKey(), (String) entry.getValue());
                        }
                        long j4 = zzpjVar.f31991a;
                        com.google.android.gms.internal.measurement.zzib zzibVar = zzpjVar.f31992b;
                        zzom zzomVar = new zzom(j4, zzibVar.i(), zzpjVar.f31993c, bundle, zzpjVar.f31994e.d0(), zzpjVar.g, "");
                        try {
                            com.google.android.gms.internal.measurement.zzhz zzhzVar = (com.google.android.gms.internal.measurement.zzhz) zzpk.R(com.google.android.gms.internal.measurement.zzib.H(), zzomVar.f31950c);
                            for (int i3 = 0; i3 < ((com.google.android.gms.internal.measurement.zzib) zzhzVar.f30406c).B(); i3++) {
                                com.google.android.gms.internal.measurement.zzic zzicVar = (com.google.android.gms.internal.measurement.zzic) ((com.google.android.gms.internal.measurement.zzib) zzhzVar.f30406c).C(i3).r();
                                ((DefaultClock) zzpgVar.e()).getClass();
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                zzicVar.l();
                                ((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).q0(jCurrentTimeMillis);
                                zzhzVar.l();
                                ((com.google.android.gms.internal.measurement.zzib) zzhzVar.f30406c).J(i3, (com.google.android.gms.internal.measurement.zzid) zzicVar.v());
                            }
                            zzomVar.f31950c = ((com.google.android.gms.internal.measurement.zzib) zzhzVar.v()).i();
                            if (Log.isLoggable(zzpgVar.b().q(), 2)) {
                                zzpk zzpkVar = zzpgVar.g;
                                zzpg.U(zzpkVar);
                                zzomVar.f31953h = zzpkVar.H((com.google.android.gms.internal.measurement.zzib) zzhzVar.v());
                            }
                            arrayList.add(zzomVar);
                        } catch (zzaeh unused) {
                            zzpgVar.b().f31771i.b(str2, "Failed to parse queued batch. appId");
                        }
                    } else {
                        zzpgVar.b().n.d("[sgtm] batch skipped due to destination in backoff. appId, rowId, url", str2, Long.valueOf(j3), zzpjVar.f31993c);
                    }
                }
                zzoq zzoqVar = new zzoq(arrayList);
                try {
                    zzghVar2.g2(zzoqVar);
                    zzpgVar.b().n.c("[sgtm] Sending queued upload batches to client. appId, count", str2, Integer.valueOf(zzoqVar.f31955b.size()));
                } catch (RemoteException e2) {
                    zzpgVar.b().f31769f.c("[sgtm] Failed to return upload batches for app", str2, e2);
                }
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List m(String str, String str2, String str3, boolean z) {
        H2(str, true);
        zzpg zzpgVar = this.f31847a;
        try {
            List<zzpn> list = (List) ((FutureTask) zzpgVar.c().n(new zzik(this, str, str2, str3))).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzpn zzpnVar : list) {
                if (z || !zzpp.K(zzpnVar.f32006c)) {
                    arrayList.add(new zzpl(zzpnVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e2) {
            zzpgVar.b().f31769f.c("Failed to get user properties as. appId", zzgu.o(str), e2);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void n(zzah zzahVar, zzr zzrVar) {
        Preconditions.h(zzahVar);
        Preconditions.h(zzahVar.d);
        G2(zzrVar);
        zzah zzahVar2 = new zzah(zzahVar);
        zzahVar2.f31543b = zzrVar.f32016b;
        I2(new zzih(this, zzahVar2, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void p2(zzr zzrVar) {
        G2(zzrVar);
        I2(new zzif(this, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List r2(String str, String str2, boolean z, zzr zzrVar) {
        G2(zzrVar);
        String str3 = zzrVar.f32016b;
        Preconditions.h(str3);
        zzpg zzpgVar = this.f31847a;
        try {
            List<zzpn> list = (List) ((FutureTask) zzpgVar.c().n(new zzij(this, str3, str, str2))).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzpn zzpnVar : list) {
                if (z || !zzpp.K(zzpnVar.f32006c)) {
                    arrayList.add(new zzpl(zzpnVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e2) {
            zzpgVar.b().f31769f.c("Failed to query user properties. appId", zzgu.o(str3), e2);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void s2(zzbh zzbhVar, zzr zzrVar) {
        Preconditions.h(zzbhVar);
        G2(zzrVar);
        I2(new zzir(this, zzbhVar, zzrVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List t2(String str, String str2, zzr zzrVar) {
        G2(zzrVar);
        String str3 = zzrVar.f32016b;
        Preconditions.h(str3);
        zzpg zzpgVar = this.f31847a;
        try {
            return (List) ((FutureTask) zzpgVar.c().n(new zzil(this, str3, str, str2))).get();
        } catch (InterruptedException | ExecutionException e2) {
            zzpgVar.b().f31769f.b(e2, "Failed to get conditional user properties");
            return Collections.EMPTY_LIST;
        }
    }
}
