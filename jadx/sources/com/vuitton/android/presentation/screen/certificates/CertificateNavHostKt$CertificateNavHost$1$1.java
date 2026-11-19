package com.vuitton.android.presentation.screen.certificates;

import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.CertificateNavHostKt$CertificateNavHost$1$1", f = "CertificateNavHost.kt", l = {}, m = "invokeSuspend", v = 2)
final class CertificateNavHostKt$CertificateNavHost$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f55597b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NavHostController f55598c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateNavHostKt$CertificateNavHost$1$1(boolean z, NavHostController navHostController, Continuation continuation) {
        super(2, continuation);
        this.f55597b = z;
        this.f55598c = navHostController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CertificateNavHostKt$CertificateNavHost$1$1(this.f55597b, this.f55598c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CertificateNavHostKt$CertificateNavHost$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (this.f55597b) {
            NavController.d(this.f55598c, new CertificateRoute.Add((String) null, 1, (DefaultConstructorMarker) null), null, 6);
        }
        return Unit.f71739a;
    }
}
