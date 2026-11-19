package androidx.media3.datasource.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import androidx.media3.database.DatabaseIOException;
import androidx.media3.database.DatabaseProvider;
import androidx.media3.database.VersionTable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class CacheFileMetadataIndex {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f14476c = {"name", "length", "last_touch_timestamp"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DatabaseProvider f14477a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f14478b;

    public CacheFileMetadataIndex(DatabaseProvider databaseProvider) {
        this.f14477a = databaseProvider;
    }

    public final HashMap a() throws DatabaseIOException {
        try {
            this.f14478b.getClass();
            Cursor cursorQuery = this.f14477a.getReadableDatabase().query(this.f14478b, f14476c, null, null, null, null, null);
            try {
                HashMap map = new HashMap(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(0);
                    string.getClass();
                    map.put(string, new CacheFileMetadata(cursorQuery.getLong(1), cursorQuery.getLong(2)));
                }
                cursorQuery.close();
                return map;
            } catch (Throwable th) {
                if (cursorQuery == null) {
                    throw th;
                }
                try {
                    cursorQuery.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (SQLException e2) {
            throw new DatabaseIOException(e2);
        }
    }

    public final void b(long j2) throws DatabaseIOException {
        DatabaseProvider databaseProvider = this.f14477a;
        try {
            String hexString = Long.toHexString(j2);
            this.f14478b = "ExoPlayerCacheFileMetadata" + hexString;
            if (VersionTable.a(2, databaseProvider.getReadableDatabase(), hexString) != 1) {
                SQLiteDatabase writableDatabase = databaseProvider.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    VersionTable.b(2, writableDatabase, hexString);
                    writableDatabase.execSQL("DROP TABLE IF EXISTS " + this.f14478b);
                    writableDatabase.execSQL("CREATE TABLE " + this.f14478b + " (name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)");
                    writableDatabase.setTransactionSuccessful();
                } finally {
                    writableDatabase.endTransaction();
                }
            }
        } catch (SQLException e2) {
            throw new DatabaseIOException(e2);
        }
    }

    public final void c(Set set) throws DatabaseIOException {
        this.f14478b.getClass();
        try {
            SQLiteDatabase writableDatabase = this.f14477a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    writableDatabase.delete(this.f14478b, "name = ?", new String[]{(String) it.next()});
                }
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (SQLException e2) {
            throw new DatabaseIOException(e2);
        }
    }

    public final void d(long j2, long j3, String str) throws DatabaseIOException {
        this.f14478b.getClass();
        try {
            SQLiteDatabase writableDatabase = this.f14477a.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", str);
            contentValues.put("length", Long.valueOf(j2));
            contentValues.put("last_touch_timestamp", Long.valueOf(j3));
            writableDatabase.replaceOrThrow(this.f14478b, null, contentValues);
        } catch (SQLException e2) {
            throw new DatabaseIOException(e2);
        }
    }
}
