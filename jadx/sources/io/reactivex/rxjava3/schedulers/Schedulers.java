package io.reactivex.rxjava3.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.schedulers.ComputationScheduler;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.internal.schedulers.NewThreadScheduler;
import io.reactivex.rxjava3.internal.schedulers.SingleScheduler;
import io.reactivex.rxjava3.internal.schedulers.TrampolineScheduler;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Schedulers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Scheduler f71155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Scheduler f71156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TrampolineScheduler f71157c;
    public static final Scheduler d;

    public static final class ComputationHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ComputationScheduler f71158a = new ComputationScheduler();
    }

    public static final class ComputationTask implements Supplier<Scheduler> {
        @Override // io.reactivex.rxjava3.functions.Supplier
        public final Object get() {
            return ComputationHolder.f71158a;
        }
    }

    public static final class IOTask implements Supplier<Scheduler> {
        @Override // io.reactivex.rxjava3.functions.Supplier
        public final Object get() {
            return IoHolder.f71159a;
        }
    }

    public static final class IoHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final IoScheduler f71159a = new IoScheduler();
    }

    public static final class NewThreadHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NewThreadScheduler f71160a = new NewThreadScheduler();
    }

    public static final class NewThreadTask implements Supplier<Scheduler> {
        @Override // io.reactivex.rxjava3.functions.Supplier
        public final Object get() {
            return NewThreadHolder.f71160a;
        }
    }

    public static final class SingleHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SingleScheduler f71161a = new SingleScheduler();
    }

    public static final class SingleTask implements Supplier<Scheduler> {
        @Override // io.reactivex.rxjava3.functions.Supplier
        public final Object get() {
            return SingleHolder.f71161a;
        }
    }

    static {
        RxJavaPlugins.a(new SingleTask());
        f71155a = RxJavaPlugins.a(new ComputationTask());
        f71156b = RxJavaPlugins.a(new IOTask());
        f71157c = TrampolineScheduler.f71107c;
        d = RxJavaPlugins.a(new NewThreadTask());
    }
}
