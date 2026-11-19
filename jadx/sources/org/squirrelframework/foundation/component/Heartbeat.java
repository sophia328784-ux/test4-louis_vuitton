package org.squirrelframework.foundation.component;

/* JADX INFO: loaded from: classes5.dex */
public interface Heartbeat {
    void begin();

    void defer(Runnable runnable);

    void execute();
}
