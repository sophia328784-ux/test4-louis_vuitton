package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import com.vuitton.android.domain.usecase.products.GetYmalProductListUseCase;
import com.vuitton.android.presentation.model.common.mapper.ProductTinyMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialUiModel;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$getRecommendedProducts$1", f = "BeautyVtoViewModelImpl.kt", l = {894}, m = "invokeSuspend", v = 2)
final class BeautyVtoViewModelImpl$getRecommendedProducts$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61900b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModelImpl f61901c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoViewModelImpl$getRecommendedProducts$1(BeautyVtoViewModelImpl beautyVtoViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f61901c = beautyVtoViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoViewModelImpl$getRecommendedProducts$1(this.f61901c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoViewModelImpl$getRecommendedProducts$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object value;
        TutorialState success;
        Object value2;
        TutorialState success2;
        BeautyVtoViewModelImpl beautyVtoViewModelImpl = this.f61901c;
        MutableStateFlow mutableStateFlow = beautyVtoViewModelImpl.X;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61900b;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetYmalProductListUseCase getYmalProductListUseCase = beautyVtoViewModelImpl.f61846j;
            SkuIdUiModel.f61763c.getClass();
            String str = this.d;
            SkuIdUiModel.Companion.b(str);
            this.f61900b = 1;
            objA = getYmalProductListUseCase.a(str, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            List list = (List) objA;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(ProductTinyMapperKt.a((ProductTiny) it.next()));
            }
            do {
                value2 = mutableStateFlow.getValue();
                success2 = (TutorialState) value2;
                if ((success2 instanceof TutorialState.Success ? (TutorialState.Success) success2 : null) != null) {
                    success2 = new TutorialState.Success(TutorialUiModel.a(((TutorialState.Success) success2).f62200a, arrayList, CertificateBody.profileType));
                }
            } while (!mutableStateFlow.i(value2, success2));
        }
        if (Result.a(objA) != null) {
            beautyVtoViewModelImpl.f61840b.getClass();
            do {
                value = mutableStateFlow.getValue();
                success = (TutorialState) value;
                if ((success instanceof TutorialState.Success ? (TutorialState.Success) success : null) != null) {
                    success = new TutorialState.Success(TutorialUiModel.a(((TutorialState.Success) success).f62200a, null, 383));
                }
            } while (!mutableStateFlow.i(value, success));
        }
        return Unit.f71739a;
    }
}
