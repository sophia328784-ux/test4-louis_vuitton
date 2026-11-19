package com.vuitton.android.data.datasource.config;

import android.content.SharedPreferences;
import com.vuitton.foundation.model.domain.model.config.AbTest;
import defpackage.fc;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.AbTestLocalDataSource$getAbTestAssignment$2$1", f = "AbTestLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class AbTestLocalDataSource$getAbTestAssignment$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f43964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbTest f43965c;
    public final /* synthetic */ AbTestLocalDataSource d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbTestLocalDataSource$getAbTestAssignment$2$1(String str, AbTest abTest, AbTestLocalDataSource abTestLocalDataSource, Continuation continuation) {
        super(2, continuation);
        this.f43964b = str;
        this.f43965c = abTest;
        this.d = abTestLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AbTestLocalDataSource$getAbTestAssignment$2$1(this.f43964b, this.f43965c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AbTestLocalDataSource$getAbTestAssignment$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws IllegalAccessException {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        AbTestLocalDataSource.f43955c.getClass();
        String str = this.f43964b;
        AbTest abTest = this.f43965c;
        String strA = AbTestLocalDataSource.Companion.a(str, abTest);
        String str2 = abTest.f67226a;
        SharedPreferences sharedPreferences = this.d.f43957b;
        if (!sharedPreferences.contains(strA)) {
            throw new IllegalAccessException(fc.h("A/B test value for campaign '", str2, "' has not been persisted yet."));
        }
        int i2 = sharedPreferences.getInt(strA, -1);
        if (i2 < 0 || i2 >= 100) {
            throw new IllegalAccessException(fc.h("A/B test random value for campaign '", str2, "' is invalid."));
        }
        return Boolean.valueOf(i2 < abTest.f67228c);
    }
}
