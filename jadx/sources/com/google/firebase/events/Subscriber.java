package com.google.firebase.events;

import com.google.firebase.messaging.e;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public interface Subscriber {
    void a(e eVar);

    void b(e eVar);

    void c(Executor executor, EventHandler eventHandler);
}
