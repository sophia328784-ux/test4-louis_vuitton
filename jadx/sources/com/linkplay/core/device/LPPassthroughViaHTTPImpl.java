package com.linkplay.core.device;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.linkplay.lpmdpkit.observer.LPDeviceObserverManager;
import com.linkplay.lpmdpkit.observer.LPNotification;
import com.linkplay.lpmdpkit.observer.LPNotificationType;
import com.linkplay.request.LPNetwork;
import com.linkplay.request.LPNetworkListener;
import defpackage.fc;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class LPPassthroughViaHTTPImpl implements LPPassthroughViaHTTP {
    private String upnpUUID;

    public LPPassthroughViaHTTPImpl(String str) {
        this.upnpUUID = str;
    }

    @Override // com.linkplay.core.device.LPPassthroughViaHTTP
    public void passthroughViaHTTP(String str, String str2, String str3, LPNetworkListener lPNetworkListener) {
        if (!TextUtils.isEmpty(str3)) {
            LPNetwork.getInstance().post(str, null, fc.i("command=", str2, ":", str3), lPNetworkListener);
        } else if (lPNetworkListener != null) {
            lPNetworkListener.onFailure(new Exception("parameter cannot be empty"));
        }
    }

    @Override // com.linkplay.core.device.LPPassthroughViaHTTP
    public void passthroughViaHTTPNotify(String str) {
        HashMap map = new HashMap();
        map.put("info", str);
        LPDeviceObserverManager.getInstance().notifyPassthroughObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.PASSTHROUGH_MESSAGE_CHANGED).setUuid(this.upnpUUID).setPayload(new Gson().toJson(map)).build());
    }
}
