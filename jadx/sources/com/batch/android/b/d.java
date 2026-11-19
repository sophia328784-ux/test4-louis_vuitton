package com.batch.android.b;

import android.content.Context;
import com.batch.android.UserActionRunnable;
import com.batch.android.UserActionSource;
import com.batch.android.a.m;
import com.batch.android.e.t;
import com.batch.android.json.JSONObject;
import com.batch.android.n.z;

/* JADX INFO: loaded from: classes.dex */
public class d implements UserActionRunnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22949a = "LocalCampaignsRefreshAction";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f22950b = "batch.refresh_lc";

    @Override // com.batch.android.UserActionRunnable
    public void performAction(Context context, String str, JSONObject jSONObject, UserActionSource userActionSource) {
        com.batch.android.j1.e eVarA = z.a();
        if (eVarA != null) {
            m.a(eVarA);
        } else {
            t.a(f22949a, "Tried to perform a Local Campaigns Refresh action, but was unable to get a RuntimeManager instance.");
        }
    }
}
