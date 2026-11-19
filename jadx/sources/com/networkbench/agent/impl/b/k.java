package com.networkbench.agent.impl.b;

import android.os.Looper;
import android.text.TextUtils;
import com.batch.android.BatchPermissionActivity;
import com.networkbench.agent.impl.crash.NBSErrorEventType;
import com.networkbench.agent.impl.harvest.ActionData;
import com.networkbench.agent.impl.harvest.ActionDatas;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import defpackage.fc;
import defpackage.o60;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class k extends HarvestableArray {
    private static final String g = "NBSStackService";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f36518h = 50;
    private static com.networkbench.agent.impl.c.e n = com.networkbench.agent.impl.c.f.a();
    private static String s = "android.os.MessageQueue.nativePollOnce";
    private static final String[] u = {"Permission", BatchPermissionActivity.EXTRA_PERMISSION, "postFrameCallback", "uncaughtException"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f36519a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<com.networkbench.agent.impl.b.a.b> f36521c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Map<Thread, StackTraceElement[]> f36523f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f36524i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f36526k;
    private Map w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f36520b = 1;
    private SecureRandom l = ak.a();
    private JsonObject m = null;
    private String r = "";
    public String d = "ANR";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f36522e = "Dear developer,a slowly operation is blocking the main thread.";
    private String v = "";
    private com.networkbench.agent.impl.k.b t = ak.p();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f36525j = System.currentTimeMillis();
    private l<String> o = new l<>();
    private String p = ScreenNameManager.getCurrentScreenName();
    private HashMap<String, JsonObject> q = new HashMap<>();

    public k(long j2) throws com.networkbench.agent.impl.util.d {
        this.f36526k = 100;
        this.f36524i = j2;
        int stackDepth = Harvest.getInstance().getConfiguration().getStackDepth();
        this.f36526k = stackDepth;
        if (stackDepth == 0) {
            this.f36526k = 100;
        }
    }

    private boolean b(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith(s) || str.startsWith("sun.misc.Unsafe.park");
    }

    private JsonArray k() {
        JsonArray jsonArray = new JsonArray();
        if (h.b()) {
            for (String str : this.o) {
                JsonArray jsonArray2 = new JsonArray();
                jsonArray2.add(new JsonPrimitive((Number) Long.valueOf(Looper.getMainLooper().getThread().getId())));
                jsonArray2.add(new JsonPrimitive(Looper.getMainLooper().getThread().getName()));
                jsonArray2.add(new JsonPrimitive(str));
                jsonArray.add(jsonArray2);
            }
            Logger.debug(g, "NBSBlockInfo  stackTraces size : " + this.f36521c.size());
        }
        return jsonArray;
    }

    private long l() {
        long jR = r.u().R();
        return jR <= 0 ? this.f36524i : jR;
    }

    private JsonObject m() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("pu", (Number) 0);
        jsonObject.addProperty("ppu", (Number) 0);
        com.networkbench.agent.impl.crash.b.a(r.u().J(), jsonObject);
        jsonObject.addProperty("sp_free", com.networkbench.agent.impl.crash.b.b());
        JsonObject jsonObjectA = com.networkbench.agent.impl.crash.e.a();
        n.a("cust is" + jsonObjectA.toString());
        jsonObject.add("cust", jsonObjectA);
        jsonObject.add("tr", ak.c());
        return jsonObject;
    }

    public JsonArray a(List<com.networkbench.agent.impl.b.a.b> list, int i2) {
        JsonArray jsonArray = new JsonArray();
        if (list != null) {
            try {
                if (list.size() != 0) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    JsonArray jsonArrayA = a(list.get(0).a(), i2);
                    if (list.size() == 1) {
                        JsonObject jsonObject = new JsonObject();
                        jsonObject.add(com.batch.android.s.b.a.f24018f, new JsonPrimitive((Number) 1));
                        jsonObject.add(com.networkbench.nbslens.nbsnativecrashlib.m.C, jsonArrayA);
                        jsonArray.add(jsonObject);
                        return jsonArray;
                    }
                    linkedHashMap.put(jsonArrayA, 1);
                    for (int i3 = 1; i3 < list.size(); i3++) {
                        JsonArray jsonArrayA2 = a(list.get(i3).a(), i2);
                        if (linkedHashMap.containsKey(jsonArrayA2)) {
                            linkedHashMap.put(jsonArrayA2, Integer.valueOf(((Integer) linkedHashMap.get(jsonArrayA2)).intValue() + 1));
                        } else {
                            linkedHashMap.put(jsonArrayA2, 1);
                        }
                    }
                    for (Map.Entry entry : linkedHashMap.entrySet()) {
                        JsonObject jsonObject2 = new JsonObject();
                        Integer num = (Integer) entry.getValue();
                        num.intValue();
                        jsonObject2.add(com.batch.android.s.b.a.f24018f, new JsonPrimitive((Number) num));
                        jsonObject2.add(com.networkbench.nbslens.nbsnativecrashlib.m.C, (JsonArray) entry.getKey());
                        jsonArray.add(jsonObject2);
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return jsonArray;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(r.u().f(this.f36524i / 1000))));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(r.u().f(l()))));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(ak.g())));
        jsonArray.add(new JsonPrimitive(this.d));
        String str = this.p;
        if (str == null) {
            str = "";
        }
        jsonArray.add(new JsonPrimitive(str));
        jsonArray.add(new JsonPrimitive(this.f36522e));
        jsonArray.add(k());
        String str2 = this.p;
        if (str2 == null) {
            str2 = "";
        }
        jsonArray.add(new JsonPrimitive(str2));
        jsonArray.add(new JsonPrimitive(this.r));
        jsonArray.add(new JsonPrimitive(this.f36519a));
        jsonArray.add(v.g(r.u().J()));
        jsonArray.add(v.a());
        JsonObject jsonObject = this.m;
        jsonArray.add(new JsonPrimitive(jsonObject == null ? "" : jsonObject.toString()));
        jsonArray.add(new JsonPrimitive(""));
        jsonArray.add(null);
        HashMap<String, JsonObject> map = this.q;
        if (map != null) {
            jsonArray.add(ak.c((Map<String, JsonObject>) map));
        } else {
            jsonArray.add(new JsonObject());
        }
        jsonArray.add(new JsonPrimitive(this.v));
        com.networkbench.agent.impl.data.a aVar = new com.networkbench.agent.impl.data.a(r.u(), this.t);
        aVar.a().add("anr_type", new JsonPrimitive((Number) Integer.valueOf(this.f36520b)));
        aVar.a().add("anr_duration", new JsonPrimitive((Number) Integer.valueOf(ak.h())));
        aVar.a().add("anr_stack_interval", new JsonPrimitive((Number) Integer.valueOf(h.a())));
        jsonArray.add(new JsonPrimitive(aVar.asJsonObject().toString()));
        if (!h.b()) {
            jsonArray.add(new JsonPrimitive(a(this.f36521c, this.f36526k).toString()));
        }
        return jsonArray;
    }

    public JsonArray c() {
        com.networkbench.agent.impl.b.a.b bVar;
        JsonArray jsonArray = new JsonArray();
        List<com.networkbench.agent.impl.b.a.b> list = this.f36521c;
        if (list != null && list.size() > 0 && (bVar = (com.networkbench.agent.impl.b.a.b) fc.e(1, this.f36521c)) != null) {
            String string = a(this.f36526k, bVar.a(), 0).toString();
            JsonArray jsonArray2 = new JsonArray();
            jsonArray2.add(new JsonPrimitive((Number) Long.valueOf(Looper.getMainLooper().getThread().getId())));
            jsonArray2.add(new JsonPrimitive(Looper.getMainLooper().getThread().getName()));
            jsonArray2.add(new JsonPrimitive(string));
            jsonArray.add(jsonArray2);
        }
        return jsonArray;
    }

    public String d() {
        return o60.j(this.f36524i, "", new StringBuilder());
    }

    public void e() {
        JsonObject jsonObject = this.m;
        if (jsonObject == null) {
            return;
        }
        jsonObject.add("req", i());
    }

    public boolean f() {
        l<String> lVar = this.o;
        if (lVar == null || lVar.size() <= 1) {
            return false;
        }
        for (String str : this.o) {
            if (str != null) {
                if (c(str)) {
                    return false;
                }
                if (str.contains("com.networkbench.agent") && this.o.size() == 1) {
                    return false;
                }
            }
        }
        return true;
    }

    public boolean g() {
        l<String> lVar = this.o;
        return (lVar == null || lVar.isEmpty()) ? false : true;
    }

    public void h() {
        Iterator<com.networkbench.agent.impl.b.a.b> it = this.f36521c.iterator();
        while (it.hasNext()) {
            StackTraceElement[] stackTraceElementArrA = it.next().a();
            if (stackTraceElementArrA.length <= 0 || !b(stackTraceElementArrA[0].toString())) {
                String string = a(this.f36526k, stackTraceElementArrA, 0).toString();
                if (!TextUtils.isEmpty(string)) {
                    this.o.a(string);
                }
            }
        }
    }

    public JsonArray i() {
        JsonArray jsonArray = new JsonArray();
        ActionDatas actionDatas = Harvest.getInstance().getHarvestData().getActionDatas();
        int anrAction = HarvestConfiguration.getDefaultHarvestConfiguration().getAnrAction();
        StringBuilder sbQ = fc.q(anrAction, "anrAction:", ", actions:");
        sbQ.append(actionDatas.getActionDatas().size());
        Logger.debug(g, sbQ.toString());
        if (anrAction != -1) {
            ArrayList<ActionData> arrayList = new ArrayList();
            arrayList.addAll(actionDatas.getActionDatas());
            Collections.sort(arrayList, new Comparator<ActionData>() { // from class: com.networkbench.agent.impl.b.k.1
                @Override // java.util.Comparator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public int compare(ActionData actionData, ActionData actionData2) {
                    return actionData.getTimestamp().longValue() > actionData2.getTimestamp().longValue() ? 1 : -1;
                }
            });
            for (ActionData actionData : arrayList) {
                long jLongValue = actionData.getTimestamp().longValue();
                if (jLongValue >= this.f36524i && jLongValue <= this.f36525j && (anrAction == 0 || anrAction > jsonArray.size())) {
                    JsonArray jsonArrayAsJsonArray = new i(actionData, this.f36524i, actionData.getTimestamp().longValue()).asJsonArray();
                    if (jsonArrayAsJsonArray != null) {
                        jsonArray.add(jsonArrayAsJsonArray);
                    }
                }
            }
        }
        return jsonArray;
    }

    public void j() {
        this.v = r.u().d(System.currentTimeMillis());
        com.networkbench.agent.impl.crash.g.a().a(NBSErrorEventType.anr, this.v);
    }

    public String b() {
        return this.r;
    }

    public void b(Map<Thread, StackTraceElement[]> map) {
        this.f36523f = map;
    }

    private boolean c(String str) {
        if (str != null) {
            for (String str2 : u) {
                if (str.contains(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private String c(Map<Thread, StackTraceElement[]> map) {
        return new com.networkbench.agent.impl.util.c.f(50).a(map);
    }

    public void a(String str) {
        this.r = str;
    }

    private StringBuilder a(int i2, StackTraceElement[] stackTraceElementArr, int i3) {
        StringBuilder sb = new StringBuilder();
        if (i2 != 0 && stackTraceElementArr != null && stackTraceElementArr.length != 0 && i3 < stackTraceElementArr.length) {
            int i4 = 0;
            while (i3 < stackTraceElementArr.length) {
                if (i4 >= i2) {
                    if (TextUtils.isEmpty(sb)) {
                        break;
                    }
                    sb.append("\t...");
                    sb.append(stackTraceElementArr.length - i3);
                    sb.append(" more");
                    return sb;
                }
                i4++;
                if (!stackTraceElementArr[i3].toString().startsWith("java.")) {
                    sb.append("\tat " + stackTraceElementArr[i3] + "\n");
                }
                i3++;
            }
            return sb;
        }
        n.a("anr getShortStackTrace failed");
        return sb;
    }

    public void a(Map map) {
        this.w = map;
    }

    public HashMap<String, JsonObject> a() {
        return this.q;
    }

    public JsonArray a(StackTraceElement[] stackTraceElementArr, int i2) {
        JsonArray jsonArray = new JsonArray();
        if (stackTraceElementArr != null && stackTraceElementArr.length != 0) {
            int i3 = 1;
            for (int length = stackTraceElementArr.length - 1; length >= 0; length--) {
                i3++;
                jsonArray.add(new JsonPrimitive(stackTraceElementArr[length].toString()));
                if (i3 > i2) {
                    jsonArray.add(new JsonPrimitive("... more"));
                    return jsonArray;
                }
            }
        }
        return jsonArray;
    }

    public void a(List<com.networkbench.agent.impl.b.a.b> list) throws com.networkbench.agent.impl.util.d {
        this.f36521c = list;
        if (!list.isEmpty()) {
            j();
            this.f36519a = com.networkbench.agent.impl.crash.i.a();
            this.m = m();
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            a(c(allStackTraces));
            this.f36523f = allStackTraces;
            return;
        }
        throw new com.networkbench.agent.impl.util.d("stack trace is empty, skip collection");
    }
}
