package com.appsflyer.internal;

import com.appsflyer.sdk_base.exception_manager.ExceptionManagerConfiguration;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFh1gSDK {
    public AFi1zSDK AFKeystoreWrapper;
    public ExceptionManagerConfiguration d;
    public AFh1cSDK unregisterClient;

    public AFh1gSDK(JSONObject jSONObject) {
        jSONObject.getClass();
        this.unregisterClient = d(jSONObject);
        this.d = unregisterClient(jSONObject);
        this.AFKeystoreWrapper = registerClient(jSONObject);
    }

    private static AFh1cSDK d(JSONObject jSONObject) {
        Object failure;
        List arrayList;
        try {
            Result.Companion companion = Result.INSTANCE;
            JSONObject jSONObjectUnregisterClient = unregisterClient(jSONObject, "r_debugger");
            if (jSONObjectUnregisterClient != null) {
                long j2 = jSONObjectUnregisterClient.getLong("ttl");
                int i2 = jSONObjectUnregisterClient.getInt(com.batch.android.u0.b.a.f24076a);
                String strOptString = jSONObjectUnregisterClient.optString("app_ver", "");
                String strOptString2 = jSONObjectUnregisterClient.optString("sdk_ver", "");
                float fOptDouble = (float) jSONObjectUnregisterClient.optDouble("ratio", 1.0d);
                JSONArray jSONArrayOptJSONArray = jSONObjectUnregisterClient.optJSONArray("tags");
                if (jSONArrayOptJSONArray != null) {
                    arrayList = new ArrayList();
                    int length = jSONArrayOptJSONArray.length();
                    for (int i3 = 0; i3 < length; i3++) {
                        String string = jSONArrayOptJSONArray.getString(i3);
                        string.getClass();
                        arrayList.add(string);
                    }
                } else {
                    arrayList = EmptyList.f71768b;
                }
                List list = arrayList;
                strOptString.getClass();
                strOptString2.getClass();
                failure = new AFh1cSDK(j2, fOptDouble, list, i2, strOptString, strOptString2);
            } else {
                failure = null;
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Result.Companion companion3 = Result.INSTANCE;
        return (AFh1cSDK) (failure instanceof Result.Failure ? null : failure);
    }

    private static AFi1zSDK registerClient(JSONObject jSONObject) {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            JSONObject jSONObjectUnregisterClient = unregisterClient(jSONObject, "meta_data");
            failure = jSONObjectUnregisterClient != null ? new AFi1zSDK(jSONObjectUnregisterClient.optDouble("send_rate", 1.0d)) : null;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        return (AFi1zSDK) (failure instanceof Result.Failure ? null : failure);
    }

    private static ExceptionManagerConfiguration unregisterClient(JSONObject jSONObject) {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            JSONObject jSONObjectUnregisterClient = unregisterClient(jSONObject, "exc_mngr");
            if (jSONObjectUnregisterClient != null) {
                String string = jSONObjectUnregisterClient.getString("sdk_ver");
                int iOptInt = jSONObjectUnregisterClient.optInt("min", -1);
                int iOptInt2 = jSONObjectUnregisterClient.optInt("expire", -1);
                long jOptLong = jSONObjectUnregisterClient.optLong("ttl", -1L);
                string.getClass();
                failure = new ExceptionManagerConfiguration(string, iOptInt, iOptInt2, jOptLong);
            } else {
                failure = null;
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        return (ExceptionManagerConfiguration) (failure instanceof Result.Failure ? null : failure);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!AFh1gSDK.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        AFh1gSDK aFh1gSDK = (AFh1gSDK) obj;
        return Intrinsics.c(this.d, aFh1gSDK.d) && Intrinsics.c(this.AFKeystoreWrapper, aFh1gSDK.AFKeystoreWrapper) && Intrinsics.c(this.unregisterClient, aFh1gSDK.unregisterClient);
    }

    public final int hashCode() {
        ExceptionManagerConfiguration exceptionManagerConfiguration = this.d;
        int iHashCode = (exceptionManagerConfiguration != null ? exceptionManagerConfiguration.hashCode() : 0) * 31;
        AFi1zSDK aFi1zSDK = this.AFKeystoreWrapper;
        int iHashCode2 = (iHashCode + (aFi1zSDK != null ? aFi1zSDK.hashCode() : 0)) * 31;
        AFh1cSDK aFh1cSDK = this.unregisterClient;
        return iHashCode2 + (aFh1cSDK != null ? aFh1cSDK.hashCode() : 0);
    }

    private static JSONObject unregisterClient(JSONObject jSONObject, String str) throws JSONException, NullPointerException {
        JSONObject jSONObjectOptJSONObject;
        if (!jSONObject.has(str) || (jSONObjectOptJSONObject = jSONObject.getJSONArray(str).optJSONObject(0).optJSONObject(DbParams.KEY_DATA)) == null) {
            return null;
        }
        return jSONObjectOptJSONObject.optJSONObject("v1");
    }
}
