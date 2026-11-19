package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.perfectlib.ph.database.mcsdk.ProductMappingDatabase;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.a;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.b;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class sa0 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f79758c;

    public /* synthetic */ sa0(List list, int i2) {
        this.f79757b = i2;
        this.f79758c = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.util.List] */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        Object arrayList;
        int i2 = this.f79757b;
        List list = this.f79758c;
        switch (i2) {
            case 0:
                return Lists.b(30, list);
            case 1:
                SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                DBUtility.i(sQLiteDatabaseC, new eq0(list, sQLiteDatabaseC, 2));
                return list;
            case 2:
                Threads.b();
                List<IdRow> listK = ProductMappingDatabase.h().k("productId", list);
                HashMap map = new HashMap(listK.size());
                for (IdRow idRow : listK) {
                    map.put(idRow.f41149c, idRow.f41148b);
                }
                return map;
            case 3:
                return b.a(YMKDatabase.b(), list);
            default:
                try {
                    Cursor cursorQuery = YMKDatabase.b().query("SkuSetList", new String[]{"SkuSetID", "Type", "Vendor", "CustomerId", "LastModified", "MakeupVersion", "Metadata", "IsDeleted"}, "SkuSetID IN (" + DBUtility.g(list) + ")", null, null, null, null, null);
                    if (DBUtility.f(cursorQuery)) {
                        arrayList = new ArrayList();
                        do {
                            int columnIndex = cursorQuery.getColumnIndex("SkuSetID");
                            int columnIndex2 = cursorQuery.getColumnIndex("Type");
                            int columnIndex3 = cursorQuery.getColumnIndex("Vendor");
                            int columnIndex4 = cursorQuery.getColumnIndex("CustomerId");
                            int columnIndex5 = cursorQuery.getColumnIndex("LastModified");
                            int columnIndex6 = cursorQuery.getColumnIndex("MakeupVersion");
                            int columnIndex7 = cursorQuery.getColumnIndex("Metadata");
                            int columnIndex8 = cursorQuery.getColumnIndex("IsDeleted");
                            String string = cursorQuery.getString(columnIndex);
                            String string2 = cursorQuery.getString(columnIndex2);
                            String string3 = cursorQuery.getString(columnIndex3);
                            String string4 = cursorQuery.getString(columnIndex4);
                            long j2 = cursorQuery.getLong(columnIndex5);
                            String string5 = cursorQuery.getString(columnIndex6);
                            String string6 = cursorQuery.getString(columnIndex7);
                            boolean z = cursorQuery.getInt(columnIndex8) > 0;
                            a.C0157a c0157a = new a.C0157a(string);
                            c0157a.f41335b = string2;
                            c0157a.f41336c = string3;
                            c0157a.d = string4;
                            c0157a.f41337e = j2;
                            c0157a.f41338f = string5;
                            c0157a.g = (a.b) GsonBaseResponse.f41999a.i(string6, a.b.class);
                            c0157a.f41339h = z;
                            arrayList.add(new a(c0157a));
                        } while (cursorQuery.moveToNext());
                    } else {
                        arrayList = Collections.EMPTY_LIST;
                    }
                    IO.b(cursorQuery);
                    return arrayList;
                } catch (Throwable th) {
                    try {
                        Log.e("SkuSetListDao", "[getSkuSets]", th);
                        throw th;
                    } catch (Throwable th2) {
                        IO.b(null);
                        throw th2;
                    }
                }
        }
    }
}
