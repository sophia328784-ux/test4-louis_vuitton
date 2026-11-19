package com.vuitton.android.presentation.screen.storemode;

import com.vuitton.android.presentation.screen.filter.model.SearchParams;
import com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "delegate", "Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl$search$1", f = "PSPStoreModeViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class PSPStoreModeViewModelImpl$search$1 extends SuspendLambda implements Function2<StoreModeSearchDelegate, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f64747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f64748c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PSPStoreModeViewModelImpl$search$1(String str, Continuation continuation) {
        super(2, continuation);
        this.f64748c = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PSPStoreModeViewModelImpl$search$1 pSPStoreModeViewModelImpl$search$1 = new PSPStoreModeViewModelImpl$search$1(this.f64748c, continuation);
        pSPStoreModeViewModelImpl$search$1.f64747b = obj;
        return pSPStoreModeViewModelImpl$search$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PSPStoreModeViewModelImpl$search$1) create((StoreModeSearchDelegate) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        StoreModeSearchDelegate storeModeSearchDelegate = (StoreModeSearchDelegate) this.f64747b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        storeModeSearchDelegate.getClass();
        String str = this.f64748c;
        str.getClass();
        storeModeSearchDelegate.f64944b.setValue(new SearchParams(str, null, null, null, 14, null));
        return Unit.f71739a;
    }
}
