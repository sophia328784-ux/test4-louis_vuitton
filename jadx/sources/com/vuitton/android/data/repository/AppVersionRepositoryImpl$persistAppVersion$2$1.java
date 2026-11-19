package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AppVersionRepositoryImpl$persistAppVersion$2$1", f = "AppVersionRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class AppVersionRepositoryImpl$persistAppVersion$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppVersionRepositoryImpl f47270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f47271c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppVersionRepositoryImpl$persistAppVersion$2$1(AppVersionRepositoryImpl appVersionRepositoryImpl, int i2, Continuation continuation) {
        super(2, continuation);
        this.f47270b = appVersionRepositoryImpl;
        this.f47271c = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AppVersionRepositoryImpl$persistAppVersion$2$1(this.f47270b, this.f47271c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AppVersionRepositoryImpl$persistAppVersion$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        Object obj2 = this.f47270b.f47263b.get();
        obj2.getClass();
        SharedPreferences.Editor editorEdit = ((SharedPreferences) obj2).edit();
        editorEdit.putInt("app_version", this.f47271c);
        editorEdit.commit();
        return Unit.f71739a;
    }
}
