package com.clj.fastble.scan;

import android.os.Handler;
import android.os.HandlerThread;
import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleScanCallback;
import com.clj.fastble.callback.BleScanPresenterImp;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.data.BleScanState;
import java.util.ArrayList;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class BleScanner {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public BleScanState f25307a = BleScanState.STATE_IDLE;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BleScanPresenter f25308b = new BleScanPresenter() { // from class: com.clj.fastble.scan.BleScanner.1
        @Override // com.clj.fastble.scan.BleScanPresenter
        public final void b() {
            BleScanner.this.f25308b.getClass();
        }

        @Override // com.clj.fastble.scan.BleScanPresenter
        public final void c(ArrayList arrayList) {
            BleScanPresenter bleScanPresenter = BleScanner.this.f25308b;
            bleScanPresenter.getClass();
            BleScanCallback bleScanCallback = (BleScanCallback) bleScanPresenter.f25299b;
            if (bleScanCallback != null) {
                bleScanCallback.c();
            }
        }

        @Override // com.clj.fastble.scan.BleScanPresenter
        public final void d(boolean z) {
            BleScanPresenterImp bleScanPresenterImp = BleScanner.this.f25308b.f25299b;
            if (bleScanPresenterImp != null) {
                bleScanPresenterImp.a();
            }
        }

        @Override // com.clj.fastble.scan.BleScanPresenter
        public final void e(BleDevice bleDevice) {
            BleScanPresenterImp bleScanPresenterImp = BleScanner.this.f25308b.f25299b;
            if (bleScanPresenterImp != null) {
                bleScanPresenterImp.b(bleDevice);
            }
        }
    };

    public static class BleScannerHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BleScanner f25310a = new BleScanner();
    }

    public static BleScanner a() {
        return BleScannerHolder.f25310a;
    }

    public final void b(UUID[] uuidArr, long j2, BleScanCallback bleScanCallback) {
        synchronized (this) {
            BleScanState bleScanState = this.f25307a;
            BleScanState bleScanState2 = BleScanState.STATE_IDLE;
            if (bleScanState != bleScanState2) {
                bleScanCallback.a();
                return;
            }
            BleScanPresenter bleScanPresenter = this.f25308b;
            bleScanPresenter.f25298a = j2;
            bleScanPresenter.f25299b = bleScanCallback;
            HandlerThread handlerThread = new HandlerThread("BleScanPresenter");
            bleScanPresenter.f25301e = handlerThread;
            handlerThread.start();
            bleScanPresenter.f25302f = new BleScanPresenter.ScanHandler(bleScanPresenter.f25301e.getLooper(), bleScanPresenter);
            bleScanPresenter.g = true;
            final boolean zStartLeScan = BleManager.c().f25260c.startLeScan(uuidArr, this.f25308b);
            if (zStartLeScan) {
                bleScanState2 = BleScanState.STATE_SCANNING;
            }
            this.f25307a = bleScanState2;
            final BleScanPresenter bleScanPresenter2 = this.f25308b;
            Handler handler = bleScanPresenter2.d;
            bleScanPresenter2.f25300c.clear();
            bleScanPresenter2.d.removeCallbacksAndMessages(null);
            bleScanPresenter2.f25302f.removeCallbacksAndMessages(null);
            if (zStartLeScan && bleScanPresenter2.f25298a > 0) {
                handler.postDelayed(new Runnable(bleScanPresenter2) { // from class: com.clj.fastble.scan.BleScanPresenter.4
                    @Override // java.lang.Runnable
                    public void run() {
                        BleScanner.BleScannerHolder.f25310a.c();
                    }
                }, bleScanPresenter2.f25298a);
            }
            handler.post(new Runnable() { // from class: com.clj.fastble.scan.BleScanPresenter.5
                @Override // java.lang.Runnable
                public void run() {
                    BleScanPresenter.this.d(zStartLeScan);
                }
            });
        }
    }

    public final synchronized void c() {
        BleManager.c().f25260c.stopLeScan(this.f25308b);
        this.f25307a = BleScanState.STATE_IDLE;
        final BleScanPresenter bleScanPresenter = this.f25308b;
        bleScanPresenter.g = false;
        bleScanPresenter.f25301e.quit();
        bleScanPresenter.d.removeCallbacksAndMessages(null);
        bleScanPresenter.f25302f.removeCallbacksAndMessages(null);
        bleScanPresenter.d.post(new Runnable() { // from class: com.clj.fastble.scan.BleScanPresenter.6
            @Override // java.lang.Runnable
            public void run() {
                BleScanPresenter bleScanPresenter2 = BleScanPresenter.this;
                bleScanPresenter2.c(bleScanPresenter2.f25300c);
            }
        });
    }
}
