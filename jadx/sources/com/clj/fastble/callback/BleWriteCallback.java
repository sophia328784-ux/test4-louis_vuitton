package com.clj.fastble.callback;

import com.clj.fastble.exception.BleException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BleWriteCallback extends BleBaseCallback {
    public abstract void onWriteFailure(BleException bleException);

    public void onWriteFinished(int i2) {
    }

    public abstract void onWriteSuccess(int i2, int i3, byte[] bArr);
}
