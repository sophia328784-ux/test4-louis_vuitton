package com.vuitton.android.data.datasource.auth;

import android.content.SharedPreferences;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.auth.SalesforceTokenDataSourceImpl$getRefreshToken$2$1", f = "SalesforceTokenDataSourceImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class SalesforceTokenDataSourceImpl$getRefreshToken$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SalesforceTokenDataSourceImpl f43806b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SalesforceTokenDataSourceImpl$getRefreshToken$2$1(SalesforceTokenDataSourceImpl salesforceTokenDataSourceImpl, Continuation continuation) {
        super(2, continuation);
        this.f43806b = salesforceTokenDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SalesforceTokenDataSourceImpl$getRefreshToken$2$1(this.f43806b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SalesforceTokenDataSourceImpl$getRefreshToken$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        Object obj2 = this.f43806b.f43796a.get();
        obj2.getClass();
        return StringKtExtKt.h(((SharedPreferences) obj2).getString("refresh_token", null));
    }
}
