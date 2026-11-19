package com.vuitton.android.data.datasource.dispatch;

import android.content.SharedPreferences;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.dispatch.DispatchLocalStorageDataSource$getDispatchIdentifier$2$1", f = "DispatchLocalStorageDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class DispatchLocalStorageDataSource$getDispatchIdentifier$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super InAppDispatch.Id>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DispatchLocalStorageDataSource f44088b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DispatchLocalStorageDataSource$getDispatchIdentifier$2$1(DispatchLocalStorageDataSource dispatchLocalStorageDataSource, Continuation continuation) {
        super(2, continuation);
        this.f44088b = dispatchLocalStorageDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DispatchLocalStorageDataSource$getDispatchIdentifier$2$1(this.f44088b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DispatchLocalStorageDataSource$getDispatchIdentifier$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        String string = ((SharedPreferences) this.f44088b.f44079c.get()).getString("dispatch_identifier", null);
        if (string != null) {
            return new InAppDispatch.Id(string);
        }
        md.k("No cached dispatch on local storage");
        return null;
    }
}
