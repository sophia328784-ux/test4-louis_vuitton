package com.clj.fastble.bluetooth;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.os.Handler;
import android.os.Message;
import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleNotifyCallback;
import com.clj.fastble.callback.BleReadCallback;
import com.clj.fastble.callback.BleWriteCallback;
import com.clj.fastble.exception.OtherException;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class BleConnector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public BluetoothGatt f25274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BluetoothGattService f25275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public BluetoothGattCharacteristic f25276c;
    public BleBluetooth d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Handler f25277e;

    public final void a(BleReadCallback bleReadCallback, String str) {
        this.f25277e.removeMessages(65);
        bleReadCallback.setKey(str);
        bleReadCallback.setHandler(this.f25277e);
        BleBluetooth bleBluetooth = this.d;
        synchronized (bleBluetooth) {
            bleBluetooth.f25268f.put(str, bleReadCallback);
        }
        Handler handler = this.f25277e;
        Message messageObtainMessage = handler.obtainMessage(65, bleReadCallback);
        BleManager.c().getClass();
        handler.sendMessageDelayed(messageObtainMessage, LiveTranslationEntity.DefaultSentenceTimeOut);
    }

    public final void b(BleWriteCallback bleWriteCallback, String str) {
        this.f25277e.removeMessages(49);
        bleWriteCallback.setKey(str);
        bleWriteCallback.setHandler(this.f25277e);
        BleBluetooth bleBluetooth = this.d;
        synchronized (bleBluetooth) {
            bleBluetooth.f25267e.put(str, bleWriteCallback);
        }
        Handler handler = this.f25277e;
        Message messageObtainMessage = handler.obtainMessage(49, bleWriteCallback);
        BleManager.c().getClass();
        handler.sendMessageDelayed(messageObtainMessage, LiveTranslationEntity.DefaultSentenceTimeOut);
    }

    public final void c() {
        this.f25277e.removeMessages(17);
    }

    public final boolean d(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z, BleNotifyCallback bleNotifyCallback) {
        if (bluetoothGatt == null || bluetoothGattCharacteristic == null) {
            c();
            if (bleNotifyCallback != null) {
                bleNotifyCallback.b(new OtherException("gatt or characteristic equal null"));
            }
        } else if (bluetoothGatt.setCharacteristicNotification(bluetoothGattCharacteristic, z)) {
            BluetoothGattDescriptor descriptor = bluetoothGattCharacteristic.getDescriptor(UUID.fromString("00002902-0000-1000-8000-00805f9b34fb"));
            if (descriptor != null) {
                descriptor.setValue(z ? BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE : BluetoothGattDescriptor.DISABLE_NOTIFICATION_VALUE);
                boolean zWriteDescriptor = bluetoothGatt.writeDescriptor(descriptor);
                if (!zWriteDescriptor) {
                    c();
                    if (bleNotifyCallback != null) {
                        bleNotifyCallback.b(new OtherException("gatt writeDescriptor fail"));
                    }
                }
                return zWriteDescriptor;
            }
            c();
            if (bleNotifyCallback != null) {
                bleNotifyCallback.b(new OtherException("descriptor equals null"));
                return false;
            }
        } else {
            c();
            if (bleNotifyCallback != null) {
                bleNotifyCallback.b(new OtherException("gatt setCharacteristicNotification fail"));
                return false;
            }
        }
        return false;
    }

    public final void e(String str, String str2) {
        BluetoothGatt bluetoothGatt;
        UUID uuidFromString = str == null ? null : UUID.fromString(str);
        UUID uuidFromString2 = str2 != null ? UUID.fromString(str2) : null;
        if (uuidFromString != null && (bluetoothGatt = this.f25274a) != null) {
            this.f25275b = bluetoothGatt.getService(uuidFromString);
        }
        BluetoothGattService bluetoothGattService = this.f25275b;
        if (bluetoothGattService == null || uuidFromString2 == null) {
            return;
        }
        this.f25276c = bluetoothGattService.getCharacteristic(uuidFromString2);
    }

    public final void f(byte[] bArr, BleWriteCallback bleWriteCallback, String str) {
        if (bArr != null) {
            try {
                if (bArr.length > 0) {
                    BluetoothGattCharacteristic bluetoothGattCharacteristic = this.f25276c;
                    if (bluetoothGattCharacteristic != null && (bluetoothGattCharacteristic.getProperties() & 12) != 0) {
                        if (!this.f25276c.setValue(bArr)) {
                            bleWriteCallback.onWriteFailure(new OtherException("Updates the locally stored value of this characteristic fail"));
                            return;
                        }
                        b(bleWriteCallback, str);
                        if (this.f25274a.writeCharacteristic(this.f25276c)) {
                            return;
                        }
                        this.f25277e.removeMessages(49);
                        bleWriteCallback.onWriteFailure(new OtherException("gatt writeCharacteristic fail"));
                        return;
                    }
                    bleWriteCallback.onWriteFailure(new OtherException("this characteristic not support write!"));
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
        bleWriteCallback.onWriteFailure(new OtherException("the data to be written is empty"));
    }
}
