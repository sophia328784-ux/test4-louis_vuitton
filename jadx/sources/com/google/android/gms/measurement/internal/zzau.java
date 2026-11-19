package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import com.google.android.gms.common.internal.Preconditions;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zzau {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f31568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f31569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzaw f31570c;

    public zzau(zzaw zzawVar, String str, long j2) {
        Objects.requireNonNull(zzawVar);
        this.f31570c = zzawVar;
        Preconditions.e(str);
        this.f31568a = str;
        this.f31569b = zzawVar.D("select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1", new String[]{str, String.valueOf(j2)}, -1L);
    }

    public final List a() {
        List list;
        List list2;
        zzaw zzawVar = this.f31570c;
        ArrayList arrayList = new ArrayList();
        String strValueOf = String.valueOf(this.f31569b);
        String str = this.f31568a;
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = zzawVar.X().query("raw_events", new String[]{"rowid", "name", "timestamp", "metadata_fingerprint", DbParams.KEY_DATA, "realtime", "elapsed_time"}, "app_id = ? and rowid > ?", new String[]{str, strValueOf}, null, null, "rowid", "1000");
                if (cursorQuery.moveToFirst()) {
                    do {
                        long j2 = cursorQuery.getLong(0);
                        long j3 = cursorQuery.getLong(3);
                        boolean z = cursorQuery.getLong(5) == 1;
                        long j4 = cursorQuery.getLong(6);
                        byte[] blob = cursorQuery.getBlob(4);
                        if (j2 > this.f31569b) {
                            this.f31569b = j2;
                        }
                        try {
                            com.google.android.gms.internal.measurement.zzhr zzhrVar = (com.google.android.gms.internal.measurement.zzhr) zzpk.R(com.google.android.gms.internal.measurement.zzhs.Q(), blob);
                            String string = cursorQuery.getString(1);
                            if (string == null) {
                                string = "";
                            }
                            zzhrVar.F(string);
                            long j5 = cursorQuery.getLong(2);
                            zzhrVar.l();
                            ((com.google.android.gms.internal.measurement.zzhs) zzhrVar.f30406c).X(j5);
                            zzhrVar.l();
                            ((com.google.android.gms.internal.measurement.zzhs) zzhrVar.f30406c).A(j4);
                            arrayList.add(new zzat(j2, j3, z, (com.google.android.gms.internal.measurement.zzhs) zzhrVar.v()));
                        } catch (IOException e2) {
                            zzgu zzguVar = zzawVar.f31850a.f31842f;
                            zzic.m(zzguVar);
                            zzguVar.f31769f.c("Data loss. Failed to merge raw event. appId", zzgu.o(str), e2);
                        }
                    } while (cursorQuery.moveToNext());
                    list = arrayList;
                } else {
                    list2 = Collections.EMPTY_LIST;
                }
            } catch (SQLiteException e3) {
                zzgu zzguVar2 = zzawVar.f31850a.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31769f.c("Data loss. Error querying raw events batch. appId", zzgu.o(str), e3);
                list = arrayList;
            }
            list = list2;
            return list;
        } finally {
            if (0 != 0) {
                cursorQuery.close();
            }
        }
    }

    public zzau(zzaw zzawVar, String str) {
        Objects.requireNonNull(zzawVar);
        this.f31570c = zzawVar;
        Preconditions.e(str);
        this.f31568a = str;
        this.f31569b = -1L;
    }
}
