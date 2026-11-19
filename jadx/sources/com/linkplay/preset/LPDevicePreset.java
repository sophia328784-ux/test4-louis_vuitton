package com.linkplay.preset;

import android.text.TextUtils;
import com.android.wiimu.upnp.IWiimuActionCallback;
import com.android.wiimu.upnp.impl.h;
import com.appsflyer.sdk_base.referrer.Payload;
import com.linkplay.core.clingx.LPDlnaPlayerData;
import com.linkplay.core.device.LPDevice;
import com.linkplay.network.HttpRequestUtils;
import com.linkplay.network.IOkHttpRequestCallback;
import com.linkplay.network.OkHttpResponseItem;
import com.linkplay.request.RequestItem;
import defpackage.n00;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes2.dex */
public class LPDevicePreset {
    private LPDevice lpDevice;

    public LPDevicePreset(LPDevice lPDevice) {
        this.lpDevice = lPDevice;
    }

    private void backupQueue(String str, IWiimuActionCallback iWiimuActionCallback) {
        Device device = getDevice();
        if (device == null) {
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(new Exception("backup queue device is empty"));
            }
        } else if (TextUtils.isEmpty(str)) {
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(new Exception("backup queue context is empty"));
            }
        } else {
            try {
                h.b().backupQueue(str, device, iWiimuActionCallback);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private Device getDevice() {
        if (this.lpDevice == null) {
            return null;
        }
        return LPDlnaPlayerData.me().getMediaRenderByuuid(this.lpDevice.getUpnpUUID());
    }

    private void getKeyMapping(final LPPresetListener lPPresetListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPPresetListener != null) {
                lPPresetListener.onFail(new Exception("get key mapping device is empty"));
            }
        } else {
            try {
                h.b().getKeyMapping(device, new IWiimuActionCallback(this) { // from class: com.linkplay.preset.LPDevicePreset.4
                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void failure(Exception exc) {
                        LPPresetListener lPPresetListener2 = lPPresetListener;
                        if (lPPresetListener2 != null) {
                            lPPresetListener2.onFail(exc);
                        }
                    }

                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void success(Map map) {
                        if (map != null && map.containsKey("QueueContext")) {
                            String string = map.get("QueueContext").toString();
                            LPPresetListener lPPresetListener2 = lPPresetListener;
                            if (lPPresetListener2 != null) {
                                lPPresetListener2.onSuccess(string);
                                return;
                            }
                            return;
                        }
                        LPPresetListener lPPresetListener3 = lPPresetListener;
                        if (lPPresetListener3 != null) {
                            lPPresetListener3.onFail(new Exception("KeyMapping Context Error:" + map));
                        }
                    }
                });
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private void setSpotifyPreset(int i2, final String str, final LPPresetListener lPPresetListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPPresetListener != null) {
                lPPresetListener.onFail(new Exception("set spotify device is empty"));
            }
        } else if (i2 < 0) {
            if (lPPresetListener != null) {
                lPPresetListener.onFail(new Exception("set spotify preset index < 0"));
            }
        } else {
            try {
                h.b().setSpotifyPreset(i2 + 1, device, new IWiimuActionCallback() { // from class: com.linkplay.preset.LPDevicePreset.2
                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void failure(Exception exc) {
                        LPPresetListener lPPresetListener2 = lPPresetListener;
                        if (lPPresetListener2 != null) {
                            lPPresetListener2.onFail(exc);
                        }
                    }

                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void success(Map map) {
                        if (map == null || !map.containsKey("Result")) {
                            LPPresetListener lPPresetListener2 = lPPresetListener;
                            if (lPPresetListener2 != null) {
                                lPPresetListener2.onFail(new Exception("Preset Spotify failed."));
                                return;
                            }
                            return;
                        }
                        try {
                            String string = map.get("Result").toString();
                            if (string == null || string.trim().length() <= 0) {
                                return;
                            }
                            StringBuffer stringBuffer = new StringBuffer();
                            int iIndexOf = str.indexOf("<Key2>");
                            stringBuffer.append(str.substring(0, iIndexOf));
                            stringBuffer.append("<Key2>");
                            int iIndexOf2 = str.indexOf("</Key2>");
                            String strSubstring = str.substring(iIndexOf + 6, iIndexOf2);
                            int iIndexOf3 = strSubstring.indexOf("<Name>");
                            int iIndexOf4 = strSubstring.indexOf("</Name>");
                            int i3 = iIndexOf3 + 6;
                            String strSubstring2 = strSubstring.substring(i3, iIndexOf4);
                            if (TextUtils.isEmpty(strSubstring2)) {
                                stringBuffer.append(strSubstring.substring(0, i3));
                                stringBuffer.append(string);
                                stringBuffer.append(strSubstring.substring(iIndexOf4));
                            } else {
                                stringBuffer.append(strSubstring.replace(strSubstring2, string));
                            }
                            stringBuffer.append(str.substring(iIndexOf2));
                            LPDevicePreset.this.setkeyMapping(stringBuffer.toString(), lPPresetListener);
                        } catch (Exception e2) {
                            LPPresetListener lPPresetListener3 = lPPresetListener;
                            if (lPPresetListener3 != null) {
                                lPPresetListener3.onFail(e2);
                            }
                        }
                    }
                });
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setkeyMapping(String str, final LPPresetListener lPPresetListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPPresetListener != null) {
                lPPresetListener.onFail(new Exception("set key mapping device is empty"));
            }
        } else {
            try {
                h.b().setKeyMapping(str, device, new IWiimuActionCallback(this) { // from class: com.linkplay.preset.LPDevicePreset.3
                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void failure(Exception exc) {
                        LPPresetListener lPPresetListener2 = lPPresetListener;
                        if (lPPresetListener2 != null) {
                            lPPresetListener2.onFail(exc);
                        }
                    }

                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void success(Map map) {
                        LPPresetListener lPPresetListener2 = lPPresetListener;
                        if (lPPresetListener2 != null) {
                            lPPresetListener2.onSuccess(map.toString());
                        }
                    }
                });
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void deletePreset(String str, LPPresetListener lPPresetListener) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("backupQueue") && jSONObject.has("keyMapping")) {
                setPreset(jSONObject.getString("backupQueue"), jSONObject.getString("keyMapping"), lPPresetListener);
            } else if (lPPresetListener != null) {
                lPPresetListener.onFail(new Exception("Preset message error"));
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
            if (lPPresetListener != null) {
                lPPresetListener.onFail(e2);
            }
        }
    }

    public int getMaxPresetNum() {
        LPDevice lPDevice = this.lpDevice;
        if (lPDevice == null) {
            return 0;
        }
        return lPDevice.getDeviceStatus().getPresetKey();
    }

    public void getPresets(LPPresetListener lPPresetListener) {
        getKeyMapping(lPPresetListener);
    }

    public void playPreset(int i2, final LPPresetListener lPPresetListener) {
        if (this.lpDevice == null) {
            if (lPPresetListener != null) {
                lPPresetListener.onFail(new Exception("play preset device is empty"));
                return;
            }
            return;
        }
        RequestItem requestItemL = n00.l(this.lpDevice, n00.k(this.lpDevice, new RequestItem.Builder()));
        HttpRequestUtils.getRequestUtils(requestItemL).get(HttpRequestUtils.getRequestPrefix(requestItemL) + "MCUKeyShortClick:" + i2, new IOkHttpRequestCallback(this) { // from class: com.linkplay.preset.LPDevicePreset.5
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                LPPresetListener lPPresetListener2 = lPPresetListener;
                if (lPPresetListener2 != null) {
                    lPPresetListener2.onFail(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("err"));
                    return;
                }
                String str = new String(okHttpResponseItem.bytes);
                LPPresetListener lPPresetListener2 = lPPresetListener;
                if (lPPresetListener2 != null) {
                    lPPresetListener2.onSuccess(str);
                }
            }
        });
    }

    public void setPreset(String str, LPPresetListener lPPresetListener) {
        if (getDevice() == null) {
            if (lPPresetListener != null) {
                lPPresetListener.onFail(new Exception("set spotify device is empty"));
                return;
            }
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has("backupQueue") || !jSONObject.has("keyMapping")) {
                if (lPPresetListener != null) {
                    lPPresetListener.onFail(new Exception("Preset message error"));
                    return;
                }
                return;
            }
            String string = jSONObject.getString("backupQueue");
            String string2 = jSONObject.getString("keyMapping");
            String string3 = jSONObject.has(Payload.SOURCE) ? jSONObject.getString(Payload.SOURCE) : "";
            if (!this.lpDevice.getMediaInfo().getMediaType().equals("SPOTIFY") && !TextUtils.equals(string3, "SPOTIFY")) {
                setPreset(string, string2, lPPresetListener);
                return;
            }
            setSpotifyPreset(jSONObject.has("index") ? jSONObject.getInt("index") : 0, string2, lPPresetListener);
        } catch (JSONException e2) {
            e2.printStackTrace();
            if (lPPresetListener != null) {
                lPPresetListener.onFail(e2);
            }
        }
    }

    private void setPreset(String str, final String str2, final LPPresetListener lPPresetListener) {
        if (TextUtils.isEmpty(str)) {
            setkeyMapping(str2, lPPresetListener);
        } else {
            backupQueue(str, new IWiimuActionCallback() { // from class: com.linkplay.preset.LPDevicePreset.1
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPPresetListener lPPresetListener2 = lPPresetListener;
                    if (lPPresetListener2 != null) {
                        lPPresetListener2.onFail(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    LPDevicePreset.this.setkeyMapping(str2, lPPresetListener);
                }
            });
        }
    }
}
