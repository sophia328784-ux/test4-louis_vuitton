package com.perfectcorp.perfectlib.internal;

import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.perfectlib.ymk.Globals;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b {
    public static void a() throws IOException {
        StringBuilder sb = new StringBuilder();
        File externalFilesDir = Globals.f41932a.getExternalFilesDir(null);
        sb.append(externalFilesDir != null ? externalFilesDir.getAbsolutePath() : Globals.a());
        sb.append("/pf_dump_data_");
        sb.append(System.currentTimeMillis());
        String string = sb.toString();
        if (a.f40371a.dumpDatabases) {
            b("databases", string);
        }
        if (a.f40371a.dumpFiles) {
            b("files", string);
        }
        if (a.f40371a.dumpPreferences) {
            b("shared_prefs", string);
        }
    }

    public static void b(String str, String str2) throws IOException {
        Threads.b();
        File file = new File(Globals.f41932a.isDeviceProtectedStorage() ? new File(Globals.f41932a.getApplicationInfo().deviceProtectedDataDir) : new File(Globals.f41932a.getApplicationInfo().dataDir), str);
        File file2 = new File(str2, str);
        if (file.exists() && file2.mkdirs()) {
            FileUtils.a(file, file2);
        }
    }
}
