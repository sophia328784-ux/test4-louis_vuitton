package com.networkbench.nbslens.nbsnativecrashlib;

import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.networkbench.agent.impl.crash.NativeCrashInterface;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.n00;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, String> f38776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f38777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f38778c;
    private String d = NativeCrashInterface.getSuuid();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JsonArray f38779e = a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public JsonArray f38780f;
    public List<Map.Entry<Thread, StackTraceElement[]>> g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f38781h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f38782i;

    public j(Map<String, String> map, boolean z, List<Map.Entry<Thread, StackTraceElement[]>> list) {
        this.f38776a = map;
        this.f38777b = z;
        this.g = list;
        b();
    }

    private Map<String, String> b(String str) {
        HashMap map = new HashMap();
        try {
            for (String str2 : str.split("\n")) {
                String[] strArrSplit = str2.split("\\(");
                if (strArrSplit.length == 2) {
                    String strTrim = strArrSplit[0].trim();
                    String strTrim2 = strArrSplit[1].trim();
                    String strTrim3 = strTrim2.substring(0, strTrim2.indexOf(FileUtils.HIDDEN_PREFIX)).split(":")[1].trim();
                    if (!map.containsKey(strTrim)) {
                        if (strTrim3.length() > 32) {
                            strTrim3 = strTrim3.substring(strTrim3.length() - 32);
                        }
                        map.put(strTrim, strTrim3);
                    }
                }
            }
            return map;
        } catch (Throwable th) {
            NBSNativeCrash.c().a("NBSAgent", "parseBuildInfo error:" + th.getMessage());
            return map;
        }
    }

    public static String c() {
        String[] strArr = Build.SUPPORTED_ABIS;
        String str = (strArr == null || strArr.length <= 0) ? "" : strArr[0];
        if (!TextUtils.isEmpty(str)) {
            return str.toLowerCase(Locale.US);
        }
        NBSNativeCrash.c().c("NBSAgent", "Architecture#getValue()::Build.CPU_ABI returned null or empty");
        return "";
    }

    private String f() {
        return c();
    }

    public JsonArray a(JsonArray jsonArray) {
        String strSubstring;
        JsonArray jsonArray2 = new JsonArray();
        jsonArray2.add(new JsonPrimitive((Number) Long.valueOf(NativeCrashInterface.getExcursionOfMsNotConvert(System.currentTimeMillis()))));
        jsonArray2.add(new JsonPrimitive((Number) Long.valueOf(NativeCrashInterface.getInitAgentTime())));
        jsonArray2.add(new JsonPrimitive((Number) Integer.valueOf(NativeCrashInterface.isInitSuccess() ? 1 : 0)));
        jsonArray2.add(new JsonPrimitive(new UUID(new SecureRandom().nextLong(), new SecureRandom().nextLong()).toString()));
        jsonArray2.add(new JsonPrimitive(this.f38776a.get(m.x) == null ? "" : this.f38776a.get(m.x)));
        jsonArray2.add(jsonArray);
        jsonArray2.add(new JsonPrimitive(NativeCrashInterface.getCurrentActivity()));
        jsonArray2.add(NativeCrashInterface.getDeviceData());
        jsonArray2.add(NativeCrashInterface.getAppInfo());
        jsonArray2.add(new JsonPrimitive(NativeCrashInterface.getAddAppInfo()));
        jsonArray2.add(new JsonPrimitive(""));
        jsonArray2.add(this.f38779e);
        if (this.f38781h) {
            strSubstring = this.f38776a.get(m.F);
            if (strSubstring != null) {
                int length = strSubstring.length();
                int i2 = this.f38782i;
                if (length > i2) {
                    strSubstring = strSubstring.substring(0, i2);
                }
            }
        } else {
            strSubstring = "";
        }
        jsonArray2.add(new JsonPrimitive(strSubstring != null ? strSubstring : ""));
        jsonArray2.add(new JsonPrimitive((Number) Integer.valueOf(NativeCrashInterface.getAppPhase())));
        jsonArray2.add(new JsonPrimitive(NativeCrashInterface.getUserActionId()));
        jsonArray2.add(new JsonObject());
        try {
            jsonArray2.add(new JsonPrimitive(this.d));
            jsonArray2.add(new JsonPrimitive(NativeCrashInterface.getCustData().toString()));
        } catch (Throwable unused) {
        }
        return jsonArray2;
    }

    public JsonArray d() {
        return this.f38779e;
    }

    public String e() {
        return this.f38776a.get(m.x);
    }

    public JsonArray g() {
        JsonArray jsonArray = new JsonArray();
        String str = this.f38776a.get(m.A) == null ? "" : this.f38776a.get(m.A);
        this.f38778c = str;
        String strA = a(str);
        this.f38778c = strA;
        if (strA != null && !strA.isEmpty()) {
            JsonArray jsonArray2 = new JsonArray();
            boolean z = true;
            if (this.f38777b) {
                jsonArray2.add(new JsonPrimitive((Number) Long.valueOf(Looper.getMainLooper().getThread().getId())));
                jsonArray2.add(new JsonPrimitive(Looper.getMainLooper().getThread().getName()));
            } else {
                jsonArray2.add(new JsonPrimitive((Number) 1));
                jsonArray2.add(new JsonPrimitive("subthread"));
            }
            jsonArray2.add(new JsonPrimitive(b(this.f38778c, this.f38776a.get(m.K), NativeCrashInterface.getCrashStackCount())));
            jsonArray.add(jsonArray2);
            if (!this.f38777b) {
                String string = new k(Looper.getMainLooper().getThread()).a().toString();
                JsonArray jsonArray3 = new JsonArray();
                jsonArray3.add(new JsonPrimitive((Number) Long.valueOf(Looper.getMainLooper().getThread().getId())));
                jsonArray3.add(new JsonPrimitive(Looper.getMainLooper().getThread().getName()));
                jsonArray3.add(new JsonPrimitive(string));
                if (string.length() == 0) {
                    z = false;
                } else {
                    jsonArray.add(jsonArray3);
                }
            }
            if (this.g != null) {
                a(jsonArray, z);
            }
        }
        this.f38780f = jsonArray;
        return jsonArray;
    }

    public String h() {
        return this.d;
    }

    private static String c(String str) {
        return str.substring(str.lastIndexOf("/") + 1, str.length());
    }

    private void b() {
        try {
            Map agentInfo = NativeCrashInterface.getAgentInfo();
            if (agentInfo.containsKey("isCollSysLog")) {
                this.f38781h = ((Boolean) agentInfo.get("isCollSysLog")).booleanValue();
            }
            if (agentInfo.containsKey("logMaxLength")) {
                this.f38782i = ((Integer) agentInfo.get("logMaxLength")).intValue();
            }
        } catch (Throwable unused) {
        }
    }

    public String b(String str, String str2, int i2) {
        if (str2 == null) {
            return str;
        }
        return a(str, "", i2) + a(str2, "1##", i2);
    }

    private JsonArray a() {
        String strR;
        JsonArray jsonArray = new JsonArray();
        String str = this.f38776a.get(m.B) == null ? "" : this.f38776a.get(m.B);
        if (str != null && !str.isEmpty()) {
            Map<String, String> mapB = b(str);
            String strF = f();
            for (Map.Entry<String, String> entry : mapB.entrySet()) {
                String key = entry.getKey();
                if (key.startsWith("/system/")) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(c(key));
                    sb.append(",");
                    sb.append((Object) entry.getValue());
                    sb.append(",");
                    strR = n00.r(strF, ",0", sb);
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(c(key));
                    sb2.append(",");
                    sb2.append((Object) entry.getValue());
                    sb2.append(",");
                    strR = n00.r(strF, ",1", sb2);
                }
                jsonArray.add(new JsonPrimitive(strR));
            }
        }
        return jsonArray;
    }

    private void a(JsonArray jsonArray, boolean z) {
        List<Map.Entry<Thread, StackTraceElement[]>> list = this.g;
        if (list == null) {
            return;
        }
        for (Map.Entry<Thread, StackTraceElement[]> entry : list) {
            if (!entry.getKey().getName().equals(Looper.getMainLooper().getThread().getName()) || !z) {
                StackTraceElement[] value = entry.getValue();
                if (value.length > 0) {
                    StringBuilder sb = new StringBuilder();
                    for (int i2 = 0; i2 < value.length; i2++) {
                        if (i2 <= NativeCrashInterface.getCrashStackCount()) {
                            sb.append("\tat " + value[i2] + "\n");
                        }
                    }
                    jsonArray.add(a(entry.getKey().getId(), entry.getKey().getName(), sb.toString()));
                }
            }
        }
    }

    private JsonArray a(long j2, String str, String str2) {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(j2)));
        jsonArray.add(new JsonPrimitive(str));
        if (str2 == null) {
            str2 = "";
        }
        jsonArray.add(new JsonPrimitive(str2));
        return jsonArray;
    }

    public static String a(String str) {
        return (str == null || str.isEmpty()) ? str : str.replace("  ", " ");
    }

    public String a(String str, String str2, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        String[] strArrSplit = str.split("\n");
        for (int i3 = 0; i3 < strArrSplit.length; i3++) {
            if (i3 >= i2) {
                stringBuffer.append("... ");
                stringBuffer.append(strArrSplit.length - i3);
                stringBuffer.append(" more\n");
                break;
            }
            StringBuilder sbT = n00.t(str2);
            sbT.append(strArrSplit[i3]);
            sbT.append("\n");
            stringBuffer.append(sbT.toString());
        }
        return stringBuffer.toString();
    }
}
