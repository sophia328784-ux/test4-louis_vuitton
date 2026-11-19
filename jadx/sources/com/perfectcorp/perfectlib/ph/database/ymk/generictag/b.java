package com.perfectcorp.perfectlib.ph.database.ymk.generictag;

import android.content.ContentValues;
import android.database.Cursor;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.ymk.BaseDao;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends BaseDao<c> {
    public static final b d = new b("GenericTagGroupDao", "GenericTagGroup", Contract.GenericTagGroup.f40215b);

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final Object l(Cursor cursor) {
        String strG = BaseDao.g(cursor, "Type");
        long j2 = cursor.getLong(cursor.getColumnIndex("Id"));
        String string = cursor.getString(cursor.getColumnIndex("Name"));
        boolean z = cursor.getInt(cursor.getColumnIndex("IsFreeTag")) != 0;
        c.a aVar = new c.a();
        Objects.requireNonNull(strG);
        aVar.f41178a = strG;
        aVar.f41179b = j2;
        Objects.requireNonNull(string);
        aVar.f41180c = string;
        aVar.d = z;
        return new c(aVar);
    }

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final ContentValues n(Object obj) {
        c cVar = (c) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("Type", cVar.f41175a);
        contentValues.put("Id", Long.valueOf(cVar.f41176b));
        contentValues.put("Name", cVar.f41177c);
        contentValues.put("IsFreeTag", Integer.valueOf(cVar.d ? 1 : 0));
        return contentValues;
    }
}
