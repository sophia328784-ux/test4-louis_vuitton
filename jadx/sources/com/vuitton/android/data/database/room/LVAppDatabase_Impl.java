package com.vuitton.android.data.database.room;

import androidx.room.InvalidationTracker;
import androidx.room.RoomOpenDelegate;
import androidx.room.RoomOpenDelegateMarker;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.connectivity.lightup.LightUpProductDao;
import com.vuitton.android.data.connectivity.lightup.LightUpProductDao_Impl;
import defpackage.ss;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/database/room/LVAppDatabase_Impl;", "Lcom/vuitton/android/data/database/room/LVAppDatabase;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVAppDatabase_Impl extends LVAppDatabase {
    public static final /* synthetic */ int s = 0;
    public final Lazy r = LazyKt.b(new ss(this, 25));

    @Override // androidx.room.RoomDatabase
    public final List d(LinkedHashMap linkedHashMap) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new LVAppDatabase_AutoMigration_3_4_Impl());
        arrayList.add(new LVAppDatabase_AutoMigration_4_5_Impl());
        arrayList.add(new LVAppDatabase_AutoMigration_5_6_Impl());
        arrayList.add(new LVAppDatabase_AutoMigration_6_7_Impl());
        arrayList.add(new LVAppDatabase_AutoMigration_7_8_Impl());
        arrayList.add(new LVAppDatabase_AutoMigration_8_9_Impl());
        return arrayList;
    }

    @Override // androidx.room.RoomDatabase
    public final InvalidationTracker e() {
        return new InvalidationTracker(this, new LinkedHashMap(), new LinkedHashMap(), "LightUp");
    }

    @Override // androidx.room.RoomDatabase
    public final RoomOpenDelegateMarker f() {
        return new RoomOpenDelegate() { // from class: com.vuitton.android.data.database.room.LVAppDatabase_Impl$createOpenDelegate$_openDelegate$1
            {
                super(9, "52eb7970bbdcb34fbf95bd651545e8af", "0f916761d141e0f86b3a0e794dd89b69");
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void a(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `LightUp` (`DEVICE_ID` TEXT NOT NULL, `TYPE` INTEGER NOT NULL, `NAME` TEXT, `POWER_MODE` INTEGER NOT NULL, `PRESET_NAME` TEXT, `PRESET_IMAGE` TEXT, `PRESET_ID` TEXT, `DEVICE_TO_STRING` TEXT NOT NULL, PRIMARY KEY(`DEVICE_ID`))");
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                SQLite.a(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '52eb7970bbdcb34fbf95bd651545e8af')");
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void b(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS `LightUp`");
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void c(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void d(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                int i2 = LVAppDatabase_Impl.s;
                this.d.t(sQLiteConnection);
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void e(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void f(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                DBUtil.a(sQLiteConnection);
            }

            @Override // androidx.room.RoomOpenDelegate
            public final RoomOpenDelegate.ValidationResult g(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("DEVICE_ID", new TableInfo.Column("DEVICE_ID", "TEXT", true, 1, null, 1));
                linkedHashMap.put("TYPE", new TableInfo.Column("TYPE", "INTEGER", true, 0, null, 1));
                linkedHashMap.put("NAME", new TableInfo.Column("NAME", "TEXT", false, 0, null, 1));
                linkedHashMap.put("POWER_MODE", new TableInfo.Column("POWER_MODE", "INTEGER", true, 0, null, 1));
                linkedHashMap.put("PRESET_NAME", new TableInfo.Column("PRESET_NAME", "TEXT", false, 0, null, 1));
                linkedHashMap.put("PRESET_IMAGE", new TableInfo.Column("PRESET_IMAGE", "TEXT", false, 0, null, 1));
                linkedHashMap.put("PRESET_ID", new TableInfo.Column("PRESET_ID", "TEXT", false, 0, null, 1));
                linkedHashMap.put("DEVICE_TO_STRING", new TableInfo.Column("DEVICE_TO_STRING", "TEXT", true, 0, null, 1));
                TableInfo tableInfo = new TableInfo("LightUp", linkedHashMap, new LinkedHashSet(), new LinkedHashSet());
                TableInfo.f19766e.getClass();
                TableInfo tableInfoA = TableInfo.Companion.a(sQLiteConnection, "LightUp");
                if (tableInfo.equals(tableInfoA)) {
                    return new RoomOpenDelegate.ValidationResult(true, null);
                }
                return new RoomOpenDelegate.ValidationResult(false, "LightUp(com.vuitton.android.data.connectivity.lightup.LightUpProductEntity).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfoA);
            }
        };
    }

    @Override // androidx.room.RoomDatabase
    public final Set m() {
        return new LinkedHashSet();
    }

    @Override // androidx.room.RoomDatabase
    public final LinkedHashMap o() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        KClass kClassB = Reflection.f71922a.b(LightUpProductDao.class);
        LightUpProductDao_Impl.f43564e.getClass();
        linkedHashMap.put(kClassB, EmptyList.f71768b);
        return linkedHashMap;
    }

    @Override // com.vuitton.android.data.database.room.LVAppDatabase
    public final LightUpProductDao y() {
        return (LightUpProductDao) this.r.getF71699b();
    }
}
