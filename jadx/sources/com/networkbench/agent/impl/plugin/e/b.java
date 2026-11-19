package com.networkbench.agent.impl.plugin.e;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.util.d;
import com.networkbench.com.google.gson.JsonArray;
import com.sightcall.universal.fcm.messages.Ping;
import defpackage.fc;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final e f38035a = f.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f38036e = "\\d+ bytes from (\\d+\\.\\d+.\\d+.\\d+):.*";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f38037f = ".*\\((\\d+\\.\\d+\\.\\d+\\.\\d+).*";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<String> f38038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List<String> f38039c;
    protected int d;

    private String c(int i2) {
        return this.f38038b.get(i2);
    }

    private JsonArray n() {
        JsonArray jsonArray = new JsonArray();
        int i2 = 0;
        while (i2 < this.d) {
            i2++;
            jsonArray.add(a(i2).asJsonArray());
        }
        return jsonArray;
    }

    private String[] o() {
        return c(this.f38038b.size() - 2).split(",");
    }

    private boolean p() {
        String strC = c(this.f38038b.size() - 2);
        return strC.contains("packets transmitted") && strC.contains("received");
    }

    private boolean q() {
        return this.f38038b.size() != 0 && ((String) fc.e(1, this.f38038b)).contains("min/avg/max/");
    }

    public void a(String str, Map<String, String> map, int i2) throws IOException {
        try {
            this.d = i2;
            Process processStart = new ProcessBuilder(a(str, map)).start();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream()));
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(processStart.getErrorStream()));
            try {
                this.f38038b = a(bufferedReader);
                this.f38039c = a(bufferedReader2);
                bufferedReader.close();
                bufferedReader2.close();
                g.o("doPingCommand normalInfo " + this.f38038b.size());
                g.o("doPingCommand errorInfo " + this.f38039c.size());
                try {
                    processStart.destroy();
                } catch (Throwable th) {
                    g.k("doPingCommand " + th.getMessage());
                    g.o("doPingCommand " + th.getMessage());
                }
            } catch (Throwable th2) {
                bufferedReader.close();
                bufferedReader2.close();
                throw th2;
            }
        } catch (Throwable th3) {
            g.o("doPingCommand " + th3.getMessage());
        }
    }

    public String b() {
        String str;
        List<String> list = this.f38038b;
        if (list != null && list.size() > 0 && (str = this.f38038b.get(0)) != null && str.toLowerCase().startsWith(Ping.KEY)) {
            Matcher matcher = Pattern.compile(f38037f).matcher(str);
            if (matcher.find()) {
                String strGroup = matcher.group(1);
                return TextUtils.isEmpty(strGroup) ? "" : strGroup;
            }
        }
        return "";
    }

    public int d() throws Throwable {
        return Integer.valueOf(b(1)).intValue();
    }

    public String e() throws Throwable {
        return b(2).replace("%", "");
    }

    public double[] f() throws Throwable {
        if (this.f38038b.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : this.f38038b) {
            if (a(str) && str != null && !str.equals("")) {
                arrayList.add(Double.valueOf(str.split("time=")[1].replace(NBSSpanMetricUnit.Millisecond, "").trim()));
            }
        }
        double[] dArr = new double[arrayList.size()];
        Iterator it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            dArr[i2] = ((Double) it.next()).doubleValue();
            i2++;
        }
        return dArr;
    }

    public JsonArray g() throws Throwable {
        JsonArray jsonArray = new JsonArray();
        List<String> list = this.f38038b;
        if (list == null || list.size() <= 0) {
            return n();
        }
        int i2 = 0;
        for (String str : this.f38038b) {
            if (a(str) && str != null && !str.equals("")) {
                a aVar = new a();
                aVar.f38032a = Integer.valueOf(str.split(" ")[0].trim()).intValue();
                int iIntValue = Integer.valueOf(str.split("icmp_seq=")[1].split(" ")[0]).intValue();
                aVar.f38033b = iIntValue;
                int i3 = iIntValue - i2;
                for (int i4 = 1; i4 < i3; i4++) {
                    jsonArray.add(a(i2 + i4).asJsonArray());
                }
                i2 = aVar.f38033b;
                aVar.f38034c = Integer.valueOf(str.split("ttl=")[1].split(" ")[0]).intValue();
                aVar.d = Float.valueOf(str.split("time=")[1].replace(NBSSpanMetricUnit.Millisecond, " ").trim()).floatValue();
                aVar.a();
                jsonArray.add(aVar.asJsonArray());
            }
        }
        for (int i5 = i2 + 1; i5 < c() + 1; i5++) {
            jsonArray.add(a(i5).asJsonArray());
        }
        return jsonArray;
    }

    public float h() throws Throwable {
        double[] dArrF = f();
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        for (double d : dArrF) {
            f2 = (float) (((double) f2) + d);
        }
        return f2;
    }

    public String i() throws Throwable {
        if (this.f38038b.size() <= 0) {
            return "";
        }
        String str = "";
        for (String str2 : this.f38038b) {
            if (a(str2)) {
                str = str2;
            }
        }
        return (str == null || str.equals("")) ? "" : str.split("time=")[1].replace(NBSSpanMetricUnit.Millisecond, "").trim();
    }

    public String j() throws Throwable {
        return !q() ? "0.0" : b(c(this.f38038b.size() - 1))[1];
    }

    public String k() {
        return !q() ? "0.0" : b(c(this.f38038b.size() - 1))[0].trim();
    }

    public String l() {
        return !q() ? "0.0" : b(c(this.f38038b.size() - 1))[2];
    }

    public String m() throws Throwable {
        double[] dArrF = f();
        if (dArrF == null || dArrF.length <= 0) {
            return "0.0";
        }
        return new com.networkbench.agent.impl.plugin.d.a().d(dArrF) + "";
    }

    public int c() throws Throwable {
        return this.d;
    }

    private String b(int i2) throws d {
        if (this.f38038b.size() != 0) {
            if (p()) {
                return o()[i2].trim().split(" ")[0];
            }
            throw new d("warning not find packet num");
        }
        throw new d("no normal ping info");
    }

    private String[] b(String str) {
        return str.split("=")[1].split("/");
    }

    private void a(List<String> list) {
    }

    public String a() throws Throwable {
        List<String> list = this.f38039c;
        if (list != null) {
            for (String str : list) {
                if (!TextUtils.isEmpty(str)) {
                    return str;
                }
            }
        }
        List<String> list2 = this.f38039c;
        return (((list2 == null || list2.size() == 0) && c() > 0 && d() == 0) || c() != d()) ? "timeout" : "";
    }

    private List<String> a(BufferedReader bufferedReader) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return arrayList;
            }
            arrayList.add(line);
        }
    }

    private List<String> a(String str, Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Ping.KEY);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(entry.getKey().toString());
            arrayList.add(entry.getValue().toString());
            g.o("combineArgs  combineArgs : ping  " + entry.getKey().toString() + " " + entry.getValue().toString());
        }
        arrayList.add(str);
        return arrayList;
    }

    private a a(int i2) {
        a aVar = new a();
        aVar.f38033b = i2;
        return aVar;
    }

    private boolean a(String str) {
        return !TextUtils.isEmpty(str) && str.contains("bytes from") && str.contains("icmp_seq=") && str.contains("ttl=") && str.contains("time=");
    }
}
