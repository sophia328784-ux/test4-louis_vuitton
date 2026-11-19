package defpackage;

import android.database.Cursor;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.android.Apk;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.io.Closeables;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class g8 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f69332c;

    public /* synthetic */ g8(String str, int i2) {
        this.f69331b = i2;
        this.f69332c = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v15, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r13v17, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r13v21, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r13v23, types: [java.util.List] */
    @Override // java.util.concurrent.Callable
    public final Object call() throws Throwable {
        Throwable th;
        InputStream inputStreamC;
        Object arrayList;
        Object arrayList2;
        int i2 = this.f69331b;
        String str = this.f69332c;
        switch (i2) {
            case 0:
                List listB = a.b("Guid=?", new String[]{str});
                Optional optionalE = !listB.isEmpty() ? Optional.e((a.C0136a) listB.get(0)) : Optional.a();
                if (!optionalE.d()) {
                    a.c(new a.C0136a(str, a.c.LOOK, "", a.b.f41168a));
                    return Boolean.FALSE;
                }
                StringBuilder sbR = pq0.r("Look is updating or updated. lookGuid=", str, ", state=");
                sbR.append(((a.C0136a) optionalE.c()).d);
                Log.g(3, "LookCacheFirstThenUpdateStrategy", sbR.toString());
                return Boolean.TRUE;
            case 1:
                try {
                    inputStreamC = Apk.c(PfCommons.b(), str);
                    try {
                        return new BufferedReader(new InputStreamReader(inputStreamC));
                    } catch (Throwable th2) {
                        th = th2;
                        Logger logger = Closeables.f42370a;
                        if (inputStreamC == null) {
                            throw th;
                        }
                        try {
                            inputStreamC.close();
                            throw th;
                        } catch (IOException e2) {
                            try {
                                Closeables.f42370a.log(Level.WARNING, "IOException thrown while closing Closeable.", (Throwable) e2);
                                throw th;
                            } catch (IOException e3) {
                                md.h(e3);
                                return null;
                            }
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    inputStreamC = null;
                }
                break;
            case 2:
                return str;
            case 3:
                return PfCommons.b().getAssets().open(str);
            case 4:
                return new FileInputStream(str);
            case 5:
                try {
                    Cursor cursorQuery = YMKDatabase.b().query("SkuSet", new String[]{"SkuSetID"}, "Type=?", new String[]{str}, null, null, null, null);
                    if (DBUtility.f(cursorQuery)) {
                        arrayList = new ArrayList();
                        do {
                            arrayList.add(cursorQuery.getString(cursorQuery.getColumnIndex("SkuSetID")));
                        } while (cursorQuery.moveToNext());
                    } else {
                        arrayList = Collections.EMPTY_LIST;
                    }
                    IO.b(cursorQuery);
                    return arrayList;
                } catch (Throwable th4) {
                    try {
                        Log.e("SkuSetDao", "[getSkuSetIdsByType]", th4);
                        throw th4;
                    } catch (Throwable th5) {
                        IO.b(null);
                        throw th5;
                    }
                }
            default:
                try {
                    Cursor cursorQuery2 = YMKDatabase.b().query("SkuSetList", new String[]{"SkuSetID"}, "Type=?", new String[]{str}, null, null, null, null);
                    if (DBUtility.f(cursorQuery2)) {
                        arrayList2 = new ArrayList();
                        do {
                            arrayList2.add(cursorQuery2.getString(cursorQuery2.getColumnIndex("SkuSetID")));
                        } while (cursorQuery2.moveToNext());
                    } else {
                        arrayList2 = Collections.EMPTY_LIST;
                    }
                    IO.b(cursorQuery2);
                    return arrayList2;
                } catch (Throwable th6) {
                    try {
                        Log.e("SkuSetListDao", "[getSkuSetIdsByType]", th6);
                        throw th6;
                    } catch (Throwable th7) {
                        IO.b(null);
                        throw th7;
                    }
                }
        }
    }
}
