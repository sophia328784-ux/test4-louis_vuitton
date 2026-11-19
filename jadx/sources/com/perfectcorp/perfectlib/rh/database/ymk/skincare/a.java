package com.perfectcorp.perfectlib.rh.database.ymk.skincare;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.database.ymk.BaseDao;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends BaseDao<c> {
    public static final a d = new a("SkinCareProductDao", "SkinCare3Product", Contract.SkinCare3Product.f40236b);

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final Object l(Cursor cursor) {
        String strG = BaseDao.g(cursor, "ProductId");
        String string = cursor.getString(cursor.getColumnIndex("Payload"));
        long j2 = cursor.getLong(cursor.getColumnIndex("LastModified"));
        c.a aVar = new c.a();
        aVar.f41825a = strG;
        aVar.f41826b = string;
        aVar.f41827c = j2;
        return new c(aVar);
    }

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final /* synthetic */ ContentValues n(Object obj) {
        c cVar = (c) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("ProductId", cVar.f41822a);
        contentValues.put("Payload", cVar.f41823b);
        contentValues.put("LastModified", Long.valueOf(cVar.f41824c));
        return contentValues;
    }

    public final List o(SQLiteDatabase sQLiteDatabase, List list) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query("SkinCare3Product", Contract.SkinCare3Product.f40236b, "ProductId IN (" + DBUtility.g(list) + ")", null, null, null, null, null);
            List listM = m(cursorQuery);
            IO.b(cursorQuery);
            return listM;
        } catch (Throwable th) {
            try {
                Log.e("SkinCareProductDao", "getProductsById", th);
                throw th;
            } catch (Throwable th2) {
                IO.b(cursorQuery);
                throw th2;
            }
        }
    }
}
