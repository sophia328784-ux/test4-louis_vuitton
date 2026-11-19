package com.linkplay.tvs;

import android.text.TextUtils;
import com.linkplay.core.device.LPDevice;
import com.linkplay.network.HttpRequestUtils;
import com.linkplay.network.IOkHttpRequestCallback;
import com.linkplay.network.OkHttpDataUtil;
import com.linkplay.network.OkHttpResponseItem;
import com.linkplay.request.RequestItem;
import defpackage.n00;
import lv.nfc.reader.utils.LVConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class LPTVSManager {
    private static LPTVSManager instance;

    private LPTVSManager() {
    }

    public static LPTVSManager getInstance() {
        if (instance == null) {
            synchronized (LPTVSManager.class) {
                try {
                    if (instance == null) {
                        instance = new LPTVSManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private RequestItem getRequestItem(LPDevice lPDevice) {
        return n00.l(lPDevice, new RequestItem.Builder().ip(lPDevice.getIp()));
    }

    public void getTvsProfile(final LPDevice lPDevice, final GetTvsProfileCallback getTvsProfileCallback) {
        RequestItem requestItem = getRequestItem(lPDevice);
        String tvsProfileUrl = LPTVSRequestUrl.getTvsProfileUrl(requestItem);
        HttpRequestUtils.getRequestUtils(requestItem).get(OkHttpDataUtil.getHeaders(), tvsProfileUrl, new IOkHttpRequestCallback(this) { // from class: com.linkplay.tvs.LPTVSManager.1
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                GetTvsProfileCallback getTvsProfileCallback2 = getTvsProfileCallback;
                if (getTvsProfileCallback2 != null) {
                    getTvsProfileCallback2.onFailure(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                String strDecrypt = DecryptUtil.decrypt(new String(okHttpResponseItem.bytes), lPDevice.getDeviceStatus().getUUID().substring(0, 16));
                if (getTvsProfileCallback != null) {
                    TvsProfile tvsProfile = new TvsProfile();
                    tvsProfile.setDsn(lPDevice.getDeviceStatus().getUUID());
                    if (TextUtils.isEmpty(strDecrypt) || TextUtils.equals(strDecrypt, "unknown command") || TextUtils.equals(strDecrypt, "Failed")) {
                        onFailure(new Exception(strDecrypt));
                        return;
                    }
                    try {
                        JSONObject jSONObject = new JSONObject(strDecrypt);
                        if (jSONObject.has(LVConstants.LV_CLIENT_SECRET_KEY)) {
                            tvsProfile.setProductID(jSONObject.getString(LVConstants.LV_CLIENT_SECRET_KEY));
                        }
                        if (jSONObject.has(LVConstants.LV_CLIENT_ID_KEY)) {
                            tvsProfile.setClientID(jSONObject.getString(LVConstants.LV_CLIENT_ID_KEY));
                        }
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                    getTvsProfileCallback.onSuccess(tvsProfile);
                }
            }
        });
    }
}
