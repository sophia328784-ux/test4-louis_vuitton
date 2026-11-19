package com.linkplay.alarm;

import android.text.TextUtils;
import com.android.wiimu.model.cling_callback.renderingcontrol.alarm.a;
import com.android.wiimu.upnp.IWiimuActionCallback;
import com.android.wiimu.upnp.impl.h;
import com.linkplay.core.clingx.LPDlnaPlayerData;
import com.linkplay.core.device.LPDevice;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes2.dex */
public class LPDeviceAlarm {
    private LPDevice lpDevice;

    public LPDeviceAlarm(LPDevice lPDevice) {
        this.lpDevice = lPDevice;
    }

    private void backupQueue(String str, IWiimuActionCallback iWiimuActionCallback) {
        Device device = getDevice();
        if (device == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            h.b().backupQueue(str, device, iWiimuActionCallback);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void getAlarmQueue(IWiimuActionCallback iWiimuActionCallback) {
        Device device = getDevice();
        if (device == null) {
            return;
        }
        try {
            h.c().getAlarmQueue(a.f22420c, device, iWiimuActionCallback);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private Device getDevice() {
        if (this.lpDevice == null) {
            return null;
        }
        return LPDlnaPlayerData.me().getMediaRenderByuuid(this.lpDevice.getUpnpUUID());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAlarmQueue(String str, final LPAlarmListener lPAlarmListener) {
        Device device = getDevice();
        if (device == null) {
            return;
        }
        try {
            h.c().setAlarmQueue(str, device, new IWiimuActionCallback(this) { // from class: com.linkplay.alarm.LPDeviceAlarm.3
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPAlarmListener lPAlarmListener2 = lPAlarmListener;
                    if (lPAlarmListener2 != null) {
                        lPAlarmListener2.onFail(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    LPAlarmListener lPAlarmListener2 = lPAlarmListener;
                    if (lPAlarmListener2 != null) {
                        lPAlarmListener2.onSuccess(map.toString());
                    }
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void addAlarm(String str, final LPAlarmListener lPAlarmListener) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has("backupQueue") || !jSONObject.has("keyMapping")) {
                if (lPAlarmListener != null) {
                    lPAlarmListener.onFail(new Exception("Alarm message error"));
                }
            } else {
                String string = jSONObject.getString("backupQueue");
                final String string2 = jSONObject.getString("keyMapping");
                if (TextUtils.isEmpty(string)) {
                    setAlarmQueue(string2, lPAlarmListener);
                } else {
                    backupQueue(string, new IWiimuActionCallback() { // from class: com.linkplay.alarm.LPDeviceAlarm.2
                        @Override // com.android.wiimu.upnp.IWiimuActionCallback
                        public void failure(Exception exc) {
                            LPAlarmListener lPAlarmListener2 = lPAlarmListener;
                            if (lPAlarmListener2 != null) {
                                lPAlarmListener2.onFail(exc);
                            }
                        }

                        @Override // com.android.wiimu.upnp.IWiimuActionCallback
                        public void success(Map map) {
                            LPDeviceAlarm.this.setAlarmQueue(string2, lPAlarmListener);
                        }
                    });
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
            if (lPAlarmListener != null) {
                lPAlarmListener.onFail(e2);
            }
        }
    }

    public void deleteAlarm(String str, final LPAlarmListener lPAlarmListener) {
        Device device = getDevice();
        if (device == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            h.c().deleteAlarmQueue(str, device, new IWiimuActionCallback(this) { // from class: com.linkplay.alarm.LPDeviceAlarm.4
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPAlarmListener lPAlarmListener2 = lPAlarmListener;
                    if (lPAlarmListener2 != null) {
                        lPAlarmListener2.onFail(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    LPAlarmListener lPAlarmListener2 = lPAlarmListener;
                    if (lPAlarmListener2 != null) {
                        lPAlarmListener2.onSuccess(map.toString());
                    }
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void editAlarm(String str, LPAlarmListener lPAlarmListener) {
        addAlarm(str, lPAlarmListener);
    }

    public void getAlarms(final LPAlarmListener lPAlarmListener) {
        getAlarmQueue(new IWiimuActionCallback(this) { // from class: com.linkplay.alarm.LPDeviceAlarm.1
            @Override // com.android.wiimu.upnp.IWiimuActionCallback
            public void failure(Exception exc) {
                LPAlarmListener lPAlarmListener2 = lPAlarmListener;
                if (lPAlarmListener2 != null) {
                    lPAlarmListener2.onFail(exc);
                }
            }

            @Override // com.android.wiimu.upnp.IWiimuActionCallback
            public void success(Map map) {
                if (map != null && map.containsKey("AlarmContext")) {
                    String string = map.get("AlarmContext").toString();
                    LPAlarmListener lPAlarmListener2 = lPAlarmListener;
                    if (lPAlarmListener2 != null) {
                        lPAlarmListener2.onSuccess(string);
                        return;
                    }
                    return;
                }
                LPAlarmListener lPAlarmListener3 = lPAlarmListener;
                if (lPAlarmListener3 != null) {
                    lPAlarmListener3.onFail(new Exception("AlarmContext Error:" + map));
                }
            }
        });
    }

    public void setAlarmSwitchOn(String str, LPAlarmListener lPAlarmListener) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        addAlarm(str, lPAlarmListener);
    }
}
