package com.batch.android.b;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import com.batch.android.UserActionRunnable;
import com.batch.android.UserActionSource;
import com.batch.android.e.t;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.networkbench.agent.impl.NBSSpanMetricUnit;

/* JADX INFO: loaded from: classes.dex */
public class a implements UserActionRunnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22940a = "ClipboardBuiltinAction";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f22941b = "Could not perform clipboard action: ";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f22942c = "batch.clipboard";

    @Override // com.batch.android.UserActionRunnable
    public void performAction(Context context, String str, JSONObject jSONObject, UserActionSource userActionSource) {
        if (context == null) {
            t.c(f22940a, "Could not perform clipboard action: no context.");
            return;
        }
        try {
            String string = jSONObject.getString("t");
            if (string == null) {
                t.c(f22940a, "Could not perform clipboard action: text's null.");
            } else {
                ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(jSONObject.optString(NBSSpanMetricUnit.Day, "text"), string));
            }
        } catch (JSONException e2) {
            t.c(f22940a, "Json object failure : " + e2.getLocalizedMessage());
        }
    }
}
