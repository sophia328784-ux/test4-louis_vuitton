package com.vuitton.android.presentation.screen.pdp.contextualsizing.components;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import defpackage.md;
import defpackage.u2;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.AbstractFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ContextualSizingScreenKt$ContextualSizingScreen$1$1", f = "ContextualSizingScreen.kt", l = {EACTags.ADDRESS}, m = "invokeSuspend", v = 2)
final class ContextualSizingScreenKt$ContextualSizingScreen$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f61489c;
    public final /* synthetic */ PagerState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ArrayList f61490e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f61491f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ContextualSizingScreenKt$ContextualSizingScreen$1$1$2, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    final class AnonymousClass2<T> implements FlowCollector {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ PagerState f61492b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ArrayList f61493c;
        public final /* synthetic */ MutableState d;

        public AnonymousClass2(PagerState pagerState, ArrayList arrayList, MutableState mutableState) {
            this.f61492b = pagerState;
            this.f61493c = arrayList;
            this.d = mutableState;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final Object b(int i2, Continuation continuation) {
            ContextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1 contextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1;
            if (continuation instanceof ContextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1) {
                contextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1 = (ContextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1) continuation;
                int i3 = contextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1.f61496e;
                if ((i3 & Integer.MIN_VALUE) != 0) {
                    contextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1.f61496e = i3 - Integer.MIN_VALUE;
                } else {
                    contextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1 = new ContextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1(this, continuation);
                }
            } else {
                contextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1 = new ContextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1(this, continuation);
            }
            Object obj = contextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1.f61495c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i4 = contextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1.f61496e;
            if (i4 == 0) {
                ResultKt.b(obj);
                PagerState pagerState = this.f61492b;
                if (pagerState.k() != i2) {
                    contextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1.f61494b = i2;
                    contextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1.f61496e = 1;
                    if (PagerState.v(pagerState, i2, contextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
            } else {
                if (i4 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                i2 = contextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1.f61494b;
                ResultKt.b(obj);
            }
            ModelSizeVariationUiModel modelSizeVariationUiModel = (ModelSizeVariationUiModel) CollectionsKt.G(i2, this.f61493c);
            if (modelSizeVariationUiModel != null) {
                this.d.setValue(modelSizeVariationUiModel);
            }
            return Unit.f71739a;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public final /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
            return b(((Number) obj).intValue(), continuation);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContextualSizingScreenKt$ContextualSizingScreen$1$1(PagerState pagerState, PagerState pagerState2, ArrayList arrayList, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f61489c = pagerState;
        this.d = pagerState2;
        this.f61490e = arrayList;
        this.f61491f = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ContextualSizingScreenKt$ContextualSizingScreen$1$1(this.f61489c, this.d, this.f61490e, this.f61491f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ContextualSizingScreenKt$ContextualSizingScreen$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61488b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowM = SnapshotStateKt.m(new u2(this.f61489c, 4));
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.d, this.f61490e, this.f61491f);
            this.f61488b = 1;
            if (((AbstractFlow) flowM).f(anonymousClass2, this) == coroutineSingletons) {
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
