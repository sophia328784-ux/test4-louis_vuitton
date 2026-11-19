package com.networkbench.agent.impl.session.network;

import com.networkbench.agent.impl.instrumentation.callback.INBSNetworkBody;
import com.networkbench.agent.impl.instrumentation.callback.INBSNetworkHeader;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonObject;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class NBSNetworkCallbackManager {
    private static final String TAG = "NBSNetworkCallbackManager";
    public static NBSNetworkCallbackManager instance = new NBSNetworkCallbackManager();
    private boolean enableNetworkContentRecord = false;
    private INBSNetworkBody requestBodyCallback;
    private INBSNetworkHeader requestHeaderCallback;
    private INBSNetworkBody respBodyCallback;
    private INBSNetworkHeader respHeaderCallback;

    public JsonObject headerToJsonObj(Map<String, String> map) {
        JsonObject jsonObject = new JsonObject();
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getKey() != null && entry.getValue() != null) {
                    jsonObject.addProperty(entry.getKey(), entry.getValue());
                }
            }
        }
        return jsonObject;
    }

    public String invokeRequestBodyCallback(String str, String str2) {
        INBSNetworkBody iNBSNetworkBody;
        if (str == null || str2 == null || (iNBSNetworkBody = this.requestBodyCallback) == null) {
            return str2 == null ? "" : str2;
        }
        if (iNBSNetworkBody != null) {
            str2 = iNBSNetworkBody.processBody(str, str2);
        }
        return str2 == null ? "" : str2;
    }

    public JsonObject invokeRequestHeaderCallback(String str, Map<String, String> map) {
        INBSNetworkHeader iNBSNetworkHeader;
        if (str == null || map == null || (iNBSNetworkHeader = this.requestHeaderCallback) == null) {
            return new JsonObject();
        }
        if (iNBSNetworkHeader != null) {
            map = iNBSNetworkHeader.processHeaderMap(str, map);
        }
        return headerToJsonObj(map);
    }

    public String invokeRespBodyCallback(String str, String str2) {
        INBSNetworkBody iNBSNetworkBody;
        if (str == null || str2 == null || (iNBSNetworkBody = this.respBodyCallback) == null) {
            return str2 == null ? "" : str2;
        }
        if (iNBSNetworkBody != null) {
            str2 = iNBSNetworkBody.processBody(str, str2);
        }
        return str2 == null ? "" : str2;
    }

    public JsonObject invokeRespHeaderCallback(String str, Map<String, String> map) {
        INBSNetworkHeader iNBSNetworkHeader;
        if (str == null || map == null || (iNBSNetworkHeader = this.respHeaderCallback) == null) {
            return new JsonObject();
        }
        if (iNBSNetworkHeader != null) {
            map = iNBSNetworkHeader.processHeaderMap(str, map);
        }
        return headerToJsonObj(map);
    }

    public boolean isEnableNetworkContentRecord() {
        return this.enableNetworkContentRecord && r.u().aA().b();
    }

    public boolean isRequestBodyCallbackEnabled() {
        return this.requestBodyCallback != null && isEnableNetworkContentRecord();
    }

    public boolean isRequestHeaderCallbackEnabled() {
        return this.requestHeaderCallback != null && isEnableNetworkContentRecord();
    }

    public boolean isRespBodyCallbackEnabled() {
        return this.respBodyCallback != null && isEnableNetworkContentRecord();
    }

    public boolean isRespHeaderCallbackEnabled() {
        return this.respHeaderCallback != null && isEnableNetworkContentRecord();
    }

    public void setEnableNetworkContentRecord(boolean z) {
        this.enableNetworkContentRecord = z;
    }

    public void setRequestBodyCallback(INBSNetworkBody iNBSNetworkBody) {
        this.requestBodyCallback = iNBSNetworkBody;
    }

    public void setRequestHeaderCallback(INBSNetworkHeader iNBSNetworkHeader) {
        this.requestHeaderCallback = iNBSNetworkHeader;
    }

    public void setRespBodyCallback(INBSNetworkBody iNBSNetworkBody) {
        this.respBodyCallback = iNBSNetworkBody;
    }

    public void setRespHeaderCallback(INBSNetworkHeader iNBSNetworkHeader) {
        this.respHeaderCallback = iNBSNetworkHeader;
    }
}
