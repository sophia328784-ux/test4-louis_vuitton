package com.google.firebase.events;

/* JADX INFO: loaded from: classes2.dex */
public class Event<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f35127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f35128b;

    public Event(Class<T> cls, T t) {
        cls.getClass();
        this.f35127a = cls;
        t.getClass();
        this.f35128b = t;
    }

    public final String toString() {
        return String.format("Event{type: %s, payload: %s}", this.f35127a, this.f35128b);
    }
}
