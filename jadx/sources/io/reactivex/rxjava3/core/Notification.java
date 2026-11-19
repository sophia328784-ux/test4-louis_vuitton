package io.reactivex.rxjava3.core;

import defpackage.o60;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class Notification<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Notification f70023b = new Notification(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f70024a;

    public Notification(Object obj) {
        this.f70024a = obj;
    }

    public final Throwable a() {
        Object obj = this.f70024a;
        if (NotificationLite.f(obj)) {
            return NotificationLite.e(obj);
        }
        return null;
    }

    public final boolean b() {
        Object obj = this.f70024a;
        return (obj == null || NotificationLite.f(obj)) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Notification) {
            return Objects.equals(this.f70024a, ((Notification) obj).f70024a);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f70024a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public final String toString() {
        Object obj = this.f70024a;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (!NotificationLite.f(obj)) {
            return o60.n("OnNextNotification[", obj, "]");
        }
        return "OnErrorNotification[" + NotificationLite.e(obj) + "]";
    }
}
