package com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager;

import android.text.TextUtils;
import com.perfectcorp.perfectlib.ymk.Globals;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadMetadata;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import java.io.File;
import java.net.URI;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DownloadFolderHelper {
    public static String a(DownloadMetadata downloadMetadata) {
        return Globals.a() + "/mcsdk/download/" + downloadMetadata.a() + "/" + downloadMetadata.b() + "_" + downloadMetadata.d() + "_" + new File(URI.create(downloadMetadata.c()).getPath()).getName();
    }

    public static String b() {
        return Globals.a() + "/mcsdk/download";
    }

    public static String c(DownloadMetadata downloadMetadata) {
        return Globals.a() + "/mcsdk/download/" + downloadMetadata.a() + "/" + downloadMetadata.b() + "_" + downloadMetadata.d();
    }

    public static String d() {
        return b().concat("/id_system_data");
    }

    public static File e(String str, URI uri) {
        try {
            Preconditions.g(!TextUtils.isEmpty(str), "folderName can't be empty");
            File file = new File(uri.getPath());
            StringBuilder sb = new StringBuilder();
            sb.append(Globals.a() + "/temp");
            sb.append("/mcsdk/download/");
            sb.append(str);
            sb.append("/");
            sb.append(file.getName());
            File file2 = new File(sb.toString());
            file2.getParentFile().mkdirs();
            file2.createNewFile();
            return file2;
        } catch (Throwable unused) {
            return null;
        }
    }
}
