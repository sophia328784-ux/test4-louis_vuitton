package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.domain.usecase.products.GetProductVariationsAvailabilityUseCase;
import com.vuitton.android.presentation.screen.pdp.mappers.SkuAvailabilityMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.PdpFeatureFlags;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.availability.ProductStock;
import com.vuitton.foundation.model.domain.model.product.availability.SkuAvailability;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$loadProductVariationsAvailabilities$1$1", f = "PdpViewModelImpl.kt", l = {953}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$loadProductVariationsAvailabilities$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61236c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ProductUiModel f61237e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$loadProductVariationsAvailabilities$1$1(PdpViewModelImpl pdpViewModelImpl, String str, ProductUiModel productUiModel, Continuation continuation) {
        super(2, continuation);
        this.f61236c = pdpViewModelImpl;
        this.d = str;
        this.f61237e = productUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$loadProductVariationsAvailabilities$1$1(this.f61236c, this.d, this.f61237e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$loadProductVariationsAvailabilities$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.LinkedHashMap, java.util.Map] */
    /* JADX WARN: Type inference failed for: r8v6 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ?? failure;
        ArrayList arrayList;
        SkuAvailabilityUiModel skuAvailabilityUiModel;
        Object next;
        boolean zEquals;
        Map map = this.f61237e.m;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61235b;
        PdpViewModelImpl pdpViewModelImpl = this.f61236c;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetProductVariationsAvailabilityUseCase getProductVariationsAvailabilityUseCase = pdpViewModelImpl.J;
            SkuIdUiModel.f61763c.getClass();
            String str = this.d;
            SkuIdUiModel.Companion.b(str);
            ArrayList arrayListD = CollectionsKt.D(map.values());
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayListD, 10));
            Iterator it = arrayListD.iterator();
            while (it.hasNext()) {
                arrayList2.add(new SkuIdUiModel(((VariationUiModel) it.next()).f61767b));
            }
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                String str2 = ((SkuIdUiModel) it2.next()).f61764b;
                SkuIdUiModel.f61763c.getClass();
                SkuIdUiModel.Companion.b(str2);
                arrayList3.add(new SkuId(str2));
            }
            List listY0 = CollectionsKt.y0(CollectionsKt.A0(arrayList3));
            this.f61235b = 1;
            Object objA = getProductVariationsAvailabilityUseCase.a(str, listY0, this);
            failure = objA;
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            failure = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(failure instanceof Result.Failure)) {
            try {
                List list = ((ProductStock) failure).f67946a;
                if (list != null) {
                    List<SkuAvailability> list2 = list;
                    arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                    for (SkuAvailability skuAvailability : list2) {
                        MutableStateFlow mutableStateFlow = pdpViewModelImpl.e0;
                        arrayList.add(SkuAvailabilityMapperKt.a(skuAvailability, ((PdpFeatureFlags) mutableStateFlow.getValue()).f61554a, ((PdpFeatureFlags) mutableStateFlow.getValue()).f61560i, ((PdpFeatureFlags) mutableStateFlow.getValue()).f61561j));
                    }
                } else {
                    arrayList = null;
                }
                failure = new LinkedHashMap(MapsKt.g(map.size()));
                for (Object obj2 : map.entrySet()) {
                    Object key = ((Map.Entry) obj2).getKey();
                    List<VariationUiModel> list3 = (List) ((Map.Entry) obj2).getValue();
                    ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list3, 10));
                    for (VariationUiModel variationUiModel : list3) {
                        if (arrayList != null) {
                            Iterator it3 = arrayList.iterator();
                            do {
                                if (!it3.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it3.next();
                                String str3 = ((SkuAvailabilityUiModel) next).f61759b;
                                String str4 = variationUiModel.f61767b;
                                if (str3 == null) {
                                    zEquals = false;
                                } else {
                                    SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                                    zEquals = str3.equals(str4);
                                }
                            } while (!zEquals);
                            skuAvailabilityUiModel = (SkuAvailabilityUiModel) next;
                        } else {
                            skuAvailabilityUiModel = null;
                        }
                        String str5 = variationUiModel.f61767b;
                        String str6 = variationUiModel.f61768c;
                        String str7 = variationUiModel.d;
                        String str8 = variationUiModel.f61770f;
                        String str9 = variationUiModel.g;
                        str5.getClass();
                        str6.getClass();
                        arrayList4.add(new VariationUiModel(str5, str6, str7, skuAvailabilityUiModel, str8, str9, null));
                    }
                    failure.put(key, arrayList4);
                }
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
        }
        if (!(failure instanceof Result.Failure)) {
            Map map2 = (Map) failure;
            MutableStateFlow mutableStateFlow2 = pdpViewModelImpl.W;
            ProductUiModel productUiModel = (ProductUiModel) mutableStateFlow2.getValue();
            mutableStateFlow2.setValue(productUiModel != null ? ProductUiModel.b(productUiModel, map2, null, null, -2049, 2097151) : null);
        }
        return Unit.f71739a;
    }
}
