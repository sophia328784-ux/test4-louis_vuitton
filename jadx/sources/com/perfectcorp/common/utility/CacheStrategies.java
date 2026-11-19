package com.perfectcorp.common.utility;

import com.perfectcorp.thirdparty.io.reactivex.SingleEmitter;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.x;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CacheStrategies {

    /* JADX INFO: renamed from: com.perfectcorp.common.utility.CacheStrategies$1, reason: invalid class name */
    class AnonymousClass1 implements com.perfectcorp.thirdparty.io.reactivex.g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c f39392b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ CacheHandler f39393c;

        /* JADX INFO: renamed from: com.perfectcorp.common.utility.CacheStrategies$1$2, reason: invalid class name */
        class AnonymousClass2 implements Consumer<Throwable> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public /* synthetic */ SingleEmitter f39400a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public /* synthetic */ AnonymousClass1 f39401b;

            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Log.g(3, "CacheStrategies", "requestAlwaysNetwork, onErrorResumeNext, network error, handler:" + this.f39401b.f39393c);
                this.f39400a.a((Throwable) obj);
            }
        }

        public AnonymousClass1(CacheHandler cacheHandler, com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c cVar) {
            this.f39392b = cVar;
            this.f39393c = cacheHandler;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.g
        public final void e(final SingleEmitter singleEmitter) {
            u uVarI = this.f39392b.i(Schedulers.f43170c);
            Consumer consumer = new Consumer() { // from class: com.perfectcorp.common.utility.CacheStrategies.1.1

                /* JADX INFO: renamed from: com.perfectcorp.common.utility.CacheStrategies$1$1$1, reason: invalid class name and collision with other inner class name */
                class C01231 implements Consumer {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public /* synthetic */ C01221 f39396a;

                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        singleEmitter.onSuccess(obj);
                    }
                }

                /* JADX INFO: renamed from: com.perfectcorp.common.utility.CacheStrategies$1$1$2, reason: invalid class name */
                class AnonymousClass2 implements Consumer<Throwable> {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public /* synthetic */ C01221 f39397a;

                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        singleEmitter.a((Throwable) obj);
                    }
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(final Object obj) {
                    Log.g(3, "CacheStrategies", "requestAlwaysNetwork, onErrorResumeNext, network success. handler:" + AnonymousClass1.this.f39393c);
                    com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p pVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new Callable() { // from class: com.perfectcorp.common.utility.CacheStrategies.1.1.3
                        @Override // java.util.concurrent.Callable
                        public Object call() throws Exception {
                            return AnonymousClass1.this.f39393c.a(obj);
                        }
                    });
                    C01231 c01231 = new C01231();
                    c01231.f39396a = this;
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2();
                    anonymousClass2.f39397a = this;
                    pVar.a(new ConsumerSingleObserver(c01231, anonymousClass2));
                }
            };
            AnonymousClass2 anonymousClass2 = new AnonymousClass2();
            anonymousClass2.f39401b = this;
            anonymousClass2.f39400a = singleEmitter;
            uVarI.a(new ConsumerSingleObserver(consumer, anonymousClass2));
        }
    }

    public interface CacheHandler<Result, NetworkResponse> {
        Object a(Object obj);
    }

    public static x a(CacheHandler cacheHandler, com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c cVar) {
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.b(new AnonymousClass1(cacheHandler, cVar)).j(Schedulers.f43170c);
    }
}
