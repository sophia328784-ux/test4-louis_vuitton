package com.google.firebase.components;

import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Publisher;
import com.google.firebase.events.Subscriber;
import com.google.firebase.messaging.e;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
class EventBus implements Subscriber, Publisher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f34407a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayDeque f34408b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f34409c;

    public EventBus(Executor executor) {
        this.f34409c = executor;
    }

    @Override // com.google.firebase.events.Subscriber
    public final synchronized void a(e eVar) {
        eVar.getClass();
        if (this.f34407a.containsKey(DataCollectionDefaultChange.class)) {
            ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f34407a.get(DataCollectionDefaultChange.class);
            concurrentHashMap.remove(eVar);
            if (concurrentHashMap.isEmpty()) {
                this.f34407a.remove(DataCollectionDefaultChange.class);
            }
        }
    }

    @Override // com.google.firebase.events.Subscriber
    public final void b(e eVar) {
        c(this.f34409c, eVar);
    }

    @Override // com.google.firebase.events.Subscriber
    public final synchronized void c(Executor executor, EventHandler eventHandler) {
        try {
            executor.getClass();
            if (!this.f34407a.containsKey(DataCollectionDefaultChange.class)) {
                this.f34407a.put(DataCollectionDefaultChange.class, new ConcurrentHashMap());
            }
            ((ConcurrentHashMap) this.f34407a.get(DataCollectionDefaultChange.class)).put(eventHandler, executor);
        } catch (Throwable th) {
            throw th;
        }
    }
}
