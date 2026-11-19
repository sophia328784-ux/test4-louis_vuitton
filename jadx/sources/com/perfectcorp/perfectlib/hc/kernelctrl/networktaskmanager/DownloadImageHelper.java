package com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager;

import android.net.Uri;
import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageInfo;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.NetworkManager;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import defpackage.cv;
import defpackage.d21;
import defpackage.ms;
import java.io.File;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DownloadImageHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f40320a = new AtomicInteger();

    public static class DownloadComponent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40321a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f40322b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f40323c;

        public DownloadComponent(String str) {
            this.f40322b = str;
            this.f40321a = new File(str).getName();
            StringBuilder sb = new StringBuilder();
            sb.append(System.nanoTime());
            this.f40323c = sb.toString();
        }

        public final String a() {
            String str = this.f40321a;
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            File file = new File(DownloadFolderHelper.b().concat("/image"));
            file.mkdirs();
            return new File(file, d21.p(new StringBuilder(), this.f40323c, "_", str)).getAbsolutePath();
        }
    }

    public static Observable a(Collection collection, NetworkTaskManager.TaskPriority taskPriority, DownloadTaskCancelable downloadTaskCancelable) {
        int andIncrement = f40320a.getAndIncrement();
        Single list = Observable.fromIterable(collection).flatMapSingle(new cv(downloadTaskCancelable, taskPriority, andIncrement)).toList();
        ms msVar = new ms(andIncrement, 1);
        list.getClass();
        return new t(list, msVar).l();
    }

    public static String b(Configuration.ImageSource imageSource, String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (imageSource == Configuration.ImageSource.URL) {
            return NetworkManager.c(str);
        }
        List listE = DownloadImageDao.d.e(YMKDatabase.b(), ConfigurationName.DOWNLOAD_PLUGIN_URL, str);
        if (listE.isEmpty() || TextUtils.isEmpty(((DownloadImageInfo) listE.get(0)).f40307b)) {
            return NetworkManager.c(str);
        }
        String str2 = ((DownloadImageInfo) listE.get(0)).f40307b;
        if (!TextUtils.isEmpty(str2)) {
            try {
                return Uri.fromFile(new File(str2)).toString();
            } catch (Throwable th) {
                Log.e("DownloadImageHelper", "append file scheme failed with path=" + str2, th);
            }
        }
        return str2;
    }
}
