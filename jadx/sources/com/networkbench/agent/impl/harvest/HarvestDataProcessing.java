package com.networkbench.agent.impl.harvest;

import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.crash.a.a;
import com.networkbench.agent.impl.crash.a.b;
import com.networkbench.agent.impl.crash.a.c;
import com.networkbench.agent.impl.f.e;
import com.networkbench.agent.impl.session.SpanFormat;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.p;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonParser;
import defpackage.fc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class HarvestDataProcessing {
    public static final int MAX_LENGTH = 102400;
    private static final String TAG = "HarvestDataProcessing";

    private static void appendDataAndReset(StringBuilder sb, SpanFormat spanFormat) {
        String info = spanFormat.formatInfo();
        if (info == null) {
            info = "";
        }
        sb.append(info);
        spanFormat.reset();
    }

    private static JsonArray convertMapToJsonArray(Map<String, ?> map, long j2) {
        JsonArray jsonArray = new JsonArray();
        ArrayList arrayList = new ArrayList();
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    jsonArray.add(new JsonParser().parse(String.valueOf(map.get(str))));
                    arrayList.add(str);
                    if (jsonArray.toString().length() > j2) {
                        break;
                    }
                }
                c.a(arrayList);
                return jsonArray;
            } catch (Throwable th) {
                g.v("sendSaveCustomData  convertMapToJsonArray has error : " + th.getMessage());
            }
        }
        return jsonArray;
    }

    public static String formatPageData(String str) {
        try {
            String string = new JSONObject(str).getString("type");
            if (string.equals("pageMetrics")) {
                return "page" + str + "\n";
            }
            if (string.equals("appStarts")) {
                return "appStart" + str + "\n";
            }
            if (string.equals("userActions")) {
                return "userAction" + str + "\n";
            }
            return "";
        } catch (Throwable unused) {
        }
    }

    private static String formatValue(String str, String str2) {
        if (str2.equals(ConfigurationName.PLUGIN_DATA_STORE_PATH)) {
            return fc.h("task", str, "\n");
        }
        if (str2.equals(ConfigurationName.ACTION_DATA_STORE_PATH)) {
            return fc.h("network", str, "\n");
        }
        if (str2.equals(ConfigurationName.TRANSACTIONSPAN_DATA_PATH)) {
            return str;
        }
        if (str2.equals(ConfigurationName.PAGE_DATA_STORE_PATH)) {
            return formatPageData(str);
        }
        return str2.equals(ConfigurationName.APPHOTSTART_DATA_STORE_PATH) ? fc.h("hotStart", str, "\n") : "";
    }

    private static Map<String, ?> mergeFetchAllByMap() {
        Map<String, ?> mapD = c.d();
        Map<String, ?> mapE = c.e();
        HashMap map = new HashMap();
        if (mapD != null) {
            map.putAll(mapD);
        }
        if (mapE != null) {
            map.putAll(mapE);
        }
        return map;
    }

    public static String processingBatchData(HarvestData harvestData) {
        if (harvestData == null) {
            return "";
        }
        try {
            StringBuilder sb = new StringBuilder();
            appendDataAndReset(sb, com.networkbench.agent.impl.data.type.c.a());
            appendDataAndReset(sb, a.c());
            appendDataAndReset(sb, HarvestData.getSpanDatas());
            appendDataAndReset(sb, harvestData.getNbsEventActions());
            appendDataAndReset(sb, HarvestData.getAppStartDatas());
            appendDataAndReset(sb, HarvestData.successPageDatas);
            appendDataAndReset(sb, HarvestData.getPluginData());
            sb.append(e.a().a(com.networkbench.agent.impl.f.c.a.f37012a));
            sb.append(e.a().a(com.networkbench.agent.impl.f.c.InterfaceC0097c.f37014a));
            sb.append(e.a().a(com.networkbench.agent.impl.f.c.b.f37013a));
            sb.append(HarvestData.getCustomEvents());
            HarvestData.customEvents.clear();
            if (sb.length() <= 5) {
                sb.append(harvestData.getNetworkPerfMetrics().formatInfoNoCheck());
                harvestData.getNetworkPerfMetrics().reset();
            } else {
                appendDataAndReset(sb, harvestData.getNetworkPerfMetrics());
            }
            return sb.toString();
        } catch (Throwable th) {
            Logger.error(TAG, "processingBatchData error processing :", th);
            return "";
        }
    }

    public static String processingOldBatchData(String str, int i2, boolean z) {
        if (i2 >= 102400) {
            return "";
        }
        com.networkbench.agent.impl.m.a aVar = new com.networkbench.agent.impl.m.a(r.u().J(), str);
        Map<String, ?> mapA = aVar.a();
        if (mapA.size() <= 0) {
            return "";
        }
        ArrayList arrayList = new ArrayList(mapA.entrySet());
        Collections.sort(arrayList, new Comparator<Map.Entry<String, ?>>() { // from class: com.networkbench.agent.impl.harvest.HarvestDataProcessing.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Map.Entry<String, ?> entry, Map.Entry<String, ?> entry2) {
                try {
                    return Integer.compare(((String) entry2.getValue()).length(), ((String) entry.getValue()).length());
                } catch (Throwable unused) {
                    return -1;
                }
            }
        });
        Iterator it = arrayList.iterator();
        g.v("processingOldBatchData  : " + mapA.size());
        StringBuilder sb = new StringBuilder();
        while (it.hasNext() && i2 < 102400) {
            Map.Entry entry = (Map.Entry) it.next();
            String strC = p.c((String) entry.getValue());
            if (z) {
                strC = formatValue(strC, str);
            }
            sb.append(strC);
            aVar.a(p.c((String) entry.getKey()));
            i2 += strC.length();
        }
        return sb.toString();
    }

    public static String sendSaveCustomData(int i2, long j2) {
        long j3 = i2;
        if (j3 > j2) {
            return "";
        }
        try {
            if (c.c() <= 0 && c.b() <= 0) {
                return "";
            }
            Map<String, ?> mapMergeFetchAllByMap = mergeFetchAllByMap();
            c.f();
            c.a();
            JsonArray jsonArrayConvertMapToJsonArray = convertMapToJsonArray(mapMergeFetchAllByMap, j2 - j3);
            if (jsonArrayConvertMapToJsonArray.size() > 0) {
                return new b(jsonArrayConvertMapToJsonArray).formatInfo();
            }
        } catch (Throwable unused) {
        }
        return "";
    }
}
