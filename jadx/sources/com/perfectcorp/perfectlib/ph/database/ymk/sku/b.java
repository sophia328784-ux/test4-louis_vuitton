package com.perfectcorp.perfectlib.ph.database.ymk.sku;

import android.content.ContentValues;
import android.database.Cursor;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.ymk.BaseDao;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends BaseDao<a> {
    public static final b d = new b("ProductMaskDetailDao", "ProductMaskDetail", Contract.ProductMaskDetail.f40230b);

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final Object l(Cursor cursor) {
        String string = cursor.getString(cursor.getColumnIndex("productGuid"));
        String string2 = cursor.getString(cursor.getColumnIndex("skuGuid"));
        long j2 = cursor.getLong(cursor.getColumnIndex("lastModified"));
        String string3 = cursor.getString(cursor.getColumnIndex("featureType"));
        a.C0150a c0150a = new a.C0150a();
        Objects.requireNonNull(string);
        c0150a.f41283a = string;
        Objects.requireNonNull(string2);
        c0150a.f41284b = string2;
        c0150a.f41285c = j2;
        Objects.requireNonNull(string3);
        c0150a.d = string3;
        return new a(c0150a);
    }

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final ContentValues n(Object obj) {
        a aVar = (a) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("productGuid", aVar.f41280a);
        contentValues.put("skuGuid", aVar.f41281b);
        contentValues.put("lastModified", Long.valueOf(aVar.f41282c));
        contentValues.put("featureType", aVar.d);
        return contentValues;
    }
}
