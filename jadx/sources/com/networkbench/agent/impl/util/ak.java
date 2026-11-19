package com.networkbench.agent.impl.util;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.TextView;
import com.linkplay.medialib.ContentTree;
import com.linkplay.medialib.server.HttpServer;
import com.networkbench.R;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.instrumentation.NBSActionInstrumentation;
import com.networkbench.agent.impl.instrumentation.NBSInstrumented;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonElement;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.squareup.okhttp.internal.Version;
import defpackage.a61;
import defpackage.cj;
import defpackage.d21;
import defpackage.md;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.Deflater;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes2.dex */
public class ak {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f38327b = "Util";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f38329e = "com.networkbench.agent.impl.v2_";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f38330f = 2048;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final SecureRandom f38328c = new SecureRandom();
    private static com.networkbench.agent.impl.c.e d = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f38326a = false;

    public static String a(Context context, boolean z) {
        if (context == null || NBSAgent.getImpl() == null) {
            return "";
        }
        try {
            JsonObject jsonObject = new JsonObject();
            System.currentTimeMillis();
            if (NBSAgent.getDeviceInformation() != null) {
                jsonObject.addProperty("pt", NBSAgent.getDeviceInformation().getCpuModel());
                jsonObject.addProperty("arch", NBSAgent.getDeviceInformation().getCpuArch());
            } else {
                jsonObject.addProperty("pt", com.networkbench.agent.impl.crash.b.d());
                jsonObject.addProperty("arch", com.networkbench.agent.impl.crash.b.a());
            }
            jsonObject.addProperty("pu", (Number) 0);
            com.networkbench.agent.impl.crash.b.a(context, jsonObject);
            jsonObject.addProperty("sp_free", com.networkbench.agent.impl.crash.b.b());
            long jD = com.networkbench.agent.impl.crash.b.d(context);
            if (jD != -1) {
                jsonObject.addProperty("gps", Long.valueOf(jD));
            }
            try {
                if (com.networkbench.agent.impl.crash.b.e(context) != -1) {
                    jsonObject.addProperty("bt", Integer.valueOf(com.networkbench.agent.impl.crash.b.e(context)));
                }
            } catch (Throwable unused) {
            }
            jsonObject.addProperty("orui", Integer.valueOf(com.networkbench.agent.impl.crash.b.a(context)));
            JsonObject jsonObjectA = com.networkbench.agent.impl.crash.e.a();
            if (jsonObjectA != null) {
                jsonObject.add("cust", jsonObjectA);
            }
            if (z) {
                jsonObject.add("tr", c());
            }
            System.currentTimeMillis();
            return jsonObject.toString();
        } catch (Exception e2) {
            d.a("getADDITIONAL_INFO error :", e2);
            return "";
        }
    }

