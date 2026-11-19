package com.perfectcorp.perfectlib.ph.database.ymk.background;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.database.ymk.BaseDao;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends BaseDao<a> {
    public static final b d = new b("BackgroundInfoDao", "BackgruondInfo", Contract.BackgroundInfo.f40203b);

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final Object l(Cursor cursor) {
        String strG = BaseDao.g(cursor, "guid");
        String string = cursor.getString(cursor.getColumnIndex(ConfigurationName.PING_PAYLOAD));
        String string2 = cursor.getString(cursor.getColumnIndex("usageType"));
        String string3 = cursor.getString(cursor.getColumnIndex("expiredDate"));
        String string4 = cursor.getString(cursor.getColumnIndex("rootFolder"));
        int i2 = cursor.getInt(cursor.getColumnIndex("version"));
        String string5 = cursor.getString(cursor.getColumnIndex(DbParams.KEY_DATA));
        boolean z = cursor.getInt(cursor.getColumnIndex("isDeleted")) != 0;
        a.C0135a c0135a = new a.C0135a();
        c0135a.f41155a = strG;
        c0135a.f41156b = string;
        c0135a.f41157c = c.a(string2).f41164b;
        c0135a.f41158e = string3;
        c0135a.f41159f = string4;
        c0135a.d = i2;
        c0135a.g = string5;
        c0135a.f41160h = z;
        return new a(c0135a);
    }

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final /* synthetic */ ContentValues n(Object obj) {
        a aVar = (a) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("guid", aVar.guid);
        contentValues.put(ConfigurationName.PING_PAYLOAD, aVar.payload);
        contentValues.put("usageType", aVar.b().f41164b);
        contentValues.put("expiredDate", aVar.expiredDate);
        contentValues.put("rootFolder", aVar.rootFolder);
        contentValues.put("version", Integer.valueOf(aVar.version));
        contentValues.put(DbParams.KEY_DATA, aVar.data);
        contentValues.put("isDeleted", Integer.valueOf(aVar.isDeleted ? 1 : 0));
        return contentValues;
    }

    public final List o(SQLiteDatabase sQLiteDatabase, List list) {
        Threads.b();
        Objects.requireNonNull(list);
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query(true, this.f40266b, this.f40267c, "guid".concat(DBUtility.b(list)).concat("AND isDeleted=0"), null, null, null, null, null);
            List listM = m(cursorQuery);
            IO.b(cursorQuery);
            return listM;
        } catch (Throwable th) {
            try {
                Log.e("BackgroundInfoDao", "[getByBackgroundGuids] failed. guids=" + list, th);
                return Collections.EMPTY_LIST;
            } finally {
                IO.b(cursorQuery);
            }
        }
    }
}
