package com.dynatrace.agent.communication.network.response;

import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.Metadata;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"com.dynatrace.agent_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class ServerConfigurationManagerV4Kt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f26661a = {Payload.RESPONSE_OK, "ERROR"};

    public static final int a(JSONObject jSONObject, String str, int i2, int i3, int i4) {
        Integer numValueOf;
        Object objOpt = jSONObject.opt(str);
        if (objOpt instanceof Integer) {
            numValueOf = (Integer) objOpt;
        } else if (objOpt instanceof Number) {
            numValueOf = Integer.valueOf(((Number) objOpt).intValue());
        } else if (objOpt instanceof String) {
            try {
                numValueOf = Integer.valueOf((int) Double.parseDouble((String) objOpt));
            } catch (NumberFormatException unused) {
                numValueOf = null;
            }
        } else {
            numValueOf = null;
        }
        return numValueOf != null ? Math.max(Math.min(numValueOf.intValue(), i3), i2) : i4;
    }
}
