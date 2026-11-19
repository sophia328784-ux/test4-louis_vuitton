package com.networkbench.agent.impl.crash.oom;

import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.h;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.s;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonParseException;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.md;
import java.io.File;
import java.io.FileFilter;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class d implements com.networkbench.agent.impl.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36680a = "OOMJsonFileProcess";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f36681b = ".json";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f36682c = 5;
    private File d;

    public d(com.networkbench.agent.impl.util.c cVar) {
        this.d = new File(cVar.f() + "/nbsperformance/oom/memory/hprof-aly");
        StringBuilder sb = new StringBuilder("oomJsDir is:");
        sb.append(this.d.getAbsolutePath());
        Logger.debug(f36680a, sb.toString());
    }

    private int d() {
        return b(this.d).length;
    }

    public void a(String str) {
        Logger.debug(f36680a, "delete dir is:" + this.d + ", fileSuffic:" + str);
        File[] fileArrA = a(this.d, str);
        StringBuilder sb = new StringBuilder("allFiles length is:");
        sb.append(fileArrA.length);
        Logger.debug(f36680a, sb.toString());
        Arrays.sort(fileArrA, new Comparator<File>() { // from class: com.networkbench.agent.impl.crash.oom.d.2
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(File file, File file2) {
                return Long.compare(file2.lastModified(), file.lastModified());
            }
        });
        Logger.debug(f36680a, "after sort allFiles length is:" + fileArrA.length);
        for (int i2 = 5; i2 < fileArrA.length; i2++) {
            File file = fileArrA[i2];
            if (file != null && file.exists()) {
                Logger.debug(f36680a, "delete over threshold file is:" + fileArrA[i2].getAbsolutePath());
                fileArrA[i2].delete();
            }
        }
    }

    public boolean b() {
        return d() > 5;
    }

    public void c() {
        a(f36681b);
        a(".content");
    }

    private static File[] b(File file) {
        return a(file, f36681b);
    }

    public d(File file) {
        this.d = file;
    }

    public void a(File file) {
        File[] fileArrB = b(this.d);
        if (fileArrB == null || fileArrB.length == 0) {
            Logger.debug(f36680a, "local oom json file is empty");
            return;
        }
        for (File file2 : fileArrB) {
            if (!file2.equals(file)) {
                Logger.debug(f36680a, "upload oom json file is:" + file2.getAbsolutePath());
                if (file2.length() == 0) {
                    Logger.debug(f36680a, "oom json is empty, skip upload");
                } else {
                    try {
                        String strB = h.b(file2);
                        a(strB, file2);
                        try {
                            if (r.u().aC()) {
                                NBSAppAgent.debugLog(strB, "TingyunSDK_OOM");
                            }
                        } catch (Throwable th) {
                            com.networkbench.agent.impl.c.g.j("NBSPageData addAll() has an error : " + th);
                        }
                    } catch (Throwable th2) {
                        Logger.error(f36680a, "upload old oom json file is failed", th2);
                    }
                }
            }
        }
    }

    private static File[] a(File file, final String str) {
        if (file != null && file.exists()) {
            File[] fileArrListFiles = file.listFiles(new FileFilter() { // from class: com.networkbench.agent.impl.crash.oom.d.1
                @Override // java.io.FileFilter
                public boolean accept(File file2) {
                    return file2.isFile() && file2.getName().contains(str);
                }
            });
            return fileArrListFiles == null ? new File[0] : fileArrListFiles;
        }
        return new File[0];
    }

    public void a(String str, File file) {
        if (ak.f()) {
            Logger.error(f36680a, "reportOOMInfo happened in ui thread");
            return;
        }
        b bVar = new b();
        bVar.a(str);
        a(bVar);
        try {
            String strB = h.b(new File(file.getAbsolutePath().replace(f36681b, ".content")));
            if (ab.c(strB)) {
                Logger.warning(f36680a, "content file is empty or not exist");
                return;
            }
            com.networkbench.agent.impl.crash.c cVarCrashParseFromString = NBSCrashTransaction.crashParseFromString(strB);
            if (cVarCrashParseFromString == null) {
                Logger.error(f36680a, "crash == null");
            } else {
                cVarCrashParseFromString.a(bVar);
                a(cVarCrashParseFromString, file);
            }
        } catch (Throwable unused) {
        }
    }

    private void a(com.networkbench.agent.impl.crash.c cVar, File file) {
        if (r.u().k()) {
            Logger.debug(f36680a, "report oom info sourceFile:" + file);
            try {
                com.networkbench.agent.impl.util.c.c.a().a(new f(a(cVar.asJsonArray(), r.u().K()).toString(), s.f38398a, com.networkbench.agent.impl.j.d.CRASH_DATA, cVar.b(), file));
            } catch (Throwable unused) {
            }
        }
    }

    public JsonObject a(JsonArray jsonArray, String str) throws JsonParseException {
        if (jsonArray != null) {
            JsonObject jsonObject = new JsonObject();
            JsonArray jsonArray2 = new JsonArray();
            jsonArray2.add(jsonArray);
            jsonObject.add(DbParams.KEY_DATA, jsonArray2);
            String strO = NBSAgent.getImpl().o();
            if (strO == null) {
                strO = "";
            }
            jsonObject.addProperty("did", strO);
            jsonObject.add("dev", NBSAgent.getDeviceInformation().asJsonArray());
            jsonObject.add(Payload.TYPE_APP, NBSAgent.getApplicationInformation().asJsonArray());
            return jsonObject;
        }
        md.n("crash message error");
        return null;
    }

    public File a() {
        File file = null;
        long jLastModified = 0;
        for (File file2 : b(this.d)) {
            if (jLastModified < file2.lastModified()) {
                jLastModified = file2.lastModified();
                file = file2;
            }
        }
        return file;
    }

    @Override // com.networkbench.agent.impl.f.a
    public void a(b bVar) {
    }
}
