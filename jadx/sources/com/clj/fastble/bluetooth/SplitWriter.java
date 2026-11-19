package com.clj.fastble.bluetooth;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleWriteCallback;
import com.clj.fastble.exception.BleException;
import com.clj.fastble.exception.OtherException;
import defpackage.md;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class SplitWriter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HandlerThread f25280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f25281b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public BleBluetooth f25282c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f25283e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f25284f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f25285h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public BleWriteCallback f25286i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public LinkedList f25287j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f25288k;
    public final boolean l;

    public SplitWriter(boolean z) {
        this.l = z;
        HandlerThread handlerThread = new HandlerThread("splitWriter");
        this.f25280a = handlerThread;
        handlerThread.start();
        this.f25281b = new Handler(handlerThread.getLooper()) { // from class: com.clj.fastble.bluetooth.SplitWriter.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                if (message.what == 51) {
                    SplitWriter.this.b();
                }
            }
        };
    }

    public final void a(BleBluetooth bleBluetooth, String str, String str2, byte[] bArr, boolean z, long j2, BleWriteCallback bleWriteCallback) {
        byte[] bArr2;
        this.f25282c = bleBluetooth;
        this.d = str;
        this.f25283e = str2;
        this.f25284f = bArr;
        this.g = z;
        this.f25285h = j2;
        int i2 = BleManager.c().f25262f;
        this.f25286i = bleWriteCallback;
        byte[] bArr3 = this.f25284f;
        if (bArr3 == null) {
            md.n("data is Null!");
            return;
        }
        if (i2 < 1) {
            md.n("split count should higher than 0!");
            return;
        }
        LinkedList linkedList = new LinkedList();
        int length = bArr3.length % i2 == 0 ? bArr3.length / i2 : Math.round((bArr3.length / i2) + 1);
        if (length > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                if (length == 1 || i3 == length - 1) {
                    int length2 = bArr3.length % i2 == 0 ? i2 : bArr3.length % i2;
                    byte[] bArr4 = new byte[length2];
                    System.arraycopy(bArr3, i3 * i2, bArr4, 0, length2);
                    bArr2 = bArr4;
                } else {
                    bArr2 = new byte[i2];
                    System.arraycopy(bArr3, i3 * i2, bArr2, 0, i2);
                }
                linkedList.offer(bArr2);
            }
        }
        this.f25287j = linkedList;
        if (this.l && ((byte[]) linkedList.getLast()).length <= 6) {
            byte[] bArr5 = (byte[]) this.f25287j.removeLast();
            byte[] bArr6 = new byte[bArr5.length + 6];
            System.arraycopy(bArr5, 0, bArr6, 0, bArr5.length);
            this.f25287j.offer(bArr6);
        }
        this.f25288k = this.f25287j.size();
        b();
    }

    public final void b() {
        Object objPeek = this.f25287j.peek();
        Handler handler = this.f25281b;
        if (objPeek == null) {
            this.f25280a.quit();
            handler.removeCallbacksAndMessages(null);
            BleWriteCallback bleWriteCallback = this.f25286i;
            if (bleWriteCallback != null) {
                bleWriteCallback.onWriteFinished(this.f25288k);
                return;
            }
            return;
        }
        byte[] bArr = (byte[]) this.f25287j.poll();
        BleConnector bleConnectorE = this.f25282c.e();
        bleConnectorE.e(this.d, this.f25283e);
        bleConnectorE.f(bArr, new BleWriteCallback() { // from class: com.clj.fastble.bluetooth.SplitWriter.2
            @Override // com.clj.fastble.callback.BleWriteCallback
            public final void onWriteFailure(BleException bleException) {
                SplitWriter splitWriter = SplitWriter.this;
                Handler handler2 = splitWriter.f25281b;
                BleWriteCallback bleWriteCallback2 = splitWriter.f25286i;
                if (bleWriteCallback2 != null) {
                    bleWriteCallback2.onWriteFailure(new OtherException("exception occur while writing: " + bleException.f25296c));
                }
                if (splitWriter.g) {
                    handler2.sendMessageDelayed(handler2.obtainMessage(51), splitWriter.f25285h);
                }
            }

            @Override // com.clj.fastble.callback.BleWriteCallback
            public final void onWriteSuccess(int i2, int i3, byte[] bArr2) {
                SplitWriter splitWriter = SplitWriter.this;
                Handler handler2 = splitWriter.f25281b;
                int size = splitWriter.f25288k - splitWriter.f25287j.size();
                BleWriteCallback bleWriteCallback2 = splitWriter.f25286i;
                if (bleWriteCallback2 != null) {
                    bleWriteCallback2.onWriteSuccess(size, splitWriter.f25288k, bArr2);
                }
                if (splitWriter.g) {
                    handler2.sendMessageDelayed(handler2.obtainMessage(51), splitWriter.f25285h);
                }
            }
        }, this.f25283e);
        if (this.g) {
            return;
        }
        handler.sendMessageDelayed(handler.obtainMessage(51), this.f25285h);
    }

    public SplitWriter() {
        this(false);
    }
}