    public static Map<String, String> b(Map<String, Object> map) {
        HashMap map2 = new HashMap();
        if (map != null && map.size() >= 1) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof String) {
                    map2.put(entry.getKey(), (String) value);
                } else if (value instanceof List) {
                    StringBuilder sb = new StringBuilder();
                    sb.append('[');
                    Iterator it = ((List) value).iterator();
                    while (it.hasNext()) {
                        sb.append(it.next().toString());
                        sb.append(',');
                    }
                    map2.put(entry.getKey(), sb.substring(0, sb.length() - 1) + "]");
                } else {
                    map2.put(entry.getKey(), value.toString());
                }
            }
        }
        return map2;
    }

    public static String c(View view) {
        String currentActivityName;
        if (view == null) {
            String currentActivityName2 = ScreenNameManager.getCurrentActivityName();
            Logger.debug(f38327b, "getScreenName currentActivityName:" + currentActivityName2);
            return currentActivityName2;
        }
        String strB = com.networkbench.agent.impl.fragmentadapt.a.b(view, com.networkbench.agent.impl.fragmentadapt.a.a(view.getContext()));
        if (strB == null || strB.isEmpty()) {
            currentActivityName = ScreenNameManager.getCurrentActivityName();
        } else {
            currentActivityName = strB.toString();
            Logger.debug(f38327b, "get screen from tingyunTag:" + currentActivityName);
        }
        Logger.debug(f38327b, "getScreenName result:" + currentActivityName);
        return currentActivityName == null ? "" : currentActivityName;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0044  */
    public static String d(View view) {
        String string;
        if (view == null) {
            string = "";
        } else if (view instanceof TextView) {
            TextView textView = (TextView) view;
            if (textView.getText() != null) {
                string = textView.getText().toString();
            } else {
                string = "";
            }
        } else if (view instanceof ViewGroup) {
            string = com.networkbench.agent.impl.floatbtnmanager.q.a((ViewGroup) view);
        } else if (view.getContentDescription() != null) {
            string = view.getContentDescription().toString();
        } else if (view.getTag(R.string.view_menuitem_attached_id) != null) {
            string = view.getTag(R.string.view_menuitem_attached_id).toString();
        } else {
            string = "";
        }
        return (string == null || string.length() <= 128) ? string : ab.a(string, 128);
    }

    public static byte[] e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.length() % 2 == 1) {
            md.n("invalid hex length: ".concat(str));
            return null;
        }
        byte[] bArr = new byte[str.length() / 2];
        int i2 = 0;
        int i3 = 0;
        while (i2 < str.length()) {
            int i4 = i2 + 2;
            bArr[i3] = (byte) Integer.parseInt(str.substring(i2, i4), 16);
            i3++;
            i2 = i4;
        }
        return bArr;
    }

    public static HashMap<String, String> f(Map<String, List<String>> map) {
        if (map != null) {
            try {
                if (map.size() != 0) {
                    HashMap<String, String> map2 = new HashMap<>();
                    for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                        List<String> value = entry.getValue();
                        if (value.size() > 0 && entry.getKey() != null) {
                            map2.put(entry.getKey().toLowerCase(), value.get(0));
                        }
                    }
                    return map2;
                }
            } catch (Throwable th) {
                d.a("           getHeader  has an error :" + th);
                return null;
            }
        }
        return new HashMap<>();
    }

    public static String g(int i2) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        return (stackTrace == null || stackTrace.length <= i2) ? "" : stackTrace[i2 - 1].getClassName();
    }

    public static String h(int i2) {
        SecureRandom secureRandom = new SecureRandom();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = 0; i3 < i2; i3++) {
            stringBuffer.append("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".charAt(secureRandom.nextInt(62)));
        }
        return stringBuffer.toString();
    }

    public static JsonObject i(Map<String, Object> map) {
        try {
            d.a("getJsonObjectFromMapTag : " + map.get(ConfigurationName.dataTagKey));
        } catch (Throwable th) {
            th.printStackTrace();
        }
        JsonObject jsonObject = new JsonObject();
        if (map != null && map.size() >= 1) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (value == null) {
                    jsonObject.add(key, null);
                } else if (value instanceof Number) {
                    jsonObject.add(key, new JsonPrimitive(value));
                } else if (value instanceof List) {
                    List list = (List) value;
                    int size = list.size();
                    JsonArray jsonArray = new JsonArray();
                    for (int i2 = 0; i2 < size; i2++) {
                        jsonArray.add(new JsonPrimitive((String) list.get(i2)));
                    }
                    jsonObject.add(key, jsonArray);
                } else {
                    jsonObject.add(key, new JsonPrimitive(value.toString()));
                }
            }
        }
        return jsonObject;
    }

    public static JsonArray j(Map<Thread, StackTraceElement[]> map) {
        JsonArray jsonArray = new JsonArray();
        if (map != null) {
            ArrayList<Map.Entry> arrayList = new ArrayList(map.entrySet());
            Collections.sort(arrayList, new Comparator<Map.Entry<Thread, StackTraceElement[]>>() { // from class: com.networkbench.agent.impl.util.ak.2
                @Override // java.util.Comparator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public int compare(Map.Entry<Thread, StackTraceElement[]> entry, Map.Entry<Thread, StackTraceElement[]> entry2) {
                    return (int) (entry.getKey().getId() - entry2.getKey().getId());
                }
            });
            for (Map.Entry entry : arrayList) {
                if (!((Thread) entry.getKey()).getName().equals(Thread.currentThread().getName())) {
                    StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) entry.getValue();
                    if (stackTraceElementArr.length > 0) {
                        StringBuilder sb = new StringBuilder();
                        for (int i2 = 0; i2 < stackTraceElementArr.length; i2++) {
                            if (i2 <= NBSAgent.getStackTraceLimit()) {
                                sb.append("\tat " + stackTraceElementArr[i2] + "\n");
                            }
                        }
                        jsonArray.add(a(((Thread) entry.getKey()).getId(), ((Thread) entry.getKey()).getName(), sb.toString()));
                    }
                }
            }
        }
        return jsonArray;
    }

    public static String k(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb.append((Object) entry.getKey());
            sb.append(":");
            sb.append((Object) entry.getValue());
            sb.append("; ");
        }
        return sb.toString();
    }

    public static boolean l(String str) {
        if (TextUtils.isEmpty(str) || str.length() > 64) {
            if (r.u().j()) {
                com.networkbench.agent.impl.c.g.n("eventId 为空,或者超过32字符长度, 被舍弃 . eventId = " + str);
            }
            return false;
        }
        String[] strArr = {" ", "\n", "\t", "\b", "\f", "\r", "\u0000"};
        for (int i2 = 0; i2 < 7; i2++) {
            if (str.contains(strArr[i2])) {
                return false;
            }
        }
        return true;
    }

    public static String m() {
        return UUID.randomUUID().toString().replace("-", "").substring(0, 16);
    }

    public static String n() {
        return g.b(new com.networkbench.agent.impl.harvest.a.a.d().a(r.u(), NBSAgent.getDeviceInformation()).asJsonObject().toString(), r.u().C);
    }

    public static int o(String str) {
        int port;
        try {
            port = new URL(str).getPort();
        } catch (Throwable th) {
            o60.C(th, new StringBuilder("error getPortFromUrl: "), d);
            port = -1;
        }
        if (port == -1) {
            return str.startsWith("https://") ? 443 : 80;
        }
        return port;
    }

    public static com.networkbench.agent.impl.k.b p() {
        com.networkbench.agent.impl.data.a.a aVarH;
        try {
            com.networkbench.agent.impl.k.b bVar = new com.networkbench.agent.impl.k.b(NBSBitmapBeansControl.getInstance().getSessionId());
            com.networkbench.agent.impl.asyncaction.r rVarC = com.networkbench.agent.impl.asyncaction.r.c();
            if (rVarC != null) {
                bVar.f37423c = rVarC.a();
                bVar.f37424e = com.networkbench.agent.impl.data.a.h.b();
                aVarH = rVarC.h();
            } else {
                if (com.networkbench.agent.impl.k.c.a() != null) {
                    com.networkbench.agent.impl.data.a.c cVarA = com.networkbench.agent.impl.k.c.a();
                    if (cVarA.b() <= 6000) {
                        bVar.f37423c = cVarA.a();
                        com.networkbench.agent.impl.c.g.A("custom eventAction  actionId:" + bVar.f37423c);
                    }
                } else {
                    com.networkbench.agent.impl.c.g.A("createNBSSeriesData getTraceEnginManager is null");
                }
                aVarH = null;
            }
            a(bVar);
            if (aVarH == null || TextUtils.isEmpty(aVarH.g())) {
                bVar.d = ScreenNameManager.getCurrentScreenName();
            } else {
                bVar.d = aVarH.g();
            }
            com.networkbench.agent.impl.c.g.A("createNBSSeriesData seriesData :" + bVar.toString());
            return bVar;
        } catch (Throwable unused) {
            return new com.networkbench.agent.impl.k.b(NBSBitmapBeansControl.getInstance().getSessionId());
        }
    }

    public static com.networkbench.agent.impl.k.b q() {
        try {
            com.networkbench.agent.impl.k.b bVar = new com.networkbench.agent.impl.k.b(NBSBitmapBeansControl.getInstance().getSessionIdRefresh());
            a(bVar);
            return bVar;
        } catch (Throwable unused) {
            return new com.networkbench.agent.impl.k.b(NBSBitmapBeansControl.getInstance().getSessionIdRefresh());
        }
    }

    public static boolean r(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean s(String str) {
        Logger.debug(f38327b, "isContentTypeAvalid: " + str);
        if (r.u().aA().b()) {
            return str != null && (str.toLowerCase().contains(InitUrlConnection.CONTENT_TYPE_VALUE) || str.toLowerCase().contains(HttpServer.MIME_PLAINTEXT) || str.toLowerCase().contains("application/x-www-form-urlencoded"));
        }
        Logger.debug(f38327b, "isRecordNetworkEnabled false, skip");
        return false;
    }

    public static boolean t(String str) {
        if (str == null) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("charset=gb2312") || lowerCase.contains("charset=gbk") || lowerCase.contains("charset=gb18030");
    }

    public static boolean m(String str) {
        return !TextUtils.isEmpty(str) && str.matches("[0-9.]+");
    }

    public static int g() {
        return ab.c(r.u().K()) ? 0 : 1;
    }

    public static List<Map.Entry<Thread, StackTraceElement[]>> g(Map<Thread, StackTraceElement[]> map) {
        if (map == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(map.entrySet());
        Collections.sort(arrayList, new Comparator<Map.Entry<Thread, StackTraceElement[]>>() { // from class: com.networkbench.agent.impl.util.ak.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Map.Entry<Thread, StackTraceElement[]> entry, Map.Entry<Thread, StackTraceElement[]> entry2) {
                return (int) (entry.getKey().getId() - entry2.getKey().getId());
            }
        });
        return arrayList;
    }

    public static String g(String str) {
        if (str == null) {
            return "";
        }
        try {
            return str.split(";")[0];
        } catch (Throwable unused) {
            return "";
        }
    }

    public static long q(String str) throws ParseException {
        return new SimpleDateFormat("EE, dd MMM yyyy HH:mm:ss z", Locale.US).parse(str).getTime();
    }

    public static int h() {
        try {
            return Harvest.getInstance().getConfiguration().getAnrThreshold();
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("get anr threshold failed e:"), d);
            return 5000;
        }
    }

    public static String n(String str) {
        try {
            return new URL(str).getHost();
        } catch (Throwable th) {
            o60.C(th, new StringBuilder("DownloadPlugin get hostName error: "), d);
            return "";
        }
    }

    public static String h(Map map) {
        return i((Map<String, Object>) map).toString();
    }

    public static String h(String str) {
        return tr.g(f38329e, str);
    }

    public static long o() {
        NBSAndroidAgentImpl impl = NBSAgent.getImpl();
        if (impl != null) {
            return impl.m().getHttpBodyMaxSize() * RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        }
        return 0L;
    }

    public static boolean k(String str) {
        Matcher matcher = Pattern.compile("\\$[0-9]$").matcher(str);
        return matcher != null && matcher.find();
    }

    public static String k() {
        try {
            String strA = ad.a("okhttp3.internal.Version", "userAgent");
            try {
                if (TextUtils.isEmpty(strA)) {
                    strA = ad.b("okhttp3.internal.Version", "userAgent");
                    if (TextUtils.isEmpty(strA)) {
                        return ad.b("okhttp3.internal.Util", "userAgent");
                    }
                }
                return strA;
            } catch (Throwable unused) {
                return strA;
            }
        } catch (Throwable unused2) {
            return "";
        }
    }

    public static Application e() {
        try {
            return (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    private static String e(View view) {
        String string = "";
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt instanceof ViewGroup) {
                    e(childAt);
                }
                if (childAt instanceof TextView) {
                    StringBuilder sbT = n00.t(string);
                    sbT.append(((TextView) childAt).getText().toString());
                    string = sbT.toString();
                }
            }
        }
        return string;
    }

    private static String e(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            String hexString = Integer.toHexString(bArr[i2]);
            int length = hexString.length();
            if (length == 1) {
                hexString = ContentTree.ROOT_ID.concat(hexString);
            }
            if (length > 2) {
                hexString = hexString.substring(length - 2, length);
            }
            sb.append(hexString.toUpperCase());
            if (i2 < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }

    public static String l() {
        try {
            af afVar = new af(r.u().J());
            String strN = afVar.n();
            if (TextUtils.isEmpty(strN)) {
                return null;
            }
            afVar.b("");
            return strN;
        } catch (Throwable th) {
            d.a("getLastCrashUUID error ", th);
            return null;
        }
    }

    public static String e(Map<String, String> map) {
        JsonObject jsonObject = new JsonObject();
        if (map.isEmpty()) {
            return "";
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            jsonObject.add(entry.getKey(), new JsonPrimitive((Object) entry.getValue()));
        }
        return jsonObject.toString();
    }

    public static boolean d() {
        String str = ConfigurationName.processName;
        return str != null && str.contains("tingyun_heap_analysis");
    }

    public static byte[] d(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i2 = 0; i2 < length; i2 += 2) {
            bArr[i2 / 2] = (byte) (Character.digit(str.charAt(i2 + 1), 16) + (Character.digit(str.charAt(i2), 16) << 4));
        }
        return bArr;
    }

    public static Throwable e(int i2) {
        Throwable th = new Throwable();
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace != null && stackTrace.length > i2) {
            StackTraceElement[] stackTraceElementArr = new StackTraceElement[stackTrace.length - i2];
            System.arraycopy(stackTrace, i2, stackTraceElementArr, 0, stackTrace.length - i2);
            th.setStackTrace(stackTraceElementArr);
        }
        return th;
    }

    public static byte[] d(byte[] bArr) {
        if (bArr == null) {
            return new byte[1];
        }
        return c(bArr);
    }

    public static JsonObject d(Map<String, String> map) {
        JsonObject jsonObject = new JsonObject();
        if (!map.isEmpty()) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                jsonObject.add(entry.getKey(), new JsonPrimitive((Object) entry.getValue()));
            }
        }
        return jsonObject;
    }

    public static JsonArray c() {
        if (r.u().aa() < 0) {
            return new JsonArray();
        }
        try {
            if (Harvest.getInstance().actionAndInteractions != null) {
                return Harvest.getInstance().actionAndInteractions.asJsonArray();
            }
        } catch (Throwable th) {
            d.a("getTrailInterActionsAndActions occur an error", th);
        }
        return new JsonArray();
    }

    public static String d(Throwable th) {
        String[] strArrSplit;
        if (b(th) && (strArrSplit = th.getMessage().split(", stack:")) != null && strArrSplit.length == 2) {
            return strArrSplit[1];
        }
        return "";
    }

    public static Map<String, String> c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        HashMap map = new HashMap();
        try {
            String[] strArrSplit = str.split("\n");
            if (strArrSplit != null && strArrSplit.length > 0) {
                for (String str2 : strArrSplit) {
                    String[] strArrSplit2 = str2.split(":", 2);
                    if (strArrSplit2 != null && strArrSplit2.length == 2) {
                        map.put(strArrSplit2[0].trim(), strArrSplit2[1].trim());
                    }
                }
            }
            return map;
        } catch (Throwable th) {
            o60.C(th, new StringBuilder("Util get header error:"), r.A);
            return map;
        }
    }

    public static boolean f() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static int d(int i2) {
        if (i2 > 0) {
            return i2;
        }
        return 0;
    }

    public static boolean f(String str) {
        if (TextUtils.isEmpty(str) || str.length() > 64) {
            return false;
        }
        return Pattern.compile("^[a-zA-Z][a-z0-9A-Z_]*$").matcher(str).matches();
    }

    public static boolean d(Context context) {
        int iH = new af(context).h();
        return iH != -1 && iH == com.networkbench.agent.impl.data.type.d.a(context).c().b();
    }

    public static String f(int i2) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace != null && stackTrace.length > i2) {
            return stackTrace[i2 - 1].toString();
        }
        return "";
    }

    public static boolean c(Object obj) {
        return obj instanceof Number;
    }

    public static byte[] c(byte[] bArr) {
        Deflater deflater = new Deflater();
        deflater.setInput(bArr);
        deflater.finish();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr2 = new byte[8192];
        while (!deflater.finished()) {
            int iDeflate = deflater.deflate(bArr2);
            if (iDeflate <= 0) {
                d.f("HTTP request contains an incomplete payload");
            }
            byteArrayOutputStream.write(bArr2, 0, iDeflate);
        }
        deflater.end();
        return byteArrayOutputStream.toByteArray();
    }

    private static String f(View view) {
        if (view == null) {
            return "";
        }
        String simpleName = view.getClass().getSimpleName();
        ViewParent parent = view.getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            return simpleName;
        }
        String strA = a((ViewGroup) view.getParent(), view);
        StringBuilder sb = new StringBuilder();
        cj.C(sb, f((ViewGroup) view.getParent()), "[", strA, "]/");
        sb.append(simpleName);
        return sb.toString();
    }

    public static JsonObject c(Map<String, JsonObject> map) {
        JsonObject jsonObject = new JsonObject();
        for (Map.Entry<String, JsonObject> entry : map.entrySet()) {
            jsonObject.add(entry.getKey(), entry.getValue());
        }
        return jsonObject;
    }

    public static String c(Throwable th) {
        if (th != null) {
            if (b(th)) {
                String[] strArrSplit = th.getMessage().split(", stack:");
                if (strArrSplit != null && strArrSplit.length == 2) {
                    return strArrSplit[0];
                }
                return "";
            }
            return th.toString();
        }
        return "";
    }

    public static boolean c(Context context) {
        return (context.getApplicationInfo() == null || (context.getApplicationInfo().flags & 2) == 0) ? false : true;
    }

    public static boolean c(int i2) {
        return i2 <= 512;
    }

    public static boolean i(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public static synchronized String i() {
        CertificateFactory certificateFactory;
        X509Certificate x509Certificate;
        try {
            Context contextJ = r.u().J();
            try {
                PackageInfo packageInfo = contextJ.getPackageManager().getPackageInfo(contextJ.getPackageName(), 64);
                if (packageInfo == null) {
                    return "";
                }
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(packageInfo.signatures[0].toByteArray());
                String strE = null;
                try {
                    certificateFactory = CertificateFactory.getInstance("X509");
                } catch (CertificateException e2) {
                    e2.printStackTrace();
                    certificateFactory = null;
                }
                if (certificateFactory == null) {
                    return "";
                }
                try {
                    x509Certificate = (X509Certificate) certificateFactory.generateCertificate(byteArrayInputStream);
                } catch (CertificateException e3) {
                    e3.printStackTrace();
                    x509Certificate = null;
                }
                if (x509Certificate == null) {
                    return "";
                }
                try {
                    strE = e(MessageDigest.getInstance("SHA1").digest(x509Certificate.getEncoded()));
                } catch (NoSuchAlgorithmException e4) {
                    e4.printStackTrace();
                } catch (CertificateEncodingException e5) {
                    e5.printStackTrace();
                }
                return strE;
            } catch (PackageManager.NameNotFoundException e6) {
                e6.printStackTrace();
                return "";
            }
        } catch (Throwable unused) {
            return "";
        }
    }

    public static byte[] b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i2 = inputStream.read(bArr);
            if (-1 != i2) {
                byteArrayOutputStream.write(bArr, 0, i2);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static Class j(String str) {
        try {
            if (i(str)) {
                return Class.forName(str);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String p(String str) {
        if (str == null || !str.contains("?")) {
            return null;
        }
        return str.substring(str.indexOf("?") + 1);
    }

    public static String j() {
        try {
            return Version.userAgent();
        } catch (Throwable th) {
            d.f("get okhttp2 version failed:" + th);
            return "";
        }
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        try {
            URL url = new URL(str);
            StringBuffer stringBufferA = a(url, str);
            stringBufferA.append(url.getFile());
            return stringBufferA.toString();
        } catch (MalformedURLException unused) {
            return str;
        }
    }

    public static String b() {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        if (stackTrace != null) {
            try {
                return stackTrace[2].getClassName() + "#" + stackTrace[2].getMethodName() + "->";
            } catch (Throwable unused) {
            }
        }
        return "";
    }

    public static boolean b(Context context) {
        if (context == null) {
            return false;
        }
        String str = ConfigurationName.processName;
        return str == null || str.equals(context.getPackageName());
    }

    public static String b(byte[] bArr) {
        StringBuilder sb = new StringBuilder("");
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static <T> boolean b(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof String) {
            return ((String) obj).length() <= 255;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.size() > 100) {
                return false;
            }
            return list.size() <= 0 || (list.get(0) instanceof String);
        }
        return c(obj);
    }

    public static boolean b(int i2, int i3) {
        return i2 != i3;
    }

    public static void b(int i2) {
        try {
            if (NBSAgent.getImpl() == null || NBSAgent.getImpl().p() == null) {
                return;
            }
            NBSAgent.getImpl().p().a(i2);
        } catch (Throwable th) {
            d.a("crash before init, set feature the min value", th);
        }
    }

    public static String a(String str) {
        if (str == null) {
            return null;
        }
        try {
            URL url = new URL(str);
            StringBuffer stringBufferA = a(url, str);
            stringBufferA.append(url.getPath());
            return stringBufferA.toString();
        } catch (MalformedURLException unused) {
            return str;
        }
    }

    public static boolean b(Throwable th) {
        return th != null && th.getClass().getName().contains("JavascriptException") && th.getClass().getName().contains("react");
    }

    private static StringBuffer a(URL url, String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(url.getProtocol());
        stringBuffer.append("://");
        if (str.startsWith("file") && !url.getHost().startsWith("localfile")) {
            stringBuffer.append("localfile");
        }
        stringBuffer.append(url.getHost());
        if (url.getPort() != -1) {
            stringBuffer.append(":");
            stringBuffer.append(url.getPort());
        }
        return stringBuffer;
    }

    public static long b(File file) {
        if (file.exists()) {
            return file.isDirectory() ? a(file) : file.length();
        }
        a61.l(file, " does not exist");
        return 0L;
    }

    public static String b(String str, String str2) throws Throwable {
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                try {
                    RandomAccessFile randomAccessFile2 = new RandomAccessFile("/proc/" + str + "/status", "r");
                    while (true) {
                        try {
                            String line = randomAccessFile2.readLine();
                            if (line == null) {
                                randomAccessFile2.close();
                                break;
                            }
                            if (line.toLowerCase().contains(str2)) {
                                try {
                                    randomAccessFile2.close();
                                } catch (IOException unused) {
                                }
                                return line;
                            }
                        } catch (IOException e2) {
                            e = e2;
                            randomAccessFile = randomAccessFile2;
                            d.a("getProcessStatus error", e);
                            if (randomAccessFile != null) {
                                randomAccessFile.close();
                            }
                            return "";
                        } catch (Throwable th) {
                            th = th;
                            randomAccessFile = randomAccessFile2;
                            if (randomAccessFile != null) {
                                try {
                                    randomAccessFile.close();
                                } catch (IOException unused2) {
                                }
                            }
                            throw th;
                        }
                    }
                } catch (IOException unused3) {
                    return "";
                }
            } catch (IOException e3) {
                e = e3;
            }
            return "";
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static SecureRandom a() {
        return f38328c;
    }

    public static String a(Context context) {
        if (context == null) {
            return null;
        }
        return context.getPackageManager().getLaunchIntentForPackage(context.getPackageName()).getComponent().getClassName();
    }

    public static String[] a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return null;
        }
        if (str3.startsWith(str)) {
            str3 = str3.replace(str, "");
        }
        return str3.split(str2);
    }

    public static void b(Closeable... closeableArr) {
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException e2) {
                    com.networkbench.agent.impl.c.g.b("Closeable... io  error :", e2);
                }
            }
        }
    }

    public static String b(View view) {
        f38326a = false;
        return f(view);
    }

    public static SharedPreferences a(Context context, String str) {
        if (context == null) {
            return null;
        }
        return context.getSharedPreferences(str, 0);
    }

    private static int a(StringBuilder sb) {
        return sb.indexOf(r.u().J().getPackageName());
    }

    public static JsonObject b(JsonObject jsonObject) {
        JsonObject jsonObject2 = new JsonObject();
        for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
            JsonElement value = entry.getValue();
            if ((value instanceof JsonObject) && a((JsonObject) value)) {
                value = new JsonPrimitive("");
            }
            jsonObject2.add(entry.getKey(), value);
        }
        return jsonObject2;
    }

    public static boolean a(Pattern pattern, String str) throws IOException {
        return (str == null || pattern == null || !pattern.matcher(str).matches()) ? false : true;
    }

    public static boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str.equalsIgnoreCase(str2)) {
            return false;
        }
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = str2.split("\\.");
        int length = strArrSplit.length;
        int length2 = strArrSplit2.length;
        if (length != 0 && length2 != 0) {
            for (int i2 = 0; i2 < length; i2++) {
                if (i2 >= length2) {
                    return true;
                }
                try {
                    if (Integer.parseInt(strArrSplit[i2]) > Integer.parseInt(strArrSplit2[i2])) {
                        return true;
                    }
                    if (Integer.parseInt(strArrSplit[i2]) != Integer.parseInt(strArrSplit2[i2])) {
                        break;
                    }
                } catch (Throwable unused) {
                }
            }
        }
        return false;
    }

    public static int a(String str, long j2, long j3) {
        if (j3 > 0 && str.startsWith("https:")) {
            return (int) (j2 - j3);
        }
        return -1;
    }

    public static void a(Closeable... closeableArr) throws IOException {
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                closeable.close();
            }
        }
    }

    public static String a(int i2) {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new FileReader("/proc/" + i2 + "/cmdline"));
            try {
                String line = bufferedReader.readLine();
                if (!TextUtils.isEmpty(line)) {
                    line = line.trim();
                }
                try {
                    bufferedReader.close();
                    return line;
                } catch (Throwable th) {
                    o60.C(th, new StringBuilder("error happend in getProcessName "), d);
                    return line;
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    d.f("error happend in getProcessName " + th.getMessage());
                    return null;
                } finally {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th3) {
                            o60.C(th3, new StringBuilder("error happend in getProcessName "), d);
                        }
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedReader = null;
        }
    }

    public static String a(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.getClass().getSimpleName();
    }

    public static int a(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return 200;
        }
        ConcurrentHashMap<String, Integer> concurrentHashMap = ai.f38317b;
        if (!concurrentHashMap.containsKey(str)) {
            return 200;
        }
        int iIntValue = concurrentHashMap.get(str).intValue();
        if (z) {
            concurrentHashMap.remove(str);
        }
        return iIntValue;
    }

    public static String a(InputStream inputStream) throws IOException {
        char[] cArr = new char[8192];
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        while (true) {
            int i2 = bufferedReader.read(cArr);
            if (i2 < 0) {
                return sb.toString();
            }
            sb.append(cArr, 0, i2);
        }
    }

    public static byte[] a(int i2, int i3) {
        byte[] bArr = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[i4] = (byte) ((i2 >> (((i3 - 1) - i4) * 8)) & 255);
        }
        return bArr;
    }

    public static int a(byte... bArr) {
        if (bArr != null) {
            int length = bArr.length;
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                i2 |= (bArr[i3] & 255) << (((length - 1) - i3) * 8);
            }
            return i2;
        }
        throw new NumberFormatException("byte[] convert to int: bytes is illegal!");
    }

    public static byte[] a(String str, int i2) {
        String[] strArrSplit = str.split("\\.");
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 >= strArrSplit.length) {
                bArr[i3] = 0;
            } else {
                bArr[i3] = a(Integer.parseInt(strArrSplit[i3]), 1)[0];
            }
        }
        return bArr;
    }

    public static JsonObject a(Map<String, Object> map) {
        if (map != null && map.size() >= 1) {
            JsonObject jsonObject = new JsonObject();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (value == null) {
                    jsonObject.add(key, null);
                } else if (value instanceof Number) {
                    jsonObject.add(key, new JsonPrimitive(value));
                } else if (value instanceof List) {
                    List list = (List) value;
                    int size = list.size();
                    JsonArray jsonArray = new JsonArray();
                    for (int i2 = 0; i2 < size; i2++) {
                        jsonArray.add(new JsonPrimitive((String) list.get(i2)));
                    }
                    jsonObject.add(key, jsonArray);
                } else {
                    jsonObject.add(key, new JsonPrimitive(value.toString()));
                }
            }
            return jsonObject;
        }
        return new JsonObject();
    }

    public static String a(View view) {
        String simpleName;
        ArrayList arrayList = new ArrayList(8);
        arrayList.add(view);
        for (ViewParent parent = view.getParent(); parent != null && (parent instanceof ViewGroup); parent = parent.getParent()) {
            arrayList.add((ViewGroup) parent);
        }
        int size = arrayList.size();
        View view2 = (View) arrayList.get(size - 1);
        if (!(view2.getParent() instanceof View)) {
            simpleName = view2.getClass().getSimpleName();
        } else {
            simpleName = "";
        }
        if (view2 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2;
            for (int i2 = size - 2; i2 >= 0; i2--) {
                View view3 = (View) arrayList.get(i2);
                String simpleName2 = view3.getClass().getSimpleName();
                int iIndexOfChild = viewGroup.indexOfChild(view3);
                if (viewGroup instanceof AdapterView) {
                    iIndexOfChild += ((AdapterView) viewGroup).getFirstVisiblePosition();
                }
                if (!(view3 instanceof ViewGroup)) {
                    break;
                }
                simpleName = simpleName + "/" + simpleName2 + "[" + iIndexOfChild + "]";
                viewGroup = (ViewGroup) view3;
            }
        }
        return simpleName;
    }

    public static String a(HashMap<String, String> map) {
        if (map == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (String str : map.keySet()) {
            stringBuffer.append(d21.l("key:", str, "value:", map.get(str), "--------"));
        }
        return stringBuffer.toString();
    }

    public static void a(JsonArray jsonArray, String str) {
        if (!TextUtils.isEmpty(str)) {
            jsonArray.add(new JsonPrimitive(str));
        } else {
            jsonArray.add(new JsonPrimitive(""));
        }
    }

    public static void a(JsonObject jsonObject, Map<String, Object> map, HashMap<String, String> map2) {
        if (map != null) {
            jsonObject.add(ConfigurationName.RESPONSE_HEADERS, HarvestableObject.fromMap(map).asJson());
        }
        if (map2 != null) {
            jsonObject.add(ConfigurationName.REQUEST_HEADERS, HarvestableObject.fromMapString(map2).asJson());
        }
    }

    public static StringBuilder a(int i2, Throwable th) {
        StringBuilder sb = new StringBuilder();
        Throwable cause = th.getCause();
        if (cause != null) {
            th = cause;
        }
        int i3 = 0;
        while (th != null) {
            sb.append("Caused by: " + th.toString() + "\n");
            StackTraceElement[] stackTrace = th.getStackTrace();
            for (int i4 = 0; i4 < stackTrace.length; i4++) {
                if (i3 >= i2) {
                    sb.append("\t... ");
                    sb.append(stackTrace.length - i4);
                    sb.append(" more");
                    d.a("sDepth is" + i3);
                    break;
                }
                i3++;
                sb.append("\tat " + stackTrace[i4] + "\n");
            }
            th = th.getCause();
        }
        return sb;
    }

    public static StringBuilder a(Throwable th) {
        StringBuilder sb = new StringBuilder();
        Throwable cause = th.getCause();
        if (cause != null) {
            th = cause;
        }
        sb.append("Caused by: " + c(th));
        sb.append(d(th));
        return sb;
    }

    private static JsonArray a(long j2, String str, String str2) {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(j2)));
        jsonArray.add(new JsonPrimitive(str));
        if (str2 == null) {
            str2 = "";
        }
        jsonArray.add(new JsonPrimitive(str2));
        return jsonArray;
    }

    public static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        Method declaredMethod = null;
        while (cls != null) {
            try {
                declaredMethod = cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException unused) {
            }
            if (declaredMethod != null) {
                return declaredMethod;
            }
            cls = cls.getSuperclass();
        }
        return declaredMethod;
    }

    public static boolean a(Class cls) {
        if (cls == null) {
            return false;
        }
        return cls.isAnnotationPresent(NBSInstrumented.class);
    }

    public static long a(File file) {
        long jB = 0;
        if (file.exists()) {
            if (file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null) {
                    return 0L;
                }
                for (File file2 : fileArrListFiles) {
                    jB += b(file2);
                }
                return jB;
            }
            a61.l(file, " is not a directory");
            return 0L;
        }
        a61.l(file, " does not exist");
        return 0L;
    }

    /* JADX WARN: Code duplicated, block: B:64:0x0066 A[EXC_TOP_SPLITTER, PHI: r3 r6
      0x0066: PHI (r3v5 java.io.FileInputStream) = (r3v3 java.io.FileInputStream), (r3v6 java.io.FileInputStream) binds: [B:41:0x0064, B:52:0x0084] A[DONT_GENERATE, DONT_INLINE]
      0x0066: PHI (r6v9 ??) = (r6v7 ??), (r6v11 ??) binds: [B:41:0x0064, B:52:0x0084] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10, types: [com.networkbench.agent.impl.c.e] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18, types: [java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.io.FileOutputStream] */
    public static boolean a(File file, File file2) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream((File) file);
                try {
                    file = new FileOutputStream(file2, true);
                    try {
                        byte[] bArr = new byte[2048];
                        while (true) {
                            int i2 = fileInputStream2.read(bArr);
                            if (i2 >= 0) {
                                file.write(bArr, 0, i2);
                                file.flush();
                            } else {
                                try {
                                    break;
                                } catch (Throwable unused) {
                                    d.f("inputStream close error");
                                }
                            }
                        }
                        fileInputStream2.close();
                        try {
                            file.close();
                        } catch (Throwable unused2) {
                            d.f("outputStream close error");
                        }
                        return true;
                    } catch (FileNotFoundException e2) {
                        e = e2;
                        fileInputStream = fileInputStream2;
                        file = file;
                        d.a("file not find", e);
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable unused3) {
                                d.f("inputStream close error");
                            }
                        }
                        if (file != 0) {
                            try {
                                file.close();
                            } catch (Throwable unused4) {
                                file = d;
                                file.f("outputStream close error");
                            }
                        }
                        return false;
                    } catch (IOException e3) {
                        e = e3;
                        fileInputStream = fileInputStream2;
                        file = file;
                        d.a("IOException", e);
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable unused5) {
                                d.f("inputStream close error");
                            }
                        }
                        if (file != 0) {
                            file.close();
                        }
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable unused6) {
                                d.f("inputStream close error");
                            }
                        }
                        if (file != 0) {
                            try {
                                file.close();
                                throw th;
                            } catch (Throwable unused7) {
                                d.f("outputStream close error");
                                throw th;
                            }
                        }
                        throw th;
                    }
                } catch (FileNotFoundException e4) {
                    e = e4;
                    file = 0;
                } catch (IOException e5) {
                    e = e5;
                    file = 0;
                } catch (Throwable th2) {
                    th = th2;
                    file = 0;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (FileNotFoundException e6) {
            e = e6;
            file = 0;
        } catch (IOException e7) {
            e = e7;
            file = 0;
        } catch (Throwable th4) {
            th = th4;
            file = 0;
        }
    }

    public static void a(long j2, String str) {
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                if (j2 > new File(str).length()) {
                    return;
                }
                d.a("droplength:" + j2 + ", dest fileName:" + str);
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(str, "rw");
                try {
                    d.a("before seek filePointer:" + randomAccessFile2.getFilePointer());
                    randomAccessFile2.seek(j2);
                    d.a("after seek filePointer:" + randomAccessFile2.getFilePointer());
                    int length = (int) (randomAccessFile2.length() - randomAccessFile2.getFilePointer());
                    byte[] bArr = new byte[length];
                    randomAccessFile2.read(bArr);
                    d.a("remainBytes length:" + length);
                    randomAccessFile2.getChannel().truncate(0L);
                    randomAccessFile2.seek(0L);
                    randomAccessFile2.write(bArr);
                    randomAccessFile2.close();
                    return;
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile = randomAccessFile2;
                }
            } catch (IOException unused) {
                return;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            d.a("error truncate file failed", th);
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
        } catch (Throwable th3) {
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            }
            throw th3;
        }
    }

    private static String a(ViewGroup viewGroup, View view) {
        String row = NBSActionInstrumentation.getRow(view);
        if (row != null && !row.isEmpty()) {
            if (f38326a) {
                return row;
            }
            f38326a = true;
            return "-";
        }
        return String.valueOf(viewGroup.indexOfChild(view));
    }

    public static boolean a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static StringBuilder a(int i2, StackTraceElement[] stackTraceElementArr, int i3) {
        StringBuilder sb = new StringBuilder();
        if (stackTraceElementArr != null) {
            int i4 = 0;
            for (int i5 = 0; i5 < stackTraceElementArr.length; i5++) {
                if (i5 > i3) {
                    if (i4 >= i2) {
                        sb.append("\t... ");
                        sb.append(stackTraceElementArr.length - i5);
                        sb.append(" more");
                        d.a("sDepth is" + i4);
                        return sb;
                    }
                    i4++;
                    sb.append("\tat " + stackTraceElementArr[i5] + "\n");
                }
            }
        }
        return sb;
    }

    public static boolean a(JsonObject jsonObject) {
        return jsonObject == null || jsonObject.entrySet().isEmpty();
    }

    public static void a(com.networkbench.agent.impl.k.b bVar) {
        com.networkbench.agent.impl.data.d.c cVarB = com.networkbench.agent.impl.data.d.b.a().b();
        if (!cVarB.d().equals(ScreenNameManager.getCurrentScreenName()) && (cVarB = com.networkbench.agent.impl.data.d.b.a().a(ScreenNameManager.getCurrentScreenName())) == null) {
            cVarB = com.networkbench.agent.impl.data.d.b.a().b();
        }
        bVar.f37425f = cVarB.asJsonObject().toString();
        bVar.f37422b = cVarB.f();
    }
}
