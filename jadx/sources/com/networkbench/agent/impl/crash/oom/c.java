package com.networkbench.agent.impl.crash.oom;

import android.app.Application;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.base.InitTask;
import com.networkbench.agent.impl.base.MonitorManager;
import com.networkbench.agent.impl.oom.javaoom.monitor.OOMHprofUploader;
import com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitorConfig;
import com.networkbench.agent.impl.oom.javaoom.monitor.OOMReportUploader;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.h;
import com.networkbench.agent.impl.util.r;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class c implements InitTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f36676a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f36677b = "OOMJavaMonitorTask";

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        return !com.networkbench.agent.impl.util.a.f38249a.c(g.a(str));
    }

    public void init(Application application) {
        MonitorManager.addMonitorConfig(new OOMMonitorConfig.Builder().setEnableHprofDumpAnalysis(true).setHprofUploader(new OOMHprofUploader() { // from class: com.networkbench.agent.impl.crash.oom.c.2
            @Override // com.networkbench.agent.impl.oom.javaoom.monitor.OOMHprofUploader
            public void upload(File file, OOMHprofUploader.HprofType hprofType) {
                try {
                    Logger.debug(c.f36677b, "todo, upload hprof " + file.getName() + " if necessary");
                    file.delete();
                } catch (Throwable th) {
                    Logger.error(c.f36677b, "hprof process error", th);
                }
            }
        }).setReportUploader(new OOMReportUploader() { // from class: com.networkbench.agent.impl.crash.oom.c.1
            @Override // com.networkbench.agent.impl.oom.javaoom.monitor.OOMReportUploader
            public void upload(File file, String str) {
                if (file != null) {
                    try {
                        d dVar = new d(file.getParentFile());
                        if (dVar.b()) {
                            Logger.debug(c.f36677b, "isFileOverThreshold true");
                            dVar.c();
                        }
                        if (!c.this.a(file.getName())) {
                            dVar.a(file);
                            return;
                        }
                        Logger.debug(c.f36677b, "report oom file now");
                        String strB = h.b(file);
                        dVar.a(strB, file);
                        try {
                            if (r.u().aC()) {
                                NBSAppAgent.debugLog(strB, "TingyunSDK_OOM");
                            }
                        } catch (Throwable th) {
                            com.networkbench.agent.impl.c.g.j("NBSPageData addAll() has an error : " + th);
                        }
                    } catch (Throwable th2) {
                        Logger.error(c.f36677b, "report json process error", th2);
                    }
                }
            }
        }).build());
    }
}
