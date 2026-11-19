package com.vuitton.android.presentation.screen.storemode;

import com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl$doForEachDelegate$2", f = "PSPStoreModeViewModelImpl.kt", l = {336}, m = "invokeSuspend", v = 2)
final class PSPStoreModeViewModelImpl$doForEachDelegate$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function2 f64739c;
    public final /* synthetic */ PSPStoreModeViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PSPStoreModeViewModelImpl$doForEachDelegate$2(Function2 function2, PSPStoreModeViewModelImpl pSPStoreModeViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f64739c = function2;
        this.d = pSPStoreModeViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PSPStoreModeViewModelImpl$doForEachDelegate$2(this.f64739c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PSPStoreModeViewModelImpl$doForEachDelegate$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64738b;
        if (i2 == 0) {
            ResultKt.b(obj);
            StoreModeSearchDelegate storeModeSearchDelegate = this.d.m;
            this.f64738b = 1;
            if (this.f64739c.invoke(storeModeSearchDelegate, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
