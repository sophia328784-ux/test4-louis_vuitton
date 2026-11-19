package com.vuitton.android.presentation.screen.search;

import androidx.compose.runtime.State;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PSPViewState;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.search.SearchActivity$onCreate$2$1$1$1", f = "SearchActivity.kt", l = {}, m = "invokeSuspend", v = 2)
final class SearchActivity$onCreate$2$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ State f64096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchActivity f64097c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchActivity$onCreate$2$1$1$1(State state, SearchActivity searchActivity, Continuation continuation) {
        super(2, continuation);
        this.f64096b = state;
        this.f64097c = searchActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SearchActivity$onCreate$2$1$1$1(this.f64096b, this.f64097c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SearchActivity$onCreate$2$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        SearchActivity.Companion companion = SearchActivity.y;
        State state = this.f64096b;
        Integer num = ((PSPViewState) state.getF10755b()).f63015b;
        String str = ((PSPViewState) state.getF10755b()).f63014a;
        if (num != null && str != null && num.intValue() != 0) {
            ((SearchViewModel) this.f64097c.t.getF71699b()).Y9(str);
        }
        return Unit.f71739a;
    }
}
