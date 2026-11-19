package com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.task;

import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.NetworkManager;
import java.io.IOException;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class BaseResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JSONObject f41994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NetworkManager.ResponseStatus f41995c;

    public BaseResponse(String str) throws JSONException, IOException {
        this.f41993a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f41994b = jSONObject;
        String string = jSONObject.getString("status");
        this.f41995c = string == null ? NetworkManager.ResponseStatus.ERROR : NetworkManager.ResponseStatus.valueOf(string.toUpperCase(Locale.US));
    }

    public BaseResponse() {
        this.f41993a = null;
        this.f41994b = null;
        this.f41995c = NetworkManager.ResponseStatus.OK;
    }
}
