package com.appsflyer.internal;

import android.content.Context;
import android.os.Process;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.LogTag;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AFf1iSDK {
    private static AFf1iSDK unregisterClient;
    private final Map<String, String> d = new HashMap<String, String>() { // from class: com.appsflyer.internal.AFf1iSDK.2
        {
            put("aa", "ro.arch");
            put("ab", "ro.chipname");
            put("ac", "ro.dalvik.vm.native.bridge");
            put("ad", "persist.sys.nativebridge");
            put("ae", "ro.enable.native.bridge.exec");
            put("af", "dalvik.vm.isa.x86.features");
            put("ag", "dalvik.vm.isa.x86.variant");
            put("ah", "ro.zygote");
            put("ai", "ro.allow.mock.location");
            put("aj", "ro.dalvik.vm.isa.arm");
            put("ak", "dalvik.vm.isa.arm.features");
            put("al", "dalvik.vm.isa.arm.variant");
            put("am", "dalvik.vm.isa.arm64.features");
            put("an", "dalvik.vm.isa.arm64.variant");
            put("ao", "vzw.os.rooted");
            put("ap", "ro.build.user");
            put("aq", "ro.kernel.qemu");
            put("ar", "ro.hardware");
            put("as", "ro.product.cpu.abi");
            put("at", "ro.product.cpu.abilist");
            put("au", "ro.product.cpu.abilist32");
            put("av", "ro.product.cpu.abilist64");
        }
    };

    public enum AFa1vSDK {
        XPOSED("xps"),
        FRIDA("frd");

        String d;

        AFa1vSDK(String str) {
            this.d = str;
        }
    }

    public enum AFa1ySDK {
        HOOKING("hk"),
        DEBUGGABLE("dbg");

        String AFKeystoreWrapper;

        AFa1ySDK(String str) {
            this.AFKeystoreWrapper = str;
        }
    }

    private AFf1iSDK() {
    }

    private static String AFKeystoreWrapper() {
        StringBuilder sb = new StringBuilder();
        try {
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it = Thread.getAllStackTraces().entrySet().iterator();
            int i2 = 0;
            int i3 = 0;
            while (it.hasNext()) {
                for (StackTraceElement stackTraceElement : it.next().getValue()) {
                    if (stackTraceElement.toString().contains("de.robv.android.xposed") && i3 <= 2) {
                        i3++;
                        sb.append(AFa1vSDK.XPOSED.d);
                        if (stackTraceElement.getMethodName().equals("main")) {
                            sb.append("+a");
                        }
                        if (stackTraceElement.getMethodName().equals("handleHookedMethod")) {
                            sb.append("+h");
                        }
                        sb.append(";");
                    }
                    if (stackTraceElement.getClassName().equals("com.android.internal.os.ZygoteInit")) {
                        i2++;
                    }
                }
            }
            if (i2 > 1) {
                sb.append("mz;");
            }
        } catch (Throwable th) {
            AFLogger.INSTANCE.e(LogTag.ANTI_FRAUD, "hooking check error", th, false, false);
        }
        try {
            StringBuilder sb2 = new StringBuilder("/proc/");
            sb2.append(Process.myPid());
            sb2.append("/maps");
            if (d(sb2.toString(), "frida")) {
                sb.append(AFa1vSDK.FRIDA.d);
            }
        } catch (Exception e2) {
            AFLogger.INSTANCE.e(LogTag.ANTI_FRAUD, "frida detection error", e2, false, false);
            sb.append(e2.getMessage().toLowerCase(Locale.ROOT));
        }
        sb.append(";");
        return sb.toString();
    }

    public static AFf1iSDK AFLogger() {
        if (unregisterClient == null) {
            unregisterClient = new AFf1iSDK();
        }
        return unregisterClient;
    }

    private static boolean d(String str, String str2) throws Exception {
        String line;
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, Charset.defaultCharset()));
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            do {
                line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    fileInputStream.close();
                    return false;
                }
            } while (!new HashSet(Arrays.asList(line.toLowerCase(Locale.ROOT).split("[\\s.,\\]\\-:/_\\[]"))).contains(lowerCase));
            bufferedReader.close();
            fileInputStream.close();
            return true;
        } catch (FileNotFoundException e2) {
            AFLogger.INSTANCE.e(LogTag.ANTI_FRAUD, "FNF", e2, false, false);
            throw new Exception("FNF");
        } catch (IOException e3) {
            AFLogger.INSTANCE.e(LogTag.ANTI_FRAUD, "IOF", e3, false, false);
            throw new Exception("IOF");
        } catch (Exception e4) {
            AFLogger.INSTANCE.e(LogTag.ANTI_FRAUD, "GF", e4, false, false);
            throw new Exception("GF");
        }
    }

    private AFg1gSDK registerClient() throws Throwable {
        AFg1gSDK aFg1gSDK = new AFg1gSDK();
        try {
            for (Map.Entry<String, String> entry : this.d.entrySet()) {
                String strAFKeystoreWrapper = AFKeystoreWrapper(entry.getValue());
                if (strAFKeystoreWrapper != null && !strAFKeystoreWrapper.equals("")) {
                    aFg1gSDK.AFKeystoreWrapper(entry.getKey(), strAFKeystoreWrapper);
                }
            }
            return aFg1gSDK;
        } catch (Exception e2) {
            AFLogger.INSTANCE.e(LogTag.ANTI_FRAUD, "failed to create props", e2, false, false);
            return aFg1gSDK;
        }
    }

    private AFg1gSDK unregisterClient(Context context) {
        AFg1gSDK aFg1gSDK = new AFg1gSDK();
        try {
            aFg1gSDK.AFKeystoreWrapper(AFa1ySDK.HOOKING.AFKeystoreWrapper, AFKeystoreWrapper());
            aFg1gSDK.AFKeystoreWrapper(AFa1ySDK.DEBUGGABLE.AFKeystoreWrapper, Boolean.valueOf((context.getApplicationInfo().flags & 2) != 0));
            return aFg1gSDK;
        } catch (Throwable th) {
            AFLogger.INSTANCE.e(LogTag.ANTI_FRAUD, "failed to perform analysis checks", th, false, false);
            return aFg1gSDK;
        }
    }

    public final Object registerClient(Context context, String str) throws Throwable {
        String str2 = null;
        if (str != null) {
            try {
                str2 = str.matches("\\d+") ? null : "invalid timestamp";
            } catch (Exception e2) {
                AFLogger.INSTANCE.e(LogTag.ANTI_FRAUD, "Failed to collect anti-fraud data", e2, false, false);
                return str2;
            }
        }
        AFg1gSDK aFg1gSDK = new AFg1gSDK();
        aFg1gSDK.AFKeystoreWrapper("pr", registerClient());
        aFg1gSDK.AFKeystoreWrapper("an", unregisterClient(context));
        return aFg1gSDK;
    }

    private static String AFKeystoreWrapper(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
        } catch (Exception e2) {
            AFLogger.INSTANCE.e(LogTag.ANTI_FRAUD, "error in props rfl", e2, false, false);
            return null;
        }
    }
}
