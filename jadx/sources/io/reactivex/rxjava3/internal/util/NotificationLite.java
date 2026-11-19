package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import java.io.Serializable;
import java.util.Objects;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class NotificationLite {
    private static final /* synthetic */ NotificationLite[] $VALUES;
    public static final NotificationLite COMPLETE;

    public static final class DisposableNotification implements Serializable {
        private static final long serialVersionUID = -7482590109178395495L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Disposable f71120b;

        public DisposableNotification(Disposable disposable) {
            this.f71120b = disposable;
        }

        public final String toString() {
            return "NotificationLite.Disposable[" + this.f71120b + "]";
        }
    }

    public static final class ErrorNotification implements Serializable {
        private static final long serialVersionUID = -8759979445933046293L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Throwable f71121b;

        public ErrorNotification(Throwable th) {
            this.f71121b = th;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof ErrorNotification) {
                return Objects.equals(this.f71121b, ((ErrorNotification) obj).f71121b);
            }
            return false;
        }

        public final int hashCode() {
            return this.f71121b.hashCode();
        }

        public final String toString() {
            return "NotificationLite.Error[" + this.f71121b + "]";
        }
    }

    static {
        NotificationLite notificationLite = new NotificationLite("COMPLETE", 0);
        COMPLETE = notificationLite;
        $VALUES = new NotificationLite[]{notificationLite};
    }

    public static boolean a(Observer observer, Object obj) {
        if (obj == COMPLETE) {
            observer.onComplete();
            return true;
        }
        if (obj instanceof ErrorNotification) {
            observer.onError(((ErrorNotification) obj).f71121b);
            return true;
        }
        observer.onNext(obj);
        return false;
    }

    public static boolean b(Observer observer, Object obj) {
        if (obj == COMPLETE) {
            observer.onComplete();
            return true;
        }
        if (obj instanceof ErrorNotification) {
            observer.onError(((ErrorNotification) obj).f71121b);
            return true;
        }
        if (obj instanceof DisposableNotification) {
            observer.onSubscribe(((DisposableNotification) obj).f71120b);
            return false;
        }
        observer.onNext(obj);
        return false;
    }

    public static Object c(Disposable disposable) {
        return new DisposableNotification(disposable);
    }

    public static Object d(Throwable th) {
        return new ErrorNotification(th);
    }

    public static Throwable e(Object obj) {
        return ((ErrorNotification) obj).f71121b;
    }

    public static boolean f(Object obj) {
        return obj instanceof ErrorNotification;
    }

    public static NotificationLite valueOf(String str) {
        return (NotificationLite) Enum.valueOf(NotificationLite.class, str);
    }

    public static NotificationLite[] values() {
        return (NotificationLite[]) $VALUES.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "NotificationLite.Complete";
    }
}
