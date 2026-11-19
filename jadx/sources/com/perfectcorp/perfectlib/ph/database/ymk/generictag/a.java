package com.perfectcorp.perfectlib.ph.database.ymk.generictag;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.ymk.BaseDao;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends BaseDao<f> {
    public static final a d = new a("GenericTagDao", "GenericTag", Contract.GenericTag.f40213b);

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final Object l(Cursor cursor) {
        String strG = BaseDao.g(cursor, "Type");
        long j2 = cursor.getLong(cursor.getColumnIndex("Id"));
        String string = cursor.getString(cursor.getColumnIndex("Name"));
        String string2 = cursor.getString(cursor.getColumnIndex("ImgURL"));
        long j3 = cursor.getLong(cursor.getColumnIndex("TagGroupId"));
        f.a aVar = new f.a();
        Objects.requireNonNull(strG);
        aVar.f41193a = strG;
        aVar.f41194b = j2;
        Objects.requireNonNull(string);
        aVar.f41195c = string;
        Objects.requireNonNull(string2);
        aVar.d = string2;
        aVar.f41196e = j3;
        return new f(aVar);
    }

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.BaseDao
    public final ContentValues n(Object obj) {
        f fVar = (f) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("Type", fVar.f41189a);
        contentValues.put("Id", Long.valueOf(fVar.f41190b));
        contentValues.put("Name", fVar.f41191c);
        contentValues.put("ImgURL", fVar.d);
        contentValues.put("TagGroupId", Long.valueOf(fVar.f41192e));
        return contentValues;
    }

    public final List o(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        Objects.requireNonNull(str);
        Objects.requireNonNull(str2);
        Cursor cursorF = null;
        try {
            String[] strArr = this.f40267c;
            String[] strArr2 = {str, str2};
            Objects.requireNonNull(strArr);
            cursorF = BaseDao.f(sQLiteDatabase, this.f40266b, strArr, new String[]{"Type", "TagGroupId"}, strArr2);
            List listM = m(cursorF);
            IO.b(cursorF);
            return listM;
        } catch (Throwable th) {
            try {
                Log.e("GenericTagDao", "[getByTypeAndGroupId] failed", th);
                throw th;
            } catch (Throwable th2) {
                IO.b(cursorF);
                throw th2;
            }
        }
    }
}
