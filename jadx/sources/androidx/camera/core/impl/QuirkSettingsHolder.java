package androidx.camera.core.impl;

import androidx.camera.core.Logger;
import androidx.core.util.Consumer;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class QuirkSettingsHolder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final QuirkSettings f2319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final QuirkSettingsHolder f2320c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableStateObservable f2321a = new MutableStateObservable(f2319b);

    public static class ObserverToConsumerAdapter<T> implements Observable.Observer<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Consumer f2322a;

        public ObserverToConsumerAdapter(Consumer consumer) {
            this.f2322a = consumer;
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public final void a(Object obj) {
            this.f2322a.accept(obj);
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public final void onError(Throwable th) {
            Logger.b("ObserverToConsumerAdapter");
        }
    }

    static {
        QuirkSettings.Builder builder = new QuirkSettings.Builder();
        builder.f2316a = true;
        f2319b = new QuirkSettings(true, builder.f2317b, builder.f2318c);
        f2320c = new QuirkSettingsHolder();
    }

    public final void a(Executor executor, Consumer consumer) {
        this.f2321a.b(executor, new ObserverToConsumerAdapter(consumer));
    }
}
