package com.vuitton.android.presentation.screen.spotlight;

import com.vuitton.android.domain.usecase.products.GetProductShortListUseCase;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.HotspotContentUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.HotspotDetailUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.HotspotPositionUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightCtaUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightHotspotUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightProductUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightSlideUiModel;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$lazyFetchProducts$1", f = "SpotlightViewModelImpl.kt", l = {181}, m = "invokeSuspend", v = 2)
final class SpotlightViewModelImpl$lazyFetchProducts$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SpotlightViewModelImpl f64546c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpotlightViewModelImpl$lazyFetchProducts$1(Continuation continuation, SpotlightViewModelImpl spotlightViewModelImpl) {
        super(2, continuation);
        this.f64546c = spotlightViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SpotlightViewModelImpl$lazyFetchProducts$1(continuation, this.f64546c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SpotlightViewModelImpl$lazyFetchProducts$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r1v5, types: [kotlin.Result$Failure] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.util.ArrayList] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        ?? failure;
        Object next;
        SpotlightHotspotUiModel spotlightHotspotUiModel;
        boolean zEquals;
        SpotlightViewModelImpl spotlightViewModelImpl = this.f64546c;
        MutableStateFlow mutableStateFlow = spotlightViewModelImpl.t;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64545b;
        int i3 = 10;
        if (i2 == 0) {
            ResultKt.b(obj);
            Iterable iterable = (Iterable) mutableStateFlow.getValue();
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                CollectionsKt.j(arrayList, ((SpotlightSlideUiModel) it.next()).g);
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String str = ((SpotlightHotspotUiModel) it2.next()).d.f64624a;
                SkuIdUiModel skuIdUiModel = str != null ? new SkuIdUiModel(str) : null;
                if (skuIdUiModel != null) {
                    arrayList2.add(skuIdUiModel);
                }
            }
            GetProductShortListUseCase getProductShortListUseCase = spotlightViewModelImpl.f64542k;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                String str2 = ((SkuIdUiModel) it3.next()).f61764b;
                SkuIdUiModel.f61763c.getClass();
                SkuIdUiModel.Companion.b(str2);
                arrayList3.add(new SkuId(str2));
            }
            this.f64545b = 1;
            Object objA = getProductShortListUseCase.a(arrayList3, this);
            obj2 = objA;
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        boolean z = obj2 instanceof Result.Failure;
        ?? r0 = obj2;
        if (!z) {
            try {
                List<ProductShort> list = (List) obj2;
                failure = new ArrayList(CollectionsKt.t(list, 10));
                for (ProductShort productShort : list) {
                    productShort.getClass();
                    SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                    String str3 = productShort.f68128e;
                    companion2.getClass();
                    String str4 = productShort.f68126b;
                    AssetImage assetImage = productShort.f68127c.f67106a;
                    String str5 = assetImage != null ? assetImage.f67108a : null;
                    String str6 = str5 == null ? "" : str5;
                    ProductShortPrice productShortPrice = productShort.o;
                    String str7 = productShortPrice != null ? productShortPrice.f68137b : null;
                    failure.add(new SpotlightProductUiModel(str3, str4, str6, str7 == null ? "" : str7, null));
                }
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            r0 = failure;
        }
        if (!(r0 instanceof Result.Failure)) {
            List list2 = (List) r0;
            while (true) {
                Object value = mutableStateFlow.getValue();
                List<SpotlightSlideUiModel> list3 = (List) value;
                ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list3, i3));
                for (SpotlightSlideUiModel spotlightSlideUiModel : list3) {
                    List<SpotlightHotspotUiModel> list4 = spotlightSlideUiModel.g;
                    ArrayList arrayList5 = new ArrayList();
                    for (SpotlightHotspotUiModel spotlightHotspotUiModel2 : list4) {
                        Iterator it4 = list2.iterator();
                        do {
                            if (!it4.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it4.next();
                            String str8 = ((SpotlightProductUiModel) next).f64647a;
                            String str9 = spotlightHotspotUiModel2.d.f64624a;
                            if (str9 == null) {
                                zEquals = false;
                            } else {
                                SkuIdUiModel.Companion companion4 = SkuIdUiModel.f61763c;
                                zEquals = str8.equals(str9);
                            }
                        } while (!zEquals);
                        SpotlightProductUiModel spotlightProductUiModel = (SpotlightProductUiModel) next;
                        HotspotContentUiModel hotspotContentUiModel = spotlightHotspotUiModel2.d;
                        HotspotDetailUiModel hotspotDetailUiModel = hotspotContentUiModel.f64625b;
                        if (spotlightProductUiModel == null && hotspotDetailUiModel == null) {
                            spotlightHotspotUiModel = null;
                        } else {
                            HotspotContentUiModel hotspotContentUiModel2 = new HotspotContentUiModel(hotspotContentUiModel.f64624a, hotspotDetailUiModel, spotlightProductUiModel, null);
                            String str10 = spotlightHotspotUiModel2.f64643a;
                            HotspotPositionUiModel hotspotPositionUiModel = spotlightHotspotUiModel2.f64644b;
                            AssetUiModel assetUiModel = spotlightHotspotUiModel2.f64645c;
                            str10.getClass();
                            hotspotPositionUiModel.getClass();
                            assetUiModel.getClass();
                            spotlightHotspotUiModel = new SpotlightHotspotUiModel(str10, hotspotPositionUiModel, assetUiModel, hotspotContentUiModel2);
                        }
                        if (spotlightHotspotUiModel != null) {
                            arrayList5.add(spotlightHotspotUiModel);
                        }
                    }
                    String str11 = spotlightSlideUiModel.f64650a;
                    String str12 = spotlightSlideUiModel.f64651b;
                    AssetUiModel assetUiModel2 = spotlightSlideUiModel.f64652c;
                    float f2 = spotlightSlideUiModel.d;
                    AssetVideoUiModel assetVideoUiModel = spotlightSlideUiModel.f64653e;
                    AssetVideoUiModel assetVideoUiModel2 = spotlightSlideUiModel.f64654f;
                    FeatureThemeUiModel featureThemeUiModel = spotlightSlideUiModel.f64655h;
                    SpotlightCtaUiModel spotlightCtaUiModel = spotlightSlideUiModel.f64656i;
                    boolean z2 = spotlightSlideUiModel.f64657j;
                    str11.getClass();
                    str12.getClass();
                    assetUiModel2.getClass();
                    featureThemeUiModel.getClass();
                    arrayList4.add(new SpotlightSlideUiModel(str11, str12, assetUiModel2, f2, assetVideoUiModel, assetVideoUiModel2, arrayList5, featureThemeUiModel, spotlightCtaUiModel, z2));
                }
                if (mutableStateFlow.i(value, arrayList4)) {
                    break;
                }
                i3 = 10;
            }
        }
        return Unit.f71739a;
    }
}
