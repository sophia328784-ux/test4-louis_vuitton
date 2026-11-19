package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import androidx.compose.foundation.lazy.LazyListState;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import com.vuitton.android.presentation.extensions.LazyListStateExtKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyColorSelectorKt$BeautyColorSelector$4$1", f = "BeautyColorSelector.kt", l = {EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID}, m = "invokeSuspend", v = 2)
final class BeautyColorSelectorKt$BeautyColorSelector$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61981b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f61982c;
    public final /* synthetic */ TryOnProductUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LazyListState f61983e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyColorSelectorKt$BeautyColorSelector$4$1(List list, TryOnProductUiModel tryOnProductUiModel, LazyListState lazyListState, Continuation continuation) {
        super(2, continuation);
        this.f61982c = list;
        this.d = tryOnProductUiModel;
        this.f61983e = lazyListState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyColorSelectorKt$BeautyColorSelector$4$1(this.f61982c, this.d, this.f61983e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyColorSelectorKt$BeautyColorSelector$4$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61981b;
        if (i2 == 0) {
            ResultKt.b(obj);
            List list = this.f61982c;
            list.getClass();
            int iIndexOf = list.indexOf(this.d);
            Integer numValueOf = iIndexOf != -1 ? Integer.valueOf(iIndexOf) : null;
            int iIntValue = numValueOf != null ? numValueOf.intValue() : 0;
            this.f61981b = 1;
            if (LazyListStateExtKt.a(this.f61983e, iIntValue + 1, LiveTranslationEntity.DefaultSentenceTimeOut, this) == coroutineSingletons) {
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
