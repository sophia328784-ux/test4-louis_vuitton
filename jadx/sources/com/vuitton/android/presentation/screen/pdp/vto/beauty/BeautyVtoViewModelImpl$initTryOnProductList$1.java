package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import androidx.lifecycle.ViewModelKt;
import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.ProductInfo;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.SkuInfo;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.beauty.BeautyVTOMonitoring;
import com.vuitton.android.domain.usecase.pdp.vto.GetTryOnProductListUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyProductTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LookUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.RecommendationUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderResponseUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.VirtualTryOnUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.mappers.TryOnProductMapperKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import com.vuitton.foundation.model.domain.model.product.vto.BeautyProductType;
import com.vuitton.foundation.model.domain.model.product.vto.TryOnProduct;
import defpackage.md;
import defpackage.re;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$initTryOnProductList$1", f = "BeautyVtoViewModelImpl.kt", l = {379}, m = "invokeSuspend", v = 2)
final class BeautyVtoViewModelImpl$initTryOnProductList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f61920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f61921c;
    public final /* synthetic */ BeautyVtoViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BeautyProductTypeUiModel f61922e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f61923f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoViewModelImpl$initTryOnProductList$1(BeautyVtoViewModelImpl beautyVtoViewModelImpl, BeautyProductTypeUiModel beautyProductTypeUiModel, String str, Continuation continuation) {
        super(2, continuation);
        this.d = beautyVtoViewModelImpl;
        this.f61922e = beautyProductTypeUiModel;
        this.f61923f = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoViewModelImpl$initTryOnProductList$1(this.d, this.f61922e, this.f61923f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoViewModelImpl$initTryOnProductList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:114:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:116:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:117:0x0204  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v6, types: [java.util.ArrayList] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorActionA;
        BeautyProductType beautyProductType;
        Object objA;
        Object value;
        Object value2;
        Object next;
        Object value3;
        Object next2;
        boolean zC;
        Object value4;
        TryOnProductUiModel tryOnProductUiModel;
        List list;
        ?? arrayList;
        Object value5;
        List list2;
        TryOnProductUiModel tryOnProductUiModel2;
        Object next3;
        String str;
        List list3;
        String strK;
        Object value6;
        Object value7;
        VirtualTryOnUiModel virtualTryOnUiModel;
        final BeautyVtoViewModelImpl beautyVtoViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = beautyVtoViewModelImpl.H;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61921c;
        int i3 = 3;
        BeautyProductTypeUiModel beautyProductTypeUiModel = this.f61922e;
        BeautyProductTypeUiModel beautyProductTypeUiModel2 = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            monitorActionA = beautyVtoViewModelImpl.f61841c.a(beautyVtoViewModelImpl.C, BeautyVTOMonitoring.Action.FetchVariationsVTO.f48837a);
            while (true) {
                Object value8 = mutableStateFlow.getValue();
                ((Boolean) value8).getClass();
                if (mutableStateFlow.i(value8, Boolean.TRUE)) {
                    break;
                }
                beautyProductTypeUiModel2 = beautyProductTypeUiModel2;
                i3 = i3;
            }
            GetTryOnProductListUseCase getTryOnProductListUseCase = beautyVtoViewModelImpl.m;
            beautyProductTypeUiModel.getClass();
            int i4 = TryOnProductMapperKt.WhenMappings.f62212b[beautyProductTypeUiModel.ordinal()];
            if (i4 == 1) {
                beautyProductType = BeautyProductType.LIPSTICK;
            } else if (i4 == 2) {
                beautyProductType = BeautyProductType.EYESHADOW;
            } else {
                if (i4 != i3) {
                    if (i4 != 4) {
                        v40.g();
                        return beautyProductTypeUiModel2;
                    }
                    md.n("NONE is not a valid type to send to the domain");
                    return beautyProductTypeUiModel2;
                }
                beautyProductType = BeautyProductType.LIPLINER;
            }
            this.f61920b = monitorActionA;
            this.f61921c = 1;
            objA = getTryOnProductListUseCase.a(beautyProductType, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            MonitorAction monitorAction = this.f61920b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
            monitorActionA = monitorAction;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            try {
                List list4 = (List) objA;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list4, 10));
                Iterator it = list4.iterator();
                while (it.hasNext()) {
                    arrayList2.add(TryOnProductMapperKt.b((TryOnProduct) it.next()));
                }
                objA = arrayList2;
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objA = new Result.Failure(th);
            }
        }
        if (!(objA instanceof Result.Failure)) {
            List list5 = (List) objA;
            ProductUiModel productUiModel = beautyVtoViewModelImpl.x;
            MutableStateFlow mutableStateFlow2 = beautyVtoViewModelImpl.L;
            boolean z = beautyVtoViewModelImpl.y;
            if (beautyProductTypeUiModel == ((productUiModel == null || (virtualTryOnUiModel = productUiModel.r) == null) ? beautyProductTypeUiModel2 : virtualTryOnUiModel.f62208b) || z) {
                MutableStateFlow mutableStateFlow3 = beautyVtoViewModelImpl.R;
                MutableStateFlow mutableStateFlow4 = beautyVtoViewModelImpl.M;
                ListBuilder listBuilderV = CollectionsKt.v();
                listBuilderV.add(beautyVtoViewModelImpl.G);
                listBuilderV.addAll(list5);
                ListBuilder listBuilderR = CollectionsKt.r(listBuilderV);
                do {
                    value2 = mutableStateFlow2.getValue();
                } while (!mutableStateFlow2.i(value2, listBuilderR));
                int i5 = 0;
                if (z) {
                    ShadeFinderResponseUiModel shadeFinderResponseUiModel = (ShadeFinderResponseUiModel) beautyVtoViewModelImpl.m0.getValue();
                    if (shadeFinderResponseUiModel == null || (list3 = shadeFinderResponseUiModel.f62174b) == null) {
                        arrayList = beautyProductTypeUiModel2;
                    } else {
                        arrayList = new ArrayList();
                        Iterator it2 = list3.iterator();
                        while (it2.hasNext()) {
                            TryOnProductUiModel tryOnProductUiModel3 = ((RecommendationUiModel) it2.next()).f62172c;
                            if (tryOnProductUiModel3 != null) {
                                arrayList.add(tryOnProductUiModel3);
                            }
                        }
                    }
                    while (true) {
                        Object value9 = mutableStateFlow4.getValue();
                        ArrayList arrayList3 = new ArrayList();
                        ListIterator listIterator = listBuilderR.listIterator(i5);
                        while (listIterator.hasNext()) {
                            Object next4 = listIterator.next();
                            if ((arrayList == 0 ? EmptyList.f71768b : arrayList).contains((TryOnProductUiModel) next4)) {
                                arrayList3.add(next4);
                            }
                        }
                        if (mutableStateFlow4.i(value9, arrayList3)) {
                            break;
                        }
                        i5 = 0;
                    }
                    do {
                        value5 = mutableStateFlow3.getValue();
                        String str2 = this.f61923f;
                        if (str2 == null) {
                            list2 = (List) mutableStateFlow4.getValue();
                            if (list2 != null) {
                                tryOnProductUiModel2 = (TryOnProductUiModel) CollectionsKt.firstOrNull(list2);
                            } else {
                                tryOnProductUiModel2 = null;
                            }
                        } else {
                            List list6 = (List) mutableStateFlow4.getValue();
                            if (list6 != null) {
                                Iterator it3 = list6.iterator();
                                do {
                                    if (!it3.hasNext()) {
                                        next3 = null;
                                        break;
                                    }
                                    next3 = it3.next();
                                    str = ((TryOnProductUiModel) next3).f62183a;
                                    SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
                                } while (!Intrinsics.c(str, str2));
                                tryOnProductUiModel2 = (TryOnProductUiModel) next3;
                            } else {
                                tryOnProductUiModel2 = null;
                            }
                            if (tryOnProductUiModel2 == null) {
                                list2 = (List) mutableStateFlow4.getValue();
                                if (list2 != null) {
                                    tryOnProductUiModel2 = (TryOnProductUiModel) CollectionsKt.firstOrNull(list2);
                                } else {
                                    tryOnProductUiModel2 = null;
                                }
                            }
                        }
                    } while (!mutableStateFlow3.i(value5, tryOnProductUiModel2));
                    beautyVtoViewModelImpl.Ga();
                } else {
                    ListIterator listIterator2 = listBuilderR.listIterator(0);
                    do {
                        if (!listIterator2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = listIterator2.next();
                        String str3 = ((TryOnProductUiModel) next).f62183a;
                        ProductUiModel productUiModel2 = beautyVtoViewModelImpl.x;
                        String str4 = productUiModel2 != null ? productUiModel2.f61735b : null;
                        if (str4 == null) {
                            zC = false;
                        } else {
                            SkuIdUiModel.Companion companion4 = SkuIdUiModel.f61763c;
                            zC = Intrinsics.c(str3, str4);
                        }
                    } while (!zC);
                    TryOnProductUiModel tryOnProductUiModel4 = (TryOnProductUiModel) next;
                    if (tryOnProductUiModel4 == null) {
                        ListIterator listIterator3 = listBuilderR.listIterator(0);
                        do {
                            if (!listIterator3.hasNext()) {
                                next2 = null;
                                break;
                            }
                            next2 = listIterator3.next();
                        } while (((TryOnProductUiModel) next2).f62185c == BeautyProductTypeUiModel.NONE);
                        tryOnProductUiModel4 = (TryOnProductUiModel) next2;
                    }
                    do {
                        value3 = mutableStateFlow3.getValue();
                    } while (!mutableStateFlow3.i(value3, tryOnProductUiModel4));
                }
                MutableStateFlow mutableStateFlow5 = beautyVtoViewModelImpl.V;
                do {
                    value4 = mutableStateFlow5.getValue();
                    tryOnProductUiModel = (TryOnProductUiModel) mutableStateFlow3.getValue();
                } while (!mutableStateFlow5.i(value4, (tryOnProductUiModel == null || (list = tryOnProductUiModel.f62188h) == null) ? null : (LookUiModel) CollectionsKt.firstOrNull(list)));
            } else {
                MutableStateFlow mutableStateFlow6 = beautyVtoViewModelImpl.N;
                do {
                    value6 = mutableStateFlow6.getValue();
                } while (!mutableStateFlow6.i(value6, list5));
                List list7 = list5;
                if (!(list7 instanceof Collection) || !list7.isEmpty()) {
                    Iterator it4 = list7.iterator();
                    while (it4.hasNext()) {
                        if (CollectionExtKt.a(((TryOnProductUiModel) it4.next()).f62188h)) {
                            beautyVtoViewModelImpl.Lc();
                            break;
                        }
                    }
                }
                PerfectEffect perfectEffectS5 = beautyVtoViewModelImpl.s5(beautyProductTypeUiModel);
                if (perfectEffectS5 != null) {
                    do {
                        value7 = mutableStateFlow.getValue();
                        ((Boolean) value7).getClass();
                    } while (!mutableStateFlow.i(value7, Boolean.TRUE));
                    SkuHandler skuHandler = beautyVtoViewModelImpl.D;
                    if (skuHandler != null) {
                        skuHandler.getListByEffect(perfectEffectS5, new SkuHandler.GetListCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$getMakeUpEffectStackingList$1$2
                            @Override // com.perfectcorp.perfectlib.SkuHandler.GetListCallback
                            public final void onFailure(Throwable th2) {
                                Object value10;
                                th2.getClass();
                                BeautyVtoViewModelImpl beautyVtoViewModelImpl2 = beautyVtoViewModelImpl;
                                beautyVtoViewModelImpl2.f61840b.c("BeautyVtoViewModelImpl", "[GetSkuSetList] onFailure", th2);
                                MutableStateFlow mutableStateFlow7 = beautyVtoViewModelImpl2.H;
                                do {
                                    value10 = mutableStateFlow7.getValue();
                                    ((Boolean) value10).getClass();
                                } while (!mutableStateFlow7.i(value10, Boolean.FALSE));
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r2v0, types: [kotlin.collections.EmptyList] */
                            /* JADX WARN: Type inference failed for: r2v1, types: [java.util.List] */
                            /* JADX WARN: Type inference failed for: r2v5, types: [java.util.ArrayList] */
                            @Override // com.perfectcorp.perfectlib.SkuHandler.GetListCallback
                            public final void onSuccess(List list8) {
                                ?? arrayList4;
                                Object value10;
                                Object value11;
                                Object obj2;
                                list8.getClass();
                                BeautyVtoViewModelImpl beautyVtoViewModelImpl2 = beautyVtoViewModelImpl;
                                Logger logger = beautyVtoViewModelImpl2.f61840b;
                                logger.getClass();
                                list8.size();
                                logger.getClass();
                                MutableStateFlow mutableStateFlow7 = beautyVtoViewModelImpl2.N;
                                List list9 = (List) mutableStateFlow7.getValue();
                                if (list9 != null) {
                                    List list10 = list9;
                                    arrayList4 = new ArrayList(CollectionsKt.t(list10, 10));
                                    Iterator it5 = list10.iterator();
                                    while (it5.hasNext()) {
                                        arrayList4.add(((TryOnProductUiModel) it5.next()).f62184b);
                                    }
                                } else {
                                    arrayList4 = EmptyList.f71768b;
                                }
                                ArrayList arrayList5 = new ArrayList();
                                Iterator it6 = list8.iterator();
                                while (it6.hasNext()) {
                                    List<SkuInfo> skus = ((ProductInfo) it6.next()).getSkus();
                                    skus.getClass();
                                    ArrayList arrayList6 = new ArrayList();
                                    for (Object obj3 : skus) {
                                        if (arrayList4.contains(((SkuInfo) obj3).getGuid())) {
                                            arrayList6.add(obj3);
                                        }
                                    }
                                    CollectionsKt.j(arrayList5, arrayList6);
                                }
                                MutableStateFlow mutableStateFlow8 = beautyVtoViewModelImpl2.K;
                                do {
                                    value10 = mutableStateFlow8.getValue();
                                } while (!mutableStateFlow8.i(value10, arrayList5));
                                MutableStateFlow mutableStateFlow9 = beautyVtoViewModelImpl2.S;
                                do {
                                    value11 = mutableStateFlow9.getValue();
                                    List list11 = (List) mutableStateFlow7.getValue();
                                    obj2 = null;
                                    if (list11 != null) {
                                        for (Object obj4 : list11) {
                                            TryOnProductUiModel tryOnProductUiModel5 = (TryOnProductUiModel) obj4;
                                            if (!arrayList5.isEmpty()) {
                                                Iterator it7 = arrayList5.iterator();
                                                while (it7.hasNext()) {
                                                    if (Intrinsics.c(((SkuInfo) it7.next()).getGuid(), tryOnProductUiModel5.f62184b)) {
                                                        obj2 = obj4;
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                        obj2 = (TryOnProductUiModel) obj2;
                                    }
                                } while (!mutableStateFlow9.i(value11, obj2));
                                beautyVtoViewModelImpl2.Jc();
                                beautyVtoViewModelImpl2.a1();
                            }
                        });
                    }
                }
            }
            List list8 = (List) mutableStateFlow2.getValue();
            if (list8 != null) {
                ArrayList arrayList4 = new ArrayList();
                for (Object obj2 : list8) {
                    if (((TryOnProductUiModel) obj2).f62183a.length() > 0) {
                        arrayList4.add(obj2);
                    }
                }
                strK = CollectionsKt.K(arrayList4, ",", null, null, new re(3), 30);
            } else {
                strK = "";
            }
            monitorActionA.c(strK, "skuList");
            monitorActionA.c(beautyProductTypeUiModel.name(), "type");
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            monitorActionA.d(new BeautyVTOMonitoring.Error.FetchVariationsVTOError(thA));
            beautyVtoViewModelImpl.f61840b.c("BeautyVtoViewModelImpl", "[getTryOnProductList] onFailure", thA);
            BuildersKt.c(ViewModelKt.a(beautyVtoViewModelImpl), null, null, new BeautyVtoViewModelImpl$initTryOnProductList$1$4$1(null, beautyVtoViewModelImpl), 3);
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.FALSE));
        }
        monitorActionA.b();
        return Unit.f71739a;
    }
}
