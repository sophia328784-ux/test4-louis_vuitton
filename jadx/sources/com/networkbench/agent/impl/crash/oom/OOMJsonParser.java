package com.networkbench.agent.impl.crash.oom;

import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class OOMJsonParser {
    private static final String GC_ROOT_TIP = "GC Root: ";
    private static final String TAG = "OOMJsonParser";
    public List<OOMClassInfo> classInfos;
    public List<OOMGCPath> gcPaths;
    public List<OOMLeakObject> leakObjects;
    public RunningInfo runningInfo;
    private Map<String, OOMGCPath> searchReference = new HashMap();

    public static class OOMClassInfo {
        public String className;
        public String instanceCount;
    }

    public static class OOMGCPath {
        public String gcRoot;
        public int instanceCount;
        public String leakObjectId;
        public String leakReason;
        public List<OOMSinglePath> path;
        public List<OOMSinglePath> selfTracePath;
        public String signature;
    }

    public static class OOMLeakObject {
        public String className;
        public String extDetail;
        public String objectId;
        public String size;
    }

    public static class OOMSinglePath {
        public Set<String> childIds = new HashSet();
        public String declaredClass;
        public String reference;
        public String referenceId;
        public String referenceType;
        public int retainedHeapByteSize;
        public int retainedObjectCount;
        public int shallowSize;
    }

    public static class RunningInfo {
        public String heapMetaData;
    }

    private String[] constructReference(OOMGCPath oOMGCPath) {
        StringBuilder sb = new StringBuilder();
        for (OOMSinglePath oOMSinglePath : oOMGCPath.selfTracePath) {
            if (!ab.c(oOMSinglePath.reference)) {
                sb.append(oOMSinglePath.reference);
                sb.append("\n\t");
                break;
            }
        }
        oOMGCPath.path.listIterator();
        ListIterator<OOMSinglePath> listIterator = oOMGCPath.path.listIterator();
        while (listIterator.hasNext()) {
            listIterator.next();
        }
        String str = "";
        while (listIterator.hasPrevious()) {
            OOMSinglePath oOMSinglePathPrevious = listIterator.previous();
            if (!ab.c(oOMSinglePathPrevious.reference)) {
                sb.append(oOMSinglePathPrevious.reference);
                sb.append("\n\t");
            }
            if (str.equals("") && isRealLeakClassName(oOMSinglePathPrevious.declaredClass, oOMSinglePathPrevious.reference)) {
                str = oOMSinglePathPrevious.declaredClass;
            }
        }
        return new String[]{sb.toString(), str};
    }

    private String getStringValue(String str) {
        return str == null ? "" : str;
    }

    private boolean isRealLeakClassName(String str, String str2) {
        return (ab.c(str) || ab.c(str2) || str.equals("java.lang.Object[]") || str.equals("java.util.ArrayList") || str2.equals("java.util.ArrayList.elementData") || str2.equals("java.lang.Object[]")) ? false : true;
    }

    public JsonArray getBigObjectReference() {
        JsonArray jsonArray = new JsonArray();
        try {
            return new a(Long.valueOf(this.runningInfo.heapMetaData).longValue(), this).a();
        } catch (Throwable th) {
            Logger.error(TAG, "error getBigDataReference", th);
            return jsonArray;
        }
    }

    public JsonArray getLeakReferenceChain() {
        JsonArray jsonArray = new JsonArray();
        try {
            List<OOMGCPath> list = this.gcPaths;
            if (list != null && list.size() > 0) {
                for (OOMGCPath oOMGCPath : this.gcPaths) {
                    List<OOMSinglePath> list2 = oOMGCPath.path;
                    if (list2 != null && list2.size() > 0) {
                        JsonObject jsonObject = new JsonObject();
                        String[] strArrConstructReference = constructReference(oOMGCPath);
                        jsonObject.add("leakClass", new JsonPrimitive(strArrConstructReference[1]));
                        jsonObject.add("gcRoot", new JsonPrimitive(GC_ROOT_TIP + getStringValue(oOMGCPath.gcRoot)));
                        jsonObject.add("ref", new JsonPrimitive(strArrConstructReference[0]));
                        jsonArray.add(jsonObject);
                    }
                }
            }
            return jsonArray;
        } catch (Throwable th) {
            Logger.error(TAG, "error getReferenceChain", th);
            return jsonArray;
        }
    }

    public void setSearchReference() {
        List<OOMGCPath> list = this.gcPaths;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (OOMGCPath oOMGCPath : this.gcPaths) {
            this.searchReference.put(oOMGCPath.leakObjectId, oOMGCPath);
        }
    }
}
