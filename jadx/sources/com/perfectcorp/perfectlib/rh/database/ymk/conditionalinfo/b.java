package com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo;

import android.content.ContentValues;
import android.database.Cursor;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.ymk.BaseDao;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends BaseDao<a> {
    public static final b d = new b("ConditionalInfoDao", "ConditionalInfo", Contract.ConditionalInfo.f40207b);

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final Object l(Cursor cursor) {
        String strG = BaseDao.g(cursor, "GUID");
        String string = cursor.getString(cursor.getColumnIndex("Info"));
        a.C0187a c0187a = new a.C0187a();
        Objects.requireNonNull(strG);
        c0187a.f41820a = strG;
        Objects.requireNonNull(string);
        c0187a.f41821b = string;
        return new a(c0187a);
    }

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final /* synthetic */ ContentValues n(Object obj) {
        a aVar = (a) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("GUID", aVar.f41817a);
        contentValues.put("Info", aVar.f41818b);
        return contentValues;
    }
}
