package com.batch.android.b;

import android.content.Context;
import com.batch.android.UserActionRunnable;
import com.batch.android.UserActionSource;
import com.batch.android.e.t;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c implements UserActionRunnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f22947b = "batch.group";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.batch.android.v0.a f22948a;

    public c(com.batch.android.v0.a aVar) {
        this.f22948a = aVar;
    }

    @Override // com.batch.android.UserActionRunnable
    public void performAction(Context context, String str, JSONObject jSONObject, UserActionSource userActionSource) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("actions");
        if (jSONArrayOptJSONArray == null) {
            t.a(com.batch.android.v0.a.d, "Could not parse group action, 'actions' is not an array");
            return;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
            try {
                JSONArray jSONArray = jSONArrayOptJSONArray.getJSONArray(i3);
                if (jSONArray.length() == 0) {
                    t.a(com.batch.android.v0.a.d, "Could not parse group action item: invalid argument length");
                } else {
                    String string = jSONArray.getString(0);
                    if (string.equalsIgnoreCase(f22947b)) {
                        t.a(com.batch.android.v0.a.d, "Can't trigger 'batch.group' from this action.");
                    } else {
                        JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(1);
                        if (jSONObjectOptJSONObject == null) {
                            jSONObjectOptJSONObject = new JSONObject();
                        }
                        this.f22948a.a(context, string, jSONObjectOptJSONObject, userActionSource);
                        i2++;
                        if (i2 >= 10) {
                            t.e(com.batch.android.v0.a.d, "The group action does not support running more than 10 actions");
                            return;
                        }
                        continue;
                    }
                }
            } catch (JSONException e2) {
                t.c(com.batch.android.v0.a.d, "Could not parse group action item, JSON error");
                t.c(com.batch.android.v0.a.d, "Caused by: " + e2);
            }
        }
    }
}
