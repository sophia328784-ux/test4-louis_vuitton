package com.clj.fastble.callback;

import com.clj.fastble.exception.BleException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BleMtuChangedCallback extends BleBaseCallback {
    public abstract void a(int i2);

    public abstract void b(BleException bleException);
}
