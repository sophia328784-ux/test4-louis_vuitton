package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import com.vuitton.android.domain.usecase.products.GetSkusProductsListUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$checkAvailabilityForSkus$1$skusRequest$1", f = "BeautyVtoViewModelImpl.kt", l = {1229}, m = "invokeSuspend", v = 2)
final class BeautyVtoViewModelImpl$checkAvailabilityForSkus$1$skusRequest$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends ProductShort>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModelImpl f61881c;
    public final /* synthetic */ ListBuilder d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoViewModelImpl$checkAvailabilityForSkus$1$skusRequest$1(BeautyVtoViewModelImpl beautyVtoViewModelImpl, ListBuilder listBuilder, Continuation continuation) {
        super(2, continuation);
        this.f61881c = beautyVtoViewModelImpl;
        this.d = listBuilder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoViewModelImpl$checkAvailabilityForSkus$1$skusRequest$1(this.f61881c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoViewModelImpl$checkAvailabilityForSkus$1$skusRequest$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61880b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                BeautyVtoViewModelImpl beautyVtoViewModelImpl = this.f61881c;
                ListBuilder listBuilder = this.d;
                Result.Companion companion = Result.INSTANCE;
                GetSkusProductsListUseCase getSkusProductsListUseCase = beautyVtoViewModelImpl.l;
                SkuIdUiModel.f61763c.getClass();
                ArrayList arrayListA = SkuIdUiModel.Companion.a(listBuilder);
                this.f61880b = 1;
                obj = getSkusProductsListUseCase.f50333a.k(arrayListA, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result((List) obj);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Object obj2 = ((Result) failure).f71708b;
        if (obj2 instanceof Result.Failure) {
            return null;
        }
        return obj2;
    }
}
