package com.batch.android.v;

import android.content.Context;
import com.batch.android.json.JSONObject;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface b {
    void a(Context context, JSONObject jSONObject, String str) throws c;

    boolean a(Context context, String str) throws c;

    void b(Context context, String str) throws c;

    JSONObject c(Context context, String str) throws c, IOException;
}
