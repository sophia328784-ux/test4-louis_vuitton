package com.batch.android;

import android.content.Context;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public interface UserActionRunnable {
    void performAction(Context context, String str, JSONObject jSONObject, UserActionSource userActionSource);
}
