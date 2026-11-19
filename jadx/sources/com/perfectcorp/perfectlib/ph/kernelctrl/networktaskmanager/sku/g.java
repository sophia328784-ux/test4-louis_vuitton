package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku;

import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.NetworkManager;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.task.BaseResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes3.dex */
public final class g extends BaseResponse {
    public final Collection d;

    public g(String str) throws JSONException, IOException {
        JSONArray jSONArrayOptJSONArray;
        super(str);
        if (this.f41995c != NetworkManager.ResponseStatus.OK) {
            this.d = null;
            return;
        }
        String strOptString = this.f41994b.optString("skus", null);
        if (strOptString.isEmpty() && (jSONArrayOptJSONArray = this.f41994b.optJSONArray("skus")) != null) {
            strOptString = jSONArrayOptJSONArray.toString();
        }
        this.d = (Collection) GsonHelper.f39260a.j(strOptString, new h().f42556b);
    }

    public g() {
        this.d = new ArrayList();
    }
}
