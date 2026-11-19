package com.vuitton.android.presentation.screen.thelookimmersivearticle.components;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.SnapshotStateKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleLookCardUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import defpackage.md;
import defpackage.u2;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$1$1", f = "TheLookImmersiveArticleDetailScreen.kt", l = {EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE}, m = "invokeSuspend", v = 2)
final class TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f65338c;
    public final /* synthetic */ Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TheLookImmersiveArticleViewState f65339e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$1$1(PagerState pagerState, Function2 function2, TheLookImmersiveArticleViewState theLookImmersiveArticleViewState, Continuation continuation) {
        super(2, continuation);
        this.f65338c = pagerState;
        this.d = function2;
        this.f65339e = theLookImmersiveArticleViewState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$1$1(this.f65338c, this.d, this.f65339e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f65337b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowK = FlowKt.k(SnapshotStateKt.m(new u2(this.f65338c, 21)));
            final Function2 function2 = this.d;
            final TheLookImmersiveArticleViewState theLookImmersiveArticleViewState = this.f65339e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$1$1.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    int iIntValue = ((Number) obj2).intValue();
                    function2.invoke(new Integer(iIntValue), ((ImmersiveArticleLookCardUiModel) theLookImmersiveArticleViewState.f65395e.get(iIntValue)).f58681a);
                    return Unit.f71739a;
                }
            };
            this.f65337b = 1;
            if (flowK.f(flowCollector, this) == coroutineSingletons) {
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
