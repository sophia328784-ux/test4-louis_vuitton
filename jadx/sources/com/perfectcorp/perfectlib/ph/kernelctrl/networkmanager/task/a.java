package com.perfectcorp.perfectlib.ph.kernelctrl.networkmanager.task;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.NetworkManager;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.task.BaseResponse;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends BaseResponse {
    public final ArrayList d;

    public a(String str) throws JSONException, IOException {
        super(str);
        this.d = new ArrayList();
        if (this.f41995c != NetworkManager.ResponseStatus.OK) {
            return;
        }
        JSONArray jSONArray = this.f41994b.getJSONArray("itemList");
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                this.d.add(new b((JSONObject) jSONArray.get(i2)));
            } catch (ParseException e2) {
                Log.e("GetMakeupItemListResponse", "Parse MakeupItemMetadata failed.", e2);
            }
        }
    }
}
