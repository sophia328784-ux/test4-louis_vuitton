package com.perfectcorp.perfectlib.ph.database.ymk.sku;

import android.content.ContentValues;
import android.database.Cursor;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.ymk.BaseDao;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class d extends BaseDao<c> {
    public static final d d = new d("ProductMaskInfoDao", "ProductMaskList", Contract.ProductMaskList.f40232b);

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final Object l(Cursor cursor) {
        String string = cursor.getString(cursor.getColumnIndex("productGuid"));
        long j2 = cursor.getLong(cursor.getColumnIndex("lastModified"));
        String string2 = cursor.getString(cursor.getColumnIndex("featureType"));
        c.a aVar = new c.a();
        Objects.requireNonNull(string);
        aVar.f41289a = string;
        aVar.f41290b = j2;
        Objects.requireNonNull(string2);
        aVar.f41291c = string2;
        return new c(aVar);
    }

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final ContentValues n(Object obj) {
        c cVar = (c) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("productGuid", cVar.f41286a);
        contentValues.put("lastModified", Long.valueOf(cVar.f41287b));
        contentValues.put("featureType", cVar.f41288c);
        return contentValues;
    }
}
