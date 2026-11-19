package com.lp.ble;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattService;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.clj.fastble.BleManager;
import com.clj.fastble.bluetooth.BleBluetooth;
import com.clj.fastble.bluetooth.BleConnector;
import com.clj.fastble.callback.BleGattCallback;
import com.clj.fastble.callback.BleMtuChangedCallback;
import com.clj.fastble.callback.BleNotifyCallback;
import com.clj.fastble.callback.BleReadCallback;
import com.clj.fastble.callback.BleWriteCallback;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.BleException;
import com.clj.fastble.exception.OtherException;
import com.lp.ble.config.BleSetupConfig;
import com.lp.ble.entity.BLEResponse;
import com.lp.ble.entity.LPBluetoothDevice;
import com.lp.ble.statistic.BleStatistic;
import com.lp.ble.statistic.StatisticCallback;
import com.lp.ble.utils.BLELog;
import com.lp.ble.utils.BLEUtil;
import com.lp.ble.utils.HexUtil;
import com.lp.ble.utils.RsaEncryptUtil;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.md;
import defpackage.v7;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BLEConnector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LPBluetoothDevice f36297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f36298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f36299c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public BleDevice f36300e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public RequestManger f36301f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public BLEGattListener f36303i;
    public BLEResponse m;
    public String g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f36302h = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicInteger f36304j = new AtomicInteger(0);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f36305k = true;
    public int l = 20;
    public final HashMap n = new HashMap();

    /* JADX INFO: renamed from: com.lp.ble.BLEConnector$5, reason: invalid class name */
    class AnonymousClass5 extends BleGattCallback {

        /* JADX INFO: renamed from: com.lp.ble.BLEConnector$5$3, reason: invalid class name */
        class AnonymousClass3 implements Runnable {
            final /* synthetic */ BleDevice val$bleDevice;
            final /* synthetic */ BluetoothGatt val$gatt;
            final /* synthetic */ int val$status;

            public AnonymousClass3(BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i2) {
                this.val$bleDevice = bleDevice;
                this.val$gatt = bluetoothGatt;
                this.val$status = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    BLEManager.c();
                    Objects.toString(BLEConnector.this.f36303i);
                    BLEConnector.this.g();
                    HashMap map = BLELog.f36371a;
                    BLEConnector.c(BLEConnector.this, this.val$bleDevice, new BleMtuChangedCallback() { // from class: com.lp.ble.BLEConnector.5.3.1
                        @Override // com.clj.fastble.callback.BleMtuChangedCallback
                        public final void a(int i2) {
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            BLEConnector.this.k(new Runnable() { // from class: com.lp.ble.BLEConnector.5.3.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        BLEManager.c();
                                        Objects.toString(BLEConnector.this.f36303i);
                                        BLEConnector.this.g();
                                        HashMap map2 = BLELog.f36371a;
                                        AnonymousClass3 anonymousClass4 = AnonymousClass3.this;
                                        BLEConnector.a(BLEConnector.this, anonymousClass4.val$bleDevice);
                                    } catch (Exception e2) {
                                        BLEManager.c();
                                        Objects.toString(BLEConnector.this.f36303i);
                                        BLEConnector.this.g();
                                        e2.getLocalizedMessage();
                                        HashMap map3 = BLELog.f36371a;
                                    }
                                }
                            }, 1000L);
                            BLEConnector.this.k(new Runnable() { // from class: com.lp.ble.BLEConnector.5.3.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    BLEManager.c();
                                    Objects.toString(BLEConnector.this.f36303i);
                                    BLEConnector.this.g();
                                    HashMap map2 = BLELog.f36371a;
                                    AnonymousClass3 anonymousClass4 = AnonymousClass3.this;
                                    BLEGattListener bLEGattListener = BLEConnector.this.f36303i;
                                    if (bLEGattListener != null) {
                                        bLEGattListener.onConnectSuccess(anonymousClass4.val$gatt, anonymousClass4.val$status);
                                    }
                                }
                            }, 1500L);
                        }

                        @Override // com.clj.fastble.callback.BleMtuChangedCallback
                        public final void b(BleException bleException) {
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            BLEGattListener bLEGattListener = BLEConnector.this.f36303i;
                            if (bLEGattListener != null) {
                                bLEGattListener.onReConnectBLE(anonymousClass3.val$gatt, anonymousClass3.val$status);
                            }
                        }
                    });
                } catch (Exception e2) {
                    BLEManager.c();
                    Objects.toString(BLEConnector.this.f36303i);
                    BLEConnector.this.g();
                    e2.getLocalizedMessage();
                    HashMap map2 = BLELog.f36371a;
                }
            }
        }

        public AnonymousClass5() {
        }

        @Override // com.clj.fastble.callback.BleGattCallback
        public final void a(final BleDevice bleDevice, BleException bleException) {
            BLEManager.c();
            BLEConnector bLEConnector = BLEConnector.this;
            bLEConnector.g();
            HashMap map = BLELog.f36371a;
            if (bLEConnector.f36304j.addAndGet(1) <= 3 && !bLEConnector.f36305k) {
                bLEConnector.k(new Runnable() { // from class: com.lp.ble.BLEConnector.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BLEManager.c();
                        BLEConnector.this.g();
                        HashMap map2 = BLELog.f36371a;
                        BleManager bleManagerC = BleManager.c();
                        BleDevice bleDevice2 = bleDevice;
                        AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                        anonymousClass5.getClass();
                        bleManagerC.a(bleDevice2, anonymousClass5);
                    }
                }, 500L);
                return;
            }
            BLEManager.c();
            bLEConnector.g();
            BLEGattListener bLEGattListener = bLEConnector.f36303i;
            if (bLEGattListener != null) {
                bLEGattListener.onConnectFail(new Exception(bleException.f25296c));
            }
        }

        @Override // com.clj.fastble.callback.BleGattCallback
        public final void b(BleDevice bleDevice, final BluetoothGatt bluetoothGatt, final int i2) {
            BluetoothGattService service;
            BluetoothGattCharacteristic characteristic;
            BLEManager.c();
            BLEConnector bLEConnector = BLEConnector.this;
            bLEConnector.g();
            HashMap map = BLELog.f36371a;
            if (bLEConnector.f36297a.f36366k) {
                bLEConnector.f36299c.sendEmptyMessage(9);
                bLEConnector.k(new Runnable() { // from class: com.lp.ble.BLEConnector.5.2
                    @Override // java.lang.Runnable
                    public void run() {
                        BLEGattListener bLEGattListener = BLEConnector.this.f36303i;
                        if (bLEGattListener != null) {
                            bLEGattListener.onConnectSuccess(bluetoothGatt, i2);
                        }
                    }
                }, 1000L);
                return;
            }
            bLEConnector.g = "";
            bLEConnector.f36302h = "";
            int i3 = 0;
            if (bluetoothGatt != null) {
                int i4 = 0;
                while (true) {
                    if (i4 >= 3) {
                        service = null;
                        break;
                    }
                    service = bluetoothGatt.getService(UUID.fromString(BleSetupConfig.f36351a[i4]));
                    if (service != null) {
                        break;
                    } else {
                        i4++;
                    }
                }
            } else {
                service = null;
                break;
            }
            if (service == null) {
                if (bluetoothGatt != null) {
                    List<BluetoothGattService> services = bluetoothGatt.getServices();
                    StringBuffer stringBuffer = new StringBuffer("[");
                    if (services != null && services.size() > 0) {
                        Iterator<BluetoothGattService> it = services.iterator();
                        while (it.hasNext()) {
                            stringBuffer.append(it.next().getUuid() + "  ");
                        }
                        stringBuffer.append("]");
                    }
                }
                BLEManager.c();
                bLEConnector.g();
                HashMap map2 = BLELog.f36371a;
                BLEGattListener bLEGattListener = bLEConnector.f36303i;
                if (bLEGattListener != null) {
                    bLEGattListener.onFailed(4099, "service == null");
                }
                BLEManager bLEManager = BLEManager.f36330c;
                BleStatistic.a(System.currentTimeMillis());
                StatisticCallback statisticCallback = bLEManager.f36332b;
                if (statisticCallback != null) {
                    statisticCallback.a();
                }
            } else {
                bLEConnector.g = service.getUuid().toString();
                while (true) {
                    if (i3 >= 4) {
                        characteristic = null;
                        break;
                    }
                    characteristic = service.getCharacteristic(UUID.fromString(BleSetupConfig.f36352b[i3]));
                    if (characteristic != null) {
                        break;
                    } else {
                        i3++;
                    }
                }
                if (characteristic != null) {
                    bLEConnector.f36302h = characteristic.getUuid().toString();
                    RequestManger requestManger = bLEConnector.f36301f;
                    if (requestManger != null) {
                        requestManger.f36340a.quit();
                        requestManger.f36341b.removeCallbacksAndMessages(null);
                    }
                    bLEConnector.f36301f = new RequestManger(bleDevice, bLEConnector.g, bLEConnector.f36302h);
                    bLEConnector.k(new AnonymousClass3(bleDevice, bluetoothGatt, i2), 500L);
                    return;
                }
                List<BluetoothGattCharacteristic> characteristics = service.getCharacteristics();
                StringBuffer stringBuffer2 = new StringBuffer("[");
                if (characteristics != null && characteristics.size() > 0) {
                    Iterator<BluetoothGattCharacteristic> it2 = characteristics.iterator();
                    while (it2.hasNext()) {
                        stringBuffer2.append(it2.next().getUuid() + "  ");
                    }
                    stringBuffer2.append("]");
                }
                BLEManager.c();
                bLEConnector.g();
                HashMap map3 = BLELog.f36371a;
                BLEManager.c();
                bLEConnector.g();
                BLEGattListener bLEGattListener2 = bLEConnector.f36303i;
                if (bLEGattListener2 != null) {
                    bLEGattListener2.onFailed(4100, "characteristic == null");
                }
                BLEManager bLEManager2 = BLEManager.f36330c;
                BleStatistic.a(System.currentTimeMillis());
                StatisticCallback statisticCallback2 = bLEManager2.f36332b;
                if (statisticCallback2 != null) {
                    statisticCallback2.a();
                }
            }
            BLEManager.c();
            Objects.toString(bLEConnector.f36303i);
            bLEConnector.g();
        }

        @Override // com.clj.fastble.callback.BleGattCallback
        public final void c(boolean z, BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i2) {
            BLEManager.c();
            BLEConnector bLEConnector = BLEConnector.this;
            bLEConnector.g();
            HashMap map = BLELog.f36371a;
            BLEGattListener bLEGattListener = bLEConnector.f36303i;
            BLEManager.c();
            bLEConnector.g();
            Object obj = bLEConnector.f36303i;
            if (obj == null) {
                obj = "";
            }
            Objects.toString(obj);
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
            bLEConnector.f(bleDevice);
            BLEManager.c();
            bLEConnector.g();
            Object obj2 = bLEConnector.f36303i;
            if (obj2 == null) {
                obj2 = "";
            }
            Objects.toString(obj2);
            BLEManager.c();
            bLEConnector.g();
            (bLEGattListener != null ? bLEGattListener : "").toString();
            if (bLEGattListener != null) {
                bLEGattListener.onDisConnected(z, bluetoothGatt, i2);
            }
        }

        @Override // com.clj.fastble.callback.BleGattCallback
        public final void d() {
            BLEManager.c();
            BLEConnector bLEConnector = BLEConnector.this;
            bLEConnector.g();
            HashMap map = BLELog.f36371a;
            BLEGattListener bLEGattListener = bLEConnector.f36303i;
            if (bLEGattListener != null) {
                bLEGattListener.onStartConnect();
            }
        }
    }

    public BLEConnector(LPBluetoothDevice lPBluetoothDevice) {
        this.d = 0;
        if (lPBluetoothDevice == null) {
            md.n("device must not be null");
            throw null;
        }
        this.f36297a = lPBluetoothDevice;
        this.d = 0;
        this.f36299c = new Handler(Looper.getMainLooper()) { // from class: com.lp.ble.BLEConnector.1
            private final String uuid_service = "0000fea0-0000-1000-8000-00805f9b34fb";

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                BLEConnector bLEConnector = BLEConnector.this;
                BleDevice bleDevice = bLEConnector.f36300e;
                if (bleDevice == null) {
                    return;
                }
                int i2 = message.what;
                if (i2 == 9) {
                    String country = Locale.getDefault().getCountry();
                    BleManager.c().e(bleDevice, "0128fe40-002f-11e5-87d0-0002a5d5c51b", country.getBytes(), true, new BleWriteCallback(country) { // from class: com.lp.ble.BLEConnector.1.1
                        @Override // com.clj.fastble.callback.BleWriteCallback
                        public final void onWriteFailure(BleException bleException) {
                            BLEConnector.this.g();
                            HashMap map = BLELog.f36371a;
                        }

                        @Override // com.clj.fastble.callback.BleWriteCallback
                        public final void onWriteSuccess(int i3, int i4, byte[] bArr) {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            BLEConnector.this.g();
                            HashMap map = BLELog.f36371a;
                            BLEConnector.this.i(4099, "{\"result\":\"OK\"}");
                        }
                    });
                    return;
                }
                if (i2 == 1) {
                    BleManager.c().e(bleDevice, "0228fe40-002f-11e5-87d0-0002a5d5c51b", new byte[]{1}, true, new BleWriteCallback() { // from class: com.lp.ble.BLEConnector.1.2
                        @Override // com.clj.fastble.callback.BleWriteCallback
                        public final void onWriteFailure(BleException bleException) {
                            BLEConnector.this.g();
                            HashMap map = BLELog.f36371a;
                        }

                        @Override // com.clj.fastble.callback.BleWriteCallback
                        public final void onWriteSuccess(int i3, int i4, byte[] bArr) {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            BLEConnector.this.g();
                            HashMap map = BLELog.f36371a;
                            Message messageObtainMessage = anonymousClass1.obtainMessage(2);
                            messageObtainMessage.arg1 = 0;
                            messageObtainMessage.obj = new byte[0];
                            anonymousClass1.sendMessage(messageObtainMessage);
                        }
                    });
                    return;
                }
                if (i2 == 2) {
                    final int i3 = message.arg1;
                    final byte[] bArr = (byte[]) message.obj;
                    BleManager.c().e(bleDevice, "156c6160-fab2-11e4-9fbb-0002a5d5c51b", new byte[]{(byte) i3}, true, new BleWriteCallback() { // from class: com.lp.ble.BLEConnector.1.3
                        @Override // com.clj.fastble.callback.BleWriteCallback
                        public final void onWriteFailure(BleException bleException) {
                            BLEConnector.this.g();
                            HashMap map = BLELog.f36371a;
                        }

                        @Override // com.clj.fastble.callback.BleWriteCallback
                        public final void onWriteSuccess(int i4, int i5, byte[] bArr2) {
                            AnonymousClass1 anonymousClass1 = this;
                            BLEConnector.this.g();
                            HashMap map = BLELog.f36371a;
                            Message messageObtainMessage = anonymousClass1.obtainMessage(3);
                            messageObtainMessage.arg1 = i3;
                            messageObtainMessage.obj = bArr;
                            anonymousClass1.sendMessage(messageObtainMessage);
                        }
                    });
                    return;
                }
                if (i2 == 3) {
                    final int i4 = message.arg1;
                    final byte[] bArr2 = (byte[]) message.obj;
                    BleManager.c().d(bleDevice, "157c6160-fab2-11e4-9fbb-0002a5d5c51b", new BleReadCallback() { // from class: com.lp.ble.BLEConnector.1.4
                        @Override // com.clj.fastble.callback.BleReadCallback
                        public final void a(BleException bleException) {
                            BLEConnector.this.g();
                            HashMap map = BLELog.f36371a;
                        }

                        @Override // com.clj.fastble.callback.BleReadCallback
                        public final void b(byte[] bArr3) throws Throwable {
                            byte[] bArr4 = bArr2;
                            AnonymousClass1 anonymousClass1 = this;
                            if (bArr3 == null || bArr3.length <= 0) {
                                String strI = BLEUtil.i(bArr4);
                                BLEConnector.this.g();
                                HashMap map = BLELog.f36371a;
                                BLEConnector.this.i(4103, strI);
                                return;
                            }
                            int length = bArr4 != null ? bArr4.length : 0;
                            byte[] bArr5 = new byte[bArr3.length + length];
                            if (length > 0) {
                                System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length);
                                System.arraycopy(bArr3, 0, bArr5, length, bArr3.length);
                            } else {
                                System.arraycopy(bArr3, 0, bArr5, 0, bArr3.length);
                            }
                            BLEConnector.this.g();
                            Arrays.toString(bArr5);
                            HashMap map2 = BLELog.f36371a;
                            Message messageObtainMessage = anonymousClass1.obtainMessage(2);
                            messageObtainMessage.arg1 = i4 + 1;
                            messageObtainMessage.obj = bArr5;
                            anonymousClass1.sendMessage(messageObtainMessage);
                        }
                    });
                    return;
                }
                if (i2 == 4) {
                    final int i5 = message.arg1;
                    final byte[] bArr3 = (byte[]) message.obj;
                    final Bundle bundlePeekData = message.peekData();
                    BleManager.c().e(bleDevice, "1a6c6160-fab2-11e4-9fbb-0002a5d5c51b", new byte[]{(byte) i5}, true, new BleWriteCallback() { // from class: com.lp.ble.BLEConnector.1.5
                        @Override // com.clj.fastble.callback.BleWriteCallback
                        public final void onWriteFailure(BleException bleException) {
                            BLEConnector.this.g();
                            HashMap map = BLELog.f36371a;
                        }

                        @Override // com.clj.fastble.callback.BleWriteCallback
                        public final void onWriteSuccess(int i6, int i7, byte[] bArr4) {
                            AnonymousClass1 anonymousClass1 = this;
                            BLEConnector.this.g();
                            HashMap map = BLELog.f36371a;
                            Message messageObtainMessage = anonymousClass1.obtainMessage(5);
                            messageObtainMessage.arg1 = i5;
                            messageObtainMessage.obj = bArr3;
                            messageObtainMessage.setData(bundlePeekData);
                            anonymousClass1.sendMessage(messageObtainMessage);
                        }
                    });
                    return;
                }
                if (i2 == 5) {
                    final int i6 = message.arg1;
                    final byte[] bArr4 = (byte[]) message.obj;
                    final Bundle bundlePeekData2 = message.peekData();
                    BleManager.c().d(bleDevice, "1a7c6160-fab2-11e4-9fbb-0002a5d5c51b", new BleReadCallback() { // from class: com.lp.ble.BLEConnector.1.6
                        @Override // com.clj.fastble.callback.BleReadCallback
                        public final void a(BleException bleException) {
                            BLEConnector.this.g();
                            HashMap map = BLELog.f36371a;
                        }

                        @Override // com.clj.fastble.callback.BleReadCallback
                        public final void b(byte[] bArr5) {
                            byte[] bArr6 = bArr4;
                            Bundle bundle = bundlePeekData2;
                            AnonymousClass1 anonymousClass1 = this;
                            if (bArr5 != null && bArr5.length > 0) {
                                int length = bArr6 != null ? bArr6.length : 0;
                                byte[] bArr7 = new byte[bArr5.length + length];
                                if (length > 0) {
                                    System.arraycopy(bArr6, 0, bArr7, 0, bArr6.length);
                                    System.arraycopy(bArr5, 0, bArr7, length, bArr5.length);
                                } else {
                                    System.arraycopy(bArr5, 0, bArr7, 0, bArr5.length);
                                }
                                BLEConnector.this.g();
                                Arrays.toString(bArr7);
                                HashMap map = BLELog.f36371a;
                                Message messageObtainMessage = anonymousClass1.obtainMessage(4);
                                messageObtainMessage.arg1 = i6 + 1;
                                messageObtainMessage.obj = bArr7;
                                messageObtainMessage.setData(bundle);
                                anonymousClass1.sendMessage(messageObtainMessage);
                                return;
                            }
                            try {
                                JSONObject jSONObject = new JSONObject(BLEUtil.i(bArr6));
                                if (jSONObject.has("device_info")) {
                                    JSONObject jSONObject2 = jSONObject.getJSONObject("device_info");
                                    if (jSONObject2.has("public_key")) {
                                        String string = jSONObject2.getString("public_key");
                                        BLEConnector.this.g();
                                        HashMap map2 = BLELog.f36371a;
                                        BLEConnector.this.g();
                                        string.getClass();
                                        int length2 = string.getBytes().length;
                                        BLEConnector.this.g();
                                        int length3 = Base64.decode(string, 0).length;
                                        bundle.putString("public_key", string);
                                        Message messageObtainMessage2 = anonymousClass1.obtainMessage(6);
                                        messageObtainMessage2.setData(bundle);
                                        anonymousClass1.sendMessage(messageObtainMessage2);
                                    }
                                }
                            } catch (JSONException e2) {
                                e2.printStackTrace();
                                BLEConnector.this.g();
                                e2.getLocalizedMessage();
                                HashMap map3 = BLELog.f36371a;
                            }
                        }
                    });
                    return;
                }
                if (i2 != 6) {
                    if (i2 == 7) {
                        BleManager.c().d(bleDevice, "0c7c6160-fab2-11e4-9fbb-0002a5d5c51b", new BleReadCallback() { // from class: com.lp.ble.BLEConnector.1.8
                            @Override // com.clj.fastble.callback.BleReadCallback
                            public final void a(BleException bleException) {
                                BLEConnector.this.g();
                                HashMap map = BLELog.f36371a;
                            }

                            @Override // com.clj.fastble.callback.BleReadCallback
                            public final void b(byte[] bArr5) {
                                if (bArr5 == null || bArr5.length < 1) {
                                    return;
                                }
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                BLEConnector.this.g();
                                Arrays.toString(bArr5);
                                HashMap map = BLELog.f36371a;
                                byte b2 = bArr5[0];
                                if (b2 == 61 || b2 == 63 || b2 == 64 || b2 == 65 || b2 == 66 || b2 == 67 || b2 == 51) {
                                    anonymousClass1.sendEmptyMessageDelayed(8, 1000L);
                                    return;
                                }
                                if (b2 == 32 || b2 == 21 || b2 == 10 || b2 == 11 || b2 == 33) {
                                    JSONObject jSONObject = new JSONObject();
                                    try {
                                        jSONObject.put(m.v, 4);
                                    } catch (JSONException e2) {
                                        e2.printStackTrace();
                                    }
                                    BLEConnector.this.i(4102, jSONObject.toString());
                                    return;
                                }
                                if (b2 != 41 && b2 != 52) {
                                    anonymousClass1.sendEmptyMessageDelayed(7, HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD);
                                    return;
                                }
                                JSONObject jSONObject2 = new JSONObject();
                                try {
                                    jSONObject2.put(m.v, 3);
                                } catch (JSONException e3) {
                                    e3.printStackTrace();
                                }
                                BLEConnector.this.i(4102, jSONObject2.toString());
                            }
                        });
                        return;
                    } else if (i2 == 8) {
                        BleManager.c().d(bleDevice, "0d7c6160-fab2-11e4-9fbb-0002a5d5c51b", new BleReadCallback() { // from class: com.lp.ble.BLEConnector.1.9
                            @Override // com.clj.fastble.callback.BleReadCallback
                            public final void a(BleException bleException) {
                                BLEConnector.this.g();
                                HashMap map = BLELog.f36371a;
                            }

                            @Override // com.clj.fastble.callback.BleReadCallback
                            public final void b(byte[] bArr5) {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                BLEConnector.this.g();
                                Arrays.toString(bArr5);
                                HashMap map = BLELog.f36371a;
                                if (bArr5 == null || bArr5.length <= 0) {
                                    return;
                                }
                                try {
                                    String hostAddress = InetAddress.getByAddress(bArr5).getHostAddress();
                                    BLEConnector.this.g();
                                    JSONObject jSONObject = new JSONObject();
                                    jSONObject.put(m.v, 0);
                                    jSONObject.put("uuid", "");
                                    jSONObject.put("ip", hostAddress);
                                    BLEConnector.this.i(4102, jSONObject.toString());
                                    anonymousClass1.sendEmptyMessage(160);
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                    BLEConnector.this.g();
                                    e2.getLocalizedMessage();
                                    HashMap map2 = BLELog.f36371a;
                                }
                            }
                        });
                        return;
                    } else {
                        if (i2 == 160) {
                            BLEConnector.b(bLEConnector, bleDevice);
                            return;
                        }
                        return;
                    }
                }
                Bundle bundlePeekData3 = message.peekData();
                if (bundlePeekData3 != null) {
                    String string = bundlePeekData3.getString("ssid");
                    String string2 = bundlePeekData3.getString("password");
                    int i7 = bundlePeekData3.getInt("wpa_auth");
                    int i8 = bundlePeekData3.getInt("wpa_cipher");
                    String string3 = bundlePeekData3.getString("public_key");
                    BLEConnector.this.g();
                    HashMap map = BLELog.f36371a;
                    try {
                        String strTrim = string3.replaceAll("\n", "").replace("-----BEGIN PUBLIC KEY-----", "").replace("-----END PUBLIC KEY-----", "").trim();
                        byte[] bArrDecode = Base64.decode(strTrim, 0);
                        BLEConnector.this.g();
                        Arrays.toString(bArrDecode);
                        String strA = RsaEncryptUtil.a(string2, strTrim);
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("ssid", string);
                        jSONObject.put("wpa_auth", i7);
                        jSONObject.put("wpa_cipher", i8);
                        jSONObject.put("enc_passwd", strA);
                        jSONObject.put("wpa_id", 0);
                        jSONObject.put("scan_ssid", 0);
                        String string4 = jSONObject.toString();
                        BLEConnector.this.g();
                        int length = string4.getBytes().length;
                        BleManager.c().e(bleDevice, "0328fe40-002f-11e5-87d0-0002a5d5c51b", string4.getBytes(), false, new BleWriteCallback(string4) { // from class: com.lp.ble.BLEConnector.1.7
                            @Override // com.clj.fastble.callback.BleWriteCallback
                            public final void onWriteFailure(BleException bleException) {
                                BLEConnector.this.g();
                                HashMap map2 = BLELog.f36371a;
                            }

                            @Override // com.clj.fastble.callback.BleWriteCallback
                            public final void onWriteSuccess(int i9, int i10, byte[] bArr5) {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                BLEConnector.this.g();
                                HashMap map2 = BLELog.f36371a;
                                anonymousClass1.removeMessages(7);
                                anonymousClass1.sendEmptyMessageDelayed(7, HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD);
                            }
                        });
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        BLEConnector.this.g();
                        e2.getLocalizedMessage();
                        HashMap map2 = BLELog.f36371a;
                    }
                }
            }
        };
        this.f36298b = new Handler(Looper.getMainLooper()) { // from class: com.lp.ble.BLEConnector.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                HashMap map = BLELog.f36371a;
                Object[] objArrD = BLEConnector.this.d();
                if (objArrD != null) {
                    for (Object obj : objArrD) {
                        ((BLECharacteristicChangedListener) obj).onResponseTimeout(i2);
                    }
                }
            }
        };
    }

    public static void a(BLEConnector bLEConnector, BleDevice bleDevice) {
        if (bleDevice == null) {
            bLEConnector.getClass();
            return;
        }
        if (TextUtils.isEmpty(bLEConnector.g) || TextUtils.isEmpty(bLEConnector.f36302h)) {
            return;
        }
        BleManager bleManagerC = BleManager.c();
        String str = bLEConnector.g;
        String str2 = bLEConnector.f36302h;
        BleNotifyCallback bleNotifyCallback = new BleNotifyCallback() { // from class: com.lp.ble.BLEConnector.6
            @Override // com.clj.fastble.callback.BleNotifyCallback
            public final void a(byte[] bArr) {
                BLEManager.c();
                BLEConnector bLEConnector2 = BLEConnector.this;
                bLEConnector2.g();
                HexUtil.a(bArr);
                HashMap map = BLELog.f36371a;
                LPBluetoothDevice lPBluetoothDevice = bLEConnector2.f36297a;
                if (lPBluetoothDevice.a()) {
                    byte[] bArrC = BLEUtil.c(0, 2, bArr);
                    byte[] bArrC2 = BLEUtil.c(2, 2, bArr);
                    int iA = BLEUtil.a(bArrC2);
                    int iA2 = BLEUtil.a(bArrC);
                    if (iA2 == 19536 && iA == 32768) {
                        if (bArr.length < 12) {
                            BLEManager.c();
                            bLEConnector2.g();
                            return;
                        }
                        BLEUtil.a(BLEUtil.c(4, 2, bArr));
                        int iA3 = BLEUtil.a(BLEUtil.c(6, 2, bArr));
                        int iA4 = BLEUtil.a(BLEUtil.c(8, 2, bArr));
                        int iA5 = BLEUtil.a(BLEUtil.c(10, 2, bArr));
                        byte[] bArrC3 = BLEUtil.c(12, bArr.length - 12, bArr);
                        BLEResponse bLEResponseA = new BLEResponse.Builder(iA4, iA3, iA5).a();
                        bLEConnector2.m = bLEResponseA;
                        bLEResponseA.b(bArrC3);
                        BLEResponse bLEResponse = bLEConnector2.m;
                        if (bLEResponse == null || bLEResponse.a() == null) {
                            return;
                        }
                        BLEResponse bLEResponse2 = bLEConnector2.m;
                        bLEConnector2.i(bLEResponse2.f36353a, bLEResponse2.a());
                        bLEConnector2.m = null;
                        return;
                    }
                    if (iA2 != 19536) {
                        BLEResponse bLEResponse3 = bLEConnector2.m;
                        if (bLEResponse3 == null) {
                            BLEManager.c();
                            bLEConnector2.g();
                            return;
                        }
                        bLEResponse3.b(bArr);
                        BLEResponse bLEResponse4 = bLEConnector2.m;
                        if (bLEResponse4 == null || bLEResponse4.a() == null) {
                            return;
                        }
                        BLEResponse bLEResponse5 = bLEConnector2.m;
                        bLEConnector2.i(bLEResponse5.f36353a, bLEResponse5.a());
                        bLEConnector2.m = null;
                        return;
                    }
                    if (bArr.length < 6) {
                        BLEManager.c();
                        bLEConnector2.g();
                        return;
                    }
                    int iA6 = BLEUtil.a(bArrC2);
                    int iA7 = BLEUtil.a(BLEUtil.c(4, 2, bArr));
                    byte[] bArrC4 = BLEUtil.c(6, bArr.length - 6, bArr);
                    BLEResponse bLEResponseA2 = new BLEResponse.Builder(0, iA6, iA7).a();
                    bLEConnector2.m = bLEResponseA2;
                    bLEResponseA2.b(bArrC4);
                    BLEResponse bLEResponse6 = bLEConnector2.m;
                    if (bLEResponse6 == null || bLEResponse6.a() == null) {
                        return;
                    }
                    BLEResponse bLEResponse7 = bLEConnector2.m;
                    bLEConnector2.i(bLEResponse7.f36353a, bLEResponse7.a());
                    bLEConnector2.m = null;
                    return;
                }
                if (lPBluetoothDevice.d != 19537 || lPBluetoothDevice.f36361e <= 0) {
                    String str3 = new String(bArr);
                    BLEManager.c();
                    bLEConnector2.g();
                    HexUtil.d(0);
                    Object[] objArrD = bLEConnector2.d();
                    if (objArrD != null) {
                        for (Object obj : objArrD) {
                            ((BLECharacteristicChangedListener) obj).onCharacteristicChanged(0, str3);
                        }
                        return;
                    }
                    return;
                }
                byte[] bArrC5 = BLEUtil.c(0, 2, bArr);
                byte[] bArrC6 = BLEUtil.c(2, 2, bArr);
                int iA8 = BLEUtil.a(bArrC6);
                int iA9 = BLEUtil.a(bArrC5);
                if (iA9 == 19537 && iA8 == 32768) {
                    if (bArr.length < 12) {
                        BLEManager.c();
                        bLEConnector2.g();
                        return;
                    }
                    BLEUtil.a(BLEUtil.c(4, 2, bArr));
                    int iA10 = BLEUtil.a(BLEUtil.c(6, 2, bArr));
                    int iA11 = BLEUtil.a(BLEUtil.c(8, 2, bArr));
                    int iA12 = BLEUtil.a(BLEUtil.c(10, 2, bArr));
                    byte[] bArrC7 = BLEUtil.c(12, bArr.length - 12, bArr);
                    BLEResponse bLEResponseA3 = new BLEResponse.Builder(iA11, iA10, iA12).a();
                    bLEConnector2.m = bLEResponseA3;
                    bLEResponseA3.b(bArrC7);
                    BLEResponse bLEResponse8 = bLEConnector2.m;
                    if (bLEResponse8 == null || bLEResponse8.a() == null) {
                        return;
                    }
                    bLEConnector2.j(bLEConnector2.m);
                    bLEConnector2.m = null;
                    return;
                }
                if (iA9 != 19537) {
                    BLEResponse bLEResponse9 = bLEConnector2.m;
                    if (bLEResponse9 == null) {
                        BLEManager.c();
                        bLEConnector2.g();
                        return;
                    }
                    bLEResponse9.b(bArr);
                    BLEResponse bLEResponse10 = bLEConnector2.m;
                    if (bLEResponse10 == null || bLEResponse10.a() == null) {
                        return;
                    }
                    bLEConnector2.j(bLEConnector2.m);
                    bLEConnector2.m = null;
                    return;
                }
                if (bArr.length < 6) {
                    BLEManager.c();
                    bLEConnector2.g();
                    return;
                }
                int iA13 = BLEUtil.a(bArrC6);
                int iA14 = BLEUtil.a(BLEUtil.c(4, 2, bArr));
                byte[] bArrC8 = BLEUtil.c(6, bArr.length - 6, bArr);
                BLEResponse bLEResponseA4 = new BLEResponse.Builder(0, iA13, iA14).a();
                bLEConnector2.m = bLEResponseA4;
                bLEResponseA4.b(bArrC8);
                BLEResponse bLEResponse11 = bLEConnector2.m;
                if (bLEResponse11 == null || bLEResponse11.a() == null) {
                    return;
                }
                bLEConnector2.j(bLEConnector2.m);
                bLEConnector2.m = null;
            }

            @Override // com.clj.fastble.callback.BleNotifyCallback
            public final void b(BleException bleException) {
                BLEManager.c();
                BLEConnector.this.g();
                HashMap map = BLELog.f36371a;
            }

            @Override // com.clj.fastble.callback.BleNotifyCallback
            public final void c() {
                BLEManager.c();
                BLEConnector.this.g();
                HashMap map = BLELog.f36371a;
            }
        };
        BleBluetooth bleBluetoothA = bleManagerC.d.a(bleDevice);
        if (bleBluetoothA == null) {
            bleNotifyCallback.b(new OtherException("This device not connect!"));
            return;
        }
        BleConnector bleConnectorE = bleBluetoothA.e();
        bleConnectorE.e(str, str2);
        BluetoothGattCharacteristic bluetoothGattCharacteristic = bleConnectorE.f25276c;
        if (bluetoothGattCharacteristic == null || (bluetoothGattCharacteristic.getProperties() | 16) <= 0) {
            bleNotifyCallback.b(new OtherException("this characteristic not support notify!"));
            return;
        }
        bleConnectorE.c();
        bleNotifyCallback.setKey(str2);
        bleNotifyCallback.setHandler(bleConnectorE.f25277e);
        BleBluetooth bleBluetooth = bleConnectorE.d;
        synchronized (bleBluetooth) {
            bleBluetooth.f25266c.put(str2, bleNotifyCallback);
        }
        Handler handler = bleConnectorE.f25277e;
        Message messageObtainMessage = handler.obtainMessage(17, bleNotifyCallback);
        BleManager.c().getClass();
        handler.sendMessageDelayed(messageObtainMessage, LiveTranslationEntity.DefaultSentenceTimeOut);
        bleConnectorE.d(bleConnectorE.f25274a, bleConnectorE.f25276c, true, bleNotifyCallback);
    }

    public static void b(BLEConnector bLEConnector, final BleDevice bleDevice) {
        int i2 = bLEConnector.d + 1;
        bLEConnector.d = i2;
        if (i2 > 2) {
            return;
        }
        BleManager.c().e(bleDevice, "147c6160-fab2-11e4-9fbb-0002a5d5c51b", "{\"keep_hotspot_until_connected\":true}".getBytes(), false, new BleWriteCallback() { // from class: com.lp.ble.BLEConnector.3
            @Override // com.clj.fastble.callback.BleWriteCallback
            public final void onWriteFailure(BleException bleException) {
                BLEConnector bLEConnector2 = BLEConnector.this;
                bLEConnector2.g();
                HashMap map = BLELog.f36371a;
                BLEConnector.b(bLEConnector2, bleDevice);
            }

            @Override // com.clj.fastble.callback.BleWriteCallback
            public final void onWriteSuccess(int i3, int i4, byte[] bArr) {
                BLEConnector bLEConnector2 = BLEConnector.this;
                bLEConnector2.g();
                HashMap map = BLELog.f36371a;
                bLEConnector2.d = 0;
            }
        });
    }

    public static void c(BLEConnector bLEConnector, BleDevice bleDevice, final BleMtuChangedCallback bleMtuChangedCallback) {
        bLEConnector.getClass();
        if (bleDevice == null) {
            return;
        }
        BleManager bleManagerC = BleManager.c();
        BleMtuChangedCallback bleMtuChangedCallback2 = new BleMtuChangedCallback() { // from class: com.lp.ble.BLEConnector.7
            @Override // com.clj.fastble.callback.BleMtuChangedCallback
            public final void a(int i2) {
                BLEManager.c();
                BLEConnector bLEConnector2 = BLEConnector.this;
                bLEConnector2.g();
                HashMap map = BLELog.f36371a;
                int i3 = i2 - 3;
                if (i3 <= 20) {
                    i3 = 20;
                }
                bLEConnector2.l = i3;
                BleManager bleManagerC2 = BleManager.c();
                int i4 = bLEConnector2.l;
                if (i4 > 0) {
                    bleManagerC2.f25262f = i4;
                } else {
                    bleManagerC2.getClass();
                }
                bleMtuChangedCallback.a(bLEConnector2.l);
            }

            @Override // com.clj.fastble.callback.BleMtuChangedCallback
            public final void b(BleException bleException) {
                BLEManager.c();
                BLEConnector.this.g();
                HashMap map = BLELog.f36371a;
                bleMtuChangedCallback.b(bleException);
            }
        };
        bleManagerC.getClass();
        BleBluetooth bleBluetoothA = bleManagerC.d.a(bleDevice);
        if (bleBluetoothA == null) {
            bleMtuChangedCallback2.b(new OtherException("This device is not connected!"));
            return;
        }
        BleConnector bleConnectorE = bleBluetoothA.e();
        bleConnectorE.f25277e.removeMessages(97);
        bleMtuChangedCallback2.setHandler(bleConnectorE.f25277e);
        BleBluetooth bleBluetooth = bleConnectorE.d;
        synchronized (bleBluetooth) {
            bleBluetooth.f25265b = bleMtuChangedCallback2;
        }
        Handler handler = bleConnectorE.f25277e;
        Message messageObtainMessage = handler.obtainMessage(97, bleMtuChangedCallback2);
        BleManager.c().getClass();
        handler.sendMessageDelayed(messageObtainMessage, LiveTranslationEntity.DefaultSentenceTimeOut);
        if (bleConnectorE.f25274a.requestMtu(512)) {
            return;
        }
        bleConnectorE.f25277e.removeMessages(97);
        bleMtuChangedCallback2.b(new OtherException("gatt requestMtu fail"));
    }

    public final Object[] d() {
        Object[] array;
        synchronized (this.n) {
            try {
                array = this.n.size() > 0 ? this.n.values().toArray() : null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return array;
    }

    public final void e(BLEGattListener bLEGattListener) {
        if (BLEManager.f36330c.f36331a == null) {
            v7.h("not call LPBLEManager.getInstance().init()");
            return;
        }
        LPBluetoothDevice lPBluetoothDevice = this.f36297a;
        if (lPBluetoothDevice == null) {
            BLEManager.c();
            g();
            HashMap map = BLELog.f36371a;
            return;
        }
        BleManager bleManagerC = BleManager.c();
        BluetoothDevice bluetoothDevice = lPBluetoothDevice.f36359b;
        bleManagerC.getClass();
        this.f36300e = new BleDevice(bluetoothDevice);
        this.f36303i = bLEGattListener;
        Runnable runnable = new Runnable() { // from class: com.lp.ble.BLEConnector.4
            @Override // java.lang.Runnable
            public void run() {
                BLEConnector bLEConnector = BLEConnector.this;
                if (bLEConnector.f36300e == null) {
                    return;
                }
                bLEConnector.f36305k = false;
                bLEConnector.f36304j.set(0);
                BLEManager bLEManager = BLEManager.f36330c;
                BleStatistic.a(System.currentTimeMillis());
                StatisticCallback statisticCallback = bLEManager.f36332b;
                if (statisticCallback != null) {
                    statisticCallback.a();
                }
                BleManager.c().a(bLEConnector.f36300e, bLEConnector.new AnonymousClass5());
            }
        };
        Handler handler = this.f36298b;
        if (handler != null) {
            handler.post(runnable);
            return;
        }
        BLEManager.c();
        g();
        HashMap map2 = BLELog.f36371a;
    }

    public final void f(BleDevice bleDevice) {
        if (bleDevice == null || TextUtils.isEmpty(this.g) || TextUtils.isEmpty(this.f36302h)) {
            return;
        }
        BleManager bleManagerC = BleManager.c();
        String str = this.g;
        String str2 = this.f36302h;
        BleBluetooth bleBluetoothA = bleManagerC.d.a(bleDevice);
        if (bleBluetoothA == null) {
            return;
        }
        BleConnector bleConnectorE = bleBluetoothA.e();
        bleConnectorE.e(str, str2);
        BluetoothGattCharacteristic bluetoothGattCharacteristic = bleConnectorE.f25276c;
        boolean zD = false;
        if (bluetoothGattCharacteristic != null && (bluetoothGattCharacteristic.getProperties() | 16) > 0) {
            zD = bleConnectorE.d(bleConnectorE.f25274a, bleConnectorE.f25276c, false, null);
        }
        if (zD) {
            synchronized (bleBluetoothA) {
                if (bleBluetoothA.f25266c.containsKey(str2)) {
                    bleBluetoothA.f25266c.remove(str2);
                }
            }
        }
    }

    public final String g() {
        LPBluetoothDevice lPBluetoothDevice = this.f36297a;
        if (lPBluetoothDevice == null) {
            return "";
        }
        return "[" + lPBluetoothDevice.f36359b.getName() + "] ";
    }

    public final boolean h() {
        int connectionState;
        if (this.f36300e != null && this.f36297a != null) {
            BleManager bleManagerC = BleManager.c();
            BleDevice bleDevice = this.f36300e;
            if (bleDevice != null) {
                connectionState = bleManagerC.f25261e.getConnectionState(bleDevice.f25292b, 7);
            } else {
                bleManagerC.getClass();
                connectionState = 0;
            }
            if (connectionState == 2) {
                return true;
            }
        }
        return false;
    }

    public final void i(int i2, String str) {
        RequestManger requestManger;
        this.f36298b.removeMessages(i2);
        BLEManager.c();
        g();
        HexUtil.d(i2);
        HashMap map = BLELog.f36371a;
        if (i2 == 4097) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("commonInfo") && !jSONObject.isNull("commonInfo")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("commonInfo");
                    if (jSONObject2.has("protocolVersion") && !jSONObject2.isNull("protocolVersion") && Integer.parseInt(jSONObject2.getString("protocolVersion").replaceAll("[.]", "")) < 104 && (requestManger = this.f36301f) != null) {
                        requestManger.f36343e = true;
                    }
                }
            } catch (Exception e2) {
                e2.getLocalizedMessage();
                HashMap map2 = BLELog.f36371a;
            }
        }
        Object[] objArrD = d();
        if (objArrD != null) {
            for (Object obj : objArrD) {
                ((BLECharacteristicChangedListener) obj).onCharacteristicChanged(i2, str);
            }
        }
    }

    public final void j(BLEResponse bLEResponse) {
        RequestManger requestManger;
        if (bLEResponse == null) {
            return;
        }
        this.f36298b.removeMessages(bLEResponse.f36353a);
        BLEManager.c();
        g();
        HexUtil.d(bLEResponse.f36353a);
        bLEResponse.a();
        HashMap map = BLELog.f36371a;
        if (bLEResponse.f36353a == 4097) {
            try {
                JSONObject jSONObject = new JSONObject(bLEResponse.a());
                if (jSONObject.has("commonInfo") && !jSONObject.isNull("commonInfo")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("commonInfo");
                    if (jSONObject2.has("protocolVersion") && !jSONObject2.isNull("protocolVersion") && Integer.parseInt(jSONObject2.getString("protocolVersion").replaceAll("[.]", "")) < 104 && (requestManger = this.f36301f) != null) {
                        requestManger.f36343e = true;
                    }
                }
            } catch (Exception e2) {
                e2.getLocalizedMessage();
                bLEResponse.a();
                HashMap map2 = BLELog.f36371a;
            }
        }
        Object obj = this.n.get(bLEResponse.f36353a + "");
        if (obj != null) {
            ((BLECharacteristicChangedListener) obj).onCharacteristicChanged(bLEResponse);
        }
    }

    public final void k(Runnable runnable, long j2) {
        Handler handler = this.f36298b;
        if (handler != null) {
            handler.postDelayed(runnable, j2);
            return;
        }
        BLEManager.c();
        g();
        HashMap map = BLELog.f36371a;
    }

    public final void l(String str, BLECharacteristicChangedListener bLECharacteristicChangedListener) {
        synchronized (this.n) {
            this.n.put(str, bLECharacteristicChangedListener);
        }
    }

    public final void m(String str, BLECharacteristicChangedListener bLECharacteristicChangedListener) {
        synchronized (this.n) {
            this.n.remove(str, bLECharacteristicChangedListener);
        }
    }

    public final void n(int i2, int i3, String str, BleWriteCallback bleWriteCallback) {
        byte[] bytes = str.getBytes();
        if (this.f36300e == null || !h() || TextUtils.isEmpty(this.g) || TextUtils.isEmpty(this.f36302h)) {
            BLEManager.c();
            g();
            HashMap map = BLELog.f36371a;
            if (bleWriteCallback != null) {
                bleWriteCallback.onWriteFailure(new OtherException("writeCommand before return"));
                return;
            }
            return;
        }
        int length = bytes.length;
        byte[] bArr = new byte[length + 6];
        bArr[0] = (byte) (i2 & 255);
        bArr[1] = (byte) ((i2 >> 8) & 255);
        bArr[2] = (byte) (i3 & 255);
        bArr[3] = (byte) ((i3 >> 8) & 255);
        bArr[4] = (byte) (length & 255);
        bArr[5] = (byte) ((length >> 8) & 255);
        System.arraycopy(bytes, 0, bArr, 6, bytes.length);
        BLEManager.c();
        g();
        HexUtil.d(i3);
        HexUtil.a(bArr);
        HashMap map2 = BLELog.f36371a;
        if (this.f36301f != null) {
            this.f36298b.sendEmptyMessageDelayed(i3, 15000L);
            RequestManger requestManger = this.f36301f;
            Handler handler = requestManger.f36341b;
            if (bleWriteCallback != null) {
                requestManger.d.put(String.valueOf(bArr.hashCode()), bleWriteCallback);
            }
            Message messageObtainMessage = handler.obtainMessage(52);
            messageObtainMessage.obj = bArr;
            handler.sendMessage(messageObtainMessage);
        }
    }

    public final void o(BleWriteCallback bleWriteCallback, String str) {
        byte[] bytes = str.getBytes();
        if (this.f36300e == null || !h() || TextUtils.isEmpty(this.g) || TextUtils.isEmpty(this.f36302h)) {
            BLEManager.c();
            g();
            HashMap map = BLELog.f36371a;
            bleWriteCallback.onWriteFailure(new OtherException("writeCommand before return"));
            return;
        }
        BLEManager.c();
        g();
        HexUtil.a(bytes);
        HashMap map2 = BLELog.f36371a;
        RequestManger requestManger = this.f36301f;
        if (requestManger != null) {
            Handler handler = requestManger.f36341b;
            requestManger.d.put(String.valueOf(bytes.hashCode()), bleWriteCallback);
            Message messageObtainMessage = handler.obtainMessage(52);
            messageObtainMessage.obj = bytes;
            handler.sendMessage(messageObtainMessage);
        }
    }
}
