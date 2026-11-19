package com.networkbench.agent.impl.crash.oom;

import android.os.Debug;
import android.os.Process;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class e extends HarvestableObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36685a = "OOMMemoryInfo";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f36686b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f36687c = 0;
    private String d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f36688e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f36689f = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    private int g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f36690h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f36691i;

    public e(boolean z) {
        this.f36691i = z;
        a();
    }

    private void a() {
        try {
            Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
            Debug.getMemoryInfo(memoryInfo);
            this.f36686b = memoryInfo.getTotalPss();
            this.f36687c = Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
            this.d = memoryInfo.getMemoryStat("summary.graphics");
            this.f36688e = b();
            Logger.debug(f36685a, "javaHeap:" + this.f36687c + ", maxMemory:" + Runtime.getRuntime().maxMemory() + ", totalPss:" + this.f36686b);
            this.f36689f = ((float) this.f36687c) / ((float) Runtime.getRuntime().maxMemory());
            this.g = memoryInfo.dalvikPss;
            this.f36690h = memoryInfo.nativePss;
        } catch (Throwable unused) {
        }
    }

    private long b() throws Throwable {
        String strB = ak.b(Process.myPid() + "", "vmsize");
        StringBuilder sb = new StringBuilder("vmSizeStr:");
        sb.append(strB);
        Logger.debug(f36685a, sb.toString());
        String[] strArrSplit = strB.split(" ");
        if (strArrSplit == null) {
            return 0L;
        }
        try {
            if (strArrSplit.length == 3) {
                return Long.parseLong(strArrSplit[1]);
            }
            return 0L;
        } catch (NumberFormatException e2) {
            Logger.error(f36685a, "long parse error", e2);
            return 0L;
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        Object obj = 0;
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("pb", new JsonPrimitive((Number) Integer.valueOf(this.f36691i ? this.f36686b : 0)));
        jsonObject.add("pf", new JsonPrimitive((Number) Integer.valueOf(this.f36691i ? 0 : this.f36686b)));
        jsonObject.add("hb", new JsonPrimitive((Number) Long.valueOf(this.f36691i ? this.f36687c : 0L)));
        jsonObject.add("hf", new JsonPrimitive((Number) Long.valueOf(this.f36691i ? 0L : this.f36687c)));
        jsonObject.add("gb", new JsonPrimitive(this.f36691i ? this.d : obj));
        jsonObject.add("gf", new JsonPrimitive(this.f36691i ? 0 : this.d));
        jsonObject.add("vmb", new JsonPrimitive((Number) Long.valueOf(this.f36691i ? this.f36688e : 0L)));
        jsonObject.add("vmf", new JsonPrimitive((Number) Long.valueOf(this.f36691i ? 0L : this.f36688e)));
        boolean z = this.f36691i;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        jsonObject.add("hbur", new JsonPrimitive((Number) Float.valueOf(z ? this.f36689f : 0.0f)));
        if (!this.f36691i) {
            f2 = this.f36689f;
        }
        jsonObject.add("hfur", new JsonPrimitive((Number) Float.valueOf(f2)));
        jsonObject.add("dpb", new JsonPrimitive((Number) Integer.valueOf(this.f36691i ? this.g : 0)));
        jsonObject.add("dpf", new JsonPrimitive((Number) Integer.valueOf(this.f36691i ? 0 : this.g)));
        jsonObject.add("npb", new JsonPrimitive((Number) Integer.valueOf(this.f36691i ? this.f36690h : 0)));
        jsonObject.add("npf", new JsonPrimitive((Number) Integer.valueOf(this.f36691i ? 0 : this.f36690h)));
        return jsonObject;
    }
}
