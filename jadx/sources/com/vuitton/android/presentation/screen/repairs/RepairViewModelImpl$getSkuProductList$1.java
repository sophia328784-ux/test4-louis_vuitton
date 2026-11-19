package com.vuitton.android.presentation.screen.repairs;

import com.vuitton.android.domain.usecase.products.GetSkusProductsListUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import defpackage.md;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$getSkuProductList$1", f = "RepairViewModelImpl.kt", l = {323}, m = "invokeSuspend", v = 2)
final class RepairViewModelImpl$getSkuProductList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f63543c;
    public final /* synthetic */ RepairViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairViewModelImpl$getSkuProductList$1(Continuation continuation, RepairViewModelImpl repairViewModelImpl) {
        super(2, continuation);
        this.d = repairViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        RepairViewModelImpl$getSkuProductList$1 repairViewModelImpl$getSkuProductList$1 = new RepairViewModelImpl$getSkuProductList$1(continuation, this.d);
        repairViewModelImpl$getSkuProductList$1.f63543c = obj;
        return repairViewModelImpl$getSkuProductList$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairViewModelImpl$getSkuProductList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        Object value;
        ArrayList arrayList;
        Object value2;
        ArrayList arrayList2;
        Object objK;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63542b;
        RepairViewModelImpl repairViewModelImpl = this.d;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                GetSkusProductsListUseCase getSkusProductsListUseCase = repairViewModelImpl.n;
                SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                List list = repairViewModelImpl.s;
                companion2.getClass();
                ArrayList arrayListA = SkuIdUiModel.Companion.a(list);
                this.f63543c = null;
                this.f63542b = 1;
                objK = getSkusProductsListUseCase.f50333a.k(arrayListA, this);
                if (objK == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objK = obj;
            }
            failure = (List) objK;
            Result.Companion companion3 = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion4 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA == null) {
            List<ProductShort> list2 = (List) failure;
            int iG = MapsKt.g(CollectionsKt.t(list2, 10));
            if (iG < 16) {
                iG = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
            for (ProductShort productShort : list2) {
                SkuIdUiModel.Companion companion5 = SkuIdUiModel.f61763c;
                String str = productShort.f68128e;
                companion5.getClass();
                SkuIdUiModel skuIdUiModel = new SkuIdUiModel(str);
                AssetImage assetImage = productShort.f68127c.f67106a;
                String str2 = assetImage != null ? assetImage.f67108a : null;
                if (str2 == null) {
                    str2 = "";
                }
                Pair pair = new Pair(skuIdUiModel, str2);
                linkedHashMap.put(pair.f71705b, pair.f71706c);
            }
            MutableStateFlow mutableStateFlow = repairViewModelImpl.x;
            do {
                value = mutableStateFlow.getValue();
                List<CareServiceUiModel> list3 = (List) value;
                arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                for (CareServiceUiModel careServiceUiModel : list3) {
                    String str3 = (String) linkedHashMap.get(new SkuIdUiModel(careServiceUiModel.l));
                    if (str3 == null) {
                        str3 = careServiceUiModel.n;
                    }
                    arrayList.add(CareServiceUiModel.a(careServiceUiModel, null, str3, null, false, false, false, false, false, 1044479));
                }
            } while (!mutableStateFlow.i(value, new ArrayList(arrayList)));
            MutableStateFlow mutableStateFlow2 = repairViewModelImpl.y;
            do {
                value2 = mutableStateFlow2.getValue();
                List<CareServiceUiModel> list4 = (List) value2;
                arrayList2 = new ArrayList(CollectionsKt.t(list4, 10));
                for (CareServiceUiModel careServiceUiModel2 : list4) {
                    String str4 = (String) linkedHashMap.get(new SkuIdUiModel(careServiceUiModel2.l));
                    if (str4 == null) {
                        str4 = careServiceUiModel2.n;
                    }
                    arrayList2.add(CareServiceUiModel.a(careServiceUiModel2, null, str4, null, false, false, false, false, false, 1044479));
                }
            } while (!mutableStateFlow2.i(value2, new ArrayList(arrayList2)));
        } else {
            repairViewModelImpl.f63496a.c("RepairViewModelImpl", "Unable to get skuList", thA);
        }
        return Unit.f71739a;
    }
}
