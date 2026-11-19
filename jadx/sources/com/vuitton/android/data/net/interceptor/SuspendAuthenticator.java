package com.vuitton.android.data.net.interceptor;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Authenticator;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator;", "Lokhttp3/Authenticator;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SuspendAuthenticator implements Authenticator {

    /* JADX INFO: renamed from: com.vuitton.android.data.net.interceptor.SuspendAuthenticator$authenticate$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lokhttp3/Request;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.data.net.interceptor.SuspendAuthenticator$authenticate$1", f = "SuspendAuthenticator.kt", l = {25}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Request>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f47090b;
        public final /* synthetic */ Route d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Response f47092e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Route route, Response response, Continuation continuation) {
            super(2, continuation);
            this.d = route;
            this.f47092e = response;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return SuspendAuthenticator.this.new AnonymousClass1(this.d, this.f47092e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f47090b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f47090b = 1;
                Object objA = SuspendAuthenticator.this.a(this.f47092e, this);
                return objA == coroutineSingletons ? coroutineSingletons : objA;
            }
            if (i2 == 1) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    public abstract Object a(Response response, ContinuationImpl continuationImpl);

    @Override // okhttp3.Authenticator
    public final Request authenticate(Route route, Response response) {
        return (Request) BuildersKt.e(EmptyCoroutineContext.f71840b, new AnonymousClass1(route, response, null));
    }
}
