package com.batch.android;

/* JADX INFO: loaded from: classes2.dex */
public interface BatchEventDispatcher {
    void dispatchEvent(Batch.EventDispatcher.Type type, Batch.EventDispatcher.Payload payload);

    default String getName() {
        return null;
    }

    default int getVersion() {
        return 0;
    }
}
