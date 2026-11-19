package com.google.common.collect;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ForwardingObject {
    public abstract Object c();

    public final String toString() {
        return c().toString();
    }
}
