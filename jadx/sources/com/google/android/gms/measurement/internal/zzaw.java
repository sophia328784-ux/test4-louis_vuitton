package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.measurement.zzahk;
import com.google.android.gms.internal.measurement.zzahl;
import com.google.android.gms.internal.measurement.zzaif;
import com.linkplay.medialib.ContentTree;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.md;
import defpackage.pq0;
import defpackage.tr;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes2.dex */
final class zzaw extends zzos {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String[] f31572f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};
    public static final String[] g = {"associated_row_id", "ALTER TABLE upload_queue ADD COLUMN associated_row_id INTEGER;", "last_upload_timestamp", "ALTER TABLE upload_queue ADD COLUMN last_upload_timestamp INTEGER;"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String[] f31573h = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String[] f31574i = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;", "sgtm_upload_enabled", "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;", "target_os_version", "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;", "session_stitching_token_hash", "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;", "ad_services_version", "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;", "unmatched_first_open_without_ad_id", "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;", "npa_metadata_value", "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;", "attribution_eligibility_status", "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;", "sgtm_preview_key", "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;", "dma_consent_state", "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;", "daily_realtime_dcu_count", "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;", "bundle_delivery_index", "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;", "serialized_npa_metadata", "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;", "unmatched_pfo", "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;", "unmatched_uwa", "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;", "ad_campaign_info", "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;", "daily_registered_triggers_count", "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;", "client_upload_eligibility", "ALTER TABLE apps ADD COLUMN client_upload_eligibility INTEGER;", "gmp_version_for_remote_config", "ALTER TABLE apps ADD COLUMN gmp_version_for_remote_config INTEGER;", "last_diagnostics_signal_upload_timestamp", "ALTER TABLE apps ADD COLUMN last_diagnostics_signal_upload_timestamp INTEGER;"};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String[] f31575j = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;", "elapsed_time", "ALTER TABLE raw_events ADD COLUMN elapsed_time INTEGER;"};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String[] f31576k = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    public static final String[] l = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    public static final String[] m = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    public static final String[] n = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    public static final String[] o = {"consent_source", "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;", "dma_consent_settings", "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;", "storage_consent_at_bundling", "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"};
    public static final String[] p = {"idempotent", "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"};
    public final zzav d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzog f31577e;

    public zzaw(zzpg zzpgVar) {
        super(zzpgVar);
        this.f31577e = new zzog(this.f31850a.f31846k);
        this.f31850a.getClass();
        this.d = new zzav(this, this.f31850a.f31838a);
    }

    public static final String L(List list) {
        return list.isEmpty() ? "" : fc.h(" AND (upload_type IN (", TextUtils.join(", ", list), "))");
    }

    public static final void T(ContentValues contentValues, Object obj) {
        Preconditions.e("value");
        Preconditions.h(obj);
        if (obj instanceof String) {
            contentValues.put("value", (String) obj);
            return;
        }
        if (obj instanceof Long) {
            contentValues.put("value", (Long) obj);
        } else if (obj instanceof Double) {
            contentValues.put("value", (Double) obj);
        } else {
            md.n("Invalid value type");
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005c  */
    /* JADX WARN: Code duplicated, block: B:26:0x005f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x0062  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.android.gms.measurement.internal.zzaw, com.google.android.gms.measurement.internal.zzje, com.google.android.gms.measurement.internal.zzos] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v9, types: [android.database.Cursor] */
    public final zzjl A(String str) {
        Throwable th;
        SQLiteException e2;
        zzic zzicVar = this.f31850a;
        Preconditions.h(str);
        g();
        h();
        ?? r2 = 0;
        zzjlVarC = null;
        zzjlVarC = null;
        zzjl zzjlVarC = null;
        try {
            try {
                this = X().rawQuery("select consent_state, consent_source from consent_settings where app_id=? limit 1;", new String[]{str});
                try {
                    if (this.moveToFirst()) {
                        zzjlVarC = zzjl.c(this.getInt(1), this.getString(0));
                    } else {
                        zzgu zzguVar = zzicVar.f31842f;
                        zzic.m(zzguVar);
                        zzguVar.n.a("No data found");
                    }
                } catch (SQLiteException e3) {
                    e2 = e3;
                    zzgu zzguVar2 = zzicVar.f31842f;
                    zzic.m(zzguVar2);
                    zzguVar2.f31769f.b(e2, "Error querying database.");
                    if (this != 0) {
                    }
                    if (zzjlVarC == null) {
                        return zzjl.f31852c;
                    }
                    return zzjlVarC;
                }
            } catch (Throwable th2) {
                th = th2;
                r2 = this;
                if (r2 != 0) {
                    r2.close();
                }
                throw th;
            }
        } catch (SQLiteException e4) {
            e2 = e4;
            this = 0;
        } catch (Throwable th3) {
            th = th3;
            if (r2 != 0) {
                r2.close();
            }
            throw th;
        }
        this.close();
        if (zzjlVarC == null) {
            return zzjl.f31852c;
        }
        return zzjlVarC;
    }

    public final void B(String str, zzoh zzohVar) {
        g();
        h();
        Preconditions.e(str);
        zzic zzicVar = this.f31850a;
        DefaultClock defaultClock = zzicVar.f31846k;
        zzgu zzguVar = zzicVar.f31842f;
        defaultClock.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        zzfx zzfxVar = zzfy.u0;
        long jLongValue = jCurrentTimeMillis - ((Long) zzfxVar.a(null)).longValue();
        long j2 = zzohVar.f31944c;
        if (j2 < jLongValue || j2 > ((Long) zzfxVar.a(null)).longValue() + jCurrentTimeMillis) {
            zzic.m(zzguVar);
            zzguVar.f31771i.d("Storing trigger URI outside of the max retention time span. appId, now, timestamp", zzgu.o(str), Long.valueOf(jCurrentTimeMillis), Long.valueOf(j2));
        }
        zzic.m(zzguVar);
        zzguVar.n.a("Saving trigger URI");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("trigger_uri", zzohVar.f31943b);
        contentValues.put(Payload.SOURCE, Integer.valueOf(zzohVar.d));
        contentValues.put("timestamp_millis", Long.valueOf(j2));
        try {
            if (X().insert("trigger_uris", null, contentValues) == -1) {
                zzic.m(zzguVar);
                zzguVar.f31769f.b(zzgu.o(str), "Failed to insert trigger URI (got -1). appId");
            }
        } catch (SQLiteException e2) {
            zzic.m(zzguVar);
            zzguVar.f31769f.c("Error storing trigger URI. appId", zzgu.o(str), e2);
        }
    }

    public final long C(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = X().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j2 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j2;
            } catch (SQLiteException e2) {
                zzgu zzguVar = this.f31850a.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31769f.c("Database error", str, e2);
                throw e2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final long D(String str, String[] strArr, long j2) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = X().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    j2 = cursorRawQuery.getLong(0);
                }
                cursorRawQuery.close();
                return j2;
            } catch (SQLiteException e2) {
                zzgu zzguVar = this.f31850a.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31769f.c("Database error", str, e2);
                throw e2;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0032  */
    public final String E(String str, String[] strArr) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = X().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    cursorRawQuery.close();
                    return "";
                }
                String string = cursorRawQuery.getString(0);
                cursorRawQuery.close();
                return string;
            } catch (SQLiteException e2) {
                zzgu zzguVar = this.f31850a.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31769f.c("Database error", str, e2);
                throw e2;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        throw th;
    }

    public final void F(ContentValues contentValues) {
        zzic zzicVar = this.f31850a;
        try {
            SQLiteDatabase sQLiteDatabaseX = X();
            String asString = contentValues.getAsString("app_id");
            if (asString == null) {
                zzgu zzguVar = zzicVar.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31770h.b(zzgu.o("app_id"), "Value of the primary key is not set.");
                return;
            }
            StringBuilder sb = new StringBuilder(10);
            sb.append("app_id = ?");
            if (sQLiteDatabaseX.update("consent_settings", contentValues, sb.toString(), new String[]{asString}) == 0 && sQLiteDatabaseX.insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                zzgu zzguVar2 = zzicVar.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31769f.c("Failed to insert/update table (got -1). key", zzgu.o("consent_settings"), zzgu.o("app_id"));
            }
        } catch (SQLiteException e2) {
            zzgu zzguVar3 = zzicVar.f31842f;
            zzic.m(zzguVar3);
            zzguVar3.f31769f.d("Error storing into table. key", zzgu.o("consent_settings"), zzgu.o("app_id"), e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:54:0x0127  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v5 */
    public final zzbd G(String str, String str2, String str3) {
        Cursor cursorQuery;
        Boolean boolValueOf;
        zzic zzicVar = this.f31850a;
        Preconditions.e(str2);
        Preconditions.e(str3);
        g();
        h();
        ArrayList arrayList = new ArrayList(Arrays.asList("lifetime_count", "current_bundle_count", "last_fire_timestamp", "last_bundled_timestamp", "last_bundled_day", "last_sampled_complex_event_id", "last_sampling_rate", "last_exempt_from_sampling", "current_session_count"));
        ?? r3 = 0;
        try {
            try {
                cursorQuery = X().query(str, (String[]) arrayList.toArray(new String[0]), "app_id=? and name=?", new String[]{str2, str3}, null, null, null);
                try {
                    if (cursorQuery.moveToFirst()) {
                        long j2 = cursorQuery.getLong(0);
                        long j3 = cursorQuery.getLong(1);
                        long j4 = cursorQuery.getLong(2);
                        long j5 = 0;
                        long j6 = cursorQuery.isNull(3) ? 0L : cursorQuery.getLong(3);
                        Long lValueOf = cursorQuery.isNull(4) ? null : Long.valueOf(cursorQuery.getLong(4));
                        Long lValueOf2 = cursorQuery.isNull(5) ? null : Long.valueOf(cursorQuery.getLong(5));
                        Long lValueOf3 = cursorQuery.isNull(6) ? null : Long.valueOf(cursorQuery.getLong(6));
                        if (cursorQuery.isNull(7)) {
                            boolValueOf = null;
                        } else {
                            boolValueOf = Boolean.valueOf(cursorQuery.getLong(7) == 1);
                        }
                        if (!cursorQuery.isNull(8)) {
                            j5 = cursorQuery.getLong(8);
                        }
                        zzbd zzbdVar = new zzbd(str2, str3, j2, j3, j5, j4, j6, lValueOf, lValueOf2, lValueOf3, boolValueOf);
                        if (cursorQuery.moveToNext()) {
                            zzgu zzguVar = zzicVar.f31842f;
                            zzic.m(zzguVar);
                            zzguVar.f31769f.b(zzgu.o(str2), "Got multiple records for event aggregates, expected one. appId");
                        }
                        cursorQuery.close();
                        return zzbdVar;
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    zzgu zzguVar2 = zzicVar.f31842f;
                    zzic.m(zzguVar2);
                    zzguVar2.f31769f.d("Error querying events. appId", zzgu.o(str2), zzicVar.f31845j.a(str3), e);
                }
            } catch (Throwable th) {
                th = th;
                r3 = arrayList;
                if (r3 != 0) {
                    r3.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (r3 != 0) {
                r3.close();
            }
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final void H(String str, zzbd zzbdVar) {
        zzic zzicVar = this.f31850a;
        Preconditions.h(zzbdVar);
        g();
        h();
        ContentValues contentValues = new ContentValues();
        String str2 = zzbdVar.f31592a;
        contentValues.put("app_id", str2);
        contentValues.put("name", zzbdVar.f31593b);
        contentValues.put("lifetime_count", Long.valueOf(zzbdVar.f31594c));
        contentValues.put("current_bundle_count", Long.valueOf(zzbdVar.d));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzbdVar.f31596f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzbdVar.g));
        contentValues.put("last_bundled_day", zzbdVar.f31597h);
        contentValues.put("last_sampled_complex_event_id", zzbdVar.f31598i);
        contentValues.put("last_sampling_rate", zzbdVar.f31599j);
        contentValues.put("current_session_count", Long.valueOf(zzbdVar.f31595e));
        Boolean bool = zzbdVar.f31600k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (X().insertWithOnConflict(str, null, contentValues, 5) == -1) {
                zzgu zzguVar = zzicVar.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31769f.b(zzgu.o(str2), "Failed to insert/update event aggregates (got -1). appId");
            }
        } catch (SQLiteException e2) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.c("Error storing event aggregates. appId", zzgu.o(str2), e2);
        }
    }

    public final void I(String str, String str2) {
        Preconditions.e(str2);
        g();
        h();
        try {
            X().delete(str, "app_id=?", new String[]{str2});
        } catch (SQLiteException e2) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.c("Error deleting snapshot. appId", zzgu.o(str2), e2);
        }
    }

    public final zzpj J(String str, long j2, byte[] bArr, String str2, String str3, int i2, int i3, long j3, long j4, long j5) {
        boolean zIsEmpty = TextUtils.isEmpty(str2);
        zzic zzicVar = this.f31850a;
        if (zIsEmpty) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.m.a("Upload uri is null or empty. Destination is unknown. Dropping batch. ");
            return null;
        }
        try {
            com.google.android.gms.internal.measurement.zzhz zzhzVar = (com.google.android.gms.internal.measurement.zzhz) zzpk.R(com.google.android.gms.internal.measurement.zzib.H(), bArr);
            zzls zzlsVarA = zzls.a(i2);
            if (zzlsVarA != zzls.GOOGLE_SIGNAL && zzlsVarA != zzls.GOOGLE_SIGNAL_PENDING && i3 > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator it = Collections.unmodifiableList(((com.google.android.gms.internal.measurement.zzib) zzhzVar.f30406c).A()).iterator();
                while (it.hasNext()) {
                    com.google.android.gms.internal.measurement.zzic zzicVar2 = (com.google.android.gms.internal.measurement.zzic) ((com.google.android.gms.internal.measurement.zzid) it.next()).r();
                    zzicVar2.l();
                    ((com.google.android.gms.internal.measurement.zzid) zzicVar2.f30406c).e1(i3);
                    arrayList.add((com.google.android.gms.internal.measurement.zzid) zzicVar2.v());
                }
                zzhzVar.l();
                ((com.google.android.gms.internal.measurement.zzib) zzhzVar.f30406c).M();
                zzhzVar.l();
                ((com.google.android.gms.internal.measurement.zzib) zzhzVar.f30406c).L(arrayList);
            }
            HashMap map = new HashMap();
            if (str3 != null) {
                for (String str4 : str3.split("\r\n")) {
                    if (str4.isEmpty()) {
                        break;
                    }
                    String[] strArrSplit = str4.split("=", 2);
                    if (strArrSplit.length != 2) {
                        zzgu zzguVar2 = zzicVar.f31842f;
                        zzic.m(zzguVar2);
                        zzguVar2.f31769f.b(str4, "Invalid upload header: ");
                        break;
                    }
                    map.put(strArrSplit[0], strArrSplit[1]);
                }
            }
            zzpi zzpiVar = new zzpi();
            zzpiVar.f31990a = j2;
            return new zzpj(zzpiVar.f31990a, (com.google.android.gms.internal.measurement.zzib) zzhzVar.v(), str2, map, zzlsVarA, j3, j4, j5, i3);
        } catch (IOException e2) {
            zzgu zzguVar3 = zzicVar.f31842f;
            zzic.m(zzguVar3);
            zzguVar3.f31769f.c("Failed to queued MeasurementBatch from upload_queue. appId", str, e2);
            return null;
        }
    }

    public final String K() {
        this.f31850a.f31846k.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        Locale locale = Locale.US;
        zzls zzlsVar = zzls.GOOGLE_SIGNAL;
        int iD0 = zzlsVar.d0();
        Long l2 = (Long) zzfy.S.a(null);
        l2.getClass();
        String str = "(upload_type = " + iD0 + " AND ABS(creation_timestamp - " + jCurrentTimeMillis + ") > " + l2 + ")";
        String str2 = "(upload_type != " + zzlsVar.d0() + " AND ABS(creation_timestamp - " + jCurrentTimeMillis + ") > " + ((Long) zzfy.R.a(null)).longValue() + ")";
        StringBuilder sb = new StringBuilder(pq0.D(str.length(), 5, str2.length(), 1));
        cj.C(sb, "(", str, " OR ", str2);
        sb.append(")");
        return sb.toString();
    }

    public final void M(String str, zzjl zzjlVar) {
        Preconditions.h(str);
        Preconditions.h(zzjlVar);
        g();
        h();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", zzjlVar.g());
        contentValues.put("consent_source", Integer.valueOf(zzjlVar.f31854b));
        F(contentValues);
    }

    public final List N(String str) {
        List list;
        String string;
        zzic zzicVar = this.f31850a;
        g();
        h();
        ArrayList arrayList = new ArrayList();
        try {
            SQLiteDatabase sQLiteDatabaseX = X();
            sQLiteDatabaseX.beginTransaction();
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = sQLiteDatabaseX.query("diagnostic_signals", new String[]{"signal_name", "metadata", b.a.f24018f}, "app_id=?", new String[]{str}, null, null, "rowid", null);
                    if (cursorQuery.moveToFirst()) {
                        boolean zIsEmpty = str.isEmpty();
                        do {
                            String string2 = cursorQuery.getString(0);
                            if (cursorQuery.isNull(1)) {
                                string = "";
                            } else {
                                string = cursorQuery.getString(1);
                                Preconditions.h(string);
                            }
                            if (string2 == null) {
                                zzgu zzguVar = zzicVar.f31842f;
                                zzic.m(zzguVar);
                                zzguVar.f31769f.b(zzgu.o(str), "Read null value from diagnostic signals table, ignoring it. appId");
                            } else {
                                long j2 = cursorQuery.getLong(2);
                                com.google.android.gms.internal.measurement.zzfa zzfaVarA = com.google.android.gms.internal.measurement.zzfb.A();
                                zzfaVarA.l();
                                ((com.google.android.gms.internal.measurement.zzfb) zzfaVarA.f30406c).B(string2);
                                zzfaVarA.l();
                                ((com.google.android.gms.internal.measurement.zzfb) zzfaVarA.f30406c).E(j2);
                                zzfaVarA.l();
                                ((com.google.android.gms.internal.measurement.zzfb) zzfaVarA.f30406c).D(string);
                                if (zIsEmpty) {
                                    zzfaVarA.l();
                                    ((com.google.android.gms.internal.measurement.zzfb) zzfaVarA.f30406c).C();
                                }
                                arrayList.add((com.google.android.gms.internal.measurement.zzfb) zzfaVarA.v());
                            }
                        } while (cursorQuery.moveToNext());
                        sQLiteDatabaseX.delete("diagnostic_signals", "app_id=?", new String[]{str});
                        sQLiteDatabaseX.setTransactionSuccessful();
                        list = arrayList;
                    } else {
                        sQLiteDatabaseX.setTransactionSuccessful();
                    }
                } catch (Throwable th) {
                    if (0 != 0) {
                        cursorQuery.close();
                    }
                    sQLiteDatabaseX.endTransaction();
                    throw th;
                }
            } catch (SQLiteException e2) {
                zzgu zzguVar2 = zzicVar.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31769f.c("Error querying or deleting diagnostic signals. appId", zzgu.o(str), e2);
                list = Collections.EMPTY_LIST;
            }
            if (cursorQuery != null) {
                list = arrayList;
                cursorQuery.close();
            }
            list = arrayList;
            sQLiteDatabaseX.endTransaction();
            return list;
        } catch (SQLiteException e3) {
            zzgu zzguVar3 = zzicVar.f31842f;
            zzic.m(zzguVar3);
            zzguVar3.f31769f.c("Error opening database for diagnostic signals. appId", zzgu.o(str), e3);
            return Collections.EMPTY_LIST;
        }
    }

    public final void O(String str, zzjl zzjlVar) {
        Preconditions.h(str);
        g();
        h();
        M(str, A(str));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("storage_consent_at_bundling", zzjlVar.g());
        F(contentValues);
    }

    public final zzjl P(String str) {
        Preconditions.h(str);
        g();
        h();
        return zzjl.c(100, E("select storage_consent_at_bundling from consent_settings where app_id=? limit 1;", new String[]{str}));
    }

    public final zzbd Q(String str, com.google.android.gms.internal.measurement.zzhs zzhsVar, String str2) {
        zzbd zzbdVarG = G(DbParams.TABLE_EVENTS, str, zzhsVar.F());
        if (zzbdVarG != null) {
            long j2 = zzbdVarG.f31595e + 1;
            long j3 = zzbdVarG.d + 1;
            return new zzbd(zzbdVarG.f31592a, zzbdVarG.f31593b, zzbdVarG.f31594c + 1, j3, j2, zzbdVarG.f31596f, zzbdVarG.g, zzbdVarG.f31597h, zzbdVarG.f31598i, zzbdVarG.f31599j, zzbdVarG.f31600k);
        }
        zzic zzicVar = this.f31850a;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.f31771i.c("Event aggregate wasn't created during raw event logging. appId, event", zzgu.o(str), zzicVar.f31845j.a(str2));
        return new zzbd(str, zzhsVar.F(), 1L, 1L, 1L, zzhsVar.H(), 0L, null, null, null, null);
    }

    public final boolean R() {
        return this.f31850a.f31838a.getDatabasePath("google_app_measurement.db").exists();
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00ed A[Catch: all -> 0x0077, SQLiteException -> 0x007a, TryCatch #1 {SQLiteException -> 0x007a, blocks: (B:19:0x006f, B:40:0x00c7, B:42:0x00ed, B:43:0x00ff, B:44:0x0103, B:45:0x0113, B:47:0x0119, B:48:0x0129, B:60:0x0157, B:63:0x015f, B:64:0x016a, B:66:0x018a, B:67:0x0198, B:68:0x01a2, B:73:0x01e0, B:72:0x01d0, B:76:0x01e7, B:53:0x0144, B:78:0x01f9), top: B:91:0x006f }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00ff A[Catch: all -> 0x0077, SQLiteException -> 0x007a, TRY_LEAVE, TryCatch #1 {SQLiteException -> 0x007a, blocks: (B:19:0x006f, B:40:0x00c7, B:42:0x00ed, B:43:0x00ff, B:44:0x0103, B:45:0x0113, B:47:0x0119, B:48:0x0129, B:60:0x0157, B:63:0x015f, B:64:0x016a, B:66:0x018a, B:67:0x0198, B:68:0x01a2, B:73:0x01e0, B:72:0x01d0, B:76:0x01e7, B:53:0x0144, B:78:0x01f9), top: B:91:0x006f }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0119 A[Catch: all -> 0x0077, SQLiteException -> 0x007a, TryCatch #1 {SQLiteException -> 0x007a, blocks: (B:19:0x006f, B:40:0x00c7, B:42:0x00ed, B:43:0x00ff, B:44:0x0103, B:45:0x0113, B:47:0x0119, B:48:0x0129, B:60:0x0157, B:63:0x015f, B:64:0x016a, B:66:0x018a, B:67:0x0198, B:68:0x01a2, B:73:0x01e0, B:72:0x01d0, B:76:0x01e7, B:53:0x0144, B:78:0x01f9), top: B:91:0x006f }] */
    /* JADX WARN: Code duplicated, block: B:50:0x013e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0142  */
    /* JADX WARN: Code duplicated, block: B:53:0x0144 A[Catch: all -> 0x0077, SQLiteException -> 0x007a, TryCatch #1 {SQLiteException -> 0x007a, blocks: (B:19:0x006f, B:40:0x00c7, B:42:0x00ed, B:43:0x00ff, B:44:0x0103, B:45:0x0113, B:47:0x0119, B:48:0x0129, B:60:0x0157, B:63:0x015f, B:64:0x016a, B:66:0x018a, B:67:0x0198, B:68:0x01a2, B:73:0x01e0, B:72:0x01d0, B:76:0x01e7, B:53:0x0144, B:78:0x01f9), top: B:91:0x006f }] */
    /* JADX WARN: Code duplicated, block: B:55:0x014d  */
    /* JADX WARN: Code duplicated, block: B:61:0x015c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:62:0x015e  */
    /* JADX WARN: Code duplicated, block: B:66:0x018a A[Catch: all -> 0x0077, SQLiteException -> 0x007a, LOOP:0: B:66:0x018a->B:101:?, LOOP_START, TRY_LEAVE, TryCatch #1 {SQLiteException -> 0x007a, blocks: (B:19:0x006f, B:40:0x00c7, B:42:0x00ed, B:43:0x00ff, B:44:0x0103, B:45:0x0113, B:47:0x0119, B:48:0x0129, B:60:0x0157, B:63:0x015f, B:64:0x016a, B:66:0x018a, B:67:0x0198, B:68:0x01a2, B:73:0x01e0, B:72:0x01d0, B:76:0x01e7, B:53:0x0144, B:78:0x01f9), top: B:91:0x006f }] */
    /* JADX WARN: Code duplicated, block: B:73:0x01e0 A[Catch: all -> 0x0077, SQLiteException -> 0x007a, TryCatch #1 {SQLiteException -> 0x007a, blocks: (B:19:0x006f, B:40:0x00c7, B:42:0x00ed, B:43:0x00ff, B:44:0x0103, B:45:0x0113, B:47:0x0119, B:48:0x0129, B:60:0x0157, B:63:0x015f, B:64:0x016a, B:66:0x018a, B:67:0x0198, B:68:0x01a2, B:73:0x01e0, B:72:0x01d0, B:76:0x01e7, B:53:0x0144, B:78:0x01f9), top: B:91:0x006f }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01e7 A[Catch: all -> 0x0077, SQLiteException -> 0x007a, TryCatch #1 {SQLiteException -> 0x007a, blocks: (B:19:0x006f, B:40:0x00c7, B:42:0x00ed, B:43:0x00ff, B:44:0x0103, B:45:0x0113, B:47:0x0119, B:48:0x0129, B:60:0x0157, B:63:0x015f, B:64:0x016a, B:66:0x018a, B:67:0x0198, B:68:0x01a2, B:73:0x01e0, B:72:0x01d0, B:76:0x01e7, B:53:0x0144, B:78:0x01f9), top: B:91:0x006f }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01ce A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v5 */
    public final void S(String str, long j2, long j3, zzpc zzpcVar) {
        ?? IsEmpty;
        ?? string;
        String str2;
        String[] strArr;
        String string2;
        ?? r3;
        long jD;
        long j4;
        String[] strArr2;
        String str3;
        long j5;
        com.google.android.gms.internal.measurement.zzhr zzhrVar;
        zzic zzicVar = this.f31850a;
        g();
        h();
        Cursor cursorRawQuery = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseX = X();
                IsEmpty = TextUtils.isEmpty(str);
                String str4 = "";
                if (IsEmpty != 0) {
                    String[] strArr3 = j3 != -1 ? new String[]{String.valueOf(j3), String.valueOf(j2)} : new String[]{String.valueOf(j2)};
                    str4 = j3 != -1 ? "rowid <= ? and " : "";
                    StringBuilder sb = new StringBuilder(str4.length() + 148);
                    sb.append("select app_id, metadata_fingerprint from raw_events where ");
                    sb.append(str4);
                    sb.append("app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;");
                    cursorRawQuery = sQLiteDatabaseX.rawQuery(sb.toString(), strArr3);
                    try {
                        if (cursorRawQuery.moveToFirst()) {
                            string = cursorRawQuery.getString(0);
                            try {
                                string2 = cursorRawQuery.getString(1);
                                cursorRawQuery.close();
                                r3 = string;
                                cursorRawQuery = sQLiteDatabaseX.query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{r3, string2}, null, null, "rowid", ContentTree.AUDIO_ID);
                                if (cursorRawQuery.moveToFirst()) {
                                    try {
                                        com.google.android.gms.internal.measurement.zzid zzidVar = (com.google.android.gms.internal.measurement.zzid) ((com.google.android.gms.internal.measurement.zzic) zzpk.R(com.google.android.gms.internal.measurement.zzid.f0(), cursorRawQuery.getBlob(0))).v();
                                        if (cursorRawQuery.moveToNext()) {
                                            zzgu zzguVar = zzicVar.f31842f;
                                            zzic.m(zzguVar);
                                            zzguVar.f31771i.b(zzgu.o(r3), "Get multiple raw event metadata records, expected one. appId");
                                        }
                                        cursorRawQuery.close();
                                        zzpcVar.f31970a = zzidVar;
                                        jD = D("select (rowid - 1) as max_rowid from raw_events where app_id = ? and metadata_fingerprint != ? order by rowid limit 1;", new String[]{r3, string2}, -1L);
                                        if (j3 == -1) {
                                            if (jD != -1) {
                                                j4 = -1;
                                            } else {
                                                str3 = "app_id = ? and metadata_fingerprint = ?";
                                                strArr2 = new String[]{r3, string2};
                                            }
                                            cursorRawQuery = sQLiteDatabaseX.query("raw_events", new String[]{"rowid", "name", "timestamp", DbParams.KEY_DATA, "elapsed_time"}, str3, strArr2, null, null, "rowid", null);
                                            if (cursorRawQuery.moveToFirst()) {
                                                do {
                                                    j5 = cursorRawQuery.getLong(0);
                                                    byte[] blob = cursorRawQuery.getBlob(3);
                                                    long j6 = cursorRawQuery.getLong(4);
                                                    try {
                                                        zzhrVar = (com.google.android.gms.internal.measurement.zzhr) zzpk.R(com.google.android.gms.internal.measurement.zzhs.Q(), blob);
                                                        zzhrVar.F(cursorRawQuery.getString(1));
                                                        long j7 = cursorRawQuery.getLong(2);
                                                        zzhrVar.l();
                                                        ((com.google.android.gms.internal.measurement.zzhs) zzhrVar.f30406c).X(j7);
                                                        zzhrVar.l();
                                                        ((com.google.android.gms.internal.measurement.zzhs) zzhrVar.f30406c).A(j6);
                                                        if (!zzpcVar.a(j5, (com.google.android.gms.internal.measurement.zzhs) zzhrVar.v())) {
                                                            break;
                                                        }
                                                    } catch (IOException e2) {
                                                        zzgu zzguVar2 = zzicVar.f31842f;
                                                        zzic.m(zzguVar2);
                                                        zzguVar2.f31769f.c("Data loss. Failed to merge raw event. appId", zzgu.o(r3), e2);
                                                    }
                                                } while (cursorRawQuery.moveToNext());
                                            } else {
                                                zzgu zzguVar3 = zzicVar.f31842f;
                                                zzic.m(zzguVar3);
                                                zzguVar3.f31771i.b(zzgu.o(r3), "Raw event data disappeared while in transaction. appId");
                                            }
                                        } else {
                                            j4 = j3;
                                        }
                                        if (j4 == -1 && jD != -1) {
                                            jD = Math.min(j4, jD);
                                        } else if (j4 != -1) {
                                            jD = j4;
                                        }
                                        str3 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                                        strArr2 = new String[]{r3, string2, String.valueOf(jD)};
                                        cursorRawQuery = sQLiteDatabaseX.query("raw_events", new String[]{"rowid", "name", "timestamp", DbParams.KEY_DATA, "elapsed_time"}, str3, strArr2, null, null, "rowid", null);
                                        if (cursorRawQuery.moveToFirst()) {
                                            do {
                                                j5 = cursorRawQuery.getLong(0);
                                                byte[] blob2 = cursorRawQuery.getBlob(3);
                                                long j8 = cursorRawQuery.getLong(4);
                                                zzhrVar = (com.google.android.gms.internal.measurement.zzhr) zzpk.R(com.google.android.gms.internal.measurement.zzhs.Q(), blob2);
                                                zzhrVar.F(cursorRawQuery.getString(1));
                                                long j9 = cursorRawQuery.getLong(2);
                                                zzhrVar.l();
                                                ((com.google.android.gms.internal.measurement.zzhs) zzhrVar.f30406c).X(j9);
                                                zzhrVar.l();
                                                ((com.google.android.gms.internal.measurement.zzhs) zzhrVar.f30406c).A(j8);
                                                if (!zzpcVar.a(j5, (com.google.android.gms.internal.measurement.zzhs) zzhrVar.v())) {
                                                    break;
                                                    break;
                                                }
                                            } while (cursorRawQuery.moveToNext());
                                        } else {
                                            zzgu zzguVar4 = zzicVar.f31842f;
                                            zzic.m(zzguVar4);
                                            zzguVar4.f31771i.b(zzgu.o(r3), "Raw event data disappeared while in transaction. appId");
                                        }
                                    } catch (IOException e3) {
                                        zzgu zzguVar5 = zzicVar.f31842f;
                                        zzic.m(zzguVar5);
                                        zzguVar5.f31769f.c("Data loss. Failed to merge raw event metadata. appId", zzgu.o(r3), e3);
                                    }
                                } else {
                                    zzgu zzguVar6 = zzicVar.f31842f;
                                    zzic.m(zzguVar6);
                                    zzguVar6.f31769f.b(zzgu.o(r3), "Raw event metadata record is missing. appId");
                                }
                            } catch (SQLiteException e4) {
                                e = e4;
                                zzgu zzguVar7 = zzicVar.f31842f;
                                zzic.m(zzguVar7);
                                zzguVar7.f31769f.c("Data loss. Error selecting raw event. appId", zzgu.o(string), e);
                            }
                        }
                    } catch (SQLiteException e5) {
                        e = e5;
                        string = str;
                    }
                } else {
                    try {
                        if (j3 != -1) {
                            String str5 = str;
                            strArr = new String[]{str5, String.valueOf(j3)};
                            IsEmpty = str5;
                        } else {
                            str2 = str;
                            strArr = new String[]{str2};
                        }
                        if (j3 != -1) {
                            IsEmpty = str2;
                            str4 = " and rowid <= ?";
                        }
                        IsEmpty = str2;
                        StringBuilder sb2 = new StringBuilder(str4.length() + 84);
                        sb2.append("select metadata_fingerprint from raw_events where app_id = ?");
                        sb2.append(str4);
                        sb2.append(" order by rowid limit 1;");
                        cursorRawQuery = sQLiteDatabaseX.rawQuery(sb2.toString(), strArr);
                        if (cursorRawQuery.moveToFirst()) {
                            string2 = cursorRawQuery.getString(0);
                            cursorRawQuery.close();
                            r3 = IsEmpty;
                            cursorRawQuery = sQLiteDatabaseX.query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{r3, string2}, null, null, "rowid", ContentTree.AUDIO_ID);
                            if (cursorRawQuery.moveToFirst()) {
                                zzgu zzguVar8 = zzicVar.f31842f;
                                zzic.m(zzguVar8);
                                zzguVar8.f31769f.b(zzgu.o(r3), "Raw event metadata record is missing. appId");
                            } else {
                                com.google.android.gms.internal.measurement.zzid zzidVar2 = (com.google.android.gms.internal.measurement.zzid) ((com.google.android.gms.internal.measurement.zzic) zzpk.R(com.google.android.gms.internal.measurement.zzid.f0(), cursorRawQuery.getBlob(0))).v();
                                if (cursorRawQuery.moveToNext()) {
                                    zzgu zzguVar9 = zzicVar.f31842f;
                                    zzic.m(zzguVar9);
                                    zzguVar9.f31771i.b(zzgu.o(r3), "Get multiple raw event metadata records, expected one. appId");
                                }
                                cursorRawQuery.close();
                                zzpcVar.f31970a = zzidVar2;
                                jD = D("select (rowid - 1) as max_rowid from raw_events where app_id = ? and metadata_fingerprint != ? order by rowid limit 1;", new String[]{r3, string2}, -1L);
                                if (j3 == -1) {
                                    if (jD != -1) {
                                        j4 = -1;
                                    } else {
                                        str3 = "app_id = ? and metadata_fingerprint = ?";
                                        strArr2 = new String[]{r3, string2};
                                    }
                                    cursorRawQuery = sQLiteDatabaseX.query("raw_events", new String[]{"rowid", "name", "timestamp", DbParams.KEY_DATA, "elapsed_time"}, str3, strArr2, null, null, "rowid", null);
                                    if (cursorRawQuery.moveToFirst()) {
                                        do {
                                            j5 = cursorRawQuery.getLong(0);
                                            byte[] blob3 = cursorRawQuery.getBlob(3);
                                            long j10 = cursorRawQuery.getLong(4);
                                            zzhrVar = (com.google.android.gms.internal.measurement.zzhr) zzpk.R(com.google.android.gms.internal.measurement.zzhs.Q(), blob3);
                                            zzhrVar.F(cursorRawQuery.getString(1));
                                            long j11 = cursorRawQuery.getLong(2);
                                            zzhrVar.l();
                                            ((com.google.android.gms.internal.measurement.zzhs) zzhrVar.f30406c).X(j11);
                                            zzhrVar.l();
                                            ((com.google.android.gms.internal.measurement.zzhs) zzhrVar.f30406c).A(j10);
                                            if (!zzpcVar.a(j5, (com.google.android.gms.internal.measurement.zzhs) zzhrVar.v())) {
                                                break;
                                                break;
                                            }
                                        } while (cursorRawQuery.moveToNext());
                                    } else {
                                        zzgu zzguVar10 = zzicVar.f31842f;
                                        zzic.m(zzguVar10);
                                        zzguVar10.f31771i.b(zzgu.o(r3), "Raw event data disappeared while in transaction. appId");
                                    }
                                } else {
                                    j4 = j3;
                                }
                                if (j4 == -1) {
                                    if (j4 != -1) {
                                        jD = j4;
                                    }
                                } else if (j4 != -1) {
                                    jD = j4;
                                }
                                str3 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                                strArr2 = new String[]{r3, string2, String.valueOf(jD)};
                                cursorRawQuery = sQLiteDatabaseX.query("raw_events", new String[]{"rowid", "name", "timestamp", DbParams.KEY_DATA, "elapsed_time"}, str3, strArr2, null, null, "rowid", null);
                                if (cursorRawQuery.moveToFirst()) {
                                    do {
                                        j5 = cursorRawQuery.getLong(0);
                                        byte[] blob4 = cursorRawQuery.getBlob(3);
                                        long j12 = cursorRawQuery.getLong(4);
                                        zzhrVar = (com.google.android.gms.internal.measurement.zzhr) zzpk.R(com.google.android.gms.internal.measurement.zzhs.Q(), blob4);
                                        zzhrVar.F(cursorRawQuery.getString(1));
                                        long j13 = cursorRawQuery.getLong(2);
                                        zzhrVar.l();
                                        ((com.google.android.gms.internal.measurement.zzhs) zzhrVar.f30406c).X(j13);
                                        zzhrVar.l();
                                        ((com.google.android.gms.internal.measurement.zzhs) zzhrVar.f30406c).A(j12);
                                        if (!zzpcVar.a(j5, (com.google.android.gms.internal.measurement.zzhs) zzhrVar.v())) {
                                            break;
                                            break;
                                        }
                                    } while (cursorRawQuery.moveToNext());
                                } else {
                                    zzgu zzguVar11 = zzicVar.f31842f;
                                    zzic.m(zzguVar11);
                                    zzguVar11.f31771i.b(zzgu.o(r3), "Raw event data disappeared while in transaction. appId");
                                }
                            }
                        }
                    } catch (SQLiteException e6) {
                        e = e6;
                        string = IsEmpty;
                        zzgu zzguVar12 = zzicVar.f31842f;
                        zzic.m(zzguVar12);
                        zzguVar12.f31769f.c("Data loss. Error selecting raw event. appId", zzgu.o(string), e);
                    }
                }
            } catch (SQLiteException e7) {
                e = e7;
                IsEmpty = str;
            }
        } finally {
            if (0 != 0) {
                cursorRawQuery.close();
            }
        }
    }

    public final void U() {
        h();
        X().beginTransaction();
    }

    public final void V() {
        h();
        X().setTransactionSuccessful();
    }

    public final void W() {
        h();
        X().endTransaction();
    }

    public final SQLiteDatabase X() {
        g();
        try {
            return this.d.getWritableDatabase();
        } catch (SQLiteException e2) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.b(e2, "Error opening database");
            throw e2;
        }
    }

    public final void Y(String str) {
        zzbd zzbdVarG;
        I("events_snapshot", str);
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = X().query(DbParams.TABLE_EVENTS, (String[]) Collections.singletonList("name").toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
                if (cursorQuery.moveToFirst()) {
                    do {
                        String string = cursorQuery.getString(0);
                        if (string != null && (zzbdVarG = G(DbParams.TABLE_EVENTS, str, string)) != null) {
                            H("events_snapshot", zzbdVarG);
                        }
                    } while (cursorQuery.moveToNext());
                }
            } catch (SQLiteException e2) {
                zzgu zzguVar = this.f31850a.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31769f.c("Error creating snapshot. appId", zzgu.o(str), e2);
            }
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x00d7 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:7:0x0054  */
    /* JADX WARN: Code duplicated, block: B:9:0x005b  */
    public final void Z(String str) throws Throwable {
        boolean z;
        zzbd zzbdVarG;
        ArrayList arrayList = new ArrayList(Arrays.asList("name", "lifetime_count"));
        zzbd zzbdVarG2 = G(DbParams.TABLE_EVENTS, str, "_f");
        zzbd zzbdVarG3 = G(DbParams.TABLE_EVENTS, str, "_v");
        I(DbParams.TABLE_EVENTS, str);
        Cursor cursorQuery = null;
        boolean z2 = false;
        try {
            cursorQuery = X().query("events_snapshot", (String[]) arrayList.toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
            if (cursorQuery.moveToFirst()) {
                boolean z3 = false;
                z = false;
                do {
                    try {
                        String string = cursorQuery.getString(0);
                        if (cursorQuery.getLong(1) >= 1) {
                            if ("_f".equals(string)) {
                                z3 = true;
                            } else if ("_v".equals(string)) {
                                z = true;
                            }
                        }
                        if (string != null && (zzbdVarG = G("events_snapshot", str, string)) != null) {
                            H(DbParams.TABLE_EVENTS, zzbdVarG);
                        }
                    } catch (SQLiteException e2) {
                        e = e2;
                        z2 = z3;
                        try {
                            zzgu zzguVar = this.f31850a.f31842f;
                            zzic.m(zzguVar);
                            zzguVar.f31769f.c("Error querying snapshot. appId", zzgu.o(str), e);
                            z3 = z2;
                        } catch (Throwable th) {
                            th = th;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            if (z2 && zzbdVarG2 != null) {
                                H(DbParams.TABLE_EVENTS, zzbdVarG2);
                            } else if (!z && zzbdVarG3 != null) {
                                H(DbParams.TABLE_EVENTS, zzbdVarG3);
                            }
                            I("events_snapshot", str);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        z2 = z3;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        if (z2) {
                            if (!z) {
                                H(DbParams.TABLE_EVENTS, zzbdVarG3);
                            }
                        } else if (!z) {
                            H(DbParams.TABLE_EVENTS, zzbdVarG3);
                        }
                        I("events_snapshot", str);
                        throw th;
                    }
                } while (cursorQuery.moveToNext());
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                if (!z3 && zzbdVarG2 != null) {
                    H(DbParams.TABLE_EVENTS, zzbdVarG2);
                } else if (!z && zzbdVarG3 != null) {
                    H(DbParams.TABLE_EVENTS, zzbdVarG3);
                }
            } else {
                cursorQuery.close();
                if (zzbdVarG2 != null) {
                    H(DbParams.TABLE_EVENTS, zzbdVarG2);
                } else if (zzbdVarG3 != null) {
                    H(DbParams.TABLE_EVENTS, zzbdVarG3);
                }
            }
        } catch (SQLiteException e3) {
            e = e3;
            z = false;
        } catch (Throwable th3) {
            th = th3;
            z = false;
        }
        I("events_snapshot", str);
    }

    public final void a0(String str, String str2) {
        Preconditions.e(str);
        Preconditions.e(str2);
        g();
        h();
        try {
            X().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e2) {
            zzic zzicVar = this.f31850a;
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.d("Error deleting user property. appId", zzgu.o(str), zzicVar.f31845j.c(str2), e2);
        }
    }

    public final boolean b0(zzpn zzpnVar) {
        String str = zzpnVar.f32005b;
        g();
        h();
        String str2 = zzpnVar.f32004a;
        String str3 = zzpnVar.f32006c;
        zzpn zzpnVarC0 = c0(str2, str3);
        zzic zzicVar = this.f31850a;
        if (zzpnVarC0 == null) {
            if (zzpp.g0(str3)) {
                if (C("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{str2}) >= Math.max(Math.min(zzicVar.d.p(str2, zzfy.V), 100), 25)) {
                    return false;
                }
            } else if (!"_npa".equals(str3)) {
                long jC = C("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{str2, str});
                zzicVar.getClass();
                if (jC >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str2);
        contentValues.put("origin", str);
        contentValues.put("name", str3);
        contentValues.put("set_timestamp", Long.valueOf(zzpnVar.d));
        T(contentValues, zzpnVar.f32007e);
        try {
            if (X().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.b(zzgu.o(str2), "Failed to insert/update user property (got -1). appId");
            return true;
        } catch (SQLiteException e2) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.c("Error storing user property. appId", zzgu.o(str2), e2);
            return true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009a  */
    /* JADX WARN: Code duplicated, block: B:43:? A[SYNTHETIC] */
    public final zzpn c0(String str, String str2) {
        Throwable th;
        String str3;
        String str4;
        SQLiteException sQLiteException;
        Cursor cursorQuery;
        zzic zzicVar = this.f31850a;
        Preconditions.e(str);
        Preconditions.e(str2);
        g();
        h();
        Cursor cursor = null;
        try {
            cursorQuery = X().query("user_attributes", new String[]{"set_timestamp", "value", "origin"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                try {
                    if (cursorQuery.moveToFirst()) {
                        long j2 = cursorQuery.getLong(0);
                        Object objT = t(cursorQuery, 1);
                        if (objT != null) {
                            str3 = str;
                            str4 = str2;
                            try {
                                zzpn zzpnVar = new zzpn(str3, cursorQuery.getString(2), str4, j2, objT);
                                if (cursorQuery.moveToNext()) {
                                    zzgu zzguVar = zzicVar.f31842f;
                                    zzic.m(zzguVar);
                                    zzguVar.f31769f.b(zzgu.o(str3), "Got multiple records for user property, expected one. appId");
                                }
                                cursorQuery.close();
                                return zzpnVar;
                            } catch (SQLiteException e2) {
                                e = e2;
                            }
                        }
                        sQLiteException = e;
                        zzgu zzguVar2 = zzicVar.f31842f;
                        zzic.m(zzguVar2);
                        zzguVar2.f31769f.d("Error querying user property. appId", zzgu.o(str3), zzicVar.f31845j.c(str4), sQLiteException);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        throw th;
                    }
                    cursor.close();
                    throw th;
                }
            } catch (SQLiteException e3) {
                e = e3;
                str3 = str;
                str4 = str2;
            }
        } catch (SQLiteException e4) {
            str3 = str;
            str4 = str2;
            sQLiteException = e4;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                throw th;
            }
            cursor.close();
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.List] */
    public final List d0(String str) {
        String str2;
        SQLiteException sQLiteException;
        zzic zzicVar = this.f31850a;
        Preconditions.e(str);
        g();
        h();
        ?? arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                zzicVar.getClass();
                cursorQuery = X().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (cursorQuery.moveToFirst()) {
                    while (true) {
                        String string = cursorQuery.getString(0);
                        String string2 = cursorQuery.getString(1);
                        if (string2 == null) {
                            string2 = "";
                        }
                        String str3 = string2;
                        long j2 = cursorQuery.getLong(2);
                        Object objT = t(cursorQuery, 3);
                        if (objT == null) {
                            try {
                                zzgu zzguVar = zzicVar.f31842f;
                                zzic.m(zzguVar);
                                zzguVar.f31769f.b(zzgu.o(str), "Read invalid user property value, ignoring it. appId");
                                str2 = str;
                            } catch (SQLiteException e2) {
                                sQLiteException = e2;
                                str2 = str;
                                zzgu zzguVar2 = zzicVar.f31842f;
                                zzic.m(zzguVar2);
                                zzguVar2.f31769f.c("Error querying user properties. appId", zzgu.o(str2), sQLiteException);
                                arrayList = Collections.EMPTY_LIST;
                            }
                        } else {
                            str2 = str;
                            arrayList.add(new zzpn(str2, str3, string, j2, objT));
                        }
                        try {
                            if (!cursorQuery.moveToNext()) {
                                break;
                            }
                            str = str2;
                        } catch (SQLiteException e3) {
                            e = e3;
                            sQLiteException = e;
                            zzgu zzguVar3 = zzicVar.f31842f;
                            zzic.m(zzguVar3);
                            zzguVar3.f31769f.c("Error querying user properties. appId", zzgu.o(str2), sQLiteException);
                            arrayList = Collections.EMPTY_LIST;
                        }
                    }
                }
            } catch (SQLiteException e4) {
                e = e4;
                str2 = str;
            }
            return arrayList;
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x012c  */
    /* JADX WARN: Code duplicated, block: B:53:0x0133  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.List] */
    public final List e0(String str, String str2, String str3) throws Throwable {
        Cursor cursor;
        String str4;
        Cursor cursorQuery;
        String str5;
        zzic zzicVar = this.f31850a;
        Preconditions.e(str);
        g();
        h();
        ?? arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList(3);
            String str6 = str;
            arrayList2.add(str6);
            StringBuilder sb = new StringBuilder("app_id=?");
            if (!TextUtils.isEmpty(str2)) {
                arrayList2.add(str2);
                sb.append(" and origin=?");
            }
            if (!TextUtils.isEmpty(str3)) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + 1);
                sb2.append(str3);
                sb2.append(Browse.CAPS_WILDCARD);
                arrayList2.add(sb2.toString());
                sb.append(" and name glob ?");
            }
            String[] strArr = (String[]) arrayList2.toArray(new String[arrayList2.size()]);
            String string = sb.toString();
            zzicVar.getClass();
            zzgu zzguVar = zzicVar.f31842f;
            cursorQuery = X().query("user_attributes", new String[]{"name", "set_timestamp", "value", "origin"}, string, strArr, null, null, "rowid", "1001");
            try {
                try {
                    if (cursorQuery.moveToFirst()) {
                        str4 = str2;
                        while (true) {
                            try {
                                if (arrayList.size() >= 1000) {
                                    zzic.m(zzguVar);
                                    zzguVar.f31769f.b(1000, "Read more than the max allowed user properties, ignoring excess");
                                    break;
                                }
                                String string2 = cursorQuery.getString(0);
                                long j2 = cursorQuery.getLong(1);
                                Object objT = t(cursorQuery, 2);
                                String string3 = cursorQuery.getString(3);
                                if (objT == null) {
                                    try {
                                        zzic.m(zzguVar);
                                        zzguVar.f31769f.d("(2)Read invalid user property value, ignoring it", zzgu.o(str6), string3, str3);
                                        str5 = string3;
                                    } catch (SQLiteException e2) {
                                        e = e2;
                                        str5 = string3;
                                        cursor = cursorQuery;
                                        str4 = str5;
                                        try {
                                            zzgu zzguVar2 = zzicVar.f31842f;
                                            zzic.m(zzguVar2);
                                            zzguVar2.f31769f.d("(2)Error querying user properties", zzgu.o(str), str4, e);
                                            arrayList = Collections.EMPTY_LIST;
                                            cursorQuery = cursor;
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            return arrayList;
                                        } catch (Throwable th) {
                                            th = th;
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            throw th;
                                        }
                                    }
                                } else {
                                    str5 = string3;
                                    arrayList.add(new zzpn(str, str5, string2, j2, objT));
                                }
                                try {
                                    if (!cursorQuery.moveToNext()) {
                                        break;
                                    }
                                    str6 = str;
                                    str4 = str5;
                                } catch (SQLiteException e3) {
                                    e = e3;
                                    cursor = cursorQuery;
                                    str4 = str5;
                                    zzgu zzguVar3 = zzicVar.f31842f;
                                    zzic.m(zzguVar3);
                                    zzguVar3.f31769f.d("(2)Error querying user properties", zzgu.o(str), str4, e);
                                    arrayList = Collections.EMPTY_LIST;
                                    cursorQuery = cursor;
                                }
                            } catch (SQLiteException e4) {
                                e = e4;
                                cursor = cursorQuery;
                                zzgu zzguVar4 = zzicVar.f31842f;
                                zzic.m(zzguVar4);
                                zzguVar4.f31769f.d("(2)Error querying user properties", zzgu.o(str), str4, e);
                                arrayList = Collections.EMPTY_LIST;
                                cursorQuery = cursor;
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                return arrayList;
                            }
                        }
                    }
                } catch (SQLiteException e5) {
                    e = e5;
                    str4 = str2;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e6) {
            e = e6;
            str4 = str2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return arrayList;
    }

    public final boolean f0(zzah zzahVar) {
        g();
        h();
        String str = zzahVar.f31543b;
        Preconditions.h(str);
        zzpn zzpnVarC0 = c0(str, zzahVar.d.f32000c);
        zzic zzicVar = this.f31850a;
        if (zzpnVarC0 == null) {
            long jC = C("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            zzicVar.getClass();
            if (jC >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", zzahVar.f31544c);
        contentValues.put("name", zzahVar.d.f32000c);
        Object objW1 = zzahVar.d.W1();
        Preconditions.h(objW1);
        T(contentValues, objW1);
        contentValues.put("active", Boolean.valueOf(zzahVar.f31546f));
        contentValues.put("trigger_event_name", zzahVar.g);
        contentValues.put("trigger_timeout", Long.valueOf(zzahVar.f31548i));
        zzbh zzbhVar = zzahVar.f31547h;
        zzpp zzppVar = zzicVar.f31844i;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.k(zzppVar);
        contentValues.put("timed_out_event", zzpp.P(zzbhVar));
        contentValues.put("creation_timestamp", Long.valueOf(zzahVar.f31545e));
        zzic.k(zzppVar);
        contentValues.put("triggered_event", zzpp.P(zzahVar.f31549j));
        contentValues.put("triggered_timestamp", Long.valueOf(zzahVar.d.d));
        contentValues.put("time_to_live", Long.valueOf(zzahVar.f31550k));
        contentValues.put("expired_event", zzpp.P(zzahVar.l));
        try {
            if (X().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            zzic.m(zzguVar);
            zzguVar.f31769f.b(zzgu.o(str), "Failed to insert/update conditional user property (got -1)");
            return true;
        } catch (SQLiteException e2) {
            zzic.m(zzguVar);
            zzguVar.f31769f.c("Error storing conditional user property", zzgu.o(str), e2);
            return true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x010d  */
    /* JADX WARN: Code duplicated, block: B:39:0x0113  */
    /* JADX WARN: Not initialized variable reg: 8, insn: 0x00ed: MOVE (r7 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]), block:B:29:0x00ed */
    public final zzah g0(String str, String str2) throws Throwable {
        String str3;
        Cursor cursorQuery;
        Cursor cursor;
        zzic zzicVar = this.f31850a;
        Preconditions.e(str);
        Preconditions.e(str2);
        g();
        h();
        Cursor cursor2 = null;
        try {
            try {
                cursorQuery = X().query("conditional_properties", new String[]{"origin", "value", "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    String string = cursorQuery.getString(0);
                    if (string == null) {
                        string = "";
                    }
                    String str4 = string;
                    Object objT = t(cursorQuery, 1);
                    boolean z = cursorQuery.getInt(2) != 0;
                    String string2 = cursorQuery.getString(3);
                    long j2 = cursorQuery.getLong(4);
                    zzpk zzpkVar = this.f31948b.g;
                    zzpg.U(zzpkVar);
                    byte[] blob = cursorQuery.getBlob(5);
                    Parcelable.Creator<zzbh> creator = zzbh.CREATOR;
                    zzbh zzbhVar = (zzbh) zzpkVar.J(blob, creator);
                    long j3 = cursorQuery.getLong(6);
                    zzpg.U(zzpkVar);
                    zzbh zzbhVar2 = (zzbh) zzpkVar.J(cursorQuery.getBlob(7), creator);
                    long j4 = cursorQuery.getLong(8);
                    long j5 = cursorQuery.getLong(9);
                    zzpg.U(zzpkVar);
                    str3 = str2;
                    try {
                        zzah zzahVar = new zzah(str, str4, new zzpl(j4, objT, str3, str4), j3, z, string2, zzbhVar, j2, zzbhVar2, j5, (zzbh) zzpkVar.J(cursorQuery.getBlob(10), creator));
                        if (cursorQuery.moveToNext()) {
                            zzgu zzguVar = zzicVar.f31842f;
                            zzic.m(zzguVar);
                            zzguVar.f31769f.c("Got multiple records for conditional property, expected one", zzgu.o(str), zzicVar.f31845j.c(str3));
                        }
                        cursorQuery.close();
                        return zzahVar;
                    } catch (SQLiteException e2) {
                        e = e2;
                    }
                } catch (SQLiteException e3) {
                    e = e3;
                    str3 = str2;
                }
            } catch (Throwable th) {
                th = th;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e4) {
            e = e4;
            str3 = str2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
        zzgu zzguVar2 = zzicVar.f31842f;
        zzic.m(zzguVar2);
        zzguVar2.f31769f.d("Error querying conditional property", zzgu.o(str), zzicVar.f31845j.c(str3), e);
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final void h0(String str, String str2) {
        Preconditions.e(str);
        Preconditions.e(str2);
        g();
        h();
        try {
            X().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e2) {
            zzic zzicVar = this.f31850a;
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.d("Error deleting conditional property", zzgu.o(str), zzicVar.f31845j.c(str2), e2);
        }
    }

    public final List i0(String str, String str2, String str3) {
        Preconditions.e(str);
        g();
        h();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat(Browse.CAPS_WILDCARD));
            sb.append(" and name glob ?");
        }
        return j0(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    @Override // com.google.android.gms.measurement.internal.zzos
    public final void j() {
        zzic zzicVar = this.f31850a;
        if (zzicVar.d.r(null, zzfy.e1)) {
            zzhz zzhzVar = zzicVar.g;
            zzic.m(zzhzVar);
            zzhzVar.p(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzas
                @Override // java.lang.Runnable
                public final void run() {
                    zzaw zzawVar = this.zza;
                    try {
                        SQLiteDatabase sQLiteDatabaseX = zzawVar.X();
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("elapsed_time", (Long) 0L);
                        sQLiteDatabaseX.update("raw_events", contentValues, null, null);
                    } catch (SQLiteException e2) {
                        zzgu zzguVar = zzawVar.f31850a.f31842f;
                        zzic.m(zzguVar);
                        zzguVar.f31769f.b(e2, "Failed to remove elapsed times from raw events table");
                    }
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.List] */
    public final List j0(String str, String[] strArr) {
        zzic zzicVar = this.f31850a;
        g();
        h();
        ?? arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                zzicVar.getClass();
                cursorQuery = X().query("conditional_properties", new String[]{"app_id", "origin", "name", "value", "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"}, str, strArr, null, null, "rowid", "1001");
                if (cursorQuery.moveToFirst()) {
                    do {
                        if (arrayList.size() >= 1000) {
                            zzgu zzguVar = zzicVar.f31842f;
                            zzic.m(zzguVar);
                            zzguVar.f31769f.b(1000, "Read more than the max allowed conditional properties, ignoring extra");
                            break;
                        }
                        String string = cursorQuery.getString(0);
                        String string2 = cursorQuery.getString(1);
                        String string3 = cursorQuery.getString(2);
                        Object objT = t(cursorQuery, 3);
                        boolean z = cursorQuery.getInt(4) != 0;
                        String string4 = cursorQuery.getString(5);
                        long j2 = cursorQuery.getLong(6);
                        zzpk zzpkVar = this.f31948b.g;
                        zzpg.U(zzpkVar);
                        byte[] blob = cursorQuery.getBlob(7);
                        Parcelable.Creator<zzbh> creator = zzbh.CREATOR;
                        zzbh zzbhVar = (zzbh) zzpkVar.J(blob, creator);
                        long j3 = cursorQuery.getLong(8);
                        zzpg.U(zzpkVar);
                        zzbh zzbhVar2 = (zzbh) zzpkVar.J(cursorQuery.getBlob(9), creator);
                        long j4 = cursorQuery.getLong(10);
                        long j5 = cursorQuery.getLong(11);
                        zzpg.U(zzpkVar);
                        arrayList.add(new zzah(string, string2, new zzpl(j4, objT, string3, string2), j3, z, string4, zzbhVar, j2, zzbhVar2, j5, (zzbh) zzpkVar.J(cursorQuery.getBlob(12), creator)));
                    } while (cursorQuery.moveToNext());
                }
            } catch (SQLiteException e2) {
                zzgu zzguVar2 = zzicVar.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31769f.b(e2, "Error querying conditional user property value");
                arrayList = Collections.EMPTY_LIST;
            }
            return arrayList;
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    public final long k(String str, com.google.android.gms.internal.measurement.zzib zzibVar, String str2, Map map, zzls zzlsVar, Long l2) {
        int iDelete;
        g();
        h();
        Preconditions.h(zzibVar);
        Preconditions.e(str);
        g();
        h();
        boolean zR = R();
        zzic zzicVar = this.f31850a;
        if (zR) {
            zzpg zzpgVar = this.f31948b;
            long jA = zzpgVar.f31986i.f31924f.a();
            DefaultClock defaultClock = zzicVar.f31846k;
            zzgu zzguVar = zzicVar.f31842f;
            defaultClock.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (Math.abs(jElapsedRealtime - jA) > ((Long) zzfy.M.a(null)).longValue()) {
                zzpgVar.f31986i.f31924f.b(jElapsedRealtime);
                g();
                h();
                if (R() && (iDelete = X().delete("upload_queue", K(), new String[0])) > 0) {
                    zzic.m(zzguVar);
                    zzguVar.n.b(Integer.valueOf(iDelete), "Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted");
                }
                Preconditions.e(str);
                g();
                h();
                try {
                    int iP = zzicVar.d.p(str, zzfy.A);
                    if (iP > 0) {
                        X().delete("upload_queue", "rowid in (SELECT rowid FROM upload_queue WHERE app_id=? ORDER BY rowid DESC LIMIT -1 OFFSET ?)", new String[]{str, String.valueOf(iP)});
                    }
                } catch (SQLiteException e2) {
                    zzic.m(zzguVar);
                    zzguVar.f31769f.c("Error deleting over the limit queued batches. appId", zzgu.o(str), e2);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            String str3 = (String) entry.getKey();
            String str4 = (String) entry.getValue();
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 1 + String.valueOf(str4).length());
            sb.append(str3);
            sb.append("=");
            sb.append(str4);
            arrayList.add(sb.toString());
        }
        byte[] bArrI = zzibVar.i();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("measurement_batch", bArrI);
        contentValues.put("upload_uri", str2);
        contentValues.put("upload_headers", TextUtils.join("\r\n", arrayList));
        contentValues.put("upload_type", Integer.valueOf(zzlsVar.d0()));
        DefaultClock defaultClock2 = zzicVar.f31846k;
        zzgu zzguVar2 = zzicVar.f31842f;
        defaultClock2.getClass();
        contentValues.put("creation_timestamp", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("retry_count", (Integer) 0);
        if (l2 != null) {
            contentValues.put("associated_row_id", l2);
        }
        try {
            long jInsert = X().insert("upload_queue", null, contentValues);
            if (jInsert != -1) {
                return jInsert;
            }
            zzic.m(zzguVar2);
            zzguVar2.f31769f.b(str, "Failed to insert MeasurementBatch (got -1) to upload_queue. appId");
            return -1L;
        } catch (SQLiteException e3) {
            zzic.m(zzguVar2);
            zzguVar2.f31769f.c("Error storing MeasurementBatch to upload_queue. appId", str, e3);
            return -1L;
        }
    }

    /* JADX WARN: Code duplicated, block: B:131:0x0405  */
    public final zzh k0(String str) {
        Cursor cursorQuery;
        Boolean boolValueOf;
        String string;
        zzic zzicVar = this.f31850a;
        Preconditions.e(str);
        g();
        h();
        Cursor cursor = null;
        try {
            cursorQuery = X().query("apps", new String[]{"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", "app_version", "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", "day", "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time", "app_version_int", "firebase_instance_id", "daily_error_events_count", "daily_realtime_events_count", "health_monitor_sample", "android_id", "adid_reporting_enabled", "admob_app_id", "dynamite_version", "safelisted_events", "ga_app_id", "session_stitching_token", "sgtm_upload_enabled", "target_os_version", "session_stitching_token_hash", "ad_services_version", "unmatched_first_open_without_ad_id", "npa_metadata_value", "attribution_eligibility_status", "sgtm_preview_key", "dma_consent_state", "daily_realtime_dcu_count", "bundle_delivery_index", "serialized_npa_metadata", "unmatched_pfo", "unmatched_uwa", "ad_campaign_info", "client_upload_eligibility", "last_diagnostics_signal_upload_timestamp"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (cursorQuery.moveToFirst()) {
                        zzpg zzpgVar = this.f31948b;
                        zzh zzhVar = new zzh(zzpgVar.l, str);
                        zzic zzicVar2 = zzhVar.f31778a;
                        zzjl zzjlVarF = zzpgVar.f(str);
                        zzjk zzjkVar = zzjk.ANALYTICS_STORAGE;
                        if (zzjlVarF.i(zzjkVar)) {
                            zzhVar.G(cursorQuery.getString(0));
                        }
                        boolean z = true;
                        zzhVar.I(cursorQuery.getString(1));
                        if (zzpgVar.f(str).i(zzjk.AD_STORAGE)) {
                            zzhVar.J(cursorQuery.getString(2));
                        }
                        zzhVar.e(cursorQuery.getLong(3));
                        zzhVar.M(cursorQuery.getLong(4));
                        zzhVar.N(cursorQuery.getLong(5));
                        zzhVar.P(cursorQuery.getString(6));
                        zzhVar.S(cursorQuery.getString(7));
                        zzhVar.T(cursorQuery.getLong(8));
                        zzhVar.a(cursorQuery.getLong(9));
                        zzhVar.d(cursorQuery.isNull(10) || cursorQuery.getInt(10) != 0);
                        zzhVar.i(cursorQuery.getLong(11));
                        zzhVar.j(cursorQuery.getLong(12));
                        zzhVar.k(cursorQuery.getLong(13));
                        zzhVar.l(cursorQuery.getLong(14));
                        zzhVar.f(cursorQuery.getLong(15));
                        zzhVar.g(cursorQuery.getLong(16));
                        zzhVar.R(cursorQuery.isNull(17) ? -2147483648L : cursorQuery.getInt(17));
                        zzhVar.L(cursorQuery.getString(18));
                        zzhVar.n(cursorQuery.getLong(19));
                        zzhVar.m(cursorQuery.getLong(20));
                        zzhVar.w(cursorQuery.getString(21));
                        boolean z2 = cursorQuery.isNull(23) || cursorQuery.getInt(23) != 0;
                        zzhz zzhzVar = zzicVar2.g;
                        zzic.m(zzhzVar);
                        zzhzVar.g();
                        zzhVar.R |= zzhVar.p != z2;
                        zzhVar.p = z2;
                        zzhVar.c(cursorQuery.isNull(25) ? 0L : cursorQuery.getLong(25));
                        if (!cursorQuery.isNull(26)) {
                            zzhVar.y(Arrays.asList(cursorQuery.getString(26).split(",", -1)));
                        }
                        if (zzpgVar.f(str).i(zzjkVar)) {
                            String string2 = cursorQuery.getString(28);
                            zzhz zzhzVar2 = zzicVar2.g;
                            zzic.m(zzhzVar2);
                            zzhzVar2.g();
                            zzhVar.R |= !Objects.equals(zzhVar.t, string2);
                            zzhVar.t = string2;
                        }
                        boolean z3 = (cursorQuery.isNull(29) || cursorQuery.getInt(29) == 0) ? false : true;
                        zzhz zzhzVar3 = zzicVar2.g;
                        zzic.m(zzhzVar3);
                        zzhzVar3.g();
                        zzhVar.R |= zzhVar.u != z3;
                        zzhVar.u = z3;
                        zzhVar.r(cursorQuery.getLong(39));
                        String string3 = cursorQuery.getString(36);
                        zzhz zzhzVar4 = zzicVar2.g;
                        zzic.m(zzhzVar4);
                        zzhzVar4.g();
                        zzhVar.R |= zzhVar.C != string3;
                        zzhVar.C = string3;
                        zzhVar.A(cursorQuery.getLong(30));
                        zzhVar.B(cursorQuery.getLong(31));
                        zzaif.a();
                        if (zzicVar.d.r(str, zzfy.O0)) {
                            int i2 = cursorQuery.getInt(32);
                            zzhz zzhzVar5 = zzicVar2.g;
                            zzic.m(zzhzVar5);
                            zzhzVar5.g();
                            zzhVar.R |= zzhVar.x != i2;
                            zzhVar.x = i2;
                            zzhVar.C(cursorQuery.getLong(35));
                        }
                        boolean z4 = (cursorQuery.isNull(33) || cursorQuery.getInt(33) == 0) ? false : true;
                        zzhz zzhzVar6 = zzicVar2.g;
                        zzic.m(zzhzVar6);
                        zzhzVar6.g();
                        zzhVar.R |= zzhVar.y != z4;
                        zzhVar.y = z4;
                        if (cursorQuery.isNull(34)) {
                            boolValueOf = null;
                        } else {
                            boolValueOf = Boolean.valueOf(cursorQuery.getInt(34) != 0);
                        }
                        zzhz zzhzVar7 = zzicVar2.g;
                        zzic.m(zzhzVar7);
                        zzhzVar7.g();
                        zzhVar.R |= !Objects.equals(zzhVar.q, boolValueOf);
                        zzhVar.q = boolValueOf;
                        zzhVar.p(cursorQuery.getInt(37));
                        zzhVar.q(cursorQuery.getInt(38));
                        if (cursorQuery.isNull(40)) {
                            string = "";
                        } else {
                            string = cursorQuery.getString(40);
                            Preconditions.h(string);
                        }
                        zzhz zzhzVar8 = zzicVar2.g;
                        zzic.m(zzhzVar8);
                        zzhzVar8.g();
                        zzhVar.R |= zzhVar.G != string;
                        zzhVar.G = string;
                        if (!cursorQuery.isNull(41)) {
                            Long lValueOf = Long.valueOf(cursorQuery.getLong(41));
                            zzhz zzhzVar9 = zzicVar2.g;
                            zzic.m(zzhzVar9);
                            zzhzVar9.g();
                            zzhVar.R |= !Objects.equals(zzhVar.z, lValueOf);
                            zzhVar.z = lValueOf;
                        }
                        if (!cursorQuery.isNull(42)) {
                            Long lValueOf2 = Long.valueOf(cursorQuery.getLong(42));
                            zzhz zzhzVar10 = zzicVar2.g;
                            zzic.m(zzhzVar10);
                            zzhzVar10.g();
                            zzhVar.R |= !Objects.equals(zzhVar.A, lValueOf2);
                            zzhVar.A = lValueOf2;
                        }
                        byte[] blob = cursorQuery.getBlob(43);
                        zzhz zzhzVar11 = zzicVar2.g;
                        zzic.m(zzhzVar11);
                        zzhzVar11.g();
                        zzhVar.R |= zzhVar.H != blob;
                        zzhVar.H = blob;
                        if (!cursorQuery.isNull(44)) {
                            int i3 = cursorQuery.getInt(44);
                            zzhz zzhzVar12 = zzicVar2.g;
                            zzic.m(zzhzVar12);
                            zzhzVar12.g();
                            boolean z5 = zzhVar.R;
                            if (zzhVar.I == i3) {
                                z = false;
                            }
                            zzhVar.R = z | z5;
                            zzhVar.I = i3;
                        }
                        if (zzicVar.d.r(str, zzfy.j1) && !cursorQuery.isNull(45)) {
                            zzhVar.u(cursorQuery.getLong(45));
                        }
                        zzhz zzhzVar13 = zzicVar2.g;
                        zzic.m(zzhzVar13);
                        zzhzVar13.g();
                        zzhVar.R = false;
                        if (cursorQuery.moveToNext()) {
                            zzgu zzguVar = zzicVar.f31842f;
                            zzic.m(zzguVar);
                            zzguVar.f31769f.b(zzgu.o(str), "Got multiple records for app, expected one. appId");
                        }
                        cursorQuery.close();
                        return zzhVar;
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    zzgu zzguVar2 = zzicVar.f31842f;
                    zzic.m(zzguVar2);
                    zzguVar2.f31769f.c("Error querying app. appId", zzgu.o(str), e);
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.ArrayList] */
    public final List l(String str, zzoo zzooVar, int i2) {
        ?? arrayList;
        Preconditions.e(str);
        g();
        h();
        Cursor cursorQuery = null;
        try {
            SQLiteDatabase sQLiteDatabaseX = X();
            String[] strArr = {"rowId", "app_id", "measurement_batch", "upload_uri", "upload_headers", "upload_type", "retry_count", "creation_timestamp", "associated_row_id", "last_upload_timestamp"};
            String strL = L(zzooVar.f31954b);
            String strK = K();
            StringBuilder sb = new StringBuilder(strL.length() + 17 + strK.length());
            sb.append("app_id=?");
            sb.append(strL);
            sb.append(" AND NOT ");
            sb.append(strK);
            cursorQuery = sQLiteDatabaseX.query("upload_queue", strArr, sb.toString(), new String[]{str}, null, null, "creation_timestamp ASC", i2 > 0 ? String.valueOf(i2) : null);
            arrayList = new ArrayList();
            while (cursorQuery.moveToNext()) {
                zzpj zzpjVarJ = J(str, cursorQuery.getLong(0), cursorQuery.getBlob(2), cursorQuery.getString(3), cursorQuery.getString(4), cursorQuery.getInt(5), cursorQuery.getInt(6), cursorQuery.getLong(7), cursorQuery.getLong(8), cursorQuery.getLong(9));
                if (zzpjVarJ != null) {
                    arrayList.add(zzpjVarJ);
                }
            }
        } catch (SQLiteException e2) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.c("Error to querying MeasurementBatch from upload_queue. appId", str, e2);
            arrayList = Collections.EMPTY_LIST;
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
        return arrayList;
    }

    public final void l0(zzh zzhVar, boolean z) {
        zzic zzicVar = zzhVar.f31778a;
        g();
        h();
        String strE = zzhVar.E();
        Preconditions.h(strE);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", strE);
        zzpg zzpgVar = this.f31948b;
        if (z) {
            contentValues.put("app_instance_id", (String) null);
        } else if (zzpgVar.f(strE).i(zzjk.ANALYTICS_STORAGE)) {
            contentValues.put("app_instance_id", zzhVar.F());
        }
        contentValues.put("gmp_app_id", zzhVar.H());
        if (zzpgVar.f(strE).i(zzjk.AD_STORAGE)) {
            zzhz zzhzVar = zzicVar.g;
            zzic.m(zzhzVar);
            zzhzVar.g();
            contentValues.put("resettable_device_id_hash", zzhVar.f31781e);
        }
        zzhz zzhzVar2 = zzicVar.g;
        zzic.m(zzhzVar2);
        zzhzVar2.g();
        contentValues.put("last_bundle_index", Long.valueOf(zzhVar.g));
        zzhz zzhzVar3 = zzicVar.g;
        zzic.m(zzhzVar3);
        zzhzVar3.g();
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzhVar.f31783h));
        zzhz zzhzVar4 = zzicVar.g;
        zzic.m(zzhzVar4);
        zzhzVar4.g();
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzhVar.f31784i));
        contentValues.put("app_version", zzhVar.O());
        zzhz zzhzVar5 = zzicVar.g;
        zzic.m(zzhzVar5);
        zzhzVar5.g();
        contentValues.put("app_store", zzhVar.l);
        zzhz zzhzVar6 = zzicVar.g;
        zzic.m(zzhzVar6);
        zzhzVar6.g();
        contentValues.put("gmp_version", Long.valueOf(zzhVar.m));
        zzhz zzhzVar7 = zzicVar.g;
        zzic.m(zzhzVar7);
        zzhzVar7.g();
        contentValues.put("dev_cert_hash", Long.valueOf(zzhVar.n));
        zzhz zzhzVar8 = zzicVar.g;
        zzic.m(zzhzVar8);
        zzhzVar8.g();
        contentValues.put("measurement_enabled", Boolean.valueOf(zzhVar.o));
        zzhz zzhzVar9 = zzicVar.g;
        zzhz zzhzVar10 = zzicVar.g;
        zzic.m(zzhzVar9);
        zzhzVar9.g();
        contentValues.put("day", Long.valueOf(zzhVar.K));
        zzic.m(zzhzVar10);
        zzhzVar10.g();
        contentValues.put("daily_public_events_count", Long.valueOf(zzhVar.L));
        zzic.m(zzhzVar10);
        zzhzVar10.g();
        contentValues.put("daily_events_count", Long.valueOf(zzhVar.M));
        zzic.m(zzhzVar10);
        zzhzVar10.g();
        contentValues.put("daily_conversions_count", Long.valueOf(zzhVar.N));
        zzhz zzhzVar11 = zzicVar.g;
        zzic.m(zzhzVar11);
        zzhzVar11.g();
        contentValues.put("config_fetched_time", Long.valueOf(zzhVar.S));
        zzhz zzhzVar12 = zzicVar.g;
        zzic.m(zzhzVar12);
        zzhzVar12.g();
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzhVar.T));
        contentValues.put("app_version_int", Long.valueOf(zzhVar.Q()));
        contentValues.put("firebase_instance_id", zzhVar.K());
        zzic.m(zzhzVar10);
        zzhzVar10.g();
        contentValues.put("daily_error_events_count", Long.valueOf(zzhVar.O));
        zzic.m(zzhzVar10);
        zzhzVar10.g();
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzhVar.P));
        zzic.m(zzhzVar10);
        zzhzVar10.g();
        contentValues.put("health_monitor_sample", zzhVar.Q);
        contentValues.put("android_id", (Long) 0L);
        zzhz zzhzVar13 = zzicVar.g;
        zzic.m(zzhzVar13);
        zzhzVar13.g();
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(zzhVar.p));
        contentValues.put("dynamite_version", Long.valueOf(zzhVar.b()));
        if (zzpgVar.f(strE).i(zzjk.ANALYTICS_STORAGE)) {
            zzhz zzhzVar14 = zzicVar.g;
            zzic.m(zzhzVar14);
            zzhzVar14.g();
            contentValues.put("session_stitching_token", zzhVar.t);
        }
        contentValues.put("sgtm_upload_enabled", Boolean.valueOf(zzhVar.z()));
        zzhz zzhzVar15 = zzicVar.g;
        zzic.m(zzhzVar15);
        zzhzVar15.g();
        contentValues.put("target_os_version", Long.valueOf(zzhVar.v));
        zzhz zzhzVar16 = zzicVar.g;
        zzic.m(zzhzVar16);
        zzhzVar16.g();
        contentValues.put("session_stitching_token_hash", Long.valueOf(zzhVar.w));
        zzaif.a();
        zzic zzicVar2 = this.f31850a;
        zzal zzalVar = zzicVar2.d;
        zzgu zzguVar = zzicVar2.f31842f;
        if (zzalVar.r(strE, zzfy.O0)) {
            zzhz zzhzVar17 = zzicVar.g;
            zzic.m(zzhzVar17);
            zzhzVar17.g();
            contentValues.put("ad_services_version", Integer.valueOf(zzhVar.x));
            zzhz zzhzVar18 = zzicVar.g;
            zzic.m(zzhzVar18);
            zzhzVar18.g();
            contentValues.put("attribution_eligibility_status", Long.valueOf(zzhVar.B));
        }
        zzhz zzhzVar19 = zzicVar.g;
        zzic.m(zzhzVar19);
        zzhzVar19.g();
        contentValues.put("unmatched_first_open_without_ad_id", Boolean.valueOf(zzhVar.y));
        contentValues.put("npa_metadata_value", zzhVar.x());
        zzhz zzhzVar20 = zzicVar.g;
        zzic.m(zzhzVar20);
        zzhzVar20.g();
        contentValues.put("bundle_delivery_index", Long.valueOf(zzhVar.F));
        contentValues.put("sgtm_preview_key", zzhVar.D());
        zzic.m(zzhzVar10);
        zzhzVar10.g();
        contentValues.put("dma_consent_state", Integer.valueOf(zzhVar.D));
        zzic.m(zzhzVar10);
        zzhzVar10.g();
        contentValues.put("daily_realtime_dcu_count", Integer.valueOf(zzhVar.E));
        contentValues.put("serialized_npa_metadata", zzhVar.s());
        contentValues.put("client_upload_eligibility", Integer.valueOf(zzhVar.t()));
        zzhz zzhzVar21 = zzicVar.g;
        zzic.m(zzhzVar21);
        zzhzVar21.g();
        ArrayList arrayList = zzhVar.s;
        if (arrayList != null) {
            if (arrayList.isEmpty()) {
                zzic.m(zzguVar);
                zzguVar.f31771i.b(strE, "Safelisted events should not be an empty list. appId");
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", arrayList));
            }
        }
        ((zzahl) zzahk.f30507c.f30508b.get()).getClass();
        if (zzalVar.r(null, zzfy.K0) && !contentValues.containsKey("safelisted_events")) {
            contentValues.put("safelisted_events", (String) null);
        }
        zzhz zzhzVar22 = zzicVar.g;
        zzic.m(zzhzVar22);
        zzhzVar22.g();
        contentValues.put("unmatched_pfo", zzhVar.z);
        zzhz zzhzVar23 = zzicVar.g;
        zzic.m(zzhzVar23);
        zzhzVar23.g();
        contentValues.put("unmatched_uwa", zzhVar.A);
        zzhz zzhzVar24 = zzicVar.g;
        zzic.m(zzhzVar24);
        zzhzVar24.g();
        contentValues.put("ad_campaign_info", zzhVar.H);
        if (zzalVar.r(strE, zzfy.j1)) {
            zzhz zzhzVar25 = zzicVar.g;
            zzic.m(zzhzVar25);
            zzhzVar25.g();
            contentValues.put("last_diagnostics_signal_upload_timestamp", Long.valueOf(zzhVar.J));
        }
        try {
            SQLiteDatabase sQLiteDatabaseX = X();
            if (sQLiteDatabaseX.update("apps", contentValues, "app_id = ?", new String[]{strE}) == 0 && sQLiteDatabaseX.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                zzic.m(zzguVar);
                zzguVar.f31769f.b(zzgu.o(strE), "Failed to insert/update app (got -1). appId");
            }
        } catch (SQLiteException e2) {
            zzic.m(zzguVar);
            zzguVar.f31769f.c("Error storing app. appId", zzgu.o(strE), e2);
        }
    }

    public final boolean m(String str) {
        zzls[] zzlsVarArr = {zzls.GOOGLE_SIGNAL};
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Integer.valueOf(zzlsVarArr[0].d0()));
        String strL = L(arrayList);
        String strK = K();
        return C(tr.l(new StringBuilder((strL.length() + 61) + strK.length()), "SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=?", strL, " AND NOT ", strK), new String[]{str}) != 0;
    }

    public final zzar m0(long j2, String str, boolean z, boolean z2, boolean z3, boolean z4) {
        return n0(j2, str, 1L, false, false, z, false, z2, z3, z4);
    }

    public final void n(Long l2) {
        zzic zzicVar = this.f31850a;
        g();
        h();
        try {
            if (X().delete("upload_queue", "rowid=?", new String[]{l2.toString()}) != 1) {
                zzgu zzguVar = zzicVar.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31771i.a("Deleted fewer rows from upload_queue than expected");
            }
        } catch (SQLiteException e2) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.b(e2, "Failed to delete a MeasurementBatch in a upload_queue table");
            throw e2;
        }
    }

    public final zzar n0(long j2, String str, long j3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        zzic zzicVar = this.f31850a;
        Preconditions.e(str);
        g();
        h();
        String[] strArr = {str};
        zzar zzarVar = new zzar();
        Cursor cursorQuery = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseX = X();
                cursorQuery = sQLiteDatabaseX.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count", "daily_realtime_dcu_count", "daily_registered_triggers_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (cursorQuery.moveToFirst()) {
                    if (cursorQuery.getLong(0) == j2) {
                        zzarVar.f31561b = cursorQuery.getLong(1);
                        zzarVar.f31560a = cursorQuery.getLong(2);
                        zzarVar.f31562c = cursorQuery.getLong(3);
                        zzarVar.d = cursorQuery.getLong(4);
                        zzarVar.f31563e = cursorQuery.getLong(5);
                        zzarVar.f31564f = cursorQuery.getLong(6);
                        zzarVar.g = cursorQuery.getLong(7);
                    }
                    if (z) {
                        zzarVar.f31561b += j3;
                    }
                    if (z2) {
                        zzarVar.f31560a += j3;
                    }
                    if (z3) {
                        zzarVar.f31562c += j3;
                    }
                    if (z4) {
                        zzarVar.d += j3;
                    }
                    if (z5) {
                        zzarVar.f31563e += j3;
                    }
                    if (z6) {
                        zzarVar.f31564f += j3;
                    }
                    if (z7) {
                        zzarVar.g += j3;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("day", Long.valueOf(j2));
                    contentValues.put("daily_public_events_count", Long.valueOf(zzarVar.f31560a));
                    contentValues.put("daily_events_count", Long.valueOf(zzarVar.f31561b));
                    contentValues.put("daily_conversions_count", Long.valueOf(zzarVar.f31562c));
                    contentValues.put("daily_error_events_count", Long.valueOf(zzarVar.d));
                    contentValues.put("daily_realtime_events_count", Long.valueOf(zzarVar.f31563e));
                    contentValues.put("daily_realtime_dcu_count", Long.valueOf(zzarVar.f31564f));
                    contentValues.put("daily_registered_triggers_count", Long.valueOf(zzarVar.g));
                    sQLiteDatabaseX.update("apps", contentValues, "app_id=?", strArr);
                } else {
                    zzgu zzguVar = zzicVar.f31842f;
                    zzic.m(zzguVar);
                    zzguVar.f31771i.b(zzgu.o(str), "Not updating daily counts, app is not known. appId");
                }
            } catch (SQLiteException e2) {
                zzgu zzguVar2 = zzicVar.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31769f.c("Error updating daily counts. appId", zzgu.o(str), e2);
            }
            return zzarVar;
        } finally {
            if (0 != 0) {
                cursorQuery.close();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x003b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v2 */
    public final String o() throws Throwable {
        SQLiteException e2;
        Cursor cursorRawQuery;
        SQLiteDatabase sQLiteDatabaseX = X();
        ?? r1 = 0;
        try {
            try {
                cursorRawQuery = sQLiteDatabaseX.rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
                try {
                    if (cursorRawQuery.moveToFirst()) {
                        String string = cursorRawQuery.getString(0);
                        cursorRawQuery.close();
                        return string;
                    }
                } catch (SQLiteException e3) {
                    e2 = e3;
                    zzgu zzguVar = this.f31850a.f31842f;
                    zzic.m(zzguVar);
                    zzguVar.f31769f.b(e2, "Database error getting next bundle app id");
                }
            } catch (Throwable th) {
                th = th;
                r1 = sQLiteDatabaseX;
                if (r1 != 0) {
                    r1.close();
                }
                throw th;
            }
        } catch (SQLiteException e4) {
            e2 = e4;
            cursorRawQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (r1 != 0) {
                r1.close();
            }
            throw th;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0088  */
    /* JADX WARN: Code duplicated, block: B:36:? A[SYNTHETIC] */
    public final zzaq o0(String str) throws Throwable {
        Throwable th;
        Cursor cursorQuery;
        zzic zzicVar = this.f31850a;
        Preconditions.e(str);
        g();
        h();
        Cursor cursor = null;
        try {
            cursorQuery = X().query("apps", new String[]{"remote_config", "config_last_modified_time", "e_tag"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (cursorQuery.moveToFirst()) {
                        byte[] blob = cursorQuery.getBlob(0);
                        String string = cursorQuery.getString(1);
                        String string2 = cursorQuery.getString(2);
                        if (cursorQuery.moveToNext()) {
                            zzgu zzguVar = zzicVar.f31842f;
                            zzic.m(zzguVar);
                            zzguVar.f31769f.b(zzgu.o(str), "Got multiple records for app config, expected one. appId");
                        }
                        if (blob != null) {
                            zzaq zzaqVar = new zzaq(blob, string, string2);
                            cursorQuery.close();
                            return zzaqVar;
                        }
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    zzgu zzguVar2 = zzicVar.f31842f;
                    zzic.m(zzguVar2);
                    zzguVar2.f31769f.c("Error querying remote config. appId", zzgu.o(str), e);
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
                if (cursor != null) {
                    throw th;
                }
                cursor.close();
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                throw th;
            }
            cursor.close();
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final void p(long j2) {
        g();
        h();
        try {
            if (X().delete("queue", "rowid=?", new String[]{String.valueOf(j2)}) == 1) {
            } else {
                throw new SQLiteException("Deleted fewer rows from queue than expected");
            }
        } catch (SQLiteException e2) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.b(e2, "Failed to delete a bundle in a queue table");
            throw e2;
        }
    }

    public final void p0(com.google.android.gms.internal.measurement.zzid zzidVar, boolean z) {
        g();
        h();
        Preconditions.e(zzidVar.A());
        Preconditions.k(zzidVar.n2());
        q();
        zzic zzicVar = this.f31850a;
        DefaultClock defaultClock = zzicVar.f31846k;
        zzgu zzguVar = zzicVar.f31842f;
        defaultClock.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jO2 = zzidVar.o2();
        zzfx zzfxVar = zzfy.R;
        if (jO2 < jCurrentTimeMillis - ((Long) zzfxVar.a(null)).longValue() || zzidVar.o2() > ((Long) zzfxVar.a(null)).longValue() + jCurrentTimeMillis) {
            zzic.m(zzguVar);
            zzguVar.f31771i.d("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzgu.o(zzidVar.A()), Long.valueOf(jCurrentTimeMillis), Long.valueOf(zzidVar.o2()));
        }
        byte[] bArrI = zzidVar.i();
        try {
            zzpk zzpkVar = this.f31948b.g;
            zzpg.U(zzpkVar);
            byte[] bArrQ = zzpkVar.Q(bArrI);
            zzic.m(zzguVar);
            zzguVar.n.b(Integer.valueOf(bArrQ.length), "Saving bundle, size");
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzidVar.A());
            contentValues.put("bundle_end_timestamp", Long.valueOf(zzidVar.o2()));
            contentValues.put(DbParams.KEY_DATA, bArrQ);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (zzidVar.A0()) {
                contentValues.put("retry_count", Integer.valueOf(zzidVar.B0()));
            }
            try {
                if (X().insert("queue", null, contentValues) == -1) {
                    zzic.m(zzguVar);
                    zzguVar.f31769f.b(zzgu.o(zzidVar.A()), "Failed to insert bundle (got -1). appId");
                }
            } catch (SQLiteException e2) {
                zzic.m(zzguVar);
                zzguVar.f31769f.c("Error storing bundle. appId", zzgu.o(zzidVar.A()), e2);
            }
        } catch (IOException e3) {
            zzic.m(zzguVar);
            zzguVar.f31769f.c("Data loss. Failed to serialize bundle. appId", zzgu.o(zzidVar.A()), e3);
        }
    }

    public final void q() {
        g();
        h();
        if (R()) {
            zzpg zzpgVar = this.f31948b;
            long jA = zzpgVar.f31986i.f31923e.a();
            zzic zzicVar = this.f31850a;
            zzicVar.f31846k.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (Math.abs(jElapsedRealtime - jA) > ((Long) zzfy.M.a(null)).longValue()) {
                zzpgVar.f31986i.f31923e.b(jElapsedRealtime);
                g();
                h();
                if (R()) {
                    SQLiteDatabase sQLiteDatabaseX = X();
                    zzicVar.f31846k.getClass();
                    int iDelete = sQLiteDatabaseX.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(System.currentTimeMillis()), String.valueOf(((Long) zzfy.R.a(null)).longValue())});
                    if (iDelete > 0) {
                        zzgu zzguVar = zzicVar.f31842f;
                        zzic.m(zzguVar);
                        zzguVar.n.b(Integer.valueOf(iDelete), "Deleted stale rows. rowsDeleted");
                    }
                }
            }
        }
    }

    public final void r(ArrayList arrayList) {
        g();
        h();
        Preconditions.h(arrayList);
        if (arrayList.size() == 0) {
            md.n("Given Integer is zero");
            return;
        }
        if (R()) {
            String strJoin = TextUtils.join(",", arrayList);
            String strP = d21.p(new StringBuilder(String.valueOf(strJoin).length() + 2), "(", strJoin, ")");
            long jC = C(d21.p(new StringBuilder(strP.length() + 80), "SELECT COUNT(1) FROM queue WHERE rowid IN ", strP, " AND retry_count =  2147483647 LIMIT 1"), null);
            zzic zzicVar = this.f31850a;
            if (jC > 0) {
                zzgu zzguVar = zzicVar.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31771i.a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase sQLiteDatabaseX = X();
                StringBuilder sb = new StringBuilder(strP.length() + CertificateBody.profileType);
                sb.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb.append(strP);
                sb.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                sQLiteDatabaseX.execSQL(sb.toString());
            } catch (SQLiteException e2) {
                zzgu zzguVar2 = zzicVar.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31769f.b(e2, "Error incrementing retry count. error");
            }
        }
    }

    public final void s(Long l2) {
        g();
        h();
        if (R()) {
            StringBuilder sb = new StringBuilder(l2.toString().length() + 86);
            sb.append("SELECT COUNT(1) FROM upload_queue WHERE rowid = ");
            sb.append(l2);
            sb.append(" AND retry_count =  2147483647 LIMIT 1");
            long jC = C(sb.toString(), null);
            zzic zzicVar = this.f31850a;
            if (jC > 0) {
                zzgu zzguVar = zzicVar.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31771i.a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase sQLiteDatabaseX = X();
                zzicVar.f31846k.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis();
                StringBuilder sb2 = new StringBuilder(String.valueOf(jCurrentTimeMillis).length() + 60);
                sb2.append(" SET retry_count = retry_count + 1, last_upload_timestamp = ");
                sb2.append(jCurrentTimeMillis);
                String string = sb2.toString();
                StringBuilder sb3 = new StringBuilder(string.length() + 34 + l2.toString().length() + 29);
                sb3.append("UPDATE upload_queue");
                sb3.append(string);
                sb3.append(" WHERE rowid = ");
                sb3.append(l2);
                sb3.append(" AND retry_count < 2147483647");
                sQLiteDatabaseX.execSQL(sb3.toString());
            } catch (SQLiteException e2) {
                zzgu zzguVar2 = zzicVar.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31769f.b(e2, "Error incrementing retry count. error");
            }
        }
    }

    public final Object t(Cursor cursor, int i2) {
        int type = cursor.getType(i2);
        zzic zzicVar = this.f31850a;
        if (type == 0) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i2));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i2));
        }
        if (type == 3) {
            return cursor.getString(i2);
        }
        if (type != 4) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.b(Integer.valueOf(type), "Loaded invalid unknown value type, ignoring it");
            return null;
        }
        zzgu zzguVar3 = zzicVar.f31842f;
        zzic.m(zzguVar3);
        zzguVar3.f31769f.a("Loaded invalid blob type value, ignoring it");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0091 A[Catch: all -> 0x006b, SQLiteException -> 0x00a2, TryCatch #0 {SQLiteException -> 0x00a2, blocks: (B:15:0x0070, B:17:0x0091, B:20:0x00a4), top: B:30:0x0070 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x00a4 A[Catch: all -> 0x006b, SQLiteException -> 0x00a2, TRY_LEAVE, TryCatch #0 {SQLiteException -> 0x00a2, blocks: (B:15:0x0070, B:17:0x0091, B:20:0x00a4), top: B:30:0x0070 }] */
    public final long u(String str) {
        long j2;
        ContentValues contentValues;
        zzic zzicVar = this.f31850a;
        Preconditions.e(str);
        Preconditions.e("first_open_count");
        g();
        h();
        SQLiteDatabase sQLiteDatabaseX = X();
        sQLiteDatabaseX.beginTransaction();
        long j3 = 0;
        try {
            try {
                StringBuilder sb = new StringBuilder(48);
                sb.append("select first_open_count from app2 where app_id=?");
                j2 = -1;
                long jD = D(sb.toString(), new String[]{str}, -1L);
                if (jD == -1) {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("app_id", str);
                    contentValues2.put("first_open_count", (Integer) 0);
                    contentValues2.put("previous_install_count", (Integer) 0);
                    if (sQLiteDatabaseX.insertWithOnConflict("app2", null, contentValues2, 5) == -1) {
                        zzgu zzguVar = zzicVar.f31842f;
                        zzic.m(zzguVar);
                        zzguVar.f31769f.c("Failed to insert column (got -1). appId", zzgu.o(str), "first_open_count");
                    } else {
                        jD = 0;
                        try {
                            contentValues = new ContentValues();
                            contentValues.put("app_id", str);
                            contentValues.put("first_open_count", Long.valueOf(1 + jD));
                            if (sQLiteDatabaseX.update("app2", contentValues, "app_id = ?", new String[]{str}) == 0) {
                                zzgu zzguVar2 = zzicVar.f31842f;
                                zzic.m(zzguVar2);
                                zzguVar2.f31769f.c("Failed to update column (got 0). appId", zzgu.o(str), "first_open_count");
                            } else {
                                sQLiteDatabaseX.setTransactionSuccessful();
                                j2 = jD;
                            }
                        } catch (SQLiteException e2) {
                            e = e2;
                            j3 = jD;
                            zzgu zzguVar3 = zzicVar.f31842f;
                            zzic.m(zzguVar3);
                            zzguVar3.f31769f.d("Error inserting column. appId", zzgu.o(str), "first_open_count", e);
                            j2 = j3;
                        }
                    }
                } else {
                    contentValues = new ContentValues();
                    contentValues.put("app_id", str);
                    contentValues.put("first_open_count", Long.valueOf(1 + jD));
                    if (sQLiteDatabaseX.update("app2", contentValues, "app_id = ?", new String[]{str}) == 0) {
                        zzgu zzguVar4 = zzicVar.f31842f;
                        zzic.m(zzguVar4);
                        zzguVar4.f31769f.c("Failed to update column (got 0). appId", zzgu.o(str), "first_open_count");
                    } else {
                        sQLiteDatabaseX.setTransactionSuccessful();
                        j2 = jD;
                    }
                }
            } finally {
                sQLiteDatabaseX.endTransaction();
            }
        } catch (SQLiteException e3) {
            e = e3;
        }
        return j2;
    }

    public final boolean v(String str, String str2) {
        return C("select count(1) from raw_events where app_id = ? and name = ?", new String[]{str, str2}) > 0;
    }

    public final void w(List list) {
        Preconditions.h(list);
        g();
        h();
        StringBuilder sb = new StringBuilder("rowid in (");
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (i2 != 0) {
                sb.append(",");
            }
            sb.append(((Long) list.get(i2)).longValue());
        }
        sb.append(")");
        int iDelete = X().delete("raw_events", sb.toString(), null);
        if (iDelete != list.size()) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.c("Deleted fewer rows from raw events table than expected", Integer.valueOf(iDelete), Integer.valueOf(list.size()));
        }
    }

    public final long x(String str) {
        Preconditions.e(str);
        return D("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    public final void y(String str, Long l2, long j2, com.google.android.gms.internal.measurement.zzhs zzhsVar) {
        g();
        h();
        Preconditions.h(zzhsVar);
        Preconditions.e(str);
        byte[] bArrI = zzhsVar.i();
        zzic zzicVar = this.f31850a;
        zzgu zzguVar = zzicVar.f31842f;
        zzgu zzguVar2 = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.n.c("Saving complex main event, appId, data size", zzicVar.f31845j.a(str), Integer.valueOf(bArrI.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l2);
        contentValues.put("children_to_process", Long.valueOf(j2));
        contentValues.put("main_event", bArrI);
        try {
            if (X().insertWithOnConflict("main_event_params", null, contentValues, 5) == -1) {
                zzic.m(zzguVar2);
                zzguVar2.f31769f.b(zzgu.o(str), "Failed to insert complex main event (got -1). appId");
            }
        } catch (SQLiteException e2) {
            zzic.m(zzguVar2);
            zzguVar2.f31769f.c("Error storing complex main event. appId", zzgu.o(str), e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:120:0x0114 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:121:0x0114 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:0x002e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:? A[LOOP:2: B:51:0x00fa->B:125:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:53:0x0100  */
    public final void z(String str, Long l2, String str2, Bundle bundle) throws Throwable {
        zzgu zzguVar;
        Bundle bundle2;
        long j2;
        String str3;
        ContentValues contentValues;
        zzgu zzguVar2;
        com.google.android.gms.internal.measurement.zzid zzidVar;
        Iterator<E> it;
        zzaw zzawVar = this;
        String str4 = str;
        Preconditions.h(bundle);
        zzawVar.g();
        zzawVar.h();
        zzau zzauVar = l2 != null ? new zzau(zzawVar, str4, l2.longValue()) : new zzau(zzawVar, str4);
        List<zzat> listA = zzauVar.a();
        while (!listA.isEmpty()) {
            for (zzat zzatVar : listA) {
                boolean zIsEmpty = TextUtils.isEmpty(str2);
                zzic zzicVar = zzawVar.f31850a;
                try {
                    if (!zIsEmpty) {
                        Cursor cursor = null;
                        com.google.android.gms.internal.measurement.zzid zzidVar2 = null;
                        Cursor cursor2 = null;
                        try {
                            try {
                                Cursor cursorQuery = zzawVar.X().query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{str4, Long.toString(zzatVar.f31566b)}, null, null, "rowid", ContentTree.AUDIO_ID);
                                try {
                                    try {
                                        if (cursorQuery.moveToFirst()) {
                                            try {
                                                zzidVar = (com.google.android.gms.internal.measurement.zzid) ((com.google.android.gms.internal.measurement.zzic) zzpk.R(com.google.android.gms.internal.measurement.zzid.f0(), cursorQuery.getBlob(0))).v();
                                                try {
                                                    if (cursorQuery.moveToNext()) {
                                                        zzgu zzguVar3 = zzicVar.f31842f;
                                                        zzic.m(zzguVar3);
                                                        zzguVar3.f31771i.b(zzgu.o(str4), "Get multiple raw event metadata records, expected one. appId");
                                                    }
                                                    cursorQuery.close();
                                                    cursorQuery.close();
                                                } catch (SQLiteException e2) {
                                                    e = e2;
                                                    cursor2 = cursorQuery;
                                                    zzgu zzguVar4 = zzicVar.f31842f;
                                                    zzic.m(zzguVar4);
                                                    zzguVar4.f31769f.c("Data loss. Error selecting raw event. appId", zzgu.o(str4), e);
                                                    if (cursor2 != null) {
                                                        cursor2.close();
                                                    }
                                                }
                                                zzidVar2 = zzidVar;
                                            } catch (IOException e3) {
                                                zzgu zzguVar5 = zzicVar.f31842f;
                                                zzic.m(zzguVar5);
                                                zzguVar5.f31769f.c("Data loss. Failed to merge raw event metadata. appId", zzgu.o(str4), e3);
                                                cursorQuery.close();
                                            }
                                            if (zzidVar2 != null) {
                                                it = zzidVar2.g2().iterator();
                                                while (true) {
                                                    if (it.hasNext()) {
                                                        if (((com.google.android.gms.internal.measurement.zziu) it.next()).C().equals(str2)) {
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            zzgu zzguVar6 = zzicVar.f31842f;
                                            zzic.m(zzguVar6);
                                            zzguVar6.f31769f.b(zzgu.o(str4), "Raw event metadata record is missing. appId");
                                        }
                                        cursorQuery.close();
                                    } catch (Throwable th) {
                                        th = th;
                                        cursor = cursorQuery;
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        throw th;
                                    }
                                } catch (SQLiteException e4) {
                                    e = e4;
                                    zzidVar = null;
                                }
                            } catch (SQLiteException e5) {
                                e = e5;
                                zzidVar = null;
                            }
                            if (zzidVar2 != null) {
                                it = zzidVar2.g2().iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        if (((com.google.android.gms.internal.measurement.zziu) it.next()).C().equals(str2)) {
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    long jUpdate = X().update("raw_events", contentValues, "rowid = ?", new String[]{String.valueOf(j2)});
                    if (jUpdate != 1) {
                        zzic.m(zzguVar);
                        zzguVar2 = zzguVar;
                        try {
                            zzguVar2.f31769f.c("Failed to update raw event. appId, updatedRows", zzgu.o(str3), Long.valueOf(jUpdate));
                        } catch (SQLiteException e6) {
                            e = e6;
                            zzic.m(zzguVar2);
                            zzguVar2.f31769f.c("Error updating raw event. appId", zzgu.o(str3), e);
                        }
                    }
                } catch (SQLiteException e7) {
                    e = e7;
                    zzguVar2 = zzguVar;
                }
                zzpg zzpgVar = zzawVar.f31948b;
                zzpk zzpkVar = zzpgVar.g;
                zzpg.U(zzpkVar);
                com.google.android.gms.internal.measurement.zzhs zzhsVar = zzatVar.d;
                Bundle bundle3 = new Bundle();
                for (com.google.android.gms.internal.measurement.zzhw zzhwVar : zzhsVar.C()) {
                    if (zzhwVar.I()) {
                        bundle3.putDouble(zzhwVar.B(), zzhwVar.J());
                    } else if (zzhwVar.G()) {
                        bundle3.putFloat(zzhwVar.B(), zzhwVar.H());
                    } else if (zzhwVar.E()) {
                        bundle3.putLong(zzhwVar.B(), zzhwVar.F());
                    } else if (zzhwVar.C()) {
                        bundle3.putString(zzhwVar.B(), zzhwVar.D());
                    } else if (zzhwVar.K().isEmpty()) {
                        zzgu zzguVar7 = zzpkVar.f31850a.f31842f;
                        zzic.m(zzguVar7);
                        zzguVar7.f31769f.b(zzhwVar, "Unexpected parameter type for parameter");
                    } else {
                        bundle3.putParcelableArray(zzhwVar.B(), zzpk.T(zzhwVar.K()));
                    }
                }
                String string = bundle3.getString("_o");
                bundle3.remove("_o");
                String strF = zzhsVar.F();
                if (string == null) {
                    string = "";
                }
                zzgv zzgvVar = new zzgv(strF, string, bundle3, zzhsVar.H(), zzhsVar.P());
                zzpp zzppVar = zzicVar.f31844i;
                zzguVar = zzicVar.f31842f;
                zzic.k(zzppVar);
                if (zzgvVar.f31774a.equals("_cmp")) {
                    bundle2 = new Bundle(bundle);
                    for (String str5 : bundle.keySet()) {
                        if (str5.startsWith("gad_")) {
                            bundle2.remove(str5);
                        }
                    }
                } else {
                    bundle2 = bundle;
                }
                Bundle bundle4 = zzgvVar.f31777e;
                zzppVar.t(bundle4, bundle2);
                zzbc zzbcVar = new zzbc(zzawVar.f31850a, zzgvVar.f31775b, str4, zzhsVar.F(), zzhsVar.H(), zzhsVar.P(), zzhsVar.J(), bundle4);
                j2 = zzatVar.f31565a;
                long j3 = zzatVar.f31566b;
                boolean z = zzatVar.f31567c;
                g();
                h();
                str3 = zzbcVar.f31587a;
                Preconditions.e(str3);
                zzpk zzpkVar2 = zzpgVar.g;
                zzpg.U(zzpkVar2);
                byte[] bArrI = zzpkVar2.G(zzbcVar).i();
                contentValues = new ContentValues();
                contentValues.put("app_id", str3);
                contentValues.put("name", zzbcVar.f31588b);
                contentValues.put("timestamp", Long.valueOf(zzbcVar.d));
                contentValues.put("metadata_fingerprint", Long.valueOf(j3));
                contentValues.put(DbParams.KEY_DATA, bArrI);
                contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
                contentValues.put("elapsed_time", Long.valueOf(zzbcVar.f31590e));
                zzawVar = this;
                str4 = str;
            }
            listA = zzauVar.a();
            zzawVar = this;
            str4 = str;
        }
    }
}
