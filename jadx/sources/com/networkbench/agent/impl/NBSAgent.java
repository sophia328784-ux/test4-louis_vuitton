package com.networkbench.agent.impl;

import com.networkbench.agent.impl.data.f;
import com.networkbench.agent.impl.harvest.ApplicationInformation;
import com.networkbench.agent.impl.harvest.DeviceData;
import com.networkbench.agent.impl.harvest.DeviceInformation;
import com.networkbench.agent.impl.harvest.SystemInfo;
import com.networkbench.agent.impl.util.NBSAndroidAgentImpl;
import com.networkbench.agent.impl.util.r;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class NBSAgent {
    private static final String VERSION = "2.17.7";
    private static NBSAndroidAgentImpl sImpl;

    public static void disable() {
        sImpl.j();
    }

    public static String getActiveNetworkCarrier() {
        if (sImpl == null) {
            return null;
        }
        return r.u().ay() ? sImpl.l() : "00000";
    }

    public static List<f> getAndClearErrorData() {
        NBSAndroidAgentImpl nBSAndroidAgentImpl = sImpl;
        return nBSAndroidAgentImpl == null ? Collections.EMPTY_LIST : nBSAndroidAgentImpl.f();
    }

    public static ApplicationInformation getApplicationInformation() {
        if (getImpl() == null) {
            return null;
        }
        return getImpl().e();
    }

    public static String getBuildId() {
        return "";
    }

    public static DeviceData getDeviceData() {
        return getImpl() == null ? new DeviceData() : getImpl().d();
    }

    public static DeviceInformation getDeviceInformation() {
        return getImpl() == null ? new DeviceInformation() : getImpl().c();
    }

    public static String getHttpDataVersion() {
        return "2.5.1";
    }

    public static NBSAndroidAgentImpl getImpl() {
        return sImpl;
    }

    public static int getResponseBodyLimit() {
        NBSAndroidAgentImpl nBSAndroidAgentImpl = sImpl;
        if (nBSAndroidAgentImpl == null) {
            return 1024;
        }
        return nBSAndroidAgentImpl.h();
    }

    public static String getSocketDataVersion() {
        return "2.5.3";
    }

    public static int getStackTraceLimit() {
        NBSAndroidAgentImpl nBSAndroidAgentImpl = sImpl;
        if (nBSAndroidAgentImpl == null) {
            return 1024;
        }
        return nBSAndroidAgentImpl.g();
    }

    public static SystemInfo getSystemInfo() {
        return getImpl().n();
    }

    public static String getTaskDataVersion() {
        return "1.0.0";
    }

    public static String getVersion() {
        return "2.17.7";
    }

    public static boolean isDisabled() {
        return sImpl.k();
    }

    public static void mergeErrorData(List<f> list) {
        NBSAndroidAgentImpl nBSAndroidAgentImpl = sImpl;
        if (nBSAndroidAgentImpl != null) {
            nBSAndroidAgentImpl.a(list);
        }
    }

    private void pokeCanary() {
    }

    public static void setImpl(NBSAndroidAgentImpl nBSAndroidAgentImpl) {
        sImpl = nBSAndroidAgentImpl;
    }

    public static void start() {
        sImpl.a();
    }

    public static void stop() {
        sImpl.i();
    }
}
