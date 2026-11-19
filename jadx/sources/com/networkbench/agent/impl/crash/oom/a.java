package com.networkbench.agent.impl.crash.oom;

import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.networkbench.com.google.gson.reflect.TypeToken;
import defpackage.fc;
import defpackage.n00;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static int f36666a = 262144;
    private static String d = "OOMBigObjectPathCalc";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f36667e = 10;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f36670f;
    private OOMJsonParser g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Set<String> f36669c = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Map<String, OOMJsonParser.OOMSinglePath> f36668b = new HashMap();

    public a(long j2, OOMJsonParser oOMJsonParser) {
        this.f36670f = j2;
        this.g = oOMJsonParser;
        b();
    }

    private JsonArray a(OOMJsonParser.OOMLeakObject oOMLeakObject) {
        int i2;
        try {
            i2 = Integer.parseInt(oOMLeakObject.size);
        } catch (NumberFormatException unused) {
            i2 = 0;
        }
        String strR = oOMLeakObject.className;
        if (i2 > 0 && strR.endsWith("[]")) {
            strR = n00.r(oOMLeakObject.size, "]", n00.t(oOMLeakObject.className.substring(0, strR.length() - 1)));
        }
        JsonArray jsonArray = new JsonArray();
        StringBuilder sbU = n00.u(strR, " @ ");
        sbU.append(oOMLeakObject.objectId);
        jsonArray.add(new JsonPrimitive(sbU.toString()));
        jsonArray.add(new JsonPrimitive((Number) 1));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(i2)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(i2)));
        jsonArray.add(new JsonPrimitive(a(i2)));
        jsonArray.add(new JsonArray());
        return jsonArray;
    }

    private void b() {
        OOMJsonParser.OOMSinglePath oOMSinglePath;
        List<OOMJsonParser.OOMGCPath> list = this.g.gcPaths;
        if (list == null) {
            return;
        }
        for (OOMJsonParser.OOMGCPath oOMGCPath : list) {
            oOMGCPath.path.listIterator();
            ListIterator<OOMJsonParser.OOMSinglePath> listIterator = oOMGCPath.path.listIterator();
            while (listIterator.hasNext()) {
                listIterator.next();
            }
            boolean z = false;
            String str = "";
            int i2 = 0;
            while (listIterator.hasPrevious()) {
                OOMJsonParser.OOMSinglePath oOMSinglePathPrevious = listIterator.previous();
                if (!this.f36668b.containsKey(oOMSinglePathPrevious.referenceId)) {
                    this.f36668b.put(oOMSinglePathPrevious.referenceId, oOMSinglePathPrevious);
                }
                if (!ab.c(str)) {
                    OOMJsonParser.OOMSinglePath oOMSinglePath2 = this.f36668b.get(oOMSinglePathPrevious.referenceId);
                    if (oOMSinglePath2 != null) {
                        oOMSinglePath2.childIds.add(str);
                    } else {
                        Logger.warning(d, "value is null, please check");
                    }
                }
                if (i2 > oOMSinglePathPrevious.retainedHeapByteSize && !z) {
                    Logger.debug(d, "found wrong retainedsize, add referenceId:" + oOMSinglePathPrevious.referenceId);
                    a(i2, str);
                    z = true;
                }
                i2 = oOMSinglePathPrevious.retainedHeapByteSize;
                str = oOMSinglePathPrevious.referenceId;
            }
            if (!z) {
                a(i2, str);
            }
            for (OOMJsonParser.OOMSinglePath oOMSinglePath3 : oOMGCPath.selfTracePath) {
                if (!this.f36668b.containsKey(oOMSinglePath3.referenceId)) {
                    this.f36668b.put(oOMSinglePath3.referenceId, oOMSinglePath3);
                }
                List<OOMJsonParser.OOMSinglePath> list2 = oOMGCPath.path;
                if (list2 != null && list2.size() > 0 && (oOMSinglePath = (OOMJsonParser.OOMSinglePath) fc.e(1, oOMGCPath.path)) != null) {
                    OOMJsonParser.OOMSinglePath oOMSinglePath4 = this.f36668b.get(oOMSinglePath.referenceId);
                    if (oOMSinglePath4 != null) {
                        oOMSinglePath4.childIds.add(oOMSinglePath3.referenceId);
                    } else {
                        Logger.warning(d, "parent is null, please check");
                    }
                }
            }
        }
    }

    private boolean a(String str, boolean z) {
        if (str.contains("contextClassLoader") || str.contains("runtimeInternalObjects")) {
            return true;
        }
        return z && str.equals("java.lang.Object[]");
    }

    public JsonArray a() {
        JsonArray jsonArray = new JsonArray();
        Iterator<String> it = this.f36669c.iterator();
        while (it.hasNext()) {
            jsonArray.add(a(it.next()));
        }
        for (OOMJsonParser.OOMLeakObject oOMLeakObject : this.g.leakObjects) {
            if (!this.f36668b.containsKey(oOMLeakObject.objectId)) {
                jsonArray.add(a(oOMLeakObject));
            }
        }
        return a(jsonArray);
    }

    private JsonArray a(JsonArray jsonArray) {
        List list = (List) new Gson().fromJson(jsonArray, new TypeToken<List<JsonArray>>() { // from class: com.networkbench.agent.impl.crash.oom.a.1
        }.getType());
        JsonArray[] jsonArrayArr = (JsonArray[]) list.toArray(new JsonArray[0]);
        Arrays.sort(jsonArrayArr, new Comparator<JsonArray>() { // from class: com.networkbench.agent.impl.crash.oom.a.2
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(JsonArray jsonArray2, JsonArray jsonArray3) {
                return Float.valueOf(jsonArray3.get(4).getAsString().replaceAll("%", "")).compareTo(Float.valueOf(jsonArray2.get(4).getAsString().replaceAll("%", "")));
            }
        });
        JsonArray jsonArray2 = new JsonArray();
        for (int i2 = 0; i2 < jsonArrayArr.length; i2++) {
            if (i2 < 10) {
                jsonArray2.add(jsonArrayArr[i2]);
            }
        }
        return jsonArray2;
    }

    public JsonArray a(String str) {
        JsonArray jsonArrayA = a(this.f36668b.get(str));
        Set<String> set = this.f36668b.get(str).childIds;
        if (set.size() == 0) {
            jsonArrayA.add(new JsonArray());
            return jsonArrayA;
        }
        JsonArray jsonArray = new JsonArray();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            jsonArray.add(a(it.next()));
        }
        jsonArrayA.add(a(jsonArray));
        return jsonArrayA;
    }

    public JsonArray a(OOMJsonParser.OOMSinglePath oOMSinglePath) {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive(b(oOMSinglePath)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(oOMSinglePath.retainedObjectCount)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(oOMSinglePath.shallowSize)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(oOMSinglePath.retainedHeapByteSize)));
        jsonArray.add(new JsonPrimitive(a(oOMSinglePath.retainedHeapByteSize)));
        return jsonArray;
    }

    private void a(int i2, String str) {
        if (i2 >= f36666a) {
            Logger.debug(d, "root paths add referenceId:" + str);
            this.f36669c.add(str);
            return;
        }
        Logger.debug(d, "root paths not add referenceId, threshold is small than default");
    }

    public String a(int i2) {
        long j2 = this.f36670f;
        if (j2 <= i2) {
            return "0.00%";
        }
        return String.format("%.2f%%", Float.valueOf((i2 / j2) * 100.0f));
    }

    private String b(OOMJsonParser.OOMSinglePath oOMSinglePath) {
        if (!ab.c(oOMSinglePath.declaredClass)) {
            return oOMSinglePath.declaredClass + " @ " + oOMSinglePath.referenceId;
        }
        boolean zEndsWith = oOMSinglePath.reference.endsWith("[]");
        String str = oOMSinglePath.reference;
        if (zEndsWith) {
            return str.substring(0, str.length() - 2) + "[" + oOMSinglePath.retainedHeapByteSize + "] @ " + oOMSinglePath.referenceId;
        }
        StringBuilder sbU = n00.u(str, " @ ");
        sbU.append(oOMSinglePath.referenceId);
        return sbU.toString();
    }
}
