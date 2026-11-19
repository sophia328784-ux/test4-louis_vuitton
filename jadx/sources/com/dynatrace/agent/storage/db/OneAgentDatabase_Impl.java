package com.dynatrace.agent.storage.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomOpenHelper;
import androidx.room.driver.SupportSQLiteConnection;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
public final class OneAgentDatabase_Impl extends OneAgentDatabase {
    public static final /* synthetic */ int o = 0;
    public volatile EventDao_Impl n;

    @Override // androidx.room.RoomDatabase
    public final InvalidationTracker e() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), DbParams.TABLE_EVENTS);
    }

    @Override // androidx.room.RoomDatabase
    public final SupportSQLiteOpenHelper g(DatabaseConfiguration databaseConfiguration) {
        RoomOpenHelper roomOpenHelper = new RoomOpenHelper(databaseConfiguration, new RoomOpenHelper.Delegate() { // from class: com.dynatrace.agent.storage.db.OneAgentDatabase_Impl.1
            @Override // androidx.room.RoomOpenHelper.Delegate
            public final void a(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                SQLiteDatabase sQLiteDatabase = frameworkSQLiteDatabase.f19886b;
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `events` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `event` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `isPriorityData` INTEGER NOT NULL, `eventSizeBytes` INTEGER NOT NULL)");
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                sQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'a59cc22b06e263270614a1e34c446daa')");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public final void b(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                frameworkSQLiteDatabase.f19886b.execSQL("DROP TABLE IF EXISTS `events`");
                int i2 = OneAgentDatabase_Impl.o;
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public final void c() {
                int i2 = OneAgentDatabase_Impl.o;
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public final void d(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                int i2 = OneAgentDatabase_Impl.o;
                OneAgentDatabase_Impl.this.t(new SupportSQLiteConnection(frameworkSQLiteDatabase));
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public final void e(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public final void f(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                DBUtil.a(new SupportSQLiteConnection(frameworkSQLiteDatabase));
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public final RoomOpenHelper.ValidationResult g(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
                HashMap map = new HashMap(5);
                map.put(b.a.f24015b, new TableInfo.Column(b.a.f24015b, "INTEGER", true, 1, null, 1));
                map.put(MvelScriptManager.VAR_EVENT, new TableInfo.Column(MvelScriptManager.VAR_EVENT, "TEXT", true, 0, null, 1));
                map.put("timestamp", new TableInfo.Column("timestamp", "INTEGER", true, 0, null, 1));
                map.put("isPriorityData", new TableInfo.Column("isPriorityData", "INTEGER", true, 0, null, 1));
                map.put("eventSizeBytes", new TableInfo.Column("eventSizeBytes", "INTEGER", true, 0, null, 1));
                TableInfo tableInfo = new TableInfo(DbParams.TABLE_EVENTS, map, new HashSet(0), new HashSet(0));
                TableInfo.f19766e.getClass();
                TableInfo tableInfoA = TableInfo.Companion.a(new SupportSQLiteConnection(frameworkSQLiteDatabase), DbParams.TABLE_EVENTS);
                if (tableInfo.equals(tableInfoA)) {
                    return new RoomOpenHelper.ValidationResult(true, null);
                }
                return new RoomOpenHelper.ValidationResult(false, "events(com.dynatrace.agent.storage.db.EventRecord).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfoA);
            }
        }, "a59cc22b06e263270614a1e34c446daa", "2a34908ba2ef68cc767f6f241e4e9b62");
        Context context = databaseConfiguration.f19383a;
        SupportSQLiteOpenHelper.Configuration.f19874f.getClass();
        context.getClass();
        SupportSQLiteOpenHelper.Configuration.Builder builder = new SupportSQLiteOpenHelper.Configuration.Builder(context);
        builder.f19880b = databaseConfiguration.f19384b;
        builder.f19881c = roomOpenHelper;
        return databaseConfiguration.f19385c.a(builder.a());
    }

    @Override // androidx.room.RoomDatabase
    public final List i(LinkedHashMap linkedHashMap) {
        return new ArrayList();
    }

    @Override // androidx.room.RoomDatabase
    public final Set n() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    public final Map p() {
        HashMap map = new HashMap();
        map.put(EventDao.class, Collections.EMPTY_LIST);
        return map;
    }

    @Override // com.dynatrace.agent.storage.db.OneAgentDatabase
    public final EventDao y() {
        EventDao_Impl eventDao_Impl;
        if (this.n != null) {
            return this.n;
        }
        synchronized (this) {
            try {
                if (this.n == null) {
                    this.n = new EventDao_Impl(this);
                }
                eventDao_Impl = this.n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eventDao_Impl;
    }
}
