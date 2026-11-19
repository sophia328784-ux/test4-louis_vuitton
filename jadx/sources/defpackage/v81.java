package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.a;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b;
import com.perfectcorp.perfectlib.ph.template.e;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class v81 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Iterable f80534c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ v81(Iterable iterable, boolean z, int i2) {
        this.f80533b = i2;
        this.f80534c = iterable;
        this.d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f80533b;
        final boolean z = this.d;
        final Iterable iterable = this.f80534c;
        switch (i2) {
            case 0:
                final SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                final int i3 = 0;
                DBUtility.i(sQLiteDatabaseC, new Runnable() { // from class: w81
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str;
                        String str2;
                        String str3;
                        Map map;
                        String str4;
                        boolean z2;
                        Map map2;
                        int i4 = i3;
                        String str5 = "[getSkuSetIdToSkuSetUpdateInfoMap]";
                        Cursor cursorQuery = null;
                        String str6 = "SkuSetID";
                        String str7 = "LastModified";
                        boolean z3 = z;
                        Iterable<b.c> iterable2 = iterable;
                        switch (i4) {
                            case 0:
                                SQLiteDatabase sQLiteDatabase = sQLiteDatabaseC;
                                String str8 = "SkuSetDao";
                                try {
                                    String str9 = "SkuSetID";
                                    cursorQuery = sQLiteDatabase.query("SkuSet", new String[]{str9, "LastModified", "IsDeleted"}, null, null, null, null, null, null);
                                    if (DBUtility.f(cursorQuery)) {
                                        HashMap map3 = new HashMap();
                                        while (true) {
                                            String string = cursorQuery.getString(cursorQuery.getColumnIndex(str9));
                                            str4 = str8;
                                            str2 = str5;
                                            try {
                                                long j2 = cursorQuery.getLong(cursorQuery.getColumnIndex("LastModified"));
                                                boolean z4 = cursorQuery.getInt(cursorQuery.getColumnIndex("IsDeleted")) > 0;
                                                String str10 = str9;
                                                a.C0157a c0157a = new a.C0157a(string);
                                                c0157a.f41337e = j2;
                                                c0157a.f41339h = z4;
                                                map3.put(string, new a(c0157a));
                                                if (cursorQuery.moveToNext()) {
                                                    str8 = str4;
                                                    str5 = str2;
                                                    str9 = str10;
                                                } else {
                                                    IO.b(cursorQuery);
                                                    map = map3;
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                str = str4;
                                                str3 = str2;
                                                Log.e(str, str3, th);
                                                throw th;
                                            }
                                        }
                                    } else {
                                        try {
                                            map = Collections.EMPTY_MAP;
                                            IO.b(cursorQuery);
                                            str4 = "SkuSetDao";
                                        } catch (Throwable th2) {
                                            th = th2;
                                            str = "SkuSetDao";
                                            str3 = "[getSkuSetIdToSkuSetUpdateInfoMap]";
                                            try {
                                                Log.e(str, str3, th);
                                                throw th;
                                            } catch (Throwable th3) {
                                                IO.b(cursorQuery);
                                                throw th3;
                                            }
                                        }
                                    }
                                    Set<String> setKeySet = map.keySet();
                                    for (b.c cVar : iterable2) {
                                        a aVar = (a) map.get(cVar.skuSetId);
                                        if (aVar == null) {
                                            e.C0182e.b(sQLiteDatabase, cVar);
                                        } else {
                                            if (aVar.f41331e < cVar.lastModified) {
                                                String str11 = cVar.skuSetId;
                                                Threads.b();
                                                DBUtility.i(sQLiteDatabase, new yp(2, sQLiteDatabase, str11));
                                                e.C0182e.b(sQLiteDatabase, cVar);
                                            } else {
                                                boolean z5 = aVar.f41333h;
                                                String str12 = cVar.skuSetId;
                                                if (z5) {
                                                    try {
                                                        sQLiteDatabase.execSQL(DBUtility.d("UPDATE " + YMKDatabase.a(sQLiteDatabase, "SkuSet") + " SET IsDeleted = 0 WHERE SkuSetID IN (" + DBUtility.g(Collections.singletonList(str12)) + ")"));
                                                    } catch (Throwable th4) {
                                                        Log.e(str4, "[resetIsDeletedFlag]", th4);
                                                        throw th4;
                                                    }
                                                } else {
                                                    setKeySet.remove(str12);
                                                }
                                            }
                                            setKeySet.remove(cVar.skuSetId);
                                        }
                                        break;
                                    }
                                    if (z3) {
                                        for (String str13 : setKeySet) {
                                            a aVar2 = (a) map.get(str13);
                                            Objects.requireNonNull(aVar2);
                                            if (!aVar2.f41333h) {
                                                Threads.b();
                                                DBUtility.i(sQLiteDatabase, new yp(2, sQLiteDatabase, str13));
                                            }
                                        }
                                        return;
                                    }
                                    return;
                                } catch (Throwable th5) {
                                    th = th5;
                                    str = str8;
                                    str2 = str5;
                                }
                                break;
                            default:
                                SQLiteDatabase sQLiteDatabase2 = sQLiteDatabaseC;
                                cursorQuery = sQLiteDatabase2.query("SkuSetList", new String[]{"SkuSetID", "LastModified", "IsDeleted"}, null, null, null, null, null, null);
                                try {
                                    if (DBUtility.f(cursorQuery)) {
                                        HashMap map4 = new HashMap();
                                        while (true) {
                                            String string2 = cursorQuery.getString(cursorQuery.getColumnIndex(str6));
                                            z2 = z3;
                                            String str14 = str6;
                                            String str15 = str7;
                                            long j3 = cursorQuery.getLong(cursorQuery.getColumnIndex(str7));
                                            boolean z6 = cursorQuery.getInt(cursorQuery.getColumnIndex("IsDeleted")) > 0;
                                            Cursor cursor = cursorQuery;
                                            try {
                                                a.C0157a c0157a2 = new a.C0157a(string2);
                                                c0157a2.f41337e = j3;
                                                c0157a2.f41339h = z6;
                                                map4.put(string2, new a(c0157a2));
                                                if (cursor.moveToNext()) {
                                                    cursorQuery = cursor;
                                                    z3 = z2;
                                                    str6 = str14;
                                                    str7 = str15;
                                                } else {
                                                    IO.b(cursor);
                                                    map2 = map4;
                                                }
                                            } catch (Throwable th6) {
                                                th = th6;
                                                cursorQuery = cursor;
                                                try {
                                                    Log.e("SkuSetListDao", "[getSkuSetIdToSkuSetUpdateInfoMap]", th);
                                                    throw th;
                                                } catch (Throwable th7) {
                                                    IO.b(cursorQuery);
                                                    throw th7;
                                                }
                                            }
                                        }
                                    } else {
                                        map2 = Collections.EMPTY_MAP;
                                        IO.b(cursorQuery);
                                        z2 = z3;
                                    }
                                    Set<String> setKeySet2 = map2.keySet();
                                    for (b.c cVar2 : iterable2) {
                                        a aVar3 = (a) map2.get(cVar2.skuSetId);
                                        if (aVar3 == null) {
                                            e.C0182e.d(sQLiteDatabase2, cVar2);
                                        } else {
                                            if (aVar3.f41331e < cVar2.lastModified) {
                                                String str16 = cVar2.skuSetId;
                                                Threads.b();
                                                DBUtility.i(sQLiteDatabase2, new yp(3, sQLiteDatabase2, str16));
                                                e.C0182e.d(sQLiteDatabase2, cVar2);
                                            } else {
                                                boolean z7 = aVar3.f41333h;
                                                String str17 = cVar2.skuSetId;
                                                if (z7) {
                                                    try {
                                                        sQLiteDatabase2.execSQL(DBUtility.d("UPDATE " + YMKDatabase.a(sQLiteDatabase2, "SkuSetList") + " SET IsDeleted = 0 WHERE SkuSetID IN (" + DBUtility.g(Collections.singletonList(str17)) + ")"));
                                                    } catch (Throwable th8) {
                                                        Log.e("SkuSetListDao", "[resetIsDeletedFlag]", th8);
                                                        throw th8;
                                                    }
                                                } else {
                                                    setKeySet2.remove(str17);
                                                }
                                            }
                                            setKeySet2.remove(cVar2.skuSetId);
                                        }
                                        break;
                                    }
                                    if (z2) {
                                        for (String str18 : setKeySet2) {
                                            a aVar4 = (a) map2.get(str18);
                                            Objects.requireNonNull(aVar4);
                                            if (!aVar4.f41333h) {
                                                Threads.b();
                                                DBUtility.i(sQLiteDatabase2, new yp(3, sQLiteDatabase2, str18));
                                            }
                                        }
                                        return;
                                    }
                                    return;
                                } catch (Throwable th9) {
                                    th = th9;
                                }
                                break;
                        }
                    }
                });
                break;
            default:
                final SQLiteDatabase sQLiteDatabaseC2 = YMKDatabase.c();
                final int i4 = 1;
                DBUtility.i(sQLiteDatabaseC2, new Runnable() { // from class: w81
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str;
                        String str2;
                        String str3;
                        Map map;
                        String str4;
                        boolean z2;
                        Map map2;
                        int i5 = i4;
                        String str5 = "[getSkuSetIdToSkuSetUpdateInfoMap]";
                        Cursor cursorQuery = null;
                        String str6 = "SkuSetID";
                        String str7 = "LastModified";
                        boolean z3 = z;
                        Iterable<b.c> iterable2 = iterable;
                        switch (i5) {
                            case 0:
                                SQLiteDatabase sQLiteDatabase = sQLiteDatabaseC2;
                                String str8 = "SkuSetDao";
                                try {
                                    String str9 = "SkuSetID";
                                    cursorQuery = sQLiteDatabase.query("SkuSet", new String[]{str9, "LastModified", "IsDeleted"}, null, null, null, null, null, null);
                                    if (DBUtility.f(cursorQuery)) {
                                        HashMap map3 = new HashMap();
                                        while (true) {
                                            String string = cursorQuery.getString(cursorQuery.getColumnIndex(str9));
                                            str4 = str8;
                                            str2 = str5;
                                            try {
                                                long j2 = cursorQuery.getLong(cursorQuery.getColumnIndex("LastModified"));
                                                boolean z4 = cursorQuery.getInt(cursorQuery.getColumnIndex("IsDeleted")) > 0;
                                                String str10 = str9;
                                                a.C0157a c0157a = new a.C0157a(string);
                                                c0157a.f41337e = j2;
                                                c0157a.f41339h = z4;
                                                map3.put(string, new a(c0157a));
                                                if (cursorQuery.moveToNext()) {
                                                    str8 = str4;
                                                    str5 = str2;
                                                    str9 = str10;
                                                } else {
                                                    IO.b(cursorQuery);
                                                    map = map3;
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                str = str4;
                                                str3 = str2;
                                                Log.e(str, str3, th);
                                                throw th;
                                            }
                                        }
                                    } else {
                                        try {
                                            map = Collections.EMPTY_MAP;
                                            IO.b(cursorQuery);
                                            str4 = "SkuSetDao";
                                        } catch (Throwable th2) {
                                            th = th2;
                                            str = "SkuSetDao";
                                            str3 = "[getSkuSetIdToSkuSetUpdateInfoMap]";
                                            try {
                                                Log.e(str, str3, th);
                                                throw th;
                                            } catch (Throwable th3) {
                                                IO.b(cursorQuery);
                                                throw th3;
                                            }
                                        }
                                    }
                                    Set<String> setKeySet = map.keySet();
                                    for (b.c cVar : iterable2) {
                                        a aVar = (a) map.get(cVar.skuSetId);
                                        if (aVar == null) {
                                            e.C0182e.b(sQLiteDatabase, cVar);
                                        } else {
                                            if (aVar.f41331e < cVar.lastModified) {
                                                String str11 = cVar.skuSetId;
                                                Threads.b();
                                                DBUtility.i(sQLiteDatabase, new yp(2, sQLiteDatabase, str11));
                                                e.C0182e.b(sQLiteDatabase, cVar);
                                            } else {
                                                boolean z5 = aVar.f41333h;
                                                String str12 = cVar.skuSetId;
                                                if (z5) {
                                                    try {
                                                        sQLiteDatabase.execSQL(DBUtility.d("UPDATE " + YMKDatabase.a(sQLiteDatabase, "SkuSet") + " SET IsDeleted = 0 WHERE SkuSetID IN (" + DBUtility.g(Collections.singletonList(str12)) + ")"));
                                                    } catch (Throwable th4) {
                                                        Log.e(str4, "[resetIsDeletedFlag]", th4);
                                                        throw th4;
                                                    }
                                                } else {
                                                    setKeySet.remove(str12);
                                                }
                                            }
                                            setKeySet.remove(cVar.skuSetId);
                                        }
                                        break;
                                    }
                                    if (z3) {
                                        for (String str13 : setKeySet) {
                                            a aVar2 = (a) map.get(str13);
                                            Objects.requireNonNull(aVar2);
                                            if (!aVar2.f41333h) {
                                                Threads.b();
                                                DBUtility.i(sQLiteDatabase, new yp(2, sQLiteDatabase, str13));
                                            }
                                        }
                                        return;
                                    }
                                    return;
                                } catch (Throwable th5) {
                                    th = th5;
                                    str = str8;
                                    str2 = str5;
                                }
                                break;
                            default:
                                SQLiteDatabase sQLiteDatabase2 = sQLiteDatabaseC2;
                                cursorQuery = sQLiteDatabase2.query("SkuSetList", new String[]{"SkuSetID", "LastModified", "IsDeleted"}, null, null, null, null, null, null);
                                try {
                                    if (DBUtility.f(cursorQuery)) {
                                        HashMap map4 = new HashMap();
                                        while (true) {
                                            String string2 = cursorQuery.getString(cursorQuery.getColumnIndex(str6));
                                            z2 = z3;
                                            String str14 = str6;
                                            String str15 = str7;
                                            long j3 = cursorQuery.getLong(cursorQuery.getColumnIndex(str7));
                                            boolean z6 = cursorQuery.getInt(cursorQuery.getColumnIndex("IsDeleted")) > 0;
                                            Cursor cursor = cursorQuery;
                                            try {
                                                a.C0157a c0157a2 = new a.C0157a(string2);
                                                c0157a2.f41337e = j3;
                                                c0157a2.f41339h = z6;
                                                map4.put(string2, new a(c0157a2));
                                                if (cursor.moveToNext()) {
                                                    cursorQuery = cursor;
                                                    z3 = z2;
                                                    str6 = str14;
                                                    str7 = str15;
                                                } else {
                                                    IO.b(cursor);
                                                    map2 = map4;
                                                }
                                            } catch (Throwable th6) {
                                                th = th6;
                                                cursorQuery = cursor;
                                                try {
                                                    Log.e("SkuSetListDao", "[getSkuSetIdToSkuSetUpdateInfoMap]", th);
                                                    throw th;
                                                } catch (Throwable th7) {
                                                    IO.b(cursorQuery);
                                                    throw th7;
                                                }
                                            }
                                        }
                                    } else {
                                        map2 = Collections.EMPTY_MAP;
                                        IO.b(cursorQuery);
                                        z2 = z3;
                                    }
                                    Set<String> setKeySet2 = map2.keySet();
                                    for (b.c cVar2 : iterable2) {
                                        a aVar3 = (a) map2.get(cVar2.skuSetId);
                                        if (aVar3 == null) {
                                            e.C0182e.d(sQLiteDatabase2, cVar2);
                                        } else {
                                            if (aVar3.f41331e < cVar2.lastModified) {
                                                String str16 = cVar2.skuSetId;
                                                Threads.b();
                                                DBUtility.i(sQLiteDatabase2, new yp(3, sQLiteDatabase2, str16));
                                                e.C0182e.d(sQLiteDatabase2, cVar2);
                                            } else {
                                                boolean z7 = aVar3.f41333h;
                                                String str17 = cVar2.skuSetId;
                                                if (z7) {
                                                    try {
                                                        sQLiteDatabase2.execSQL(DBUtility.d("UPDATE " + YMKDatabase.a(sQLiteDatabase2, "SkuSetList") + " SET IsDeleted = 0 WHERE SkuSetID IN (" + DBUtility.g(Collections.singletonList(str17)) + ")"));
                                                    } catch (Throwable th8) {
                                                        Log.e("SkuSetListDao", "[resetIsDeletedFlag]", th8);
                                                        throw th8;
                                                    }
                                                } else {
                                                    setKeySet2.remove(str17);
                                                }
                                            }
                                            setKeySet2.remove(cVar2.skuSetId);
                                        }
                                        break;
                                    }
                                    if (z2) {
                                        for (String str18 : setKeySet2) {
                                            a aVar4 = (a) map2.get(str18);
                                            Objects.requireNonNull(aVar4);
                                            if (!aVar4.f41333h) {
                                                Threads.b();
                                                DBUtility.i(sQLiteDatabase2, new yp(3, sQLiteDatabase2, str18));
                                            }
                                        }
                                        return;
                                    }
                                    return;
                                } catch (Throwable th9) {
                                    th = th9;
                                }
                                break;
                        }
                    }
                });
                break;
        }
    }
}
