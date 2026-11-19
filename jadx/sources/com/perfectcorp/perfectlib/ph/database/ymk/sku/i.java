package com.perfectcorp.perfectlib.ph.database.ymk.sku;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.linkplay.medialib.ContentTree;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class i {
    public static Optional a(SQLiteDatabase sQLiteDatabase, String str) {
        Threads.b();
        List listB = b(sQLiteDatabase, "skuGuid=? AND isDeleted=?", "1", new String[]{str, ContentTree.ROOT_ID});
        return MoreCollections.a(listB) ? Optional.a() : Optional.e((Sku) listB.get(0));
    }

    public static List b(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr) {
        List listI;
        Threads.b();
        try {
            Cursor cursorQuery = sQLiteDatabase.query("SkuOnly", Contract.SkuOnly.f40247a, str, strArr, null, null, null, str2);
            if (DBUtility.f(cursorQuery)) {
                bz bzVar = ImmutableList.f42200c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                do {
                    Sku.a aVarB = Sku.b();
                    aVarB.f41271a = cursorQuery.getLong(cursorQuery.getColumnIndex("skuId"));
                    aVarB.f41275f = cursorQuery.getString(cursorQuery.getColumnIndex("skuGuid"));
                    aVarB.d = cursorQuery.getString(cursorQuery.getColumnIndex("name"));
                    aVarB.f41274e = cursorQuery.getString(cursorQuery.getColumnIndex("longName"));
                    aVarB.n = cursorQuery.getInt(cursorQuery.getColumnIndex("isDefault")) == 1 ? 1 : 0;
                    aVarB.g = cursorQuery.getString(cursorQuery.getColumnIndex("vendor"));
                    aVarB.f41276h = cursorQuery.getLong(cursorQuery.getColumnIndex("startDate"));
                    aVarB.f41277i = cursorQuery.getLong(cursorQuery.getColumnIndex("endDate"));
                    aVarB.f41272b = cursorQuery.getString(cursorQuery.getColumnIndex("featureType"));
                    aVarB.f41273c = cursorQuery.getString(cursorQuery.getColumnIndex("featureSubtype"));
                    aVarB.f41278j = cursorQuery.getLong(cursorQuery.getColumnIndex("lastModified"));
                    aVarB.l = cursorQuery.getString(cursorQuery.getColumnIndex("info"));
                    aVarB.f41279k = cursorQuery.getLong(cursorQuery.getColumnIndex("customerId"));
                    aVarB.o = cursorQuery.getInt(cursorQuery.getColumnIndex("isDeleted")) == 1 ? 1 : 0;
                    aVarB.m = cursorQuery.getString(cursorQuery.getColumnIndex("extraInfo"));
                    aVarB.p = cursorQuery.getString(cursorQuery.getColumnIndex("hidden"));
                    builder.f(new Sku(aVarB));
                } while (cursorQuery.moveToNext());
                listI = builder.i();
            } else {
                listI = Collections.EMPTY_LIST;
            }
            IO.b(cursorQuery);
            return listI;
        } catch (Throwable th) {
            try {
                Log.e("SkuOnlyDao", "[get] error", th);
                throw th;
            } catch (Throwable th2) {
                IO.b(null);
                throw th2;
            }
        }
    }
}
