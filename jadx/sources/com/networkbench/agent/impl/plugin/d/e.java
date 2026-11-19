package com.networkbench.agent.impl.plugin.d;

import android.text.TextUtils;
import com.networkbench.agent.impl.c.f;
import com.sightcall.universal.fcm.messages.Ping;
import defpackage.az;
import defpackage.o60;
import defpackage.z81;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f38017a = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final com.networkbench.agent.impl.c.e f38018b = f.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f38019c = "ping -c %d -s %d %s";
    private static final String d = "ping -c 1 -t %d -s %d %s";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f38020e = "(\\d+) packets transmitted, (\\d+) received[^\\n]*";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f38021f = "[fF]rom (.*\\(.*\\)|.*): .*";
    private static final String g = ".*\\((\\d+\\.\\d+\\.\\d+\\.\\d+).*";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f38022h = "\\d+ bytes from (\\d+\\.\\d+.\\d+.\\d+):.*";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f38023i = 30;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f38024j = 56;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f38025k = 3;

    public interface a {
        void a(c cVar, String str);

        boolean a(c cVar);

        void b(c cVar);
    }

    private e() {
    }

    private static c.a a(String str, int i2, int i3, c.b bVar, boolean z) throws IOException {
        String strGroup;
        String str2;
        String str3;
        com.networkbench.agent.impl.c.e eVar = f38018b;
        eVar.a("traceOneStep begin********************** : ");
        c.a aVar = new c.a();
        String str4 = String.format(d, Integer.valueOf(i2), Integer.valueOf(i3), str);
        eVar.a("command: ".concat(str4));
        Process processExec = Runtime.getRuntime().exec(str4);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getErrorStream()));
        try {
            bVar.f38016e = a(a(bufferedReader2));
            eVar.a("get errorDesc in traceOneStep: " + bVar.f38016e);
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    a(processExec);
                    aVar.f38007b = strGroup;
                    aVar.f38006a = str2;
                    f38018b.a("router ip:" + aVar.f38007b);
                    if (!z || (str3 = aVar.f38007b) == null || str3.equals("")) {
                        aVar.f38008c = "100";
                        aVar.d = defpackage.a.i(f38017a, "", new StringBuilder());
                    } else {
                        try {
                            com.networkbench.agent.impl.plugin.e.b bVar2 = new com.networkbench.agent.impl.plugin.e.b();
                            HashMap map = new HashMap();
                            map.put("-c", f38017a + "");
                            bVar2.a(aVar.f38007b, map, f38017a);
                            aVar.g = bVar2.k();
                            aVar.f38010f = bVar2.j();
                            aVar.f38009e = bVar2.i();
                            aVar.f38008c = bVar2.e();
                            aVar.d = f38017a + "";
                            aVar.f38012i = bVar2.m();
                            aVar.f38011h = bVar2.l();
                            bVar.f38016e = bVar2.a();
                        } catch (Throwable th) {
                            f38018b.a("PingManager in mtr error:", th);
                        }
                    }
                    f38018b.a("traceOneStep end********************** : ");
                    return aVar;
                }
                com.networkbench.agent.impl.c.e eVar2 = f38018b;
                eVar2.a("trace find line : ".concat(line));
                if (i2 == 1 && line.toLowerCase().startsWith(Ping.KEY)) {
                    Matcher matcher = Pattern.compile(g).matcher(line);
                    if (matcher.find()) {
                        String strGroup2 = matcher.group(1);
                        if (TextUtils.isEmpty(strGroup2)) {
                            az.o("can't find target ip");
                            return null;
                        }
                        bVar.f38013a = strGroup2;
                        z81.j("trace find target ip : ", strGroup2, eVar2);
                    }
                }
                if (line.matches(f38021f)) {
                    Matcher matcher2 = Pattern.compile(f38021f).matcher(line);
                    if (matcher2.find()) {
                        String strGroup3 = matcher2.group(1);
                        if (!TextUtils.isEmpty(strGroup3)) {
                            int iIndexOf = strGroup3.indexOf(40);
                            if (iIndexOf != -1) {
                                String strG = o60.g(1, iIndexOf + 1, strGroup3);
                                String strSubstring = strGroup3.substring(0, iIndexOf);
                                strGroup3 = strG;
                                str2 = strSubstring;
                            }
                            eVar2.a("trace find router ip : " + aVar.f38007b + " host: " + aVar.f38006a);
                            strGroup = strGroup3;
                        }
                    }
                } else if (line.matches(f38022h)) {
                    Matcher matcher3 = Pattern.compile(f38022h).matcher(line);
                    if (matcher3.find()) {
                        strGroup = matcher3.group(1);
                        if (TextUtils.isEmpty(strGroup)) {
                            az.o("can't find target ip");
                            return null;
                        }
                        z81.j("trace find target ip: ", strGroup, eVar2);
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        } catch (Throwable th2) {
            try {
                f38018b.a("error getStreamLine in traceOneStep" + th2.getMessage());
            } catch (Throwable th3) {
                bufferedReader2.close();
                throw th3;
            }
        }
        bufferedReader2.close();
        strGroup = null;
        str2 = null;
    }

    private static void a(String str, int i2, c cVar, a aVar) throws IOException {
        c.b bVar = new c.b();
        cVar.f38005a.add(bVar);
        bVar.f38014b = str;
        int i3 = 1;
        do {
            c.a aVarA = a(str, i3, i2, bVar, true);
            f38018b.a("result ip:" + aVarA.f38007b + ", url：" + str);
            if (i3 == 1 && !TextUtils.isEmpty(bVar.f38013a)) {
                str = bVar.f38013a;
            }
            bVar.f38015c.add(aVarA);
            if (aVar != null && !TextUtils.isEmpty(bVar.f38016e)) {
                aVar.a(cVar, bVar.f38016e);
            } else if (aVar != null && aVar.a(cVar)) {
                return;
            }
            String str2 = aVarA.f38007b;
            if (str2 != null && str2.equals(bVar.f38013a)) {
                bVar.d = true;
                return;
            }
            i3++;
        } while (i3 <= 30);
        bVar.d = false;
    }

    public static void a(List<String> list, c cVar, a aVar) {
        if (list == null) {
            return;
        }
        if (com.networkbench.agent.impl.util.c.c.c()) {
            f38018b.e("MTRPlugin NBSThreadExecutor.isExecutorServiceStop()");
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            try {
                a(it.next(), 56, cVar, aVar);
                if (aVar != null) {
                    aVar.b(cVar);
                }
            } catch (IOException e2) {
                f38018b.a("error trace:" + e2.getMessage());
                if (aVar != null) {
                    aVar.a(cVar, e2.getMessage());
                }
            }
        }
    }

    private static List<String> a(BufferedReader bufferedReader) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return arrayList;
            }
            arrayList.add(line);
        }
    }

    private static String a(List<String> list) throws Throwable {
        if (list != null) {
            for (String str : list) {
                if (!TextUtils.isEmpty(str)) {
                    return str;
                }
            }
            return "";
        }
        return "";
    }

    private static void a(Process process) {
        try {
            process.destroy();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
