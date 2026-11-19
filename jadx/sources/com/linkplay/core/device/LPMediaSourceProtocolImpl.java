package com.linkplay.core.device;

import android.text.TextUtils;
import com.android.wiimu.upnp.IWiimuActionCallback;
import com.android.wiimu.upnp.impl.h;
import com.android.wiimu.utils.GsonUtil;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.clingx.LPDlnaPlayerData;
import com.linkplay.lpmdpkit.LPMediaSourceProtocol;
import com.linkplay.lpmdpkit.bean.DeviceStreamServices;
import com.linkplay.lpmdpkit.callback.DeviceCallback;
import com.linkplay.lpmdpkit.okhttp.HttpMethod;
import com.linkplay.lpmdpkit.utils.LPMSUtil;
import com.linkplay.network.HttpRequestUtils;
import com.linkplay.network.OkHttpResponseItem;
import com.linkplay.request.RequestItem;
import defpackage.n00;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;
import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes2.dex */
public class LPMediaSourceProtocolImpl implements LPMediaSourceProtocol {
    private Device getDevice(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return LPDlnaPlayerData.me().getMediaRenderByuuid(LPMSUtil.getUpnpUUID(str));
    }

    @Override // com.linkplay.lpmdpkit.LPMediaSourceProtocol
    public void LPCommonHTTPMethod(String str, String str2, String str3, final DeviceCallback deviceCallback) {
        LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(LPMSUtil.getUpnpUUID(str));
        if (lPDeviceDeviceForID == null) {
            return;
        }
        RequestItem requestItemL = n00.l(lPDeviceDeviceForID, n00.k(lPDeviceDeviceForID, new RequestItem.Builder()));
        HttpRequestUtils.getRequestUtils(requestItemL).get(n00.n(requestItemL, new StringBuilder(), str3), new HttpRequestUtils.ResultCallback(this) { // from class: com.linkplay.core.device.LPMediaSourceProtocolImpl.5
            @Override // com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                StringBuilder sb = new StringBuilder("get user command failed: ");
                sb.append(exc != null ? exc.getLocalizedMessage() : "");
                String string = sb.toString();
                DeviceCallback deviceCallback2 = deviceCallback;
                if (deviceCallback2 != null) {
                    deviceCallback2.onError(string);
                }
            }

            @Override // com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                String str4 = new String(okHttpResponseItem.bytes);
                DeviceCallback deviceCallback2 = deviceCallback;
                if (deviceCallback2 != null) {
                    deviceCallback2.onSuccess(str4);
                }
            }
        });
    }

    @Override // com.linkplay.lpmdpkit.LPMediaSourceProtocol
    public void LPGetUserInfoWithDeviceId(String str, String str2, final DeviceCallback deviceCallback) {
        Device device = getDevice(str);
        if (device == null) {
            if (deviceCallback != null) {
                deviceCallback.onError("null device exception");
                return;
            }
            return;
        }
        try {
            h.b().getUserInfo(device, str2, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPMediaSourceProtocolImpl.1
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    StringBuilder sb = new StringBuilder("get user info failed: ");
                    sb.append(exc != null ? exc.getLocalizedMessage() : "");
                    String string = sb.toString();
                    DeviceCallback deviceCallback2 = deviceCallback;
                    if (deviceCallback2 != null) {
                        deviceCallback2.onError(string);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    if (map == null || !map.containsKey("Result")) {
                        failure(new Exception("get user info result error"));
                        return;
                    }
                    String string = map.get("Result").toString();
                    DeviceCallback deviceCallback2 = deviceCallback;
                    if (deviceCallback2 != null) {
                        deviceCallback2.onSuccess(string);
                    }
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            String str3 = "get user info failed: " + e2.getLocalizedMessage();
            if (deviceCallback != null) {
                deviceCallback.onError(str3);
            }
        }
    }

    @Override // com.linkplay.lpmdpkit.LPMediaSourceProtocol
    public String LPIpAddressWithDeviceId(String str) {
        LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(str);
        return (lPDeviceDeviceForID == null || lPDeviceDeviceForID.getDeviceStatus() == null) ? "" : lPDeviceDeviceForID.getDeviceStatus().getIP();
    }

    @Override // com.linkplay.lpmdpkit.LPMediaSourceProtocol
    public void LPLogOutWithDeviceId(String str, String str2, final DeviceCallback deviceCallback) {
        Device device = getDevice(str);
        if (device == null) {
            if (deviceCallback != null) {
                deviceCallback.onError("null device exception");
                return;
            }
            return;
        }
        try {
            h.b().getUserLogout(device, str2, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPMediaSourceProtocolImpl.4
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    StringBuilder sb = new StringBuilder("get user logout failed: ");
                    sb.append(exc != null ? exc.getLocalizedMessage() : "");
                    String string = sb.toString();
                    DeviceCallback deviceCallback2 = deviceCallback;
                    if (deviceCallback2 != null) {
                        deviceCallback2.onError(string);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    if (map == null || !map.containsKey("Result")) {
                        failure(new Exception("get user logout result error"));
                        return;
                    }
                    String string = map.get("Result").toString();
                    DeviceCallback deviceCallback2 = deviceCallback;
                    if (deviceCallback2 != null) {
                        deviceCallback2.onSuccess(string);
                    }
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            String str3 = "get user logout failed: " + e2.getLocalizedMessage();
            if (deviceCallback != null) {
                deviceCallback.onError(str3);
            }
        }
    }

    @Override // com.linkplay.lpmdpkit.LPMediaSourceProtocol
    public String LPNewTuneInPresetAndAlarmWithDeviceId(String str) {
        LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(str);
        return (lPDeviceDeviceForID == null || lPDeviceDeviceForID.getDeviceStatus() == null) ? "" : lPDeviceDeviceForID.getDeviceStatus().getNew_tunein_preset_and_alarm();
    }

    @Override // com.linkplay.lpmdpkit.LPMediaSourceProtocol
    public int LPPresetKeyWithDeviceId(String str) {
        LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(str);
        if (lPDeviceDeviceForID == null || lPDeviceDeviceForID.getDeviceStatus() == null) {
            return 0;
        }
        return lPDeviceDeviceForID.getDeviceStatus().getPresetKey();
    }

    @Override // com.linkplay.lpmdpkit.LPMediaSourceProtocol
    public DeviceStreamServices LPStreamServiceCapability(String str) {
        LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(LPMSUtil.getUpnpUUID(str));
        if (lPDeviceDeviceForID != null) {
            return lPDeviceDeviceForID.getDeviceStreamServices();
        }
        return null;
    }

    @Override // com.linkplay.lpmdpkit.LPMediaSourceProtocol
    public void sendCommand(String str, String str2, String str3, HttpMethod httpMethod, String str4, final DeviceCallback deviceCallback) {
        LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(str);
        if (lPDeviceDeviceForID == null) {
            return;
        }
        List<HttpRequestUtils.Param> jsonToList = GsonUtil.parseJsonToList(str4, (Type) HttpRequestUtils.Param.class);
        RequestItem requestItemL = n00.l(lPDeviceDeviceForID, n00.k(lPDeviceDeviceForID, new RequestItem.Builder()));
        String strN = n00.n(requestItemL, new StringBuilder(), str3);
        HttpRequestUtils requestUtils = HttpRequestUtils.getRequestUtils(requestItemL);
        if (httpMethod == HttpMethod.GET) {
            requestUtils.get(jsonToList, strN, new HttpRequestUtils.ResultCallback(this) { // from class: com.linkplay.core.device.LPMediaSourceProtocolImpl.6
                @Override // com.linkplay.network.HttpRequestUtils.ResultCallback
                public void onFailure(Exception exc) {
                    StringBuilder sb = new StringBuilder("send command failed: ");
                    sb.append(exc != null ? exc.getLocalizedMessage() : "");
                    String string = sb.toString();
                    DeviceCallback deviceCallback2 = deviceCallback;
                    if (deviceCallback2 != null) {
                        deviceCallback2.onError(string);
                    }
                }

                @Override // com.linkplay.network.HttpRequestUtils.ResultCallback
                public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                    String str5 = new String(okHttpResponseItem.bytes);
                    DeviceCallback deviceCallback2 = deviceCallback;
                    if (deviceCallback2 != null) {
                        deviceCallback2.onSuccess(str5);
                    }
                }
            });
        } else if (httpMethod == HttpMethod.POST) {
            requestUtils.post(strN, new HttpRequestUtils.ResultCallback(this) { // from class: com.linkplay.core.device.LPMediaSourceProtocolImpl.7
                @Override // com.linkplay.network.HttpRequestUtils.ResultCallback
                public void onFailure(Exception exc) {
                    StringBuilder sb = new StringBuilder("send command failed: ");
                    sb.append(exc != null ? exc.getLocalizedMessage() : "");
                    String string = sb.toString();
                    DeviceCallback deviceCallback2 = deviceCallback;
                    if (deviceCallback2 != null) {
                        deviceCallback2.onError(string);
                    }
                }

                @Override // com.linkplay.network.HttpRequestUtils.ResultCallback
                public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                    String str5 = new String(okHttpResponseItem.bytes);
                    DeviceCallback deviceCallback2 = deviceCallback;
                    if (deviceCallback2 != null) {
                        deviceCallback2.onSuccess(str5);
                    }
                }
            }, jsonToList);
        }
    }

    @Override // com.linkplay.lpmdpkit.LPMediaSourceProtocol
    public void LPGetUserInfoWithDeviceId(String str, String str2, boolean z, final DeviceCallback deviceCallback) {
        Device device = getDevice(str);
        if (device == null) {
            if (deviceCallback != null) {
                deviceCallback.onError("null device exception");
                return;
            }
            return;
        }
        try {
            h.b().getUserInfo(device, str2, z, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPMediaSourceProtocolImpl.2
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    StringBuilder sb = new StringBuilder("get user info failed: ");
                    sb.append(exc != null ? exc.getLocalizedMessage() : "");
                    String string = sb.toString();
                    DeviceCallback deviceCallback2 = deviceCallback;
                    if (deviceCallback2 != null) {
                        deviceCallback2.onError(string);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    if (map == null || !map.containsKey("Result")) {
                        failure(new Exception("get user info result error"));
                        return;
                    }
                    String string = map.get("Result").toString();
                    DeviceCallback deviceCallback2 = deviceCallback;
                    if (deviceCallback2 != null) {
                        deviceCallback2.onSuccess(string);
                    }
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            String str3 = "get user info failed: " + e2.getLocalizedMessage();
            if (deviceCallback != null) {
                deviceCallback.onError(str3);
            }
        }
    }

    @Override // com.linkplay.lpmdpkit.LPMediaSourceProtocol
    public void LPGetUserInfoWithDeviceId(String str, String str2, String str3, final DeviceCallback deviceCallback) {
        Device device = getDevice(str);
        if (device == null) {
            if (deviceCallback != null) {
                deviceCallback.onError("null device exception");
                return;
            }
            return;
        }
        try {
            h.b().getUserInfo(device, str2, str3, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPMediaSourceProtocolImpl.3
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    StringBuilder sb = new StringBuilder("get user info failed: ");
                    sb.append(exc != null ? exc.getLocalizedMessage() : "");
                    String string = sb.toString();
                    DeviceCallback deviceCallback2 = deviceCallback;
                    if (deviceCallback2 != null) {
                        deviceCallback2.onError(string);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    if (map == null || !map.containsKey("Result")) {
                        failure(new Exception("get user info result error"));
                        return;
                    }
                    String string = map.get("Result").toString();
                    DeviceCallback deviceCallback2 = deviceCallback;
                    if (deviceCallback2 != null) {
                        deviceCallback2.onSuccess(string);
                    }
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            String str4 = "get user info failed: " + e2.getLocalizedMessage();
            if (deviceCallback != null) {
                deviceCallback.onError(str4);
            }
        }
    }
}
