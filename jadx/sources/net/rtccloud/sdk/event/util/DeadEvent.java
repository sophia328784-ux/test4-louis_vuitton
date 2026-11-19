package net.rtccloud.sdk.event.util;

/* JADX INFO: loaded from: classes4.dex */
public final class DeadEvent<E> {
    private final E event;

    public DeadEvent(E e2) {
        this.event = e2;
    }

    public E event() {
        return this.event;
    }

    public String toString() {
        return "DeadEvent{event=" + this.event.getClass() + '}';
    }
}
