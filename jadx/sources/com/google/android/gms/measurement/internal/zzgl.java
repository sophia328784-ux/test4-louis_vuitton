package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgl extends zzg {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String[] f31753e = {"app_version", "ALTER TABLE messages ADD COLUMN app_version TEXT;", "app_version_int", "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzgj f31754c;
    public boolean d;

    public zzgl(zzic zzicVar) {
        super(zzicVar);
        this.f31754c = new zzgj(this, this.f31850a.f31838a);
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final boolean j() {
        return false;
    }

    public final void k() {
        int iDelete;
        zzic zzicVar = this.f31850a;
        g();
        try {
            SQLiteDatabase sQLiteDatabaseM = m();
            if (sQLiteDatabaseM == null || (iDelete = sQLiteDatabaseM.delete("messages", null, null)) <= 0) {
                return;
            }
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.n.b(Integer.valueOf(iDelete), "Reset local analytics data. records");
        } catch (SQLiteException e2) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.b(e2, "Error resetting local analytics data. error");
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x006d A[PHI: r4
      0x006d: PHI (r4v3 int) = (r4v1 int), (r4v1 int), (r4v4 int) binds: [B:25:0x0064, B:32:0x007e, B:28:0x006b] A[DONT_GENERATE, DONT_INLINE]] */
    public final void l() {
        g();
        if (this.d) {
            return;
        }
        zzic zzicVar = this.f31850a;
        if (zzicVar.f31838a.getDatabasePath("google_app_measurement_local.db").exists()) {
            int i2 = 5;
            for (int i3 = 0; i3 < 5; i3++) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    SQLiteDatabase sQLiteDatabaseM = m();
                    if (sQLiteDatabaseM == null) {
                        this.d = true;
                        return;
                    }
                    sQLiteDatabaseM.beginTransaction();
                    sQLiteDatabaseM.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                    sQLiteDatabaseM.setTransactionSuccessful();
                    sQLiteDatabaseM.endTransaction();
                    sQLiteDatabaseM.close();
                    return;
                } catch (SQLiteDatabaseLockedException unused) {
                    SystemClock.sleep(i2);
                    i2 += 20;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                } catch (SQLiteFullException e2) {
                    zzgu zzguVar = zzicVar.f31842f;
                    zzic.m(zzguVar);
                    zzguVar.f31769f.b(e2, "Error deleting app launch break from local database");
                    this.d = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                } catch (SQLiteException e3) {
                    if (0 != 0) {
                        try {
                            if (sQLiteDatabase.inTransaction()) {
                                sQLiteDatabase.endTransaction();
                            }
                        } catch (Throwable th) {
                            if (0 != 0) {
                                sQLiteDatabase.close();
                            }
                            throw th;
                        }
                    }
                    zzgu zzguVar2 = zzicVar.f31842f;
                    zzic.m(zzguVar2);
                    zzguVar2.f31769f.b(e3, "Error deleting app launch break from local database");
                    this.d = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            }
            zzgu zzguVar3 = zzicVar.f31842f;
            zzic.m(zzguVar3);
            zzguVar3.f31771i.a("Error deleting app launch break from local database in reasonable time");
        }
    }

    public final SQLiteDatabase m() {
        if (this.d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f31754c.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.d = true;
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:121:0x016e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x016e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:124:0x016e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:73:0x011e A[Catch: all -> 0x0152, TRY_ENTER, TryCatch #9 {all -> 0x0152, blocks: (B:30:0x0086, B:32:0x008c, B:43:0x00ac, B:45:0x00cd, B:47:0x00d4, B:49:0x00dc, B:59:0x00f6, B:73:0x011e, B:75:0x0124, B:76:0x0127, B:93:0x0159, B:83:0x0142), top: B:109:0x0086 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0137  */
    /* JADX WARN: Code duplicated, block: B:86:0x0149  */
    /* JADX WARN: Code duplicated, block: B:88:0x014e A[PHI: r8 r10 r17
      0x014e: PHI (r8v5 int) = (r8v3 int), (r8v3 int), (r8v6 int) binds: [B:79:0x013a, B:96:0x016b, B:87:0x014c] A[DONT_GENERATE, DONT_INLINE]
      0x014e: PHI (r10v7 android.database.sqlite.SQLiteDatabase) = 
      (r10v5 android.database.sqlite.SQLiteDatabase)
      (r10v6 android.database.sqlite.SQLiteDatabase)
      (r10v8 android.database.sqlite.SQLiteDatabase)
     binds: [B:79:0x013a, B:96:0x016b, B:87:0x014c] A[DONT_GENERATE, DONT_INLINE]
      0x014e: PHI (r17v7 boolean) = (r17v4 boolean), (r17v5 boolean), (r17v8 boolean) binds: [B:79:0x013a, B:96:0x016b, B:87:0x014c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:95:0x0168  */
    public final boolean n(int i2, byte[] bArr) {
        SQLiteDatabase sQLiteDatabaseM;
        boolean z;
        boolean z2;
        Cursor cursorRawQuery;
        g();
        boolean z3 = false;
        z3 = false;
        if (!this.d) {
            zzic zzicVar = this.f31850a;
            zzal zzalVar = zzicVar.d;
            zzgu zzguVar = zzicVar.f31842f;
            zzfx zzfxVar = zzfy.W0;
            Cursor cursor = null;
            cursor = null;
            zzr zzrVarK = zzalVar.r(null, zzfxVar) ? zzicVar.r().k(null) : null;
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", Integer.valueOf(i2));
            contentValues.put("entry", bArr);
            if (zzicVar.d.r(null, zzfxVar) && zzrVarK != null) {
                contentValues.put("app_version", zzrVarK.d);
                contentValues.put("app_version_int", Long.valueOf(zzrVarK.f32023k));
            }
            int i3 = 0;
            int i4 = 5;
            for (int i5 = 5; i3 < i5; i5 = 5) {
                try {
                    sQLiteDatabaseM = m();
                    if (sQLiteDatabaseM == null) {
                        this.d = true;
                    } else {
                        try {
                            sQLiteDatabaseM.beginTransaction();
                            cursorRawQuery = sQLiteDatabaseM.rawQuery("select count(1) from messages", null);
                            long j2 = 0;
                            if (cursorRawQuery != null) {
                                try {
                                    try {
                                        if (cursorRawQuery.moveToFirst()) {
                                            j2 = cursorRawQuery.getLong(z3 ? 1 : 0);
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        cursor = cursorRawQuery;
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        if (sQLiteDatabaseM != null) {
                                            sQLiteDatabaseM.close();
                                        }
                                        throw th;
                                    }
                                } catch (SQLiteDatabaseLockedException unused) {
                                    z = z3 ? 1 : 0;
                                    SystemClock.sleep(i4);
                                    i4 += 20;
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    if (sQLiteDatabaseM != null) {
                                        sQLiteDatabaseM.close();
                                    }
                                    i3++;
                                    z3 = z;
                                } catch (SQLiteFullException e2) {
                                    e = e2;
                                    z = z3 ? 1 : 0;
                                    zzic.m(zzguVar);
                                    zzguVar.f31769f.b(e, "Error writing entry; local database full");
                                    this.d = true;
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    if (sQLiteDatabaseM != null) {
                                        sQLiteDatabaseM.close();
                                    }
                                    i3++;
                                    z3 = z;
                                } catch (SQLiteException e3) {
                                    e = e3;
                                    z = z3 ? 1 : 0;
                                    z2 = true;
                                    if (sQLiteDatabaseM != null) {
                                        sQLiteDatabaseM.endTransaction();
                                    }
                                    zzic.m(zzguVar);
                                    zzguVar.f31769f.b(e, "Error writing entry to local database");
                                    this.d = z2;
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    if (sQLiteDatabaseM != null) {
                                        sQLiteDatabaseM.close();
                                    }
                                    i3++;
                                    z3 = z;
                                }
                            }
                            if (j2 >= 100000) {
                                zzic.m(zzguVar);
                                zzguVar.f31769f.a("Data loss, local db full");
                                long j3 = 100001 - j2;
                                long jDelete = sQLiteDatabaseM.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", new String[]{Long.toString(j3)});
                                if (jDelete != j3) {
                                    zzic.m(zzguVar);
                                    zzgs zzgsVar = zzguVar.f31769f;
                                    z = z3 ? 1 : 0;
                                    try {
                                        try {
                                            z2 = true;
                                            try {
                                                zzgsVar.d("Different delete count than expected in local db. expected, received, difference", Long.valueOf(j3), Long.valueOf(jDelete), Long.valueOf(j3 - jDelete));
                                            } catch (SQLiteFullException e4) {
                                                e = e4;
                                                zzic.m(zzguVar);
                                                zzguVar.f31769f.b(e, "Error writing entry; local database full");
                                                this.d = true;
                                                if (cursorRawQuery != null) {
                                                    cursorRawQuery.close();
                                                }
                                                if (sQLiteDatabaseM != null) {
                                                    sQLiteDatabaseM.close();
                                                }
                                                i3++;
                                                z3 = z;
                                            } catch (SQLiteException e5) {
                                                e = e5;
                                                if (sQLiteDatabaseM != null) {
                                                    sQLiteDatabaseM.endTransaction();
                                                }
                                                zzic.m(zzguVar);
                                                zzguVar.f31769f.b(e, "Error writing entry to local database");
                                                this.d = z2;
                                                if (cursorRawQuery != null) {
                                                    cursorRawQuery.close();
                                                }
                                                if (sQLiteDatabaseM != null) {
                                                    sQLiteDatabaseM.close();
                                                }
                                                i3++;
                                                z3 = z;
                                            }
                                        } catch (SQLiteDatabaseLockedException unused2) {
                                            SystemClock.sleep(i4);
                                            i4 += 20;
                                            if (cursorRawQuery != null) {
                                                cursorRawQuery.close();
                                            }
                                            if (sQLiteDatabaseM != null) {
                                                sQLiteDatabaseM.close();
                                            }
                                            i3++;
                                            z3 = z;
                                        }
                                    } catch (SQLiteFullException e6) {
                                        e = e6;
                                        zzic.m(zzguVar);
                                        zzguVar.f31769f.b(e, "Error writing entry; local database full");
                                        this.d = true;
                                        if (cursorRawQuery != null) {
                                            cursorRawQuery.close();
                                        }
                                        if (sQLiteDatabaseM != null) {
                                            sQLiteDatabaseM.close();
                                        }
                                        i3++;
                                        z3 = z;
                                    } catch (SQLiteException e7) {
                                        e = e7;
                                        z2 = true;
                                        if (sQLiteDatabaseM != null && sQLiteDatabaseM.inTransaction()) {
                                            sQLiteDatabaseM.endTransaction();
                                        }
                                        zzic.m(zzguVar);
                                        zzguVar.f31769f.b(e, "Error writing entry to local database");
                                        this.d = z2;
                                        if (cursorRawQuery != null) {
                                            cursorRawQuery.close();
                                        }
                                        if (sQLiteDatabaseM != null) {
                                            sQLiteDatabaseM.close();
                                        }
                                        i3++;
                                        z3 = z;
                                    }
                                } else {
                                    z = z3 ? 1 : 0;
                                    z2 = true;
                                }
                            } else {
                                z = z3 ? 1 : 0;
                                z2 = true;
                            }
                            sQLiteDatabaseM.insertOrThrow("messages", null, contentValues);
                            sQLiteDatabaseM.setTransactionSuccessful();
                            sQLiteDatabaseM.endTransaction();
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                            }
                            sQLiteDatabaseM.close();
                            return z2;
                        } catch (SQLiteDatabaseLockedException unused3) {
                            z = z3 ? 1 : 0;
                            cursorRawQuery = null;
                        } catch (SQLiteFullException e8) {
                            e = e8;
                            z = z3 ? 1 : 0;
                            cursorRawQuery = null;
                        } catch (SQLiteException e9) {
                            e = e9;
                            z = z3 ? 1 : 0;
                            z2 = true;
                            cursorRawQuery = null;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                } catch (SQLiteDatabaseLockedException unused4) {
                    z = z3 ? 1 : 0;
                    sQLiteDatabaseM = null;
                    cursorRawQuery = null;
                } catch (SQLiteFullException e10) {
                    e = e10;
                    z = z3 ? 1 : 0;
                    sQLiteDatabaseM = null;
                    cursorRawQuery = null;
                } catch (SQLiteException e11) {
                    e = e11;
                    z = z3 ? 1 : 0;
                    z2 = true;
                    sQLiteDatabaseM = null;
                    cursorRawQuery = null;
                } catch (Throwable th3) {
                    th = th3;
                    sQLiteDatabaseM = null;
                }
            }
            boolean z4 = z3 ? 1 : 0;
            zzic.m(zzguVar);
            zzguVar.n.a("Failed to write entry to local database");
            return z4;
        }
        return z3;
    }
}
