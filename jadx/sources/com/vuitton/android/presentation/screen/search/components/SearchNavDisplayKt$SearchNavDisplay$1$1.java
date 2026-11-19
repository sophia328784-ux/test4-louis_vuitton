package com.vuitton.android.presentation.screen.search.components;

import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.search.components.SearchNavDisplayKt$SearchNavDisplay$1$1", f = "SearchNavDisplay.kt", l = {}, m = "invokeSuspend", v = 2)
final class SearchNavDisplayKt$SearchNavDisplay$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f64180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PSPViewModel f64181c;
    public final /* synthetic */ NavBackStack d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchNavDisplayKt$SearchNavDisplay$1$1(String str, PSPViewModel pSPViewModel, NavBackStack navBackStack, Continuation continuation) {
        super(2, continuation);
        this.f64180b = str;
        this.f64181c = pSPViewModel;
        this.d = navBackStack;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SearchNavDisplayKt$SearchNavDisplay$1$1(this.f64180b, this.f64181c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SearchNavDisplayKt$SearchNavDisplay$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        String str = this.f64180b;
        if (str != null) {
            this.f64181c.X0(str);
            this.d.a(SearchRoutes.PSP.INSTANCE);
        }
        return Unit.f71739a;
    }
}
