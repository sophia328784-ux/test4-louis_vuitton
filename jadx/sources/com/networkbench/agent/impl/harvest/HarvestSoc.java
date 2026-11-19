package com.networkbench.agent.impl.harvest;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.a.m;
import com.networkbench.agent.impl.harvest.d.b;
import com.networkbench.agent.impl.harvest.d.c;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.com.google.gson.JsonObject;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class HarvestSoc implements HarvestDataSend {
    private final e log = f.a();

    public static byte[] sendData(byte[] bArr, int i2, String str, String str2) {
        return com.networkbench.agent.impl.j.e.a(bArr, i2, str, str2);
    }

    public static c sendDataInfo(String str, int i2, String str2, String str3) {
        b bVar = new b();
        if (str != null) {
            try {
                byte[] bArrSendData = sendData(str.getBytes("UTF-8"), i2, str2, str3);
                if (bArrSendData != null) {
                    int iC = com.networkbench.agent.impl.j.e.c(bArrSendData);
                    bVar.a(iC);
                    if (iC == 0) {
                        bVar.c("success");
                        return bVar;
                    }
                    bVar.b(iC);
                    bVar.c("error");
                }
            } catch (Exception e2) {
                g.h("sendDataInfo error" + e2.getMessage());
                return bVar;
            }
        }
        return bVar;
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestDataSend
    public c sendConnect(ConnectInformation connectInformation) {
        try {
            b bVar = new b();
            if (connectInformation == null) {
                throw new IllegalArgumentException();
            }
            JsonObject jsonObjectAsSocketJsonObject = connectInformation.asSocketJsonObject();
            this.log.a("init mobile agent  :" + jsonObjectAsSocketJsonObject.toString());
            byte[] bArrSendData = sendData(jsonObjectAsSocketJsonObject.toString().getBytes("UTF-8"), 2, ak.i(), "sign=");
            if (bArrSendData != null) {
                int iC = com.networkbench.agent.impl.j.e.c(bArrSendData);
                this.log.a("init mobile agent response code :" + iC);
                bVar.a(iC);
                if (iC == 0) {
                    bVar.c("success");
                    JSONObject jSONObjectD = com.networkbench.agent.impl.j.e.d(bArrSendData);
                    if (jSONObjectD != null) {
                        HarvestConfiguration harvestConfiguration = new HarvestConfiguration();
                        harvestConfiguration.reconfigurePb(jSONObjectD);
                        bVar.a(harvestConfiguration);
                        return bVar;
                    }
                } else {
                    bVar.b(iC);
                    bVar.c("error");
                }
            }
            return bVar;
        } catch (Throwable th) {
            g.k("HarvestSoc sendConnect has  an error  : " + th);
            return null;
        }
    }

    public void setSocketInfo(c cVar) {
        if (cVar != null) {
            com.networkbench.agent.impl.j.e.a(cVar.p());
            com.networkbench.agent.impl.j.c.a(m.a().f37270b);
            com.networkbench.agent.impl.j.c.b(m.a().f37269a);
        }
    }
}
