package net.rtccloud.sdk.event.util;

import defpackage.o60;
import java.lang.Exception;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public final class ExceptionEvent<Ex extends Exception, Ev> {
    private final Ev event;
    private final Ex exception;
    private final Method method;
    private final Object target;

    public ExceptionEvent(Ex ex, Ev ev, Method method, Object obj) {
        this.exception = ex;
        this.event = ev;
        this.method = method;
        this.target = obj;
    }

    public Ev event() {
        return this.event;
    }

    public Ex exception() {
        return this.exception;
    }

    public Method method() {
        return this.method;
    }

    public Object target() {
        return this.target;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ExceptionEvent{exception=");
        sb.append(this.exception);
        sb.append(", event=");
        sb.append(this.event);
        sb.append(", method=");
        sb.append(this.method.toGenericString());
        sb.append(", target=");
        return o60.r(sb, this.target, '}');
    }
}
