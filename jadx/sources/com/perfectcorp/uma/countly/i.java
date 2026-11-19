package com.perfectcorp.uma.countly;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.utility.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes3.dex */
final class i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ d f43232a;

    public i(d dVar) {
        this.f43232a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int size;
        b bVar = this.f43232a.f43219a;
        bVar.d();
        p pVar = bVar.f43208a;
        synchronized (pVar) {
            SQLiteDatabase writableDatabase = pVar.a().f43240b.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                ArrayList arrayListC = pVar.c();
                size = arrayListC.size();
                int i2 = 0;
                while (i2 < size) {
                    int i3 = i2 + 10;
                    List listSubList = arrayListC.subList(i2, Math.min(i3, size));
                    JSONArray jSONArray = new JSONArray();
                    Iterator it = listSubList.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(((r) it.next()).b());
                    }
                    String string = jSONArray.toString();
                    try {
                        string = URLEncoder.encode(string, "UTF-8");
                    } catch (UnsupportedEncodingException unused) {
                    }
                    pVar.b(bVar.a(new u()) + "&events=" + string);
                    i2 = i3;
                }
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
            } catch (Throwable th) {
                writableDatabase.endTransaction();
                throw th;
            }
        }
        bVar.e();
        Log.g(3, "Countly", "[flushEvents] end. count=" + size);
    }
}
