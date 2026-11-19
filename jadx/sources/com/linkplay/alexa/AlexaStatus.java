package com.linkplay.alexa;

import com.android.wiimu.upnp.IWiimuActionCallback;
import com.android.wiimu.upnp.impl.h;
import com.linkplay.core.clingx.LPDlnaPlayerData;

/* JADX INFO: loaded from: classes2.dex */
public class AlexaStatus {
    public static void getAlexaStatus(String str, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        h.b().getUserInfo(LPDlnaPlayerData.me().getMediaRenderByuuid(str), "ALEXA", iWiimuActionCallback);
    }
}
