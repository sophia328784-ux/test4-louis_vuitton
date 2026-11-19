package com.linkplay.core.device;

import android.text.TextUtils;
import com.android.wiimu.utils.ByteIntConverter;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.clingx.LPSearchControlPoint;
import com.linkplay.core.status.LPInputSource;
import com.linkplay.medialib.ContentTree;
import com.linkplay.network.IOkHttpRequestCallback;
import com.linkplay.network.OkHttpResponseItem;
import com.linkplay.request.LPRequestAction;
import com.linkplay.request.RequestItem;
import com.lp.ble.utils.AesCBC;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import defpackage.n00;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class LPDeviceSettingsImpl implements LPDeviceSettings {
    private String upnpUUID;

    public final class CountDownTimer extends Timer {
        LPDeviceSettingsListener listener;
        String uuid;
        AtomicInteger count = new AtomicInteger(0);
        final int MAX_COUNT = 3;

        public CountDownTimer(LPDeviceSettingsImpl lPDeviceSettingsImpl, String str, LPDeviceSettingsListener lPDeviceSettingsListener) {
            this.uuid = str;
            this.listener = lPDeviceSettingsListener;
        }

        public void timeCountDown() {
            scheduleAtFixedRate(new TimerTask() { // from class: com.linkplay.core.device.LPDeviceSettingsImpl.CountDownTimer.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    if (CountDownTimer.this.count.addAndGet(1) < 3) {
                        LPSearchControlPoint.getInstance().getLPBrowseListener().deviceRemove(CountDownTimer.this.uuid);
                        return;
                    }
                    cancel();
                    LPDeviceSettingsListener lPDeviceSettingsListener = CountDownTimer.this.listener;
                    if (lPDeviceSettingsListener != null) {
                        lPDeviceSettingsListener.success("Ok");
                    }
                }
            }, 0L, HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD);
        }
    }

    public LPDeviceSettingsImpl(String str) {
        this.upnpUUID = str;
    }

    private String getRequestString(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.has("EQValue") ? jSONObject.getJSONArray("EQValue") : null;
            if (jSONArray == null) {
                return "EQValueSet:app:";
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("EQValue", jSONArray);
            return "EQValueSet:app:" + jSONObject2.toString();
        } catch (JSONException e2) {
            e2.printStackTrace();
            return "EQValueSet:app:";
        }
    }

    @Override // com.linkplay.core.device.LPDeviceSettings
    public void getSupportEQAndValues(final LPDeviceSettingsListener lPDeviceSettingsListener) {
        LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(this.upnpUUID);
        if (lPDeviceDeviceForID != null) {
            LPRequestAction.getInstance().getEQ(n00.l(lPDeviceDeviceForID, n00.k(lPDeviceDeviceForID, new RequestItem.Builder())), new LPRequestAction.IRequestListener(this) { // from class: com.linkplay.core.device.LPDeviceSettingsImpl.4
                @Override // com.linkplay.request.LPRequestAction.IRequestListener
                public void onFailed(Throwable th) {
                    LPDeviceSettingsListener lPDeviceSettingsListener2 = lPDeviceSettingsListener;
                    if (lPDeviceSettingsListener2 != null) {
                        lPDeviceSettingsListener2.failure(new Exception(th.getLocalizedMessage()));
                    }
                }

                @Override // com.linkplay.request.LPRequestAction.IRequestListener
                public void onSuccess(String str) {
                    LPDeviceSettingsListener lPDeviceSettingsListener2 = lPDeviceSettingsListener;
                    if (lPDeviceSettingsListener2 != null) {
                        lPDeviceSettingsListener2.success(str);
                    }
                }
            });
        } else if (lPDeviceSettingsListener != null) {
            lPDeviceSettingsListener.failure(new Exception("device is gone"));
        }
    }

    @Override // com.linkplay.core.device.LPDeviceSettings
    public void getUSBDiskStatus(final LPDeviceSettingsListener lPDeviceSettingsListener) {
        final LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(this.upnpUUID);
        if (lPDeviceDeviceForID != null) {
            LPRequestAction.getInstance().getStatusEx(n00.l(lPDeviceDeviceForID, n00.k(lPDeviceDeviceForID, new RequestItem.Builder())), new LPRequestAction.IRequestListener(this) { // from class: com.linkplay.core.device.LPDeviceSettingsImpl.3
                @Override // com.linkplay.request.LPRequestAction.IRequestListener
                public void onFailed(Throwable th) {
                    LPDeviceSettingsListener lPDeviceSettingsListener2 = lPDeviceSettingsListener;
                    if (lPDeviceSettingsListener2 != null) {
                        lPDeviceSettingsListener2.failure(new Exception(th.getLocalizedMessage()));
                    }
                }

                @Override // com.linkplay.request.LPRequestAction.IRequestListener
                public void onSuccess(String str) {
                    lPDeviceDeviceForID.getDeviceStatus().setDeviceStatus(str);
                    if (lPDeviceSettingsListener != null) {
                        boolean zIsEmpty = TextUtils.isEmpty(lPDeviceDeviceForID.getDeviceStatus().getUsb());
                        LPDeviceSettingsListener lPDeviceSettingsListener2 = lPDeviceSettingsListener;
                        if (zIsEmpty) {
                            lPDeviceSettingsListener2.success(ContentTree.ROOT_ID);
                        } else {
                            lPDeviceSettingsListener2.success("1");
                        }
                    }
                }
            });
        } else if (lPDeviceSettingsListener != null) {
            lPDeviceSettingsListener.failure(new Exception("device is gone"));
        }
    }

    @Override // com.linkplay.core.device.LPDeviceSettings
    public void hideSSID(final boolean z, final LPDeviceSettingsListener lPDeviceSettingsListener) {
        final LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(this.upnpUUID);
        if (lPDeviceDeviceForID != null) {
            LPRequestAction.getInstance().hideSSID(z, n00.l(lPDeviceDeviceForID, n00.k(lPDeviceDeviceForID, new RequestItem.Builder())), new LPRequestAction.IRequestListener(this) { // from class: com.linkplay.core.device.LPDeviceSettingsImpl.7
                @Override // com.linkplay.request.LPRequestAction.IRequestListener
                public void onFailed(Throwable th) {
                    LPDeviceSettingsListener lPDeviceSettingsListener2 = lPDeviceSettingsListener;
                    if (lPDeviceSettingsListener2 != null) {
                        lPDeviceSettingsListener2.failure(new Exception(th.getLocalizedMessage()));
                    }
                }

                @Override // com.linkplay.request.LPRequestAction.IRequestListener
                public void onSuccess(String str) {
                    lPDeviceDeviceForID.getDeviceStatus().setHideSSID(z ? "1" : ContentTree.ROOT_ID);
                    LPDeviceSettingsListener lPDeviceSettingsListener2 = lPDeviceSettingsListener;
                    if (lPDeviceSettingsListener2 != null) {
                        lPDeviceSettingsListener2.success(str);
                    }
                }
            });
        } else if (lPDeviceSettingsListener != null) {
            lPDeviceSettingsListener.failure(new Exception("device is gone"));
        }
    }

    @Override // com.linkplay.core.device.LPDeviceSettings
    public void resetDeviceWithHandler(final LPDeviceSettingsListener lPDeviceSettingsListener) {
        final LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(this.upnpUUID);
        if (lPDeviceDeviceForID != null) {
            LPRequestAction.getInstance().restoreToDefault(n00.l(lPDeviceDeviceForID, n00.k(lPDeviceDeviceForID, new RequestItem.Builder())), new LPRequestAction.IRequestListener() { // from class: com.linkplay.core.device.LPDeviceSettingsImpl.6
                @Override // com.linkplay.request.LPRequestAction.IRequestListener
                public void onFailed(Throwable th) {
                    LPDeviceSettingsListener lPDeviceSettingsListener2 = lPDeviceSettingsListener;
                    if (lPDeviceSettingsListener2 != null) {
                        lPDeviceSettingsListener2.failure(new Exception(th.getLocalizedMessage()));
                    }
                }

                @Override // com.linkplay.request.LPRequestAction.IRequestListener
                public void onSuccess(String str) {
                    new CountDownTimer(LPDeviceSettingsImpl.this, lPDeviceDeviceForID.getUpnpUUID(), lPDeviceSettingsListener).timeCountDown();
                }
            });
        } else if (lPDeviceSettingsListener != null) {
            lPDeviceSettingsListener.failure(new Exception("device is gone"));
        }
    }

    @Override // com.linkplay.core.device.LPDeviceSettings
    public void setDeviceName(String str, final LPDeviceSettingsListener lPDeviceSettingsListener) {
        LPRequestAction.getInstance().setDeviceName(this.upnpUUID, str, new IOkHttpRequestCallback(this) { // from class: com.linkplay.core.device.LPDeviceSettingsImpl.1
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                super.onFailure(exc);
                LPDeviceSettingsListener lPDeviceSettingsListener2 = lPDeviceSettingsListener;
                if (lPDeviceSettingsListener2 != null) {
                    lPDeviceSettingsListener2.failure(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                super.onSuccess(okHttpResponseItem);
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("set device name err response"));
                    return;
                }
                String str2 = new String(okHttpResponseItem.bytes);
                LPDeviceSettingsListener lPDeviceSettingsListener2 = lPDeviceSettingsListener;
                if (lPDeviceSettingsListener2 != null) {
                    lPDeviceSettingsListener2.success(str2);
                }
            }
        });
    }

    @Override // com.linkplay.core.device.LPDeviceSettings
    public void setEQValues(String str, final LPDeviceSettingsListener lPDeviceSettingsListener) {
        LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(this.upnpUUID);
        if (lPDeviceDeviceForID == null) {
            if (lPDeviceSettingsListener != null) {
                lPDeviceSettingsListener.failure(new Exception("device is gone"));
            }
        } else {
            LPRequestAction.getInstance().setEQ(n00.l(lPDeviceDeviceForID, n00.k(lPDeviceDeviceForID, new RequestItem.Builder())), getRequestString(str), new LPRequestAction.IRequestListener(this) { // from class: com.linkplay.core.device.LPDeviceSettingsImpl.5
                @Override // com.linkplay.request.LPRequestAction.IRequestListener
                public void onFailed(Throwable th) {
                    LPDeviceSettingsListener lPDeviceSettingsListener2 = lPDeviceSettingsListener;
                    if (lPDeviceSettingsListener2 != null) {
                        lPDeviceSettingsListener2.failure(new Exception(th.getLocalizedMessage()));
                    }
                }

                @Override // com.linkplay.request.LPRequestAction.IRequestListener
                public void onSuccess(String str2) {
                    LPDeviceSettingsListener lPDeviceSettingsListener2 = lPDeviceSettingsListener;
                    if (lPDeviceSettingsListener2 != null) {
                        lPDeviceSettingsListener2.success(str2);
                    }
                }
            });
        }
    }

    @Override // com.linkplay.core.device.LPDeviceSettings
    public void setSSIDPassword(String str, final LPDeviceSettingsListener lPDeviceSettingsListener) {
        LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(this.upnpUUID);
        if (lPDeviceDeviceForID == null) {
            if (lPDeviceSettingsListener != null) {
                lPDeviceSettingsListener.failure(new Exception("device is gone"));
                return;
            }
            return;
        }
        int i2 = (str == null || str.length() <= 0) ? 0 : 1;
        RequestItem requestItemL = n00.l(lPDeviceDeviceForID, n00.k(lPDeviceDeviceForID, new RequestItem.Builder()));
        if (lPDeviceDeviceForID.getDeviceStatus().isSecurity3()) {
            String strBytesToHexString = ByteIntConverter.bytesToHexString(str.getBytes());
            try {
                strBytesToHexString = AesCBC.a(strBytesToHexString, lPDeviceDeviceForID.getDeviceStatus().getUUID().substring(0, 16)).replace("\n", "");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            str = ByteIntConverter.bytesToHexString(strBytesToHexString.getBytes()).toUpperCase();
        }
        LPRequestAction.getInstance().setDevicePassword(lPDeviceDeviceForID.getDeviceStatus().isSecurity3(), i2, str, requestItemL, new LPRequestAction.IRequestListener(this) { // from class: com.linkplay.core.device.LPDeviceSettingsImpl.8
            @Override // com.linkplay.request.LPRequestAction.IRequestListener
            public void onFailed(Throwable th) {
                LPDeviceSettingsListener lPDeviceSettingsListener2 = lPDeviceSettingsListener;
                if (lPDeviceSettingsListener2 != null) {
                    lPDeviceSettingsListener2.failure(new Exception(th.getLocalizedMessage()));
                }
            }

            @Override // com.linkplay.request.LPRequestAction.IRequestListener
            public void onSuccess(String str2) {
                LPDeviceSettingsListener lPDeviceSettingsListener2 = lPDeviceSettingsListener;
                if (lPDeviceSettingsListener2 != null) {
                    lPDeviceSettingsListener2.success(str2);
                }
            }
        });
    }

    @Override // com.linkplay.core.device.LPDeviceSettings
    public void switchInputSource(LPInputSource lPInputSource, final LPDeviceSettingsListener lPDeviceSettingsListener) {
        LPRequestAction.getInstance().switchInputSource(lPInputSource.getMode(), this.upnpUUID, new IOkHttpRequestCallback(this) { // from class: com.linkplay.core.device.LPDeviceSettingsImpl.2
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                super.onFailure(exc);
                LPDeviceSettingsListener lPDeviceSettingsListener2 = lPDeviceSettingsListener;
                if (lPDeviceSettingsListener2 != null) {
                    lPDeviceSettingsListener2.failure(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                super.onSuccess(okHttpResponseItem);
                if (lPDeviceSettingsListener != null) {
                    lPDeviceSettingsListener.success(new String(okHttpResponseItem.bytes));
                }
            }
        });
    }
}
