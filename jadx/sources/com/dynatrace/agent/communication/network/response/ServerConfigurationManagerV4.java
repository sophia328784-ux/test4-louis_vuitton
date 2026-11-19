package com.dynatrace.agent.communication.network.response;

import com.dynatrace.agent.communication.api.AgentState;
import com.dynatrace.agent.storage.preference.ServerConfigurationV4;
import com.dynatrace.android.agent.util.Utility;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;", "", "<init>", "()V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ServerConfigurationManagerV4 {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0004R\u0014\u0010\u0012\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004R\u0014\u0010\u0013\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0004¨\u0006\u0014"}, d2 = {"Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4$Companion;", "", "", "KEY_STATUS", "Ljava/lang/String;", "KEY_REVISION", "KEY_ENVIRONMENT_CONFIG", "KEY_APP_CONFIG", "KEY_DYNAMIC_CONFIG", "KEY_MAX_BEACON_SIZE_KIB", "KEY_MAX_EVENT_SIZE_KIB", "KEY_DYNAMIC_CONFIG_STATE", "KEY_APP_CONFIG_APP_ID", "KEY_APP_CONFIG_CAPTURE", "KEY_TRACESTATE_PREFIX", "KEY_APP_CONFIG_TRACE_CONTEXT", "KEY_APP_CONFIG_UA_ACTIVITY_END_DELAY_MS", "KEY_APP_CONFIG_UA_ACTIVITY_VALIDATION_DELAY_MS", "KEY_APP_CONFIG_UA_ENABLE", "KEY_APP_CONFIG_UA_MAX_DURATION_MS", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public static AgentState a(JSONObject jSONObject) {
        String strC;
        AgentState enabled = null;
        if (!ArraysKt.f(JsonExtensionKt.c("status", jSONObject), ServerConfigurationManagerV4Kt.f26661a)) {
            Utility.b("config parsing error: unknown status value");
            return null;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("dynamicConfig");
        if (jSONObjectOptJSONObject != null && (strC = JsonExtensionKt.c("state", jSONObjectOptJSONObject)) != null) {
            int iHashCode = strC.hashCode();
            if (iHashCode != -1609594047) {
                if (iHashCode != 270940796) {
                    if (iHashCode == 809657403 && strC.equals("priority=high")) {
                        enabled = new AgentState.Enabled(true);
                    }
                } else if (strC.equals("disabled")) {
                    enabled = AgentState.Disabled.f26619a;
                }
            } else if (strC.equals("enabled")) {
                enabled = new AgentState.Enabled(false);
            }
        }
        if (enabled == null) {
            Utility.b("config parsing error: unknown agent state");
        }
        return enabled;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v7, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.util.List] */
    public static ServerConfigurationV4 b(String str, JSONObject jSONObject, long j2) {
        ?? arrayList;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("environmentConfig");
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("appConfig");
        JSONObject jSONObject2 = null;
        if (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject2 == null) {
            Utility.b("config parsing error: invalid config update");
            return null;
        }
        if (!Intrinsics.c(str, JsonExtensionKt.c("applicationId", jSONObjectOptJSONObject2))) {
            Utility.b("config parsing error: appId mismatch");
            return null;
        }
        JSONObject jSONObject3 = jSONObjectOptJSONObject2.has("maxBeaconSizeKib") ? jSONObjectOptJSONObject2 : jSONObjectOptJSONObject.has("maxBeaconSizeKib") ? jSONObjectOptJSONObject : null;
        int iA = jSONObject3 != null ? ServerConfigurationManagerV4Kt.a(jSONObject3, "maxBeaconSizeKib", 256, 10240, 1024) : 1024;
        if (jSONObjectOptJSONObject2.has("maxEventSizeKib")) {
            jSONObject2 = jSONObjectOptJSONObject2;
        } else if (jSONObjectOptJSONObject.has("maxEventSizeKib")) {
            jSONObject2 = jSONObjectOptJSONObject;
        }
        int iA2 = jSONObject2 != null ? ServerConfigurationManagerV4Kt.a(jSONObject2, "maxEventSizeKib", 128, 1024, 256) : 256;
        boolean zOptBoolean = jSONObjectOptJSONObject2.optBoolean("capture", true);
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray("userInteractionCapture");
        if (jSONArrayOptJSONArray != null) {
            IntRange intRangeJ = RangesKt.j(0, jSONArrayOptJSONArray.length());
            ArrayList arrayList2 = new ArrayList();
            Iterator<Integer> it = intRangeJ.iterator();
            while (((IntProgressionIterator) it).d) {
                String strOptString = jSONArrayOptJSONArray.optString(((IntIterator) it).nextInt());
                if (strOptString != null) {
                    arrayList2.add(strOptString);
                }
            }
            arrayList = new ArrayList();
            for (Object obj : arrayList2) {
                if (!StringsKt.w((String) obj)) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        ?? r9 = arrayList;
        String strC = JsonExtensionKt.c("tracestateKeyPrefix", jSONObjectOptJSONObject);
        if (strC == null) {
            strC = "";
        }
        return new ServerConfigurationV4(j2, iA, iA2, zOptBoolean, r9, strC, jSONObjectOptJSONObject2.optBoolean("traceContext", true), jSONObjectOptJSONObject2.optBoolean("uaEnable", true), ServerConfigurationManagerV4Kt.a(jSONObjectOptJSONObject2, "uaActivityEndDelayMs", 0, 5000, 100), ServerConfigurationManagerV4Kt.a(jSONObjectOptJSONObject2, "uaActivityValidationDelayMs", 0, 5000, 100), ServerConfigurationManagerV4Kt.a(jSONObjectOptJSONObject2, "uaMaxDurationMs", 1000, 180000, 50000));
    }
}
