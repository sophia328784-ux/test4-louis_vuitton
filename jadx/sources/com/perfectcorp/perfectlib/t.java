package com.perfectcorp.perfectlib;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.linkplay.medialib.ContentTree;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.preferences.JewelryLookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.NailLookHandlerPreferences;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import defpackage.pw0;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class t implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41853b;

    public /* synthetic */ t(int i2) {
        this.f41853b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List<com.perfectcorp.perfectlib.ph.template.a> listI;
        switch (this.f41853b) {
            case 0:
                SQLiteDatabase sQLiteDatabaseB = CacheCleaner.b();
                try {
                    List list = Contract.IdSystemInfo.f40219a;
                    Cursor cursorQuery = sQLiteDatabaseB.query("IdSystemInfo", new String[]{"Id", "ReferencedIds", "Size", "LastModified"}, "Size = ?", new String[]{ContentTree.ROOT_ID}, null, null, null, null);
                    if (DBUtility.f(cursorQuery)) {
                        bz bzVar = ImmutableList.f42200c;
                        ImmutableList.Builder builder = new ImmutableList.Builder();
                        do {
                            builder.f(com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.a(cursorQuery));
                        } while (cursorQuery.moveToNext());
                        listI = builder.i();
                        IO.b(cursorQuery);
                    } else {
                        listI = Collections.EMPTY_LIST;
                        IO.b(cursorQuery);
                    }
                    for (com.perfectcorp.perfectlib.ph.template.a aVar : listI) {
                        String str = aVar.f41607a;
                        AtomicInteger atomicInteger = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.f41498a;
                        com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a.d(CacheCleaner.b(), new com.perfectcorp.perfectlib.ph.template.a(aVar.f41607a, aVar.f41608b, FileUtils.d(new File(DownloadFolderHelper.d(), str)), aVar.d));
                    }
                    return;
                } catch (Throwable th) {
                    try {
                        Log.e("IdSystemInfoDao", "[getByZeroSize] failed.", th);
                        throw th;
                    } catch (Throwable th2) {
                        IO.b(null);
                        throw th2;
                    }
                }
            case 1:
                JewelryLookHandlerPreferences.f40324a.m();
                JewelryLookHandlerPreferences.f40325b.m();
                LookHandler lookHandler = LookHandler.getInstance();
                if (lookHandler != null) {
                    lookHandler.f39668f.f39644c.clear();
                    return;
                }
                return;
            case 2:
                NailLookHandlerPreferences.f40328a.m();
                NailLookHandlerPreferences.f40329b.m();
                LookHandler lookHandler2 = LookHandler.getInstance();
                if (lookHandler2 != null) {
                    lookHandler2.f39667e.f39718c.clear();
                    return;
                }
                return;
            default:
                SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                HashSet<String> hashSet = new HashSet();
                DBUtility.i(sQLiteDatabaseC, new pw0(hashSet, sQLiteDatabaseC, 1));
                TagHandler.Preferences.f39984a.m();
                for (String str2 : hashSet) {
                    if (!TextUtils.isEmpty(str2)) {
                        FileUtils.c(new File(str2));
                    }
                }
                return;
        }
    }
}
