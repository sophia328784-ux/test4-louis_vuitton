package com.lp.ble.manager;

import android.app.Application;
import android.bluetooth.BluetoothGatt;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.clj.fastble.BleManager;
import com.clj.fastble.bluetooth.BleBluetooth;
import com.clj.fastble.bluetooth.MultipleBluetoothController;
import com.clj.fastble.callback.BleWriteCallback;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.BleException;
import com.g00fy2.versioncompare.Version;
import com.google.gson.Gson;
import com.linkplay.medialib.ContentTree;
import com.lp.ble.BLECharacteristicChangedListener;
import com.lp.ble.BLEConnector;
import com.lp.ble.BLEManager;
import com.lp.ble.BLEScanListener;
import com.lp.ble.BLEScanner;
import com.lp.ble.RequestManger;
import com.lp.ble.entity.BLEResponse;
import com.lp.ble.entity.LPBluetoothDevice;
import com.lp.ble.statistic.StatisticCallback;
import com.lp.ble.utils.AesCBC;
import com.lp.ble.utils.BLELog;
import com.lp.ble.utils.BLEUtil;
import com.lp.ble.utils.HexUtil;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import defpackage.v7;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class LPBLEManager {
    private static LPBLEManager instance;
    private boolean isiEastSpecial;
    LPConnectWiFiListener listener;
    private LPBluetoothDevice lpBluetoothDevice;
    private LPBLEConfig lpbleConfig;
    private BLEConnector mBLEConnector;
    private boolean mNeedHexStr;
    private LPBLEScanListener scanListener;
    private String version = "1.0.1";
    private final String SplitCharacter = "######";
    private Handler handler = new Handler(Looper.getMainLooper()) { // from class: com.lp.ble.manager.LPBLEManager.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 4) {
                LPBLEManager.this.scan();
                sendEmptyMessageDelayed(4, 240000L);
            }
        }
    };
    private int MultiCmdId = 101010;
    BLECharacteristicChangedListener characteristicChangedListener = new BLECharacteristicChangedListener() { // from class: com.lp.ble.manager.LPBLEManager.8
        private void getDeviceInfo() throws Throwable {
            if (LPBLEManager.this.mNeedHexStr) {
                sendWiFiInfoCommand(2);
                return;
            }
            boolean zIsPasswordValid = LPBLEManager.this.isPasswordValid(null);
            LPBLEManager lPBLEManager = LPBLEManager.this;
            if (zIsPasswordValid) {
                LPBLEManager.this.sendPWD(lPBLEManager.getCommandInfo(null));
            } else {
                LPConnectWiFiListener lPConnectWiFiListener = lPBLEManager.listener;
                if (lPConnectWiFiListener != null) {
                    lPConnectWiFiListener.LPConnectResult(BLEConnectApResult.LP_CONNECT_NEED_PASSWORD_ERROR, "need password");
                }
            }
        }

        private void getWLNListInfo(int i2) throws Throwable {
            HashMap map = BLELog.f36371a;
            LPBLEManager lPBLEManager = LPBLEManager.this;
            if (!lPBLEManager.mBLEInfo.bOtherNetwork) {
                lPBLEManager.getWLANList(new LPBLEAPListListener() { // from class: com.lp.ble.manager.LPBLEManager.8.7
                    @Override // com.lp.ble.manager.LPBLEAPListListener
                    public void onFailed(Exception exc) {
                        LPConnectWiFiListener lPConnectWiFiListener = LPBLEManager.this.listener;
                        if (lPConnectWiFiListener != null) {
                            lPConnectWiFiListener.LPConnectFailed(new Exception("getWLANList onFailed:" + exc.getLocalizedMessage()));
                        }
                    }

                    @Override // com.lp.ble.manager.LPBLEAPListListener
                    public void onSuccess(List<ApItem> list) throws Throwable {
                        LPBLEManager lPBLEManager2 = LPBLEManager.this;
                        ApItem currApItem = lPBLEManager2.getCurrApItem(list, lPBLEManager2.mBLEInfo.ssid);
                        boolean zIsPasswordValid = LPBLEManager.this.isPasswordValid(currApItem);
                        AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                        if (zIsPasswordValid) {
                            LPBLEManager.this.sendPWD(LPBLEManager.this.getCommandInfo(currApItem));
                        } else {
                            LPConnectWiFiListener lPConnectWiFiListener = LPBLEManager.this.listener;
                            if (lPConnectWiFiListener != null) {
                                lPConnectWiFiListener.LPConnectResult(BLEConnectApResult.LP_CONNECT_NEED_PASSWORD_ERROR, "need password");
                            }
                        }
                    }
                });
                return;
            }
            boolean zIsPasswordValid = lPBLEManager.isPasswordValid(null);
            LPBLEManager lPBLEManager2 = LPBLEManager.this;
            if (zIsPasswordValid) {
                LPBLEManager.this.sendPWD(lPBLEManager2.getCommandInfo(null));
            } else {
                LPConnectWiFiListener lPConnectWiFiListener = lPBLEManager2.listener;
                if (lPConnectWiFiListener != null) {
                    lPConnectWiFiListener.LPConnectResult(BLEConnectApResult.LP_CONNECT_NEED_PASSWORD_ERROR, "need password");
                }
            }
        }

        private void sendWiFiInfoCommand(int i2) throws Throwable {
            if (LPBLEManager.this.lpBluetoothDevice.a() && (TextUtils.isEmpty(LPBLEManager.this.mBLEInfo.auth) || TextUtils.isEmpty(LPBLEManager.this.mBLEInfo.encry))) {
                getWLNListInfo(i2);
                return;
            }
            boolean zIsPasswordValid = LPBLEManager.this.isPasswordValid(null);
            LPBLEManager lPBLEManager = LPBLEManager.this;
            if (zIsPasswordValid) {
                LPBLEManager.this.sendPWD(lPBLEManager.getCommandInfo(null));
            } else {
                LPConnectWiFiListener lPConnectWiFiListener = lPBLEManager.listener;
                if (lPConnectWiFiListener != null) {
                    lPConnectWiFiListener.LPConnectResult(BLEConnectApResult.LP_CONNECT_NEED_PASSWORD_ERROR, "need password");
                }
            }
        }

        @Override // com.lp.ble.BLECharacteristicChangedListener
        public void onCharacteristicChanged(BLEResponse bLEResponse) throws Throwable {
            int i2 = bLEResponse.f36353a;
            bLEResponse.a();
            HashMap map = BLELog.f36371a;
            int i3 = bLEResponse.f36353a;
            if (i3 == 4099) {
                if (!LPBLEManager.this.lpBluetoothDevice.a() || (!TextUtils.isEmpty(LPBLEManager.this.mBLEInfo.auth) && !TextUtils.isEmpty(LPBLEManager.this.mBLEInfo.encry))) {
                    boolean zIsPasswordValid = LPBLEManager.this.isPasswordValid(null);
                    LPBLEManager lPBLEManager = LPBLEManager.this;
                    if (zIsPasswordValid) {
                        LPBLEManager.this.sendPWD(lPBLEManager.getCommandInfo(null));
                        return;
                    } else {
                        LPConnectWiFiListener lPConnectWiFiListener = lPBLEManager.listener;
                        if (lPConnectWiFiListener != null) {
                            lPConnectWiFiListener.LPConnectResult(BLEConnectApResult.LP_CONNECT_NEED_PASSWORD_ERROR, "need password");
                            return;
                        }
                        return;
                    }
                }
                LPBLEManager lPBLEManager2 = LPBLEManager.this;
                if (!lPBLEManager2.mBLEInfo.bOtherNetwork) {
                    lPBLEManager2.getWLANList(new LPBLEAPListListener() { // from class: com.lp.ble.manager.LPBLEManager.8.4
                        @Override // com.lp.ble.manager.LPBLEAPListListener
                        public void onFailed(Exception exc) {
                        }

                        @Override // com.lp.ble.manager.LPBLEAPListListener
                        public void onSuccess(List<ApItem> list) throws Throwable {
                            LPBLEManager lPBLEManager3 = LPBLEManager.this;
                            ApItem currApItem = lPBLEManager3.getCurrApItem(list, lPBLEManager3.mBLEInfo.ssid);
                            boolean zIsPasswordValid2 = LPBLEManager.this.isPasswordValid(currApItem);
                            AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                            if (zIsPasswordValid2) {
                                LPBLEManager.this.sendPWD(LPBLEManager.this.getCommandInfo(currApItem));
                            } else {
                                LPConnectWiFiListener lPConnectWiFiListener2 = LPBLEManager.this.listener;
                                if (lPConnectWiFiListener2 != null) {
                                    lPConnectWiFiListener2.LPConnectResult(BLEConnectApResult.LP_CONNECT_NEED_PASSWORD_ERROR, "need password");
                                }
                            }
                        }
                    });
                    return;
                }
                boolean zIsPasswordValid2 = lPBLEManager2.isPasswordValid(null);
                LPBLEManager lPBLEManager3 = LPBLEManager.this;
                if (zIsPasswordValid2) {
                    LPBLEManager.this.sendPWD(lPBLEManager3.getCommandInfo(null));
                    return;
                } else {
                    LPConnectWiFiListener lPConnectWiFiListener2 = lPBLEManager3.listener;
                    if (lPConnectWiFiListener2 != null) {
                        lPConnectWiFiListener2.LPConnectResult(BLEConnectApResult.LP_CONNECT_NEED_PASSWORD_ERROR, "need password");
                        return;
                    }
                    return;
                }
            }
            if (i3 == 4101) {
                LPConnectWiFiListener lPConnectWiFiListener3 = LPBLEManager.this.listener;
                if (lPConnectWiFiListener3 != null) {
                    lPConnectWiFiListener3.LPConnectResult(BLEConnectApResult.LP_CONNECT_AP_START, bLEResponse.a());
                    return;
                }
                return;
            }
            if (i3 == 4102) {
                try {
                    JSONObject jSONObject = new JSONObject(bLEResponse.a());
                    if (jSONObject.has(m.v)) {
                        int i4 = jSONObject.getInt(m.v);
                        LPBLEManager lPBLEManager4 = LPBLEManager.this;
                        if (i4 == 0) {
                            LPConnectWiFiListener lPConnectWiFiListener4 = lPBLEManager4.listener;
                            if (lPConnectWiFiListener4 != null) {
                                lPConnectWiFiListener4.LPConnectResult(BLEConnectApResult.LP_CONNECT_AP_SUCCESS, bLEResponse.a());
                                return;
                            }
                            return;
                        }
                        LPConnectWiFiListener lPConnectWiFiListener5 = lPBLEManager4.listener;
                        if (lPConnectWiFiListener5 != null) {
                            lPConnectWiFiListener5.LPConnectResult(BLEUtil.d(i4), bLEResponse.a());
                            return;
                        }
                        return;
                    }
                    return;
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            if (i3 != 4097) {
                if (i3 == 0) {
                    LPBLEManager.this.setupResultOld(bLEResponse.a(), LPBLEManager.this.listener);
                    return;
                }
                return;
            }
            bLEResponse.a();
            LPBLEManager.this.parseDeviceInfo(bLEResponse.a());
            if (LPBLEManager.this.lpbleConfig != null) {
                boolean z = LPBLEManager.this.lpbleConfig.bHexPasswordCommand;
                LPBLEManager lPBLEManager5 = LPBLEManager.this;
                if (z) {
                    lPBLEManager5.mNeedHexStr = true;
                    getDeviceInfo();
                    return;
                }
                if (lPBLEManager5.lpbleConfig.bNeedCountryCode) {
                    String str = "{\n\"code\":\"" + BLEUtil.e() + "\",\n\"ccode\":\"" + BLEUtil.e() + "\",\n}";
                    if (LPBLEManager.this.mBLEConnector != null) {
                        LPBLEManager.this.mBLEConnector.n(LPBLEManager.this.lpBluetoothDevice.d, 4099, str, new BleWriteCallback() { // from class: com.lp.ble.manager.LPBLEManager.8.6
                            @Override // com.clj.fastble.callback.BleWriteCallback
                            public void onWriteFailure(BleException bleException) {
                                bleException.toString();
                                HashMap map2 = BLELog.f36371a;
                                LPConnectWiFiListener lPConnectWiFiListener6 = LPBLEManager.this.listener;
                                if (lPConnectWiFiListener6 != null) {
                                    lPConnectWiFiListener6.LPConnectFailed(new Exception(bleException.f25296c));
                                }
                            }

                            @Override // com.clj.fastble.callback.BleWriteCallback
                            public void onWriteSuccess(int i5, int i6, byte[] bArr) {
                                HashMap map2 = BLELog.f36371a;
                            }
                        });
                        return;
                    }
                    return;
                }
                if (LPBLEManager.this.lpBluetoothDevice.a() && (TextUtils.isEmpty(LPBLEManager.this.mBLEInfo.auth) || TextUtils.isEmpty(LPBLEManager.this.mBLEInfo.encry))) {
                    LPBLEManager.this.getWLANList(new LPBLEAPListListener() { // from class: com.lp.ble.manager.LPBLEManager.8.5
                        @Override // com.lp.ble.manager.LPBLEAPListListener
                        public void onFailed(Exception exc) {
                            LPConnectWiFiListener lPConnectWiFiListener6 = LPBLEManager.this.listener;
                            if (lPConnectWiFiListener6 != null) {
                                lPConnectWiFiListener6.LPConnectFailed(new Exception(exc.getMessage()));
                            }
                        }

                        @Override // com.lp.ble.manager.LPBLEAPListListener
                        public void onSuccess(List<ApItem> list) throws Throwable {
                            LPBLEManager lPBLEManager6 = LPBLEManager.this;
                            ApItem currApItem = lPBLEManager6.getCurrApItem(list, lPBLEManager6.mBLEInfo.ssid);
                            boolean zIsPasswordValid3 = LPBLEManager.this.isPasswordValid(currApItem);
                            AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                            if (zIsPasswordValid3) {
                                LPBLEManager.this.sendPWD(LPBLEManager.this.getCommandInfo(currApItem));
                            } else {
                                LPConnectWiFiListener lPConnectWiFiListener6 = LPBLEManager.this.listener;
                                if (lPConnectWiFiListener6 != null) {
                                    lPConnectWiFiListener6.LPConnectResult(BLEConnectApResult.LP_CONNECT_NEED_PASSWORD_ERROR, "need password");
                                }
                            }
                        }
                    });
                    return;
                }
                boolean zIsPasswordValid3 = LPBLEManager.this.isPasswordValid(null);
                LPBLEManager lPBLEManager6 = LPBLEManager.this;
                if (zIsPasswordValid3) {
                    LPBLEManager.this.sendPWD(lPBLEManager6.getCommandInfo(null));
                } else {
                    LPConnectWiFiListener lPConnectWiFiListener6 = lPBLEManager6.listener;
                    if (lPConnectWiFiListener6 != null) {
                        lPConnectWiFiListener6.LPConnectResult(BLEConnectApResult.LP_CONNECT_NEED_PASSWORD_ERROR, "need password");
                    }
                }
            }
        }

        @Override // com.lp.ble.BLECharacteristicChangedListener
        public void onResponseTimeout(int i2) {
            if (4099 == i2) {
                LPConnectWiFiListener lPConnectWiFiListener = LPBLEManager.this.listener;
                if (lPConnectWiFiListener != null) {
                    lPConnectWiFiListener.LPConnectFailed(new Exception(cj.d(i2, "######set country code timeout")));
                }
                if (LPBLEManager.this.mBLEConnector != null) {
                    LPBLEManager.this.mBLEConnector.m(LPBLEManager.this.MultiCmdId + "", this);
                    return;
                }
                return;
            }
            if (4098 == i2 || 4114 == i2 || 4115 == i2) {
                LPConnectWiFiListener lPConnectWiFiListener2 = LPBLEManager.this.listener;
                if (lPConnectWiFiListener2 != null) {
                    lPConnectWiFiListener2.LPConnectFailed(new Exception(cj.d(i2, "######send ssid password timeout")));
                }
                if (LPBLEManager.this.mBLEConnector != null) {
                    LPBLEManager.this.mBLEConnector.m(LPBLEManager.this.MultiCmdId + "", this);
                }
            }
        }

        @Override // com.lp.ble.BLECharacteristicChangedListener
        public void onCharacteristicChanged(int i2, String str) throws Throwable {
            HashMap map = BLELog.f36371a;
            if (i2 == 4099) {
                if (LPBLEManager.this.lpBluetoothDevice.a() && (TextUtils.isEmpty(LPBLEManager.this.mBLEInfo.auth) || TextUtils.isEmpty(LPBLEManager.this.mBLEInfo.encry))) {
                    LPBLEManager lPBLEManager = LPBLEManager.this;
                    if (lPBLEManager.mBLEInfo.bOtherNetwork) {
                        boolean zIsPasswordValid = lPBLEManager.isPasswordValid(null);
                        LPBLEManager lPBLEManager2 = LPBLEManager.this;
                        if (!zIsPasswordValid) {
                            LPConnectWiFiListener lPConnectWiFiListener = lPBLEManager2.listener;
                            if (lPConnectWiFiListener != null) {
                                lPConnectWiFiListener.LPConnectResult(BLEConnectApResult.LP_CONNECT_NEED_PASSWORD_ERROR, "need password");
                                return;
                            }
                            return;
                        }
                        LPBLEManager.this.sendPWD(lPBLEManager2.getCommandInfo(null));
                        return;
                    }
                    lPBLEManager.getWLANList(new LPBLEAPListListener() { // from class: com.lp.ble.manager.LPBLEManager.8.1
                        @Override // com.lp.ble.manager.LPBLEAPListListener
                        public void onFailed(Exception exc) {
                        }

                        @Override // com.lp.ble.manager.LPBLEAPListListener
                        public void onSuccess(List<ApItem> list) throws Throwable {
                            LPBLEManager lPBLEManager3 = LPBLEManager.this;
                            ApItem currApItem = lPBLEManager3.getCurrApItem(list, lPBLEManager3.mBLEInfo.ssid);
                            boolean zIsPasswordValid2 = LPBLEManager.this.isPasswordValid(currApItem);
                            AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                            if (zIsPasswordValid2) {
                                LPBLEManager.this.sendPWD(LPBLEManager.this.getCommandInfo(currApItem));
                            } else {
                                LPConnectWiFiListener lPConnectWiFiListener2 = LPBLEManager.this.listener;
                                if (lPConnectWiFiListener2 != null) {
                                    lPConnectWiFiListener2.LPConnectResult(BLEConnectApResult.LP_CONNECT_NEED_PASSWORD_ERROR, "need password");
                                }
                            }
                        }
                    });
                    return;
                }
                boolean zIsPasswordValid2 = LPBLEManager.this.isPasswordValid(null);
                LPBLEManager lPBLEManager3 = LPBLEManager.this;
                if (!zIsPasswordValid2) {
                    LPConnectWiFiListener lPConnectWiFiListener2 = lPBLEManager3.listener;
                    if (lPConnectWiFiListener2 != null) {
                        lPConnectWiFiListener2.LPConnectResult(BLEConnectApResult.LP_CONNECT_NEED_PASSWORD_ERROR, "need password");
                        return;
                    }
                    return;
                }
                LPBLEManager.this.sendPWD(lPBLEManager3.getCommandInfo(null));
                return;
            }
            if (i2 == 4101) {
                LPConnectWiFiListener lPConnectWiFiListener3 = LPBLEManager.this.listener;
                if (lPConnectWiFiListener3 != null) {
                    lPConnectWiFiListener3.LPConnectResult(BLEConnectApResult.LP_CONNECT_AP_START, str);
                    return;
                }
                return;
            }
            if (i2 == 4102) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.has(m.v)) {
                        int i3 = jSONObject.getInt(m.v);
                        LPBLEManager lPBLEManager4 = LPBLEManager.this;
                        if (i3 == 0) {
                            LPConnectWiFiListener lPConnectWiFiListener4 = lPBLEManager4.listener;
                            if (lPConnectWiFiListener4 != null) {
                                lPConnectWiFiListener4.LPConnectResult(BLEConnectApResult.LP_CONNECT_AP_SUCCESS, str);
                                return;
                            }
                            return;
                        }
                        LPConnectWiFiListener lPConnectWiFiListener5 = lPBLEManager4.listener;
                        if (lPConnectWiFiListener5 != null) {
                            lPConnectWiFiListener5.LPConnectResult(BLEUtil.d(i3), str);
                            return;
                        }
                        return;
                    }
                    return;
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            if (i2 != 4097) {
                if (i2 == 0) {
                    LPBLEManager lPBLEManager5 = LPBLEManager.this;
                    lPBLEManager5.setupResultOld(str, lPBLEManager5.listener);
                    return;
                }
                return;
            }
            LPBLEManager.this.parseDeviceInfo(str);
            if (LPBLEManager.this.lpbleConfig != null) {
                boolean z = LPBLEManager.this.lpbleConfig.bHexPasswordCommand;
                LPBLEManager lPBLEManager6 = LPBLEManager.this;
                if (z) {
                    lPBLEManager6.mNeedHexStr = true;
                    getDeviceInfo();
                    return;
                }
                if (!lPBLEManager6.lpbleConfig.bNeedCountryCode) {
                    if (LPBLEManager.this.lpBluetoothDevice.a() && (TextUtils.isEmpty(LPBLEManager.this.mBLEInfo.auth) || TextUtils.isEmpty(LPBLEManager.this.mBLEInfo.encry))) {
                        LPBLEManager.this.getWLANList(new LPBLEAPListListener() { // from class: com.lp.ble.manager.LPBLEManager.8.2
                            @Override // com.lp.ble.manager.LPBLEAPListListener
                            public void onFailed(Exception exc) {
                                LPConnectWiFiListener lPConnectWiFiListener6 = LPBLEManager.this.listener;
                                if (lPConnectWiFiListener6 != null) {
                                    lPConnectWiFiListener6.LPConnectFailed(new Exception(exc.getMessage()));
                                }
                            }

                            @Override // com.lp.ble.manager.LPBLEAPListListener
                            public void onSuccess(List<ApItem> list) throws Throwable {
                                LPBLEManager lPBLEManager7 = LPBLEManager.this;
                                ApItem currApItem = lPBLEManager7.getCurrApItem(list, lPBLEManager7.mBLEInfo.ssid);
                                boolean zIsPasswordValid3 = LPBLEManager.this.isPasswordValid(currApItem);
                                AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                                if (zIsPasswordValid3) {
                                    LPBLEManager.this.sendPWD(LPBLEManager.this.getCommandInfo(currApItem));
                                } else {
                                    LPConnectWiFiListener lPConnectWiFiListener6 = LPBLEManager.this.listener;
                                    if (lPConnectWiFiListener6 != null) {
                                        lPConnectWiFiListener6.LPConnectResult(BLEConnectApResult.LP_CONNECT_NEED_PASSWORD_ERROR, "need password");
                                    }
                                }
                            }
                        });
                        return;
                    }
                    boolean zIsPasswordValid3 = LPBLEManager.this.isPasswordValid(null);
                    LPBLEManager lPBLEManager7 = LPBLEManager.this;
                    if (!zIsPasswordValid3) {
                        LPConnectWiFiListener lPConnectWiFiListener6 = lPBLEManager7.listener;
                        if (lPConnectWiFiListener6 != null) {
                            lPConnectWiFiListener6.LPConnectResult(BLEConnectApResult.LP_CONNECT_NEED_PASSWORD_ERROR, "need password");
                            return;
                        }
                        return;
                    }
                    LPBLEManager.this.sendPWD(lPBLEManager7.getCommandInfo(null));
                    return;
                }
                String str2 = "{\n\"code\":\"" + BLEUtil.e() + "\",\n\"ccode\":\"" + BLEUtil.e() + "\",\n}";
                if (LPBLEManager.this.mBLEConnector != null) {
                    LPBLEManager.this.mBLEConnector.n(LPBLEManager.this.lpBluetoothDevice.d, 4099, str2, new BleWriteCallback() { // from class: com.lp.ble.manager.LPBLEManager.8.3
                        @Override // com.clj.fastble.callback.BleWriteCallback
                        public void onWriteFailure(BleException bleException) {
                            bleException.toString();
                            HashMap map2 = BLELog.f36371a;
                            LPConnectWiFiListener lPConnectWiFiListener7 = LPBLEManager.this.listener;
                            if (lPConnectWiFiListener7 != null) {
                                lPConnectWiFiListener7.LPConnectFailed(new Exception(bleException.f25296c));
                            }
                        }

                        @Override // com.clj.fastble.callback.BleWriteCallback
                        public void onWriteSuccess(int i4, int i5, byte[] bArr) {
                            HashMap map2 = BLELog.f36371a;
                        }
                    });
                }
            }
        }
    };
    boolean failedCallback = false;
    ConnectBLEInfo mBLEInfo = null;

    private LPBLEManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public String getCommandInfo(ApItem apItem) throws Throwable {
        StringBuilder sbT;
        String string;
        if (!isBLEVersionMore102()) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("ssid", apItem == null ? this.mBLEInfo.ssid : apItem.getSsid());
                boolean z = this.mNeedHexStr;
                ConnectBLEInfo connectBLEInfo = this.mBLEInfo;
                jSONObject.put("pass", z ? HexUtil.f(connectBLEInfo.password) : connectBLEInfo.password);
                boolean z2 = this.mNeedHexStr;
                ConnectBLEInfo connectBLEInfo2 = this.mBLEInfo;
                jSONObject.put("password", z2 ? HexUtil.f(connectBLEInfo2.password) : connectBLEInfo2.password);
                jSONObject.put("auth", apItem == null ? this.mBLEInfo.auth : apItem.getAuth());
                jSONObject.put("encry", apItem == null ? this.mBLEInfo.encry : apItem.getEncry());
                jSONObject.put("identity", HexUtil.f(this.mBLEInfo.getIdentity()));
                jSONObject.put("appIP", this.mBLEInfo.getAppIP());
                jSONObject.put("os", ReferenceApiV3ConstKt.OS_NAME);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            return jSONObject.toString();
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            try {
                jSONObject2.put("ssid", apItem == null ? this.mBLEInfo.ssid : apItem.getSsid());
                jSONObject2.put("sessionId", this.mBLEInfo.getSessionId());
            } catch (Throwable th) {
                jSONObject2.toString();
                throw th;
            }
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        String strJ = d21.j(jSONObject2.toString(), "######");
        try {
            try {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("sessionId", this.mBLEInfo.getSessionId());
                    boolean z3 = this.mNeedHexStr;
                    ConnectBLEInfo connectBLEInfo3 = this.mBLEInfo;
                    jSONObject3.put("pass", z3 ? HexUtil.f(connectBLEInfo3.password) : connectBLEInfo3.password);
                    boolean z4 = this.mNeedHexStr;
                    ConnectBLEInfo connectBLEInfo4 = this.mBLEInfo;
                    jSONObject3.put("password", z4 ? HexUtil.f(connectBLEInfo4.password) : connectBLEInfo4.password);
                    String auth = apItem == null ? this.mBLEInfo.auth : apItem.getAuth();
                    jSONObject3.put("auth", auth);
                    jSONObject3.put("encry", apItem == null ? this.mBLEInfo.encry : apItem.getEncry());
                    jSONObject3.put("identity", HexUtil.f(this.mBLEInfo.getIdentity()));
                    jSONObject3.put("appIP", this.mBLEInfo.getAppIP());
                    jSONObject3.put("os", ReferenceApiV3ConstKt.OS_NAME);
                    sbT = n00.t(strJ);
                    string = jSONObject3.toString();
                    jSONObject2 = auth;
                } catch (JSONException e4) {
                    e = e4;
                    jSONObject2 = jSONObject3;
                    e.printStackTrace();
                    sbT = n00.t(strJ);
                    string = jSONObject2.toString();
                    jSONObject2 = jSONObject2;
                } catch (Throwable th2) {
                    th = th2;
                    jSONObject2 = jSONObject3;
                    jSONObject2.toString();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (JSONException e5) {
            e = e5;
        }
        sbT.append(string);
        return sbT.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ApItem getCurrApItem(List<ApItem> list, String str) {
        if (list != null && list.size() != 0) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                ApItem apItem = list.get(i2);
                if (TextUtils.equals(apItem.getSsid(), str) || TextUtils.equals(apItem.getDisplaySSID(), str)) {
                    apItem.getDisplaySSID();
                    HashMap map = BLELog.f36371a;
                    return apItem;
                }
            }
        }
        return null;
    }

    public static LPBLEManager getInstance() {
        if (instance == null) {
            synchronized (LPBLEManager.class) {
                try {
                    if (instance == null) {
                        instance = new LPBLEManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<ApItem> getWLANApInfo(String str) {
        Object objFromJson;
        List<ApItem> aplist;
        if (!TextUtils.isEmpty(str)) {
            try {
                try {
                    objFromJson = new Gson().fromJson(str, (Class<Object>) ApInfo.class);
                } catch (Exception e2) {
                    e2.getMessage();
                    objFromJson = null;
                }
                ApInfo apInfo = (ApInfo) objFromJson;
                if (apInfo != null && (aplist = apInfo.getAplist()) != null && aplist.size() != 0) {
                    for (int i2 = 0; i2 < aplist.size(); i2++) {
                        ApItem apItem = aplist.get(i2);
                        if (apItem != null) {
                            if (this.isiEastSpecial) {
                                apItem.setSsid(HexUtil.f(apItem.getSsid()));
                            }
                            apItem.setDisplaySSID(HexUtil.c(apItem.getSsid()));
                        }
                    }
                    return aplist;
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        return null;
    }

    private boolean isBLEVersionMore102() {
        return isDevBLEVersionMoreThanInput("1.0.2");
    }

    private boolean isCommonInfoContainsKey(String str, String str2) {
        return !TextUtils.isEmpty(str) && str.contains(str2);
    }

    private boolean isDevBLEVersionMoreThanInput(String str) {
        LPBluetoothDevice lPBluetoothDevice;
        LPBLEDeviceInfo lPBLEDeviceInfo;
        try {
            if (TextUtils.isEmpty(str) || (lPBluetoothDevice = this.lpBluetoothDevice) == null || (lPBLEDeviceInfo = lPBluetoothDevice.l) == null || lPBLEDeviceInfo.getCommonInfo() == null) {
                return false;
            }
            String bleVersion = this.lpBluetoothDevice.l.getCommonInfo().getBleVersion();
            if (TextUtils.isEmpty(bleVersion)) {
                return false;
            }
            return new Version(bleVersion).isAtLeast(str);
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPasswordValid(ApItem apItem) {
        ConnectBLEInfo connectBLEInfo = this.mBLEInfo;
        if (connectBLEInfo != null && !TextUtils.isEmpty(connectBLEInfo.password)) {
            return true;
        }
        String auth = apItem != null ? apItem.getAuth() : this.mBLEInfo.auth;
        if ("OPEN".equalsIgnoreCase(auth) || "WPA3OWE".equals(auth)) {
            return true;
        }
        HashMap map = BLELog.f36371a;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LPBLEDeviceInfo parseCommonInfoGson(String str) {
        Object objFromJson;
        if (!TextUtils.isEmpty(str)) {
            try {
                try {
                    objFromJson = new Gson().fromJson(str, (Class<Object>) LPBLEDeviceInfo.class);
                } catch (Exception e2) {
                    e2.getMessage();
                    objFromJson = null;
                }
                LPBLEDeviceInfo lPBLEDeviceInfo = (LPBLEDeviceInfo) objFromJson;
                if (lPBLEDeviceInfo != null && lPBLEDeviceInfo.getCommonInfo() != null && !isCommonInfoContainsKey(str, "first_oobe")) {
                    lPBLEDeviceInfo.getCommonInfo().setFirst_oobe(-1);
                }
                return lPBLEDeviceInfo;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:19:0x0048  */
    public void parseDeviceInfo(String str) {
        String string;
        LPBluetoothDevice lPBluetoothDevice;
        this.isiEastSpecial = false;
        if (!str.contains("commonInfo") && str.contains("protocolVersion")) {
            str = fc.h("{\"commonInfo\":", str, "}");
            this.isiEastSpecial = true;
        }
        this.mNeedHexStr = false;
        try {
            LPBLEDeviceInfo commonInfoGson = parseCommonInfoGson(str);
            if (commonInfoGson != null && (lPBluetoothDevice = this.lpBluetoothDevice) != null) {
                lPBluetoothDevice.l = commonInfoGson;
            }
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("commonInfo")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("commonInfo");
                if (jSONObject2.has("protocolVersion")) {
                    string = jSONObject2.getString("protocolVersion");
                } else {
                    string = "";
                }
            } else {
                string = "";
            }
            HashMap map = BLELog.f36371a;
            this.mNeedHexStr = Integer.parseInt(string.replaceAll("\\.", "")) > 102;
        } catch (Exception e2) {
            e2.printStackTrace();
            e2.getMessage();
            HashMap map2 = BLELog.f36371a;
        }
    }

    private void privateGetWLANList(final LPBLEAPListListener lPBLEAPListListener) {
        BLEConnector bLEConnector = this.mBLEConnector;
        if (bLEConnector == null) {
            lPBLEAPListListener.onFailed(new Exception("mBLEConnector is null"));
            return;
        }
        final int i2 = 4103;
        bLEConnector.l("4103", new BLECharacteristicChangedListener() { // from class: com.lp.ble.manager.LPBLEManager.6
            @Override // com.lp.ble.BLECharacteristicChangedListener
            public void onCharacteristicChanged(BLEResponse bLEResponse) {
                if (bLEResponse.f36353a == 4103) {
                    List<ApItem> wLANApInfo = LPBLEManager.this.getWLANApInfo(bLEResponse.a());
                    LPBLEAPListListener lPBLEAPListListener2 = lPBLEAPListListener;
                    if (lPBLEAPListListener2 != null) {
                        lPBLEAPListListener2.onSuccess(wLANApInfo);
                    }
                    if (LPBLEManager.this.mBLEConnector != null) {
                        LPBLEManager.this.mBLEConnector.m(i2 + "", this);
                    }
                }
            }

            @Override // com.lp.ble.BLECharacteristicChangedListener
            public void onResponseTimeout(int i3) {
                if (4103 == i3) {
                    if (LPBLEManager.this.mBLEConnector != null) {
                        LPBLEManager.this.mBLEConnector.m(i2 + "", this);
                    }
                    LPBLEAPListListener lPBLEAPListListener2 = lPBLEAPListListener;
                    if (lPBLEAPListListener2 != null) {
                        lPBLEAPListListener2.onFailed(new Exception("response timeout"));
                    }
                }
            }

            @Override // com.lp.ble.BLECharacteristicChangedListener
            public void onCharacteristicChanged(int i3, String str) {
                if (i3 == 4103) {
                    List<ApItem> wLANApInfo = LPBLEManager.this.getWLANApInfo(str);
                    LPBLEAPListListener lPBLEAPListListener2 = lPBLEAPListListener;
                    if (lPBLEAPListListener2 != null) {
                        lPBLEAPListListener2.onSuccess(wLANApInfo);
                    }
                    if (LPBLEManager.this.mBLEConnector != null) {
                        LPBLEManager.this.mBLEConnector.m(i2 + "", this);
                    }
                }
            }
        });
        this.mBLEConnector.n(this.lpBluetoothDevice.d, 4103, "", new BleWriteCallback(this) { // from class: com.lp.ble.manager.LPBLEManager.7
            @Override // com.clj.fastble.callback.BleWriteCallback
            public void onWriteFailure(BleException bleException) {
            }

            @Override // com.clj.fastble.callback.BleWriteCallback
            public void onWriteSuccess(int i3, int i4, byte[] bArr) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scan() {
        BLEScanner bLEScanner = BLEScanner.f36333f;
        BLEManager bLEManager = BLEManager.f36330c;
        if (bLEManager.f36331a == null) {
            v7.h("not call LPBLEManager.getInstance().init()");
            return;
        }
        BLEScanner bLEScanner2 = BLEScanner.f36333f;
        bLEScanner2.c();
        if (bLEManager.f36331a != null) {
            bLEScanner2.b(new BLEScanListener() { // from class: com.lp.ble.manager.LPBLEManager.2
                @Override // com.lp.ble.BLEScanListener
                public void onScanFailed(int i2) {
                    if (LPBLEManager.this.scanListener != null) {
                        LPBLEManager.this.scanListener.LPBLEScanFailed(i2);
                    }
                }

                @Override // com.lp.ble.BLEScanListener
                public void onScanFinished() {
                    if (LPBLEManager.this.scanListener != null) {
                        LPBLEManager.this.scanListener.LPBLEScanFinish();
                    }
                }

                @Override // com.lp.ble.BLEScanListener
                public void onScanResult(LPBluetoothDevice lPBluetoothDevice) {
                    if (LPBLEManager.this.scanListener != null) {
                        LPBLEManager.this.scanListener.LPBLEScanResult(lPBluetoothDevice);
                    }
                }
            });
        } else {
            v7.h("not call LPBLEManager.getInstance().init()");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void sendPWD(String str) {
        String str2;
        if (this.mBLEConnector == null) {
            LPConnectWiFiListener lPConnectWiFiListener = this.listener;
            if (lPConnectWiFiListener != null) {
                lPConnectWiFiListener.LPConnectFailed(new Exception("BLEConnector is null."));
            }
            return;
        }
        if (isBLEVersionMore102()) {
            boolean z = false;
            this.failedCallback = false;
            String[] strArrSplit = str.split("######");
            final String str3 = "";
            if (strArrSplit == null || strArrSplit.length < 2) {
                str2 = str;
            } else {
                String str4 = strArrSplit[0];
                String str5 = strArrSplit[1];
                str2 = str4;
                z = true;
                str3 = str5;
            }
            if (z) {
                HashMap map = BLELog.f36371a;
                this.mBLEConnector.n(this.lpBluetoothDevice.d, 4114, str2, new BleWriteCallback() { // from class: com.lp.ble.manager.LPBLEManager.9
                    @Override // com.clj.fastble.callback.BleWriteCallback
                    public void onWriteFailure(BleException bleException) {
                        String str6 = bleException.f25296c;
                        HashMap map2 = BLELog.f36371a;
                        LPBLEManager lPBLEManager = LPBLEManager.this;
                        if (lPBLEManager.failedCallback) {
                            return;
                        }
                        lPBLEManager.failedCallback = true;
                        LPConnectWiFiListener lPConnectWiFiListener2 = lPBLEManager.listener;
                        if (lPConnectWiFiListener2 != null) {
                            lPConnectWiFiListener2.LPConnectFailed(new Exception(bleException.f25296c));
                        }
                    }

                    @Override // com.clj.fastble.callback.BleWriteCallback
                    public void onWriteSuccess(int i2, int i3, byte[] bArr) {
                        HashMap map2 = BLELog.f36371a;
                        LPBLEManager.this.mBLEConnector.n(LPBLEManager.this.lpBluetoothDevice.d, 4115, str3, new BleWriteCallback() { // from class: com.lp.ble.manager.LPBLEManager.9.1
                            @Override // com.clj.fastble.callback.BleWriteCallback
                            public void onWriteFailure(BleException bleException) {
                                String str6 = bleException.f25296c;
                                HashMap map3 = BLELog.f36371a;
                                LPBLEManager lPBLEManager = LPBLEManager.this;
                                if (lPBLEManager.failedCallback) {
                                    return;
                                }
                                lPBLEManager.failedCallback = true;
                                LPConnectWiFiListener lPConnectWiFiListener2 = lPBLEManager.listener;
                                if (lPConnectWiFiListener2 != null) {
                                    lPConnectWiFiListener2.LPConnectFailed(new Exception(bleException.f25296c));
                                }
                            }

                            @Override // com.clj.fastble.callback.BleWriteCallback
                            public void onWriteSuccess(int i4, int i5, byte[] bArr2) {
                                HashMap map3 = BLELog.f36371a;
                            }
                        });
                    }
                });
                return;
            }
        }
        HashMap map2 = BLELog.f36371a;
        this.mBLEConnector.n(this.lpBluetoothDevice.d, 4098, str, new BleWriteCallback() { // from class: com.lp.ble.manager.LPBLEManager.10
            @Override // com.clj.fastble.callback.BleWriteCallback
            public void onWriteFailure(BleException bleException) {
                String str6 = bleException.f25296c;
                HashMap map3 = BLELog.f36371a;
                LPConnectWiFiListener lPConnectWiFiListener2 = LPBLEManager.this.listener;
                if (lPConnectWiFiListener2 != null) {
                    lPConnectWiFiListener2.LPConnectFailed(new Exception(bleException.f25296c));
                }
            }

            @Override // com.clj.fastble.callback.BleWriteCallback
            public void onWriteSuccess(int i2, int i3, byte[] bArr) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupResultOld(String str, LPConnectWiFiListener lPConnectWiFiListener) {
        if (!str.contains("IP:") || !str.contains(":UUID:")) {
            if (!str.startsWith("LP0.1:NETRES:ERR:CODE:") || lPConnectWiFiListener == null) {
                return;
            }
            lPConnectWiFiListener.LPConnectFailed(new Exception("ble link error"));
            return;
        }
        int iIndexOf = str.indexOf("IP:");
        int iIndexOf2 = str.indexOf(":UUID:");
        String strReplace = str.substring(iIndexOf, iIndexOf2).replace("IP:", "");
        String strReplace2 = str.substring(iIndexOf2).replace(":UUID:", "");
        if (lPConnectWiFiListener != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("IP", strReplace);
                jSONObject.put("UUID", strReplace2);
                jSONObject.put(m.v, ContentTree.ROOT_ID);
                lPConnectWiFiListener.LPConnectResult(BLEConnectApResult.LP_CONNECT_AP_SUCCESS, jSONObject.toString());
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    public void addModule(String str, String str2, String str3) {
        StatisticCallback statisticCallback = BLEManager.f36330c.f36332b;
        if (statisticCallback != null) {
            statisticCallback.a();
        }
    }

    public void connectBLE(final LPBluetoothDevice lPBluetoothDevice, final LPConnectBLEListener lPConnectBLEListener) {
        this.mNeedHexStr = false;
        if (this.mBLEConnector == null) {
            this.mBLEConnector = new BLEConnector(lPBluetoothDevice);
        }
        this.lpBluetoothDevice = lPBluetoothDevice;
        this.mBLEConnector.e(new LPConnectBLEListener() { // from class: com.lp.ble.manager.LPBLEManager.5
            @Override // com.lp.ble.manager.LPConnectBLEListener, com.lp.ble.BLEGattListener
            public void onConnectFail(Exception exc) {
                LPConnectBLEListener lPConnectBLEListener2 = lPConnectBLEListener;
                if (lPConnectBLEListener2 != null) {
                    lPConnectBLEListener2.onConnectFail(exc);
                }
            }

            @Override // com.lp.ble.manager.LPConnectBLEListener, com.lp.ble.BLEGattListener
            public void onConnectSuccess(final BluetoothGatt bluetoothGatt, final int i2) {
                if (lPBluetoothDevice.a()) {
                    LPBLEManager.this.sendCustomerCMD(4097, "", new LPBLEResultListener() { // from class: com.lp.ble.manager.LPBLEManager.5.1
                        @Override // com.lp.ble.manager.LPBLEResultListener
                        public void onFailed(Exception exc) {
                            int i3 = Build.VERSION.SDK_INT;
                            AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                            if (i3 <= 32) {
                                LPConnectBLEListener lPConnectBLEListener2 = lPConnectBLEListener;
                                if (lPConnectBLEListener2 != null) {
                                    lPConnectBLEListener2.onConnectFail(exc);
                                    return;
                                }
                                return;
                            }
                            if (LPBLEManager.this.mBLEConnector != null) {
                                LPBLEManager.this.mBLEConnector.f36297a.f36358a = true;
                            }
                            LPConnectBLEListener lPConnectBLEListener3 = lPConnectBLEListener;
                            if (lPConnectBLEListener3 != null) {
                                lPConnectBLEListener3.onConnectSuccess(bluetoothGatt, i2);
                            }
                        }

                        @Override // com.lp.ble.manager.LPBLEResultListener
                        public void onResult(String str) {
                            try {
                                HashMap map = BLELog.f36371a;
                                LPBLEDeviceInfo commonInfoGson = LPBLEManager.this.parseCommonInfoGson(str);
                                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                LPBluetoothDevice lPBluetoothDevice2 = lPBluetoothDevice;
                                if (lPBluetoothDevice2 != null && commonInfoGson != null) {
                                    lPBluetoothDevice2.l = commonInfoGson;
                                }
                                LPConnectBLEListener lPConnectBLEListener2 = lPConnectBLEListener;
                                if (lPConnectBLEListener2 != null) {
                                    lPConnectBLEListener2.onConnectSuccess(bluetoothGatt, i2);
                                }
                            } catch (Exception unused) {
                                LPConnectBLEListener lPConnectBLEListener3 = lPConnectBLEListener;
                                if (lPConnectBLEListener3 != null) {
                                    lPConnectBLEListener3.onConnectSuccess(bluetoothGatt, i2);
                                }
                            } catch (Throwable th) {
                                LPConnectBLEListener lPConnectBLEListener4 = lPConnectBLEListener;
                                if (lPConnectBLEListener4 != null) {
                                    lPConnectBLEListener4.onConnectSuccess(bluetoothGatt, i2);
                                }
                                throw th;
                            }
                        }

                        @Override // com.lp.ble.manager.LPBLEResultListener
                        public void onWriteSuccess(int i3, int i4, byte[] bArr) {
                        }

                        @Override // com.lp.ble.manager.LPBLEResultListener
                        public void onResult(BLEResponse bLEResponse) {
                            onResult(bLEResponse.a());
                        }
                    });
                    return;
                }
                LPConnectBLEListener lPConnectBLEListener2 = lPConnectBLEListener;
                if (lPConnectBLEListener2 != null) {
                    lPConnectBLEListener2.onConnectSuccess(bluetoothGatt, i2);
                }
            }

            @Override // com.lp.ble.manager.LPConnectBLEListener, com.lp.ble.BLEGattListener
            public void onDisConnected(boolean z, BluetoothGatt bluetoothGatt, int i2) {
                LPConnectBLEListener lPConnectBLEListener2 = lPConnectBLEListener;
                if (lPConnectBLEListener2 != null) {
                    lPConnectBLEListener2.onDisConnected(z, bluetoothGatt, i2);
                }
            }

            @Override // com.lp.ble.manager.LPConnectBLEListener, com.lp.ble.BLEGattListener
            public void onFailed(int i2, String str) {
                LPConnectBLEListener lPConnectBLEListener2 = lPConnectBLEListener;
                if (lPConnectBLEListener2 != null) {
                    lPConnectBLEListener2.onFailed(i2, str);
                }
            }

            @Override // com.lp.ble.manager.LPConnectBLEListener, com.lp.ble.BLEGattListener
            public void onReConnectBLE(BluetoothGatt bluetoothGatt, int i2) {
                LPConnectBLEListener lPConnectBLEListener2 = lPConnectBLEListener;
                if (lPConnectBLEListener2 != null) {
                    lPConnectBLEListener2.onReConnectBLE(bluetoothGatt, i2);
                }
            }

            @Override // com.lp.ble.manager.LPConnectBLEListener, com.lp.ble.BLEGattListener
            public void onStartConnect() {
                LPConnectBLEListener lPConnectBLEListener2 = lPConnectBLEListener;
                if (lPConnectBLEListener2 != null) {
                    lPConnectBLEListener2.onStartConnect();
                }
            }
        });
    }

    public void connectWLAN(ConnectBLEInfo connectBLEInfo, LPConnectWiFiListener lPConnectWiFiListener) {
        if (this.mBLEInfo == null) {
            this.mBLEInfo = new ConnectBLEInfo();
        }
        ConnectBLEInfo connectBLEInfo2 = this.mBLEInfo;
        connectBLEInfo2.appIP = connectBLEInfo.appIP;
        connectBLEInfo2.ssid = connectBLEInfo.ssid;
        connectBLEInfo2.password = connectBLEInfo.password;
        connectBLEInfo2.auth = connectBLEInfo.auth;
        connectBLEInfo2.encry = connectBLEInfo.encry;
        connectBLEInfo2.bOtherNetwork = connectBLEInfo.bOtherNetwork;
        connectBLEInfo2.identity = connectBLEInfo.identity;
        if (TextUtils.isEmpty(connectBLEInfo.sessionId)) {
            this.mBLEInfo.sessionId = "" + (System.currentTimeMillis() / 1000);
        } else {
            this.mBLEInfo.sessionId = connectBLEInfo.sessionId;
        }
        this.listener = lPConnectWiFiListener;
        BLEConnector bLEConnector = this.mBLEConnector;
        if (bLEConnector == null) {
            lPConnectWiFiListener.LPConnectFailed(new Exception("mBLEConnector is null"));
            return;
        }
        bLEConnector.m(a.i(this.MultiCmdId, "", new StringBuilder()), this.characteristicChangedListener);
        this.mBLEConnector.l(a.i(this.MultiCmdId, "", new StringBuilder()), this.characteristicChangedListener);
        String strReplace = null;
        if (this.lpBluetoothDevice.a()) {
            HashMap map = BLELog.f36371a;
            BLEConnector bLEConnector2 = this.mBLEConnector;
            if (bLEConnector2 == null || !bLEConnector2.f36297a.f36358a) {
                if (bLEConnector2 != null) {
                    bLEConnector2.n(this.lpBluetoothDevice.d, 4097, "", new BleWriteCallback(this) { // from class: com.lp.ble.manager.LPBLEManager.13
                        @Override // com.clj.fastble.callback.BleWriteCallback
                        public void onWriteFailure(BleException bleException) {
                        }

                        @Override // com.clj.fastble.callback.BleWriteCallback
                        public void onWriteSuccess(int i2, int i3, byte[] bArr) {
                        }
                    });
                    return;
                }
                return;
            }
            this.mNeedHexStr = true;
            if (isPasswordValid(null)) {
                sendPWD(getCommandInfo(null));
                return;
            } else {
                if (lPConnectWiFiListener != null) {
                    lPConnectWiFiListener.LPConnectResult(BLEConnectApResult.LP_CONNECT_NEED_PASSWORD_ERROR, "need password");
                    return;
                }
                return;
            }
        }
        this.lpBluetoothDevice.f36359b.getName();
        HashMap map2 = BLELog.f36371a;
        if (this.mBLEConnector != null) {
            LPBluetoothDevice lPBluetoothDevice = this.lpBluetoothDevice;
            if (!TextUtils.isEmpty(lPBluetoothDevice.f36360c) && lPBluetoothDevice.f36360c.endsWith("1")) {
                BLEConnector bLEConnector3 = this.mBLEConnector;
                ConnectBLEInfo connectBLEInfo3 = this.mBLEInfo;
                String str = connectBLEInfo3.sessionId;
                try {
                    strReplace = ("LP0.1:NNETS:SSID:" + HexUtil.b(connectBLEInfo3.ssid.getBytes()) + ":SESSIONID:" + str).replace("\n", "");
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                bLEConnector3.o(new BleWriteCallback() { // from class: com.lp.ble.manager.LPBLEManager.11
                    @Override // com.clj.fastble.callback.BleWriteCallback
                    public void onWriteFailure(BleException bleException) {
                    }

                    @Override // com.clj.fastble.callback.BleWriteCallback
                    public void onWriteSuccess(int i2, int i3, byte[] bArr) {
                        String strReplace2;
                        HashMap map3 = BLELog.f36371a;
                        BLEConnector bLEConnector4 = LPBLEManager.this.mBLEConnector;
                        ConnectBLEInfo connectBLEInfo4 = LPBLEManager.this.mBLEInfo;
                        String str2 = connectBLEInfo4.sessionId;
                        String str3 = connectBLEInfo4.password;
                        try {
                            if (AesCBC.f36370a == null) {
                                AesCBC.f36370a = new AesCBC();
                            }
                            strReplace2 = ("LP0.1:NNETP:PASS:" + AesCBC.a(str3, "~linkplayble@#==") + ":SESSIONID:" + str2).replace("\n", "");
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            strReplace2 = null;
                        }
                        bLEConnector4.o(new BleWriteCallback(this) { // from class: com.lp.ble.manager.LPBLEManager.11.1
                            @Override // com.clj.fastble.callback.BleWriteCallback
                            public void onWriteFailure(BleException bleException) {
                            }

                            @Override // com.clj.fastble.callback.BleWriteCallback
                            public void onWriteSuccess(int i4, int i5, byte[] bArr2) {
                                HashMap map4 = BLELog.f36371a;
                            }
                        }, strReplace2);
                    }
                }, strReplace);
                return;
            }
            BLEConnector bLEConnector4 = this.mBLEConnector;
            ConnectBLEInfo connectBLEInfo4 = this.mBLEInfo;
            String str2 = connectBLEInfo4.ssid;
            String str3 = connectBLEInfo4.password;
            try {
                if (AesCBC.f36370a == null) {
                    AesCBC.f36370a = new AesCBC();
                }
                String strA = AesCBC.a(str3, "~linkplayble@#==");
                strReplace = ("LP0.1:NET:SSID:" + HexUtil.b(str2.getBytes()) + ":PASS:" + strA).replace("\n", "");
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            bLEConnector4.o(new BleWriteCallback(this) { // from class: com.lp.ble.manager.LPBLEManager.12
                @Override // com.clj.fastble.callback.BleWriteCallback
                public void onWriteFailure(BleException bleException) {
                }

                @Override // com.clj.fastble.callback.BleWriteCallback
                public void onWriteSuccess(int i2, int i3, byte[] bArr) {
                }
            }, strReplace);
        }
    }

    public void disConnect() {
        BLEConnector bLEConnector = this.mBLEConnector;
        if (bLEConnector != null) {
            RequestManger requestManger = bLEConnector.f36301f;
            if (requestManger != null) {
                requestManger.f36340a.quit();
                requestManger.f36341b.removeCallbacksAndMessages(null);
            }
            Handler handler = bLEConnector.f36298b;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            Handler handler2 = bLEConnector.f36299c;
            if (handler2 != null) {
                handler2.removeCallbacksAndMessages(null);
            }
            bLEConnector.f36303i = null;
            BleDevice bleDevice = bLEConnector.f36300e;
            if (bleDevice != null) {
                bLEConnector.f(bleDevice);
                BLEManager.c();
                HashMap map = BLELog.f36371a;
                BleManager.c().b(bLEConnector.f36300e);
                bLEConnector.f36300e = null;
            }
            bLEConnector.f36304j.set(3);
            bLEConnector.f36305k = true;
            if (this.characteristicChangedListener != null) {
                this.mBLEConnector.m(a.i(this.MultiCmdId, "", new StringBuilder()), this.characteristicChangedListener);
            }
            this.mBLEConnector = null;
        }
    }

    public void disConnectAll() {
        BLEConnector bLEConnector = this.mBLEConnector;
        if (bLEConnector != null) {
            RequestManger requestManger = bLEConnector.f36301f;
            if (requestManger != null) {
                requestManger.f36340a.quit();
                requestManger.f36341b.removeCallbacksAndMessages(null);
            }
            Handler handler = bLEConnector.f36298b;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            Handler handler2 = bLEConnector.f36299c;
            if (handler2 != null) {
                handler2.removeCallbacksAndMessages(null);
            }
            bLEConnector.f36303i = null;
            BleDevice bleDevice = bLEConnector.f36300e;
            if (bleDevice != null) {
                bLEConnector.f(bleDevice);
                BLEManager.c();
                HashMap map = BLELog.f36371a;
                BleManager.c().b(bLEConnector.f36300e);
                MultipleBluetoothController multipleBluetoothController = BleManager.c().d;
                if (multipleBluetoothController != null) {
                    synchronized (multipleBluetoothController) {
                        try {
                            Iterator it = multipleBluetoothController.f25278a.entrySet().iterator();
                            while (it.hasNext()) {
                                ((BleBluetooth) ((Map.Entry) it.next()).getValue()).c();
                            }
                            multipleBluetoothController.f25278a.clear();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                bLEConnector.f36300e = null;
            }
            bLEConnector.f36304j.set(3);
            bLEConnector.f36305k = true;
            if (this.characteristicChangedListener != null) {
                this.mBLEConnector.m(a.i(this.MultiCmdId, "", new StringBuilder()), this.characteristicChangedListener);
            }
            this.mBLEConnector = null;
        }
    }

    public String getSplitCharacter() {
        return "######";
    }

    public String getVersion() {
        return this.version;
    }

    public void getWLANList(LPBLEAPListListener lPBLEAPListListener) {
        privateGetWLANList(lPBLEAPListListener);
    }

    public void init(Application application) {
        LPBLEConfig lPBLEConfig = new LPBLEConfig();
        this.lpbleConfig = lPBLEConfig;
        lPBLEConfig.bHexPasswordCommand = false;
        BLEManager.f36330c.b(application);
    }

    public boolean isBluetoothEnable() {
        return BLEManager.f36330c.a() == 0;
    }

    public boolean isConnect() {
        BLEConnector bLEConnector = this.mBLEConnector;
        if (bLEConnector != null) {
            return bLEConnector.h();
        }
        return false;
    }

    public void sendCustomerCMD(final int i2, String str, final LPBLEResultListener lPBLEResultListener) {
        BLEConnector bLEConnector = this.mBLEConnector;
        if (bLEConnector == null) {
            lPBLEResultListener.onFailed(new Exception("mBLEConnector is null"));
        } else {
            bLEConnector.l(pq0.k(i2, ""), new BLECharacteristicChangedListener() { // from class: com.lp.ble.manager.LPBLEManager.3
                @Override // com.lp.ble.BLECharacteristicChangedListener
                public void onCharacteristicChanged(BLEResponse bLEResponse) {
                    LPBLEResultListener lPBLEResultListener2;
                    if (LPBLEManager.this.mBLEConnector != null) {
                        LPBLEManager.this.mBLEConnector.m(i2 + "", this);
                    }
                    bLEResponse.a();
                    HashMap map = BLELog.f36371a;
                    if (bLEResponse.f36353a != i2 || (lPBLEResultListener2 = lPBLEResultListener) == null) {
                        return;
                    }
                    lPBLEResultListener2.onResult(bLEResponse);
                }

                @Override // com.lp.ble.BLECharacteristicChangedListener
                public void onResponseTimeout(int i3) {
                    LPBLEResultListener lPBLEResultListener2;
                    HashMap map = BLELog.f36371a;
                    if (LPBLEManager.this.mBLEConnector != null) {
                        LPBLEManager.this.mBLEConnector.m(i2 + "", this);
                    }
                    if (i3 != i2 || (lPBLEResultListener2 = lPBLEResultListener) == null) {
                        return;
                    }
                    lPBLEResultListener2.onFailed(new Exception("response timeout"));
                }

                @Override // com.lp.ble.BLECharacteristicChangedListener
                public void onCharacteristicChanged(int i3, String str2) {
                    LPBLEResultListener lPBLEResultListener2;
                    if (LPBLEManager.this.mBLEConnector != null) {
                        LPBLEManager.this.mBLEConnector.m(i2 + "", this);
                    }
                    int i4 = i2;
                    HashMap map = BLELog.f36371a;
                    if (i3 != i4 || (lPBLEResultListener2 = lPBLEResultListener) == null) {
                        return;
                    }
                    lPBLEResultListener2.onResult(str2);
                }
            });
            this.mBLEConnector.n(this.lpBluetoothDevice.d, i2, str, new BleWriteCallback(this) { // from class: com.lp.ble.manager.LPBLEManager.4
                @Override // com.clj.fastble.callback.BleWriteCallback
                public void onWriteFailure(BleException bleException) {
                    HashMap map = BLELog.f36371a;
                    LPBLEResultListener lPBLEResultListener2 = lPBLEResultListener;
                    if (lPBLEResultListener2 != null) {
                        lPBLEResultListener2.onFailed(new Exception(bleException.f25296c));
                    }
                }

                @Override // com.clj.fastble.callback.BleWriteCallback
                public void onWriteSuccess(int i3, int i4, byte[] bArr) {
                }
            });
        }
    }

    public void setOOBEDone(LPBLEResultListener lPBLEResultListener) {
        sendCustomerCMD(4108, "{\"oobe\": \"1\"}", lPBLEResultListener);
    }

    public void setStatisticCallback(StatisticCallback statisticCallback) {
        BLEManager.f36330c.f36332b = statisticCallback;
    }

    public void startScan(LPBLEScanListener lPBLEScanListener) {
        this.scanListener = lPBLEScanListener;
        scan();
        Handler handler = this.handler;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(4, 240000L);
        }
    }

    public void stopScan() {
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        BLEScanner bLEScanner = BLEScanner.f36333f;
        if (BLEManager.f36330c.f36331a != null) {
            BLEScanner.f36333f.c();
        } else {
            v7.h("not call LPBLEManager.getInstance().init()");
        }
    }

    public void init(Application application, LPBLEConfig lPBLEConfig) {
        this.lpbleConfig = lPBLEConfig;
        BLEManager.f36330c.b(application);
    }

    public void connectWLAN(String str, String str2, String str3, String str4, LPConnectWiFiListener lPConnectWiFiListener) {
        if (this.mBLEConnector == null) {
            if (lPConnectWiFiListener != null) {
                lPConnectWiFiListener.LPConnectFailed(new Exception("ble connector is null"));
                return;
            }
            return;
        }
        if (this.mBLEInfo == null) {
            this.mBLEInfo = new ConnectBLEInfo();
        }
        ConnectBLEInfo connectBLEInfo = this.mBLEInfo;
        connectBLEInfo.appIP = "";
        connectBLEInfo.ssid = str;
        connectBLEInfo.password = str2;
        connectBLEInfo.auth = str3;
        connectBLEInfo.encry = str4;
        connectBLEInfo.bOtherNetwork = false;
        connectBLEInfo.identity = "";
        String str5 = "" + (System.currentTimeMillis() / 1000);
        ConnectBLEInfo connectBLEInfo2 = this.mBLEInfo;
        connectBLEInfo2.sessionId = str5;
        connectWLAN(connectBLEInfo2, lPConnectWiFiListener);
    }

    public void connectWLAN(String str, String str2, LPConnectWiFiListener lPConnectWiFiListener) {
        connectWLAN(str, str2, "", "", lPConnectWiFiListener);
    }
}
