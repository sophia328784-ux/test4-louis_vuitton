package com.perfectcorp.perfectlib.rh.database.ymk.skincare;

import android.content.ContentValues;
import android.database.Cursor;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.ymk.BaseDao;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends BaseDao<d> {
    public static final b d = new b("SkinCare3ProductRelationDao", "SkinCare3ProductRelation", Contract.SkinCare3ProductRelation.f40238b);

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final Object l(Cursor cursor) {
        String strG = BaseDao.g(cursor, "ProductId");
        String string = cursor.getString(cursor.getColumnIndex("ReferencedId"));
        d.a aVar = new d.a();
        aVar.f41830a = strG;
        aVar.f41831b = string;
        return new d(aVar);
    }

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final /* synthetic */ ContentValues n(Object obj) {
        d dVar = (d) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("ProductId", dVar.f41828a);
        contentValues.put("ReferencedId", dVar.f41829b);
        return contentValues;
    }
}
