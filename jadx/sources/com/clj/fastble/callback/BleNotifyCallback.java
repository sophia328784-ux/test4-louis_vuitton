package com.clj.fastble.callback;

import com.clj.fastble.exception.BleException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BleNotifyCallback extends BleBaseCallback {
    public abstract void a(byte[] bArr);

    public abstract void b(BleException bleException);

    public abstract void c();
}
