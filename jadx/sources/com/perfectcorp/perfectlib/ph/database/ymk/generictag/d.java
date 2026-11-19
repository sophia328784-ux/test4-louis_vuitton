package com.perfectcorp.perfectlib.ph.database.ymk.generictag;

import android.content.ContentValues;
import android.database.Cursor;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.ymk.BaseDao;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class d extends BaseDao<e> {
    public static final d d = new d("GenericTagGuidDao", "GenericTagGuid", Contract.GenericTagGuid.f40217b);

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final Object l(Cursor cursor) {
        String strG = BaseDao.g(cursor, "Type");
        String string = cursor.getString(cursor.getColumnIndex("SubType"));
        long j2 = cursor.getLong(cursor.getColumnIndex("TagId"));
        boolean z = cursor.getInt(cursor.getColumnIndex("Is3d")) != 0;
        String string2 = cursor.getString(cursor.getColumnIndex("Guid"));
        e.a aVar = new e.a();
        Objects.requireNonNull(strG);
        aVar.f41185a = strG;
        Objects.requireNonNull(string);
        aVar.f41186b = string;
        aVar.f41187c = j2;
        aVar.d = z;
        Objects.requireNonNull(string2);
        aVar.f41188e = string2;
        return new e(aVar);
    }

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final ContentValues n(Object obj) {
        e eVar = (e) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("Type", eVar.f41181a);
        contentValues.put("SubType", eVar.f41182b);
        contentValues.put("TagId", Long.valueOf(eVar.f41183c));
        contentValues.put("Is3d", Integer.valueOf(eVar.d ? 1 : 0));
        contentValues.put("Guid", eVar.f41184e);
        return contentValues;
    }
}
