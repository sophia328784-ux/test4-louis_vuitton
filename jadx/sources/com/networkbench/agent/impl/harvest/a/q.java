package com.networkbench.agent.impl.harvest.a;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.util.ak;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import defpackage.n00;
import java.net.HttpURLConnection;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class q extends h {
    public q(String str, boolean z) {
        super(str, z);
        b("UpdateHintUrl");
    }

    private void c(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if ("SUCCESS".equalsIgnoreCase(jSONObject.getString("status"))) {
                JSONObject jSONObject2 = jSONObject.getJSONObject(DbParams.KEY_DATA);
                if (ReferenceApiV3ConstKt.OS_NAME.equalsIgnoreCase(jSONObject2.getString("os"))) {
                    String string = jSONObject2.getString("version");
                    if (TextUtils.isEmpty(string) || !ak.a(string, NBSAgent.getVersion())) {
                        return;
                    }
                    this.d.a("本信息仅在调试模式下显示：\r\n最新SDK版本为" + string + ",请更新。\r\n新版本详情:\r\n" + jSONObject2.getString("releaseNote"));
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return n00.r(com.networkbench.agent.impl.util.r.u().f38395f, "/info/android.json", new StringBuilder("https://"));
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void b(HttpURLConnection httpURLConnection) {
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        cVar.b(str);
        c(str);
        return super.a(str, cVar);
    }
}
