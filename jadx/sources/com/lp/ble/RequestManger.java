package com.lp.ble;

import android.bluetooth.BluetoothDevice;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import com.clj.fastble.BleManager;
import com.clj.fastble.bluetooth.BleBluetooth;
import com.clj.fastble.bluetooth.BleConnector;
import com.clj.fastble.bluetooth.SplitWriter;
import com.clj.fastble.callback.BleWriteCallback;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.BleException;
import com.clj.fastble.exception.OtherException;
import com.lp.ble.utils.BLELog;
import com.lp.ble.utils.HexUtil;
import defpackage.n00;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class RequestManger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HandlerThread f36340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f36341b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BleDevice f36344f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f36345h;
    public final HashMap d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f36343e = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedList f36342c = new LinkedList();

    public RequestManger(BleDevice bleDevice, String str, String str2) {
        this.f36344f = bleDevice;
        this.g = str;
        this.f36345h = str2;
        HandlerThread handlerThread = new HandlerThread("RequestManger");
        this.f36340a = handlerThread;
        handlerThread.start();
        this.f36341b = new Handler(handlerThread.getLooper()) { // from class: com.lp.ble.RequestManger.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                int i2 = message.what;
                if (i2 != 51) {
                    if (i2 == 52) {
                        byte[] bArr = (byte[]) message.obj;
                        int size = RequestManger.this.f36342c.size();
                        RequestManger requestManger = RequestManger.this;
                        if (size != 0) {
                            requestManger.f36342c.offer(bArr);
                            return;
                        }
                        requestManger.f36342c.offer(bArr);
                        RequestManger.this.f36341b.sendMessageDelayed(RequestManger.this.f36341b.obtainMessage(51), 1L);
                        return;
                    }
                    return;
                }
                RequestManger requestManger2 = RequestManger.this;
                LinkedList linkedList = requestManger2.f36342c;
                if (linkedList == null) {
                    return;
                }
                requestManger2.a();
                Objects.toString(linkedList);
                HashMap map = BLELog.f36371a;
                byte[] bArr2 = (byte[]) linkedList.poll();
                if (bArr2 == null) {
                    requestManger2.a();
                    return;
                }
                BleWriteCallback bleWriteCallback = (BleWriteCallback) requestManger2.d.remove(String.valueOf(bArr2.hashCode()));
                BLEManager.f36330c.getClass();
                BleWriteCallback bleWriteCallback2 = new BleWriteCallback(bArr2, bleWriteCallback) { // from class: com.lp.ble.RequestManger.2

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final /* synthetic */ BleWriteCallback f36346a;

                    {
                        this.f36346a = bleWriteCallback;
                    }

                    @Override // com.clj.fastble.callback.BleWriteCallback
                    public final void onWriteFailure(BleException bleException) {
                        RequestManger requestManger3 = RequestManger.this;
                        requestManger3.a();
                        Handler handler = requestManger3.f36341b;
                        HashMap map2 = BLELog.f36371a;
                        BleWriteCallback bleWriteCallback3 = this.f36346a;
                        if (bleWriteCallback3 != null) {
                            bleWriteCallback3.onWriteFailure(bleException);
                        }
                        if (requestManger3.f36342c.size() > 0) {
                            handler.sendMessageDelayed(handler.obtainMessage(51), 1L);
                        }
                    }

                    @Override // com.clj.fastble.callback.BleWriteCallback
                    public final void onWriteFinished(int i3) {
                        RequestManger requestManger3 = RequestManger.this;
                        requestManger3.a();
                        Handler handler = requestManger3.f36341b;
                        LinkedList linkedList2 = requestManger3.f36342c;
                        Objects.toString(linkedList2);
                        HashMap map2 = BLELog.f36371a;
                        if (linkedList2.size() > 0) {
                            handler.sendMessageDelayed(handler.obtainMessage(51), 1L);
                        }
                    }

                    @Override // com.clj.fastble.callback.BleWriteCallback
                    public final void onWriteSuccess(int i3, int i4, byte[] bArr3) {
                        RequestManger.this.a();
                        HexUtil.a(bArr3);
                        HashMap map2 = BLELog.f36371a;
                        BleWriteCallback bleWriteCallback3 = this.f36346a;
                        if (bleWriteCallback3 != null) {
                            bleWriteCallback3.onWriteSuccess(i3, i4, bArr3);
                        }
                    }
                };
                BleDevice bleDevice2 = requestManger2.f36344f;
                if (bleDevice2 == null || TextUtils.isEmpty(requestManger2.g) || TextUtils.isEmpty(requestManger2.f36345h)) {
                    requestManger2.a();
                    return;
                }
                BleManager bleManagerC = BleManager.c();
                String str3 = requestManger2.g;
                String str4 = requestManger2.f36345h;
                boolean z = requestManger2.f36343e;
                bleManagerC.getClass();
                BleBluetooth bleBluetoothA = bleManagerC.d.a(bleDevice2);
                if (bleBluetoothA == null) {
                    bleWriteCallback2.onWriteFailure(new OtherException("This device not connect!"));
                    return;
                }
                if (bArr2.length > bleManagerC.f25262f) {
                    new SplitWriter(z).a(bleBluetoothA, str3, str4, bArr2, false, 200L, bleWriteCallback2);
                    return;
                }
                BleConnector bleConnectorE = bleBluetoothA.e();
                bleConnectorE.e(str3, str4);
                bleConnectorE.f(bArr2, bleWriteCallback2, str4);
                bleWriteCallback2.onWriteFinished(1);
            }
        };
    }

    public final String a() {
        BleDevice bleDevice = this.f36344f;
        if (bleDevice == null) {
            return "RequestManger";
        }
        StringBuilder sb = new StringBuilder("RequestManger [");
        BluetoothDevice bluetoothDevice = bleDevice.f25292b;
        return n00.r(bluetoothDevice != null ? bluetoothDevice.getName() : null, "] ", sb);
    }
}
