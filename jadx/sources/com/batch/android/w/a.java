package com.batch.android.w;

import android.text.TextUtils;
import com.batch.android.e.t;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.n.m;
import com.batch.android.n.n;
import com.batch.android.t.c;
import com.batch.android.v0.l;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.a61;
import defpackage.fc;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f24155a = "LocalCampaignDeserializer";

    private c b(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        int iOptInt = jSONObject.optInt("startHour");
        int iOptInt2 = jSONObject.optInt("startMin");
        int iOptInt3 = jSONObject.optInt("endHour");
        int iOptInt4 = jSONObject.optInt("endMin");
        JSONArray jSONArray = jSONObject.getJSONArray("quietDaysOfWeek");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            arrayList.add(com.batch.android.t.a.a(jSONArray.getInt(i2)));
        }
        return new c(iOptInt, iOptInt2, iOptInt3, iOptInt4, arrayList);
    }

    private com.batch.android.t.b.c c(JSONObject jSONObject) throws JSONException {
        String strReallyOptString = jSONObject.reallyOptString("type", null);
        if (TextUtils.isEmpty(strReallyOptString)) {
            a61.o("Invalid campaign trigger type");
            return null;
        }
        String upperCase = strReallyOptString.toUpperCase(Locale.US);
        upperCase.getClass();
        switch (upperCase) {
            case "NOW":
            case "NEXT_SESSION":
                return new com.batch.android.y.b();
            case "EVENT":
                String strReallyOptString2 = jSONObject.reallyOptString(MvelScriptManager.VAR_EVENT, null);
                if (!TextUtils.isEmpty(upperCase)) {
                    return new com.batch.android.y.a(strReallyOptString2, jSONObject.reallyOptString("label", null), jSONObject.optJSONObject(l.f24145h));
                }
                a61.o("Invalid campaign event trigger name");
                return null;
            default:
                throw new JSONException(fc.h("Unknown campaign triggers \"", upperCase, "\""));
        }
    }

    public com.batch.android.t.b a(JSONObject jSONObject, boolean z) throws JSONException {
        com.batch.android.i.a aVar;
        if (jSONObject == null) {
            a61.o("Cannot parse a null campaign json");
            return null;
        }
        com.batch.android.t.b bVar = new com.batch.android.t.b();
        String string = jSONObject.getString("campaignId");
        bVar.f24039a = string;
        if (string == null || TextUtils.isEmpty(string.trim())) {
            a61.o("Invalid campaignId");
            return null;
        }
        bVar.m = jSONObject.optString("campaignToken", null);
        JSONObject jSONObject2 = jSONObject.getJSONObject("eventData");
        bVar.f24046j = jSONObject2;
        if (jSONObject2 == null) {
            a61.o("Invalid eventData");
            return null;
        }
        Integer numReallyOptInteger = jSONObject.reallyOptInteger("minimumApiLevel", null);
        bVar.f24040b = numReallyOptInteger;
        if (numReallyOptInteger != null && numReallyOptInteger.intValue() < 0) {
            a61.o("Invalid campaign minimum API level");
            return null;
        }
        Integer numReallyOptInteger2 = jSONObject.reallyOptInteger("maximumApiLevel", null);
        bVar.f24041c = numReallyOptInteger2;
        if (numReallyOptInteger2 != null && numReallyOptInteger2.intValue() < 0) {
            a61.o("Invalid campaign maximum API level");
            return null;
        }
        int iIntValue = jSONObject.reallyOptInteger("priority", 0).intValue();
        bVar.d = iIntValue;
        if (iIntValue < 0) {
            a61.o("Invalid campaign priority");
            return null;
        }
        int iIntValue2 = jSONObject.reallyOptInteger("minDisplayInterval", Integer.valueOf(bVar.g)).intValue();
        bVar.g = iIntValue2;
        if (iIntValue2 < 0) {
            a61.o("Invalid campaign minimum display interval");
            return null;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("startDate");
        if (jSONObjectOptJSONObject != null) {
            long j2 = jSONObjectOptJSONObject.getLong("ts");
            if (jSONObjectOptJSONObject.reallyOptBoolean("userTZ", Boolean.TRUE).booleanValue()) {
                bVar.f24042e = new com.batch.android.i.b(j2);
            } else {
                bVar.f24042e = new com.batch.android.i.c(j2);
            }
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("endDate");
        if (jSONObjectOptJSONObject2 != null) {
            long j3 = jSONObjectOptJSONObject2.getLong("ts");
            if (jSONObjectOptJSONObject2.reallyOptBoolean("userTZ", Boolean.TRUE).booleanValue()) {
                bVar.f24043f = new com.batch.android.i.b(j3);
            } else {
                bVar.f24043f = new com.batch.android.i.c(j3);
            }
        }
        com.batch.android.i.a aVar2 = bVar.f24043f;
        if (aVar2 != null && (aVar = bVar.f24042e) != null && aVar.compareTo(aVar2) >= 0) {
            a61.o("Start date is equals or greater than end date.");
            return null;
        }
        Integer numReallyOptInteger3 = jSONObject.reallyOptInteger("capping", null);
        bVar.f24044h = numReallyOptInteger3;
        if (numReallyOptInteger3 != null && numReallyOptInteger3.intValue() < 0) {
            a61.o("Invalid campaign capping");
            return null;
        }
        bVar.l = jSONObject.reallyOptBoolean("persist", Boolean.TRUE).booleanValue();
        bVar.f24047k = a(jSONObject.getJSONArray("triggers"));
        bVar.f24045i = a(jSONObject.getJSONObject("output"));
        bVar.p = jSONObject.optJSONObject("customPayload");
        bVar.q = jSONObject.reallyOptBoolean("requireJIT", Boolean.valueOf(z)).booleanValue();
        bVar.n = b(jSONObject.optJSONObject("quietHours"));
        bVar.o = jSONObject.optInt("displayDelaySec");
        return bVar;
    }

    public List<com.batch.android.t.b> a(JSONArray jSONArray, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    arrayList.add(a(jSONArray.getJSONObject(i2), z));
                } catch (Exception e2) {
                    t.c(f24155a, "An error occurred while parsing an In-App Campaign. Skipping.", e2);
                }
            }
        }
        return arrayList;
    }

    private com.batch.android.t.b.a a(JSONObject jSONObject) throws JSONException {
        String strReallyOptString = jSONObject.reallyOptString("type", null);
        if (!TextUtils.isEmpty(strReallyOptString)) {
            String upperCase = strReallyOptString.toUpperCase(Locale.US);
            JSONObject jSONObject2 = jSONObject.getJSONObject(ConfigurationName.PING_PAYLOAD);
            upperCase.getClass();
            switch (upperCase) {
                case "LANDING_CEP":
                    return m.a(jSONObject2);
                case "LANDING":
                    return n.a(jSONObject2);
                case "ACTION":
                    return com.batch.android.n.b.a(jSONObject2);
                default:
                    a61.o("Invalid campaign output type");
                    return null;
            }
        }
        a61.o("Invalid campaign output type");
        return null;
    }

    private List<com.batch.android.t.b.c> a(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                arrayList.add(c(jSONArray.getJSONObject(i2)));
            } catch (JSONException e2) {
                t.c(f24155a, "Invalid trigger : " + e2.toString());
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        a61.o("There is no valid trigger in the list.");
        return null;
    }
}
