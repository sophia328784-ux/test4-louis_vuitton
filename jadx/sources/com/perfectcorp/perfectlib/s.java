package com.perfectcorp.perfectlib;

import android.content.SharedPreferences;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.SurveySyncingException;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.hc.database.ymk.idusage.IdUsageDao;
import com.perfectcorp.perfectlib.hc.preferences.LookHandlerPreferences;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.thirdparty.com.google.common.collect.at;
import defpackage.fc;
import defpackage.md;
import java.io.File;
import java.io.FileFilter;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class s implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f41840c;

    public /* synthetic */ s(Object obj, int i2) {
        this.f41839b = i2;
        this.f41840c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final HashSet hashSet;
        int i2 = this.f41839b;
        Object obj = this.f41840c;
        switch (i2) {
            case 0:
                final Future future = (Future) obj;
                Threads.b();
                List listH = DownloadImageDao.d.h(CacheCleaner.b(), "path", "path IS NOT NULL AND path !", "");
                if (listH instanceof Collection) {
                    hashSet = new HashSet(listH);
                } else {
                    Iterator it = listH.iterator();
                    hashSet = new HashSet();
                    at.b(hashSet, it);
                }
                CacheCleaner.c(future);
                File[] fileArrListFiles = new File(DownloadFolderHelper.b().concat("/image")).listFiles(new FileFilter() { // from class: com.perfectcorp.perfectlib.u
                    @Override // java.io.FileFilter
                    public final boolean accept(File file) {
                        CacheCleaner.c(future);
                        return !hashSet.contains(file.getAbsolutePath());
                    }
                });
                if (fileArrListFiles != null) {
                    for (File file : fileArrListFiles) {
                        CacheCleaner.c(future);
                        Log.g(3, "CacheCleaner", "[deleteNotReferredImages] Delete file path=" + file.getAbsolutePath());
                        FileUtils.c(file);
                    }
                    return;
                }
                return;
            case 1:
                IdUsageDao.Type type = (IdUsageDao.Type) obj;
                List listC = IdUsageDao.c(CacheCleaner.b(), type);
                StringBuilder sb = new StringBuilder("[deleteByType] type=");
                sb.append(type);
                sb.append(", size=");
                fc.z(listC, sb, 3, "CacheCleaner");
                CacheCleaner.a(listC, true);
                Log.g(3, "CacheCleaner", "[deleteByType] end");
                return;
            case 2:
                SharedPreferences.Editor editorEdit = LookHandlerPreferences.f40327b.edit();
                for (String str : (List) obj) {
                    CacheCleaner.d(str, true);
                    editorEdit.remove(str);
                }
                editorEdit.commit();
                return;
            case 3:
                ((PhotoMakeup.PhotoMakeupFrameProcessingThread) obj).d();
                return;
            default:
                SkinCare3RecommendationHandler skinCare3RecommendationHandler = (SkinCare3RecommendationHandler) obj;
                if (skinCare3RecommendationHandler.f39885a.get() != null) {
                    throw new SurveySyncingException();
                }
                if (skinCare3RecommendationHandler.f39886b.compareAndSet(false, true)) {
                    SkinCare3RecommendationHandler.f();
                    return;
                } else {
                    md.k("clearAll() is running");
                    return;
                }
        }
    }
}
