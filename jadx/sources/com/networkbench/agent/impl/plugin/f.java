package com.networkbench.agent.impl.plugin;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class f implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f38045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f38046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JSONArray f38047c;

    public f(JSONObject jSONObject, String str) {
        this.f38045a = jSONObject;
        this.f38046b = str;
    }

    @Override // com.networkbench.agent.impl.plugin.a
    public boolean a(com.networkbench.agent.impl.plugin.f.i iVar) {
        try {
            com.networkbench.agent.impl.c.g.e("  sceneSubject type: " + iVar.f38064e.name());
            if (this.f38047c != null) {
                com.networkbench.agent.impl.c.g.e("  checkErrCode : " + this.f38047c.length());
                com.networkbench.agent.impl.c.g.e("  checkErrCode : " + this.f38047c.toString());
                if (iVar instanceof com.networkbench.agent.impl.plugin.f.c) {
                    com.networkbench.agent.impl.data.f fVarB = ((com.networkbench.agent.impl.plugin.f.c) iVar).b();
                    com.networkbench.agent.impl.c.g.e("  errorData  url  : " + fVarB.j());
                    com.networkbench.agent.impl.c.g.e("  errorData  code  : " + fVarB.k());
                    boolean z = false;
                    for (int i2 = 0; i2 < this.f38047c.length(); i2++) {
                        int iIntValue = Integer.valueOf(this.f38047c.getString(i2)).intValue();
                        com.networkbench.agent.impl.c.g.e("  arrayCodes  code  : " + iIntValue);
                        if (fVarB.k() == iIntValue) {
                            z = true;
                        }
                    }
                    return z;
                }
            }
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    @Override // com.networkbench.agent.impl.plugin.a
    public boolean a() {
        try {
            JSONObject jSONObject = this.f38045a;
            if (jSONObject == null || jSONObject.optJSONObject(ConfigurationName.CLIENT_CONDITION) == null) {
                return true;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(ConfigurationName.CLIENT_CONDITION);
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("host");
            try {
                this.f38047c = jSONObjectOptJSONObject.optJSONArray(ConfigurationName.Error_Code);
            } catch (Throwable th) {
                com.networkbench.agent.impl.c.g.e("  sceneSubject isClientConditionAvalid  arrayCodes: " + th.getMessage());
            }
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                String strOptString = jSONObject.optString("host");
                String str = this.f38046b;
                if (str != null) {
                    strOptString = str;
                }
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    if (strOptString.contains(jSONArrayOptJSONArray.optString(i2))) {
                        return true;
                    }
                }
                return false;
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
