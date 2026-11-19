package io.reactivex.rxjava3.internal.subscriptions;

import defpackage.d21;
import io.reactivex.rxjava3.exceptions.ProtocolViolationException;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import org.reactivestreams.Subscription;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class SubscriptionHelper implements Subscription {
    private static final /* synthetic */ SubscriptionHelper[] $VALUES;
    public static final SubscriptionHelper CANCELLED;

    static {
        SubscriptionHelper subscriptionHelper = new SubscriptionHelper("CANCELLED", 0);
        CANCELLED = subscriptionHelper;
        $VALUES = new SubscriptionHelper[]{subscriptionHelper};
    }

    public static boolean a(long j2) {
        if (j2 > 0) {
            return true;
        }
        RxJavaPlugins.b(new IllegalArgumentException(d21.g(j2, "n > 0 required but it was ")));
        return false;
    }

    public static boolean b(Subscription subscription, Subscription subscription2) {
        if (subscription == null) {
            return true;
        }
        subscription2.cancel();
        RxJavaPlugins.b(new ProtocolViolationException("Subscription already set!"));
        return false;
    }

    public static SubscriptionHelper valueOf(String str) {
        return (SubscriptionHelper) Enum.valueOf(SubscriptionHelper.class, str);
    }

    public static SubscriptionHelper[] values() {
        return (SubscriptionHelper[]) $VALUES.clone();
    }

    @Override // org.reactivestreams.Subscription
    public final void cancel() {
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j2) {
    }
}
