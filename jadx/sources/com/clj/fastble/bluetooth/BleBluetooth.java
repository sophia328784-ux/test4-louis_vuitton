package com.clj.fastble.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleGattCallback;
import com.clj.fastble.callback.BleIndicateCallback;
import com.clj.fastble.callback.BleMtuChangedCallback;
import com.clj.fastble.callback.BleNotifyCallback;
import com.clj.fastble.callback.BleReadCallback;
import com.clj.fastble.callback.BleRssiCallback;
import com.clj.fastble.callback.BleWriteCallback;
import com.clj.fastble.data.BleConnectStateParameter;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.ConnectException;
import com.clj.fastble.exception.GattException;
import com.clj.fastble.exception.OtherException;
import com.clj.fastble.exception.TimeoutException;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class BleBluetooth {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public BleGattCallback f25264a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BleMtuChangedCallback f25265b;
    public LastState g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BleDevice f25270i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public BluetoothGatt f25271j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f25266c = new HashMap();
    public final HashMap d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f25267e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashMap f25268f = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f25269h = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MainHandler f25272k = new MainHandler(Looper.getMainLooper());
    public int l = 0;
    public final BluetoothGattCallback m = new BluetoothGattCallback() { // from class: com.clj.fastble.bluetooth.BleBluetooth.1
        @Override // android.bluetooth.BluetoothGattCallback
        public final void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
            Handler handler;
            Handler handler2;
            super.onCharacteristicChanged(bluetoothGatt, bluetoothGattCharacteristic);
            BleBluetooth bleBluetooth = BleBluetooth.this;
            Iterator it = bleBluetooth.f25266c.entrySet().iterator();
            while (it.hasNext()) {
                Object value = ((Map.Entry) it.next()).getValue();
                if (value instanceof BleNotifyCallback) {
                    BleNotifyCallback bleNotifyCallback = (BleNotifyCallback) value;
                    if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(bleNotifyCallback.getKey()) && (handler2 = bleNotifyCallback.getHandler()) != null) {
                        Message messageObtainMessage = handler2.obtainMessage();
                        messageObtainMessage.what = 19;
                        messageObtainMessage.obj = bleNotifyCallback;
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("notify_value", bluetoothGattCharacteristic.getValue());
                        messageObtainMessage.setData(bundle);
                        handler2.sendMessage(messageObtainMessage);
                    }
                }
            }
            Iterator it2 = bleBluetooth.d.entrySet().iterator();
            while (it2.hasNext()) {
                Object value2 = ((Map.Entry) it2.next()).getValue();
                if (value2 instanceof BleIndicateCallback) {
                    BleIndicateCallback bleIndicateCallback = (BleIndicateCallback) value2;
                    if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(bleIndicateCallback.getKey()) && (handler = bleIndicateCallback.getHandler()) != null) {
                        Message messageObtainMessage2 = handler.obtainMessage();
                        messageObtainMessage2.what = 35;
                        messageObtainMessage2.obj = bleIndicateCallback;
                        Bundle bundle2 = new Bundle();
                        bundle2.putByteArray("indicate_value", bluetoothGattCharacteristic.getValue());
                        messageObtainMessage2.setData(bundle2);
                        handler.sendMessage(messageObtainMessage2);
                    }
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public final void onCharacteristicRead(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i2) {
            Handler handler;
            super.onCharacteristicRead(bluetoothGatt, bluetoothGattCharacteristic, i2);
            Iterator it = BleBluetooth.this.f25268f.entrySet().iterator();
            while (it.hasNext()) {
                Object value = ((Map.Entry) it.next()).getValue();
                if (value instanceof BleReadCallback) {
                    BleReadCallback bleReadCallback = (BleReadCallback) value;
                    if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(bleReadCallback.getKey()) && (handler = bleReadCallback.getHandler()) != null) {
                        Message messageObtainMessage = handler.obtainMessage();
                        messageObtainMessage.what = 66;
                        messageObtainMessage.obj = bleReadCallback;
                        Bundle bundle = new Bundle();
                        bundle.putInt("read_status", i2);
                        bundle.putByteArray("read_value", bluetoothGattCharacteristic.getValue());
                        messageObtainMessage.setData(bundle);
                        handler.sendMessage(messageObtainMessage);
                    }
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public final void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i2) {
            Handler handler;
            super.onCharacteristicWrite(bluetoothGatt, bluetoothGattCharacteristic, i2);
            Iterator it = BleBluetooth.this.f25267e.entrySet().iterator();
            while (it.hasNext()) {
                Object value = ((Map.Entry) it.next()).getValue();
                if (value instanceof BleWriteCallback) {
                    BleWriteCallback bleWriteCallback = (BleWriteCallback) value;
                    if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(bleWriteCallback.getKey()) && (handler = bleWriteCallback.getHandler()) != null) {
                        Message messageObtainMessage = handler.obtainMessage();
                        messageObtainMessage.what = 50;
                        messageObtainMessage.obj = bleWriteCallback;
                        Bundle bundle = new Bundle();
                        bundle.putInt("write_status", i2);
                        bundle.putByteArray("write_value", bluetoothGattCharacteristic.getValue());
                        messageObtainMessage.setData(bundle);
                        handler.sendMessage(messageObtainMessage);
                    }
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public final void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i2, int i3) {
            super.onConnectionStateChange(bluetoothGatt, i2, i3);
            Thread.currentThread().getId();
            BleBluetooth bleBluetooth = BleBluetooth.this;
            bleBluetooth.f25271j = bluetoothGatt;
            MainHandler mainHandler = bleBluetooth.f25272k;
            mainHandler.removeMessages(7);
            if (i3 == 2) {
                Message messageObtainMessage = mainHandler.obtainMessage();
                messageObtainMessage.what = 4;
                mainHandler.sendMessageDelayed(messageObtainMessage, 500L);
                return;
            }
            if (i3 == 0) {
                LastState lastState = bleBluetooth.g;
                if (lastState == LastState.CONNECT_CONNECTING) {
                    Message messageObtainMessage2 = mainHandler.obtainMessage();
                    messageObtainMessage2.what = 1;
                    messageObtainMessage2.obj = new BleConnectStateParameter(i2);
                    mainHandler.sendMessage(messageObtainMessage2);
                    return;
                }
                if (lastState == LastState.CONNECT_CONNECTED) {
                    Message messageObtainMessage3 = mainHandler.obtainMessage();
                    messageObtainMessage3.what = 2;
                    BleConnectStateParameter bleConnectStateParameter = new BleConnectStateParameter(i2);
                    bleConnectStateParameter.f25291b = bleBluetooth.f25269h;
                    messageObtainMessage3.obj = bleConnectStateParameter;
                    mainHandler.sendMessage(messageObtainMessage3);
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public final void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i2) {
            Handler handler;
            Handler handler2;
            super.onDescriptorWrite(bluetoothGatt, bluetoothGattDescriptor, i2);
            BleBluetooth bleBluetooth = BleBluetooth.this;
            Iterator it = bleBluetooth.f25266c.entrySet().iterator();
            while (it.hasNext()) {
                Object value = ((Map.Entry) it.next()).getValue();
                if (value instanceof BleNotifyCallback) {
                    BleNotifyCallback bleNotifyCallback = (BleNotifyCallback) value;
                    if (bluetoothGattDescriptor.getCharacteristic().getUuid().toString().equalsIgnoreCase(bleNotifyCallback.getKey()) && (handler2 = bleNotifyCallback.getHandler()) != null) {
                        Message messageObtainMessage = handler2.obtainMessage();
                        messageObtainMessage.what = 18;
                        messageObtainMessage.obj = bleNotifyCallback;
                        Bundle bundle = new Bundle();
                        bundle.putInt("notify_status", i2);
                        messageObtainMessage.setData(bundle);
                        handler2.sendMessage(messageObtainMessage);
                    }
                }
            }
            Iterator it2 = bleBluetooth.d.entrySet().iterator();
            while (it2.hasNext()) {
                Object value2 = ((Map.Entry) it2.next()).getValue();
                if (value2 instanceof BleIndicateCallback) {
                    BleIndicateCallback bleIndicateCallback = (BleIndicateCallback) value2;
                    if (bluetoothGattDescriptor.getCharacteristic().getUuid().toString().equalsIgnoreCase(bleIndicateCallback.getKey()) && (handler = bleIndicateCallback.getHandler()) != null) {
                        Message messageObtainMessage2 = handler.obtainMessage();
                        messageObtainMessage2.what = 34;
                        messageObtainMessage2.obj = bleIndicateCallback;
                        Bundle bundle2 = new Bundle();
                        bundle2.putInt("indicate_status", i2);
                        messageObtainMessage2.setData(bundle2);
                        handler.sendMessage(messageObtainMessage2);
                    }
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public final void onMtuChanged(BluetoothGatt bluetoothGatt, int i2, int i3) {
            Handler handler;
            super.onMtuChanged(bluetoothGatt, i2, i3);
            BleBluetooth bleBluetooth = BleBluetooth.this;
            BleMtuChangedCallback bleMtuChangedCallback = bleBluetooth.f25265b;
            if (bleMtuChangedCallback == null || (handler = bleMtuChangedCallback.getHandler()) == null) {
                return;
            }
            Message messageObtainMessage = handler.obtainMessage();
            messageObtainMessage.what = 98;
            messageObtainMessage.obj = bleBluetooth.f25265b;
            Bundle bundle = new Bundle();
            bundle.putInt("mtu_status", i3);
            bundle.putInt("mtu_value", i2);
            messageObtainMessage.setData(bundle);
            handler.sendMessage(messageObtainMessage);
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public final void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i2) {
            super.onServicesDiscovered(bluetoothGatt, i2);
            Thread.currentThread().getId();
            BleBluetooth bleBluetooth = BleBluetooth.this;
            bleBluetooth.f25271j = bluetoothGatt;
            MainHandler mainHandler = bleBluetooth.f25272k;
            if (i2 != 0) {
                Message messageObtainMessage = mainHandler.obtainMessage();
                messageObtainMessage.what = 5;
                mainHandler.sendMessage(messageObtainMessage);
            } else {
                Message messageObtainMessage2 = mainHandler.obtainMessage();
                messageObtainMessage2.what = 6;
                messageObtainMessage2.obj = new BleConnectStateParameter(i2);
                mainHandler.sendMessage(messageObtainMessage2);
            }
        }
    };

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class LastState {
        private static final /* synthetic */ LastState[] $VALUES;
        public static final LastState CONNECT_CONNECTED;
        public static final LastState CONNECT_CONNECTING;
        public static final LastState CONNECT_DISCONNECT;
        public static final LastState CONNECT_FAILURE;
        public static final LastState CONNECT_IDLE;

        static {
            LastState lastState = new LastState("CONNECT_IDLE", 0);
            CONNECT_IDLE = lastState;
            LastState lastState2 = new LastState("CONNECT_CONNECTING", 1);
            CONNECT_CONNECTING = lastState2;
            LastState lastState3 = new LastState("CONNECT_CONNECTED", 2);
            CONNECT_CONNECTED = lastState3;
            LastState lastState4 = new LastState("CONNECT_FAILURE", 3);
            CONNECT_FAILURE = lastState4;
            LastState lastState5 = new LastState("CONNECT_DISCONNECT", 4);
            CONNECT_DISCONNECT = lastState5;
            $VALUES = new LastState[]{lastState, lastState2, lastState3, lastState4, lastState5};
        }

        public static LastState valueOf(String str) {
            return (LastState) Enum.valueOf(LastState.class, str);
        }

        public static LastState[] values() {
            return (LastState[]) $VALUES.clone();
        }
    }

    public final class MainHandler extends Handler {
        public MainHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    BleBluetooth.this.d();
                    BleBluetooth.this.f();
                    BleBluetooth.this.a();
                    int i2 = BleBluetooth.this.l;
                    BleManager.c().getClass();
                    if (i2 < 0) {
                        BleManager.c().getClass();
                        BleBluetooth bleBluetooth = BleBluetooth.this;
                        bleBluetooth.l++;
                        Message messageObtainMessage = bleBluetooth.f25272k.obtainMessage();
                        messageObtainMessage.what = 3;
                        MainHandler mainHandler = BleBluetooth.this.f25272k;
                        BleManager.c().getClass();
                        mainHandler.sendMessageDelayed(messageObtainMessage, LiveTranslationEntity.DefaultSentenceTimeOut);
                        return;
                    }
                    BleBluetooth.this.g = LastState.CONNECT_FAILURE;
                    BleManager.c().d.c(BleBluetooth.this);
                    int i3 = ((BleConnectStateParameter) message.obj).f25290a;
                    BleBluetooth bleBluetooth2 = BleBluetooth.this;
                    BleGattCallback bleGattCallback = bleBluetooth2.f25264a;
                    if (bleGattCallback != null) {
                        bleGattCallback.a(bleBluetooth2.f25270i, new ConnectException(bleBluetooth2.f25271j, i3));
                        return;
                    }
                    return;
                case 2:
                    BleBluetooth.this.g = LastState.CONNECT_DISCONNECT;
                    BleManager.c().d.b(BleBluetooth.this);
                    BleBluetooth.this.c();
                    BleBluetooth.this.f();
                    BleBluetooth.this.a();
                    synchronized (BleBluetooth.this) {
                    }
                    BleBluetooth bleBluetooth3 = BleBluetooth.this;
                    synchronized (bleBluetooth3) {
                        bleBluetooth3.f25265b = null;
                    }
                    BleBluetooth bleBluetooth4 = BleBluetooth.this;
                    synchronized (bleBluetooth4) {
                        try {
                            HashMap map = bleBluetooth4.f25266c;
                            if (map != null) {
                                map.clear();
                            }
                            HashMap map2 = bleBluetooth4.d;
                            if (map2 != null) {
                                map2.clear();
                            }
                            HashMap map3 = bleBluetooth4.f25267e;
                            if (map3 != null) {
                                map3.clear();
                            }
                            HashMap map4 = bleBluetooth4.f25268f;
                            if (map4 != null) {
                                map4.clear();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                    BleBluetooth.this.f25272k.removeCallbacksAndMessages(null);
                    BleConnectStateParameter bleConnectStateParameter = (BleConnectStateParameter) message.obj;
                    boolean z = bleConnectStateParameter.f25291b;
                    int i4 = bleConnectStateParameter.f25290a;
                    BleBluetooth bleBluetooth5 = BleBluetooth.this;
                    BleGattCallback bleGattCallback2 = bleBluetooth5.f25264a;
                    if (bleGattCallback2 != null) {
                        bleGattCallback2.c(z, bleBluetooth5.f25270i, bleBluetooth5.f25271j, i4);
                        return;
                    }
                    return;
                case 3:
                    BleBluetooth bleBluetooth6 = BleBluetooth.this;
                    bleBluetooth6.b(bleBluetooth6.f25270i, bleBluetooth6.f25264a, bleBluetooth6.l);
                    return;
                case 4:
                    BleBluetooth bleBluetooth7 = BleBluetooth.this;
                    BluetoothGatt bluetoothGatt = bleBluetooth7.f25271j;
                    if (bluetoothGatt == null) {
                        Message messageObtainMessage2 = bleBluetooth7.f25272k.obtainMessage();
                        messageObtainMessage2.what = 5;
                        BleBluetooth.this.f25272k.sendMessage(messageObtainMessage2);
                        return;
                    } else {
                        if (bluetoothGatt.discoverServices()) {
                            return;
                        }
                        Message messageObtainMessage3 = BleBluetooth.this.f25272k.obtainMessage();
                        messageObtainMessage3.what = 5;
                        BleBluetooth.this.f25272k.sendMessage(messageObtainMessage3);
                        return;
                    }
                case 5:
                    BleBluetooth.this.d();
                    BleBluetooth.this.f();
                    BleBluetooth.this.a();
                    BleBluetooth.this.g = LastState.CONNECT_FAILURE;
                    BleManager.c().d.c(BleBluetooth.this);
                    BleBluetooth bleBluetooth8 = BleBluetooth.this;
                    BleGattCallback bleGattCallback3 = bleBluetooth8.f25264a;
                    if (bleGattCallback3 != null) {
                        bleGattCallback3.a(bleBluetooth8.f25270i, new OtherException("GATT discover services exception occurred!"));
                        return;
                    }
                    return;
                case 6:
                    BleBluetooth bleBluetooth9 = BleBluetooth.this;
                    bleBluetooth9.g = LastState.CONNECT_CONNECTED;
                    bleBluetooth9.f25269h = false;
                    BleManager.c().d.c(BleBluetooth.this);
                    MultipleBluetoothController multipleBluetoothController = BleManager.c().d;
                    BleBluetooth bleBluetooth10 = BleBluetooth.this;
                    synchronized (multipleBluetoothController) {
                        if (bleBluetooth10 != null) {
                            if (!multipleBluetoothController.f25278a.containsKey(bleBluetooth10.f25270i.a())) {
                                multipleBluetoothController.f25278a.put(bleBluetooth10.f25270i.a(), bleBluetooth10);
                            }
                            break;
                        }
                    }
                    int i5 = ((BleConnectStateParameter) message.obj).f25290a;
                    BleBluetooth bleBluetooth11 = BleBluetooth.this;
                    BleGattCallback bleGattCallback4 = bleBluetooth11.f25264a;
                    if (bleGattCallback4 != null) {
                        bleGattCallback4.b(bleBluetooth11.f25270i, bleBluetooth11.f25271j, i5);
                        return;
                    }
                    return;
                case 7:
                    BleBluetooth.this.d();
                    BleBluetooth.this.f();
                    BleBluetooth.this.a();
                    BleBluetooth.this.g = LastState.CONNECT_FAILURE;
                    BleManager.c().d.c(BleBluetooth.this);
                    BleBluetooth bleBluetooth12 = BleBluetooth.this;
                    BleGattCallback bleGattCallback5 = bleBluetooth12.f25264a;
                    if (bleGattCallback5 != null) {
                        bleGattCallback5.a(bleBluetooth12.f25270i, new TimeoutException());
                        return;
                    }
                    return;
                default:
                    super.handleMessage(message);
                    return;
            }
        }
    }

    public BleBluetooth(BleDevice bleDevice) {
        this.f25270i = bleDevice;
    }

    public final synchronized void a() {
        BluetoothGatt bluetoothGatt = this.f25271j;
        if (bluetoothGatt != null) {
            bluetoothGatt.close();
            this.f25271j = null;
        }
    }

    public final synchronized BluetoothGatt b(BleDevice bleDevice, BleGattCallback bleGattCallback, int i2) {
        try {
            BluetoothDevice bluetoothDevice = bleDevice.f25292b;
            if (bluetoothDevice != null) {
                bluetoothDevice.getName();
            }
            BluetoothDevice bluetoothDevice2 = bleDevice.f25292b;
            if (bluetoothDevice2 != null) {
                bluetoothDevice2.getAddress();
            }
            Thread.currentThread().getId();
            if (i2 == 0) {
                this.l = 0;
            }
            synchronized (this) {
                this.f25264a = bleGattCallback;
            }
            return this.f25271j;
        } catch (Throwable th) {
            throw th;
        }
        this.g = LastState.CONNECT_CONNECTING;
        BluetoothGatt bluetoothGattConnectGatt = bleDevice.f25292b.connectGatt(BleManager.c().f25258a, false, this.m, 2);
        this.f25271j = bluetoothGattConnectGatt;
        if (bluetoothGattConnectGatt != null) {
            BleGattCallback bleGattCallback2 = this.f25264a;
            if (bleGattCallback2 != null) {
                bleGattCallback2.d();
            }
            Message messageObtainMessage = this.f25272k.obtainMessage();
            messageObtainMessage.what = 7;
            MainHandler mainHandler = this.f25272k;
            BleManager.c().getClass();
            mainHandler.sendMessageDelayed(messageObtainMessage, 10000L);
        } else {
            d();
            f();
            a();
            this.g = LastState.CONNECT_FAILURE;
            BleManager.c().d.c(this);
            BleGattCallback bleGattCallback3 = this.f25264a;
            if (bleGattCallback3 != null) {
                bleGattCallback3.a(bleDevice, new OtherException("GATT connect exception occurred!"));
            }
        }
        return this.f25271j;
    }

    public final synchronized void c() {
        this.f25269h = true;
        d();
    }

    public final synchronized void d() {
        BluetoothGatt bluetoothGatt = this.f25271j;
        if (bluetoothGatt != null) {
            bluetoothGatt.disconnect();
        }
    }

    public final BleConnector e() {
        final BleConnector bleConnector = new BleConnector();
        bleConnector.d = this;
        bleConnector.f25274a = this.f25271j;
        bleConnector.f25277e = new Handler(Looper.getMainLooper()) { // from class: com.clj.fastble.bluetooth.BleConnector.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                int i2 = message.what;
                if (i2 == 49) {
                    BleWriteCallback bleWriteCallback = (BleWriteCallback) message.obj;
                    if (bleWriteCallback != null) {
                        bleWriteCallback.onWriteFailure(new TimeoutException());
                        return;
                    }
                    return;
                }
                if (i2 == 50) {
                    BleConnector.this.f25277e.removeMessages(49);
                    BleWriteCallback bleWriteCallback2 = (BleWriteCallback) message.obj;
                    Bundle data = message.getData();
                    int i3 = data.getInt("write_status");
                    byte[] byteArray = data.getByteArray("write_value");
                    if (bleWriteCallback2 != null) {
                        if (i3 == 0) {
                            bleWriteCallback2.onWriteSuccess(1, 1, byteArray);
                            return;
                        } else {
                            bleWriteCallback2.onWriteFailure(new GattException(i3));
                            return;
                        }
                    }
                    return;
                }
                if (i2 == 65) {
                    BleReadCallback bleReadCallback = (BleReadCallback) message.obj;
                    if (bleReadCallback != null) {
                        bleReadCallback.a(new TimeoutException());
                        return;
                    }
                    return;
                }
                if (i2 == 66) {
                    BleConnector.this.f25277e.removeMessages(65);
                    BleReadCallback bleReadCallback2 = (BleReadCallback) message.obj;
                    Bundle data2 = message.getData();
                    int i4 = data2.getInt("read_status");
                    byte[] byteArray2 = data2.getByteArray("read_value");
                    if (bleReadCallback2 != null) {
                        if (i4 == 0) {
                            bleReadCallback2.b(byteArray2);
                            return;
                        } else {
                            bleReadCallback2.a(new GattException(i4));
                            return;
                        }
                    }
                    return;
                }
                if (i2 == 81) {
                    BleRssiCallback bleRssiCallback = (BleRssiCallback) message.obj;
                    if (bleRssiCallback != null) {
                        new TimeoutException();
                        bleRssiCallback.a();
                        return;
                    }
                    return;
                }
                if (i2 == 82) {
                    BleConnector.this.f25277e.removeMessages(81);
                    BleRssiCallback bleRssiCallback2 = (BleRssiCallback) message.obj;
                    Bundle data3 = message.getData();
                    int i5 = data3.getInt("rssi_status");
                    data3.getInt("rssi_value");
                    if (bleRssiCallback2 != null) {
                        if (i5 == 0) {
                            bleRssiCallback2.b();
                            return;
                        } else {
                            new GattException(i5);
                            bleRssiCallback2.a();
                            return;
                        }
                    }
                    return;
                }
                if (i2 == 97) {
                    BleMtuChangedCallback bleMtuChangedCallback = (BleMtuChangedCallback) message.obj;
                    if (bleMtuChangedCallback != null) {
                        bleMtuChangedCallback.b(new TimeoutException());
                        return;
                    }
                    return;
                }
                if (i2 == 98) {
                    BleConnector.this.f25277e.removeMessages(97);
                    BleMtuChangedCallback bleMtuChangedCallback2 = (BleMtuChangedCallback) message.obj;
                    Bundle data4 = message.getData();
                    int i6 = data4.getInt("mtu_status");
                    int i7 = data4.getInt("mtu_value");
                    if (bleMtuChangedCallback2 != null) {
                        if (i6 == 0) {
                            bleMtuChangedCallback2.a(i7);
                            return;
                        } else {
                            bleMtuChangedCallback2.b(new GattException(i6));
                            return;
                        }
                    }
                    return;
                }
                switch (i2) {
                    case 17:
                        BleNotifyCallback bleNotifyCallback = (BleNotifyCallback) message.obj;
                        if (bleNotifyCallback != null) {
                            bleNotifyCallback.b(new TimeoutException());
                        }
                        break;
                    case 18:
                        BleConnector.this.c();
                        BleNotifyCallback bleNotifyCallback2 = (BleNotifyCallback) message.obj;
                        int i8 = message.getData().getInt("notify_status");
                        if (bleNotifyCallback2 != null) {
                            if (i8 != 0) {
                                bleNotifyCallback2.b(new GattException(i8));
                            } else {
                                bleNotifyCallback2.c();
                            }
                        }
                        break;
                    case 19:
                        BleNotifyCallback bleNotifyCallback3 = (BleNotifyCallback) message.obj;
                        byte[] byteArray3 = message.getData().getByteArray("notify_value");
                        if (bleNotifyCallback3 != null) {
                            bleNotifyCallback3.a(byteArray3);
                        }
                        break;
                    default:
                        switch (i2) {
                            case 33:
                                BleIndicateCallback bleIndicateCallback = (BleIndicateCallback) message.obj;
                                if (bleIndicateCallback != null) {
                                    new TimeoutException();
                                    bleIndicateCallback.b();
                                }
                                break;
                            case 34:
                                BleConnector.this.f25277e.removeMessages(33);
                                BleIndicateCallback bleIndicateCallback2 = (BleIndicateCallback) message.obj;
                                int i9 = message.getData().getInt("indicate_status");
                                if (bleIndicateCallback2 != null) {
                                    if (i9 != 0) {
                                        new GattException(i9);
                                        bleIndicateCallback2.b();
                                    } else {
                                        bleIndicateCallback2.c();
                                    }
                                }
                                break;
                            case 35:
                                BleIndicateCallback bleIndicateCallback3 = (BleIndicateCallback) message.obj;
                                byte[] byteArray4 = message.getData().getByteArray("indicate_value");
                                if (bleIndicateCallback3 != null) {
                                    bleIndicateCallback3.a(byteArray4);
                                }
                                break;
                        }
                        break;
                }
            }
        };
        return bleConnector;
    }

    public final synchronized void f() {
        BluetoothGatt bluetoothGatt;
        try {
            Method method = BluetoothGatt.class.getMethod("refresh", null);
            if (method != null && (bluetoothGatt = this.f25271j) != null) {
                ((Boolean) method.invoke(bluetoothGatt, null)).booleanValue();
            }
        } catch (Exception e2) {
            e2.getMessage();
            e2.printStackTrace();
        }
    }
}
