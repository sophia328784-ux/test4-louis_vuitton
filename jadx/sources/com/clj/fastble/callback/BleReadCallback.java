package com.clj.fastble.callback;

import com.clj.fastble.exception.BleException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BleReadCallback extends BleBaseCallback {
    public abstract void a(BleException bleException);

    public abstract void b(byte[] bArr);
}
