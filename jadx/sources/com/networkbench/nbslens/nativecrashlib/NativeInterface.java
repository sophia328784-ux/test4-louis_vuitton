package com.networkbench.nbslens.nativecrashlib;

import com.networkbench.agent.impl.crash.NativeCrashInterface;
import com.networkbench.nbslens.nbsnativecrashlib.NBSNativeCrash;
import com.networkbench.nbslens.nbsnativecrashlib.Version;
import defpackage.v7;

/* JADX INFO: loaded from: classes2.dex */
public class NativeInterface {
    public static String getNativeVersion() {
        return Version.version;
    }

    public static String initNativeCrash() {
        if (NativeCrashInterface.getNativeContext() == null) {
            v7.h("error initNativeCrash context is null");
            return null;
        }
        return NBSNativeCrash.init(NativeCrashInterface.getNativeContext()) + "";
    }
}
