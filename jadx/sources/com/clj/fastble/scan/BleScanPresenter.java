package com.clj.fastble.scan;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.clj.fastble.callback.BleScanPresenterImp;
import com.clj.fastble.data.BleDevice;
import com.linkplay.medialib.ContentTree;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BleScanPresenter implements BluetoothAdapter.LeScanCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f25298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BleScanPresenterImp f25299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f25300c = new ArrayList();
    public final Handler d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public HandlerThread f25301e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Handler f25302f;
    public boolean g;

    public static final class ScanHandler extends Handler {
        private final WeakReference<BleScanPresenter> mBleScanPresenter;

        public ScanHandler(Looper looper, BleScanPresenter bleScanPresenter) {
            super(looper);
            this.mBleScanPresenter = new WeakReference<>(bleScanPresenter);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            final BleDevice bleDevice;
            final BleScanPresenter bleScanPresenter = this.mBleScanPresenter.get();
            if (bleScanPresenter == null || message.what != 0 || (bleDevice = (BleDevice) message.obj) == null) {
                return;
            }
            bleScanPresenter.d.post(new Runnable() { // from class: com.clj.fastble.scan.BleScanPresenter.1
                @Override // java.lang.Runnable
                public void run() {
                    BleScanPresenter.this.b();
                }
            });
            if (TextUtils.isEmpty(null)) {
                bleScanPresenter.a(bleDevice);
                return;
            }
            if (TextUtils.isEmpty(null)) {
                bleScanPresenter.a(bleDevice);
                return;
            }
            BluetoothDevice bluetoothDevice = bleDevice.f25292b;
            if (bluetoothDevice == null) {
                throw null;
            }
            bluetoothDevice.getAddress();
            throw null;
        }
    }

    public final void a(final BleDevice bleDevice) {
        BluetoothDevice bluetoothDevice = bleDevice.f25292b;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ArrayList arrayList = this.f25300c;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (((BleDevice) it.next()).f25292b.equals(bluetoothDevice)) {
                atomicBoolean.set(true);
            }
        }
        if (atomicBoolean.get()) {
            return;
        }
        if (bluetoothDevice != null) {
            bluetoothDevice.getName();
        }
        if (bluetoothDevice != null) {
            bluetoothDevice.getAddress();
        }
        byte[] bArr = bleDevice.f25293c;
        if (bArr != null && bArr.length >= 1) {
            StringBuilder sb = new StringBuilder();
            for (byte b2 : bArr) {
                String hexString = Integer.toHexString(b2 & 255);
                if (hexString.length() == 1) {
                    hexString = ContentTree.ROOT_ID.concat(hexString);
                }
                sb.append(hexString);
                sb.append(" ");
            }
            sb.toString().trim();
        }
        arrayList.add(bleDevice);
        this.d.post(new Runnable() { // from class: com.clj.fastble.scan.BleScanPresenter.3
            @Override // java.lang.Runnable
            public void run() {
                BleScanPresenter.this.e(bleDevice);
            }
        });
    }

    public abstract void b();

    public abstract void c(ArrayList arrayList);

    public abstract void d(boolean z);

    public abstract void e(BleDevice bleDevice);

    @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
    public final void onLeScan(BluetoothDevice bluetoothDevice, int i2, byte[] bArr) {
        if (bluetoothDevice != null && this.g) {
            Message messageObtainMessage = this.f25302f.obtainMessage();
            messageObtainMessage.what = 0;
            messageObtainMessage.obj = new BleDevice(bluetoothDevice, i2, bArr, System.currentTimeMillis());
            this.f25302f.sendMessage(messageObtainMessage);
        }
    }
}
