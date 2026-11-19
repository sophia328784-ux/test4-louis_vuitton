package com.networkbench.agent.impl.crash.oom;

import com.networkbench.agent.impl.base.DefaultInitTask;
import com.networkbench.agent.impl.harvest.PreInitializationInterface;
import com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitor;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.sightcall.livetranslation.data.LiveTranslationEntity;

/* JADX INFO: loaded from: classes2.dex */
public class OOMModuleWrapper implements PreInitializationInterface {
    public static OOMModuleWrapper INSTANCE = new OOMModuleWrapper();
    private static String OOM_JAVA_LEAK_MODULE_CLASS_NAME = "com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitor";
    private static String OOM_MONITOR_BASE_MODULE_CLASS_NAME = "com.networkbench.agent.impl.base.DefaultInitTask";
    private static final String TAG = "OOMModuleWrapper";
    private boolean isInitOOMModule;
    private boolean isOOMModuleExist;

    public OOMModuleWrapper() {
        this.isOOMModuleExist = ak.i(OOM_MONITOR_BASE_MODULE_CLASS_NAME) && ak.i(OOM_JAVA_LEAK_MODULE_CLASS_NAME);
        this.isInitOOMModule = false;
    }

    private void initJavaMonitorTask() {
        if (!this.isOOMModuleExist) {
            Logger.debug(TAG, "oom module is not exist, skip");
            return;
        }
        Logger.debug(TAG, "init oom java monitor");
        c.f36676a.init(ak.e());
        OOMMonitor.INSTANCE.startLoop(true, false, LiveTranslationEntity.DefaultSentenceTimeOut);
    }

    @Override // com.networkbench.agent.impl.harvest.PreInitializationInterface
    public boolean checkUserAgreement() {
        return ak.d(r.u().J());
    }

    @Override // com.networkbench.agent.impl.harvest.PreInitializationInterface
    public void execute() {
        Logger.debug(TAG, "init oom module");
        DefaultInitTask.INSTANCE.init(ak.e());
        initJavaMonitorTask();
        this.isInitOOMModule = true;
    }

    public void initOOMModule() {
        try {
            if (!this.isOOMModuleExist) {
                Logger.warning(TAG, "oom module is not exist, skip");
                return;
            }
            if (this.isInitOOMModule) {
                Logger.debug(TAG, "oom module is inited, skip");
            } else if (checkUserAgreement()) {
                execute();
            } else {
                Logger.debug(TAG, "user agreement is not agreed, skip");
            }
        } catch (Throwable unused) {
        }
    }
}
