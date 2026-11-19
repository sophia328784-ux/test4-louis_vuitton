package com.google.ar.core;

/* JADX INFO: loaded from: classes2.dex */
public interface Future {
    boolean cancel();

    FutureState getState();
}
