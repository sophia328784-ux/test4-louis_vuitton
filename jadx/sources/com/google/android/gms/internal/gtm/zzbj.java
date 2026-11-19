package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import com.google.android.gms.common.util.DefaultClock;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.fc;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzbj extends zzn {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f29976b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f29977c;
    public final /* synthetic */ zzbk d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbj(zzbk zzbkVar, Context context) {
        super(context, "gtm_urls.db", null, 1);
        this.d = zzbkVar;
        this.f29977c = 0L;
    }

    public static final boolean c(SQLiteDatabase sQLiteDatabase, String str) {
        boolean zMoveToFirst;
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
            zMoveToFirst = cursorQuery.moveToFirst();
        } catch (SQLiteException unused) {
            zMoveToFirst = false;
        } catch (Throwable th) {
            if (cursorQuery == null) {
                throw th;
            }
            cursorQuery.close();
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return zMoveToFirst;
    }

    public static final void d(SQLiteDatabase sQLiteDatabase, String str, List list) {
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT * FROM " + str + " WHERE 0", null);
        HashSet hashSet = new HashSet();
        try {
            for (String str2 : cursorRawQuery.getColumnNames()) {
                hashSet.add(str2);
            }
            cursorRawQuery.close();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str3 = (String) it.next();
                if (!hashSet.remove(str3)) {
                    throw new SQLiteException(d21.l("Database column ", str3, " missing in table ", str, FileUtils.HIDDEN_PREFIX));
                }
            }
            if (!hashSet.isEmpty()) {
                throw new SQLiteException(fc.h("Database has extra columns in table ", str, FileUtils.HIDDEN_PREFIX));
            }
        } catch (Throwable th) {
            cursorRawQuery.close();
            throw th;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase writableDatabase;
        zzbk zzbkVar = this.d;
        DefaultClock defaultClock = zzbkVar.f29982f;
        if (this.f29976b) {
            long j2 = this.f29977c + 3600000;
            defaultClock.getClass();
            if (j2 > System.currentTimeMillis()) {
                throw new SQLiteException("Database creation failed");
            }
        }
        this.f29976b = true;
        defaultClock.getClass();
        this.f29977c = System.currentTimeMillis();
        try {
            writableDatabase = super.getWritableDatabase();
        } catch (SQLiteException unused) {
            zzbkVar.f29980c.getDatabasePath(zzbkVar.d).delete();
            writableDatabase = null;
        }
        if (writableDatabase == null) {
            writableDatabase = super.getWritableDatabase();
        }
        this.f29976b = false;
        return writableDatabase;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        String path = sQLiteDatabase.getPath();
        try {
            if (Integer.parseInt(Build.VERSION.SDK) < 9) {
                return;
            }
            File file = new File(path);
            file.setReadable(false, false);
            file.setWritable(false, false);
            file.setReadable(true, true);
            file.setWritable(true, true);
        } catch (NumberFormatException unused) {
            "Invalid version number: ".concat(String.valueOf(Build.VERSION.SDK));
            zzbg.a();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        if (c(sQLiteDatabase, "gtm_hit_unique_ids")) {
            d(sQLiteDatabase, "gtm_hit_unique_ids", Arrays.asList("hit_unique_id"));
        } else {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS gtm_hit_unique_ids ('hit_unique_id' TEXT UNIQUE);");
        }
        if (c(sQLiteDatabase, "gtm_hits")) {
            d(sQLiteDatabase, "gtm_hits", Arrays.asList("hit_id", "hit_url", "hit_time", "hit_first_send_time", "hit_method", "hit_unique_id", "hit_headers", "hit_body"));
        } else {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS gtm_hits ( 'hit_id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 'hit_time' INTEGER NOT NULL, 'hit_url' TEXT NOT NULL, 'hit_first_send_time' INTEGER NOT NULL, 'hit_method' TEXT NOT NULL, 'hit_unique_id' TEXT UNIQUE, 'hit_headers' TEXT, 'hit_body' TEXT);");
        }
        sQLiteDatabase.execSQL("CREATE TRIGGER IF NOT EXISTS save_unique_on_delete DELETE ON gtm_hits FOR EACH ROW WHEN OLD.hit_unique_id NOTNULL BEGIN     INSERT OR IGNORE INTO gtm_hit_unique_ids (hit_unique_id) VALUES (OLD.hit_unique_id); END;");
        sQLiteDatabase.execSQL("CREATE TRIGGER IF NOT EXISTS check_unique_on_insert BEFORE INSERT ON gtm_hits FOR EACH ROW WHEN NEW.hit_unique_id NOT NULL BEGIN     SELECT RAISE(ABORT, 'Duplicate unique ID.')     WHERE EXISTS (SELECT 1 FROM gtm_hit_unique_ids WHERE hit_unique_id = NEW.hit_unique_id); END;");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }
}
