package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.NoShadeFinderProductException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.jniproxy.CUIShadeFinder;
import com.perfectcorp.perfectlib.jniproxy.UIShadeFinderJNI;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.ColorLab32f;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import defpackage.v7;
import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class k1 implements Function, Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f40437c;
    public final /* synthetic */ Object d;

    public /* synthetic */ k1(boolean z, ShadeFinderDeltaE shadeFinderDeltaE) {
        this.f40436b = 2;
        this.f40437c = z;
        this.d = shadeFinderDeltaE;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0142  */
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        ImmutableList immutableListI;
        Optional optionalE;
        int i2 = this.f40436b;
        Object obj2 = this.d;
        boolean z = this.f40437c;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                return MakeupCamInternal.k(ApplyEffectCtrl.H, ((MakeupCamInternal) obj2).g.f40752b, (List) obj, z);
            case 1:
                int i3 = PhotoMakeupInternal.n;
                return MakeupCamInternal.k(ApplyEffectCtrl.I, ((PhotoMakeupInternal) obj2).f39787h, (List) obj, z);
            default:
                ShadeFinderDeltaE shadeFinderDeltaE = (ShadeFinderDeltaE) obj2;
                List list = (List) obj;
                if (list.isEmpty()) {
                    Log.g(3, "ShadeFinderRecommendationHandler", "[getBestMatchAndNeighborsList] skuDatas is empty");
                    throw new NoShadeFinderProductException("skuDatas is empty.");
                }
                ImmutableList.Builder builder = new ImmutableList.Builder();
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ShadeFinderRecommendationHandler.SkuData skuData = (ShadeFinderRecommendationHandler.SkuData) list.get(i4);
                    if (skuData.distance > shadeFinderDeltaE.f39847a) {
                        optionalE = Optional.a();
                    } else {
                        ShadeFinderProductSet.Builder builder2 = new ShadeFinderProductSet.Builder(new ShadeFinderProduct(skuData.f39874a, skuData.f39875b, ShadeFinderProduct.Type.BEST_MATCH));
                        com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.c cVar = skuData.d;
                        if (cVar != null) {
                            builder2.f39860b = (ShadeFinderProduct) ShadeFinderRecommendationHandler.b(cVar.warmer, z, ShadeFinderProduct.Type.WARMER).g();
                            builder2.f39861c = (ShadeFinderProduct) ShadeFinderRecommendationHandler.b(cVar.cooler, z, ShadeFinderProduct.Type.COOLER).g();
                            builder2.f39862e = (ShadeFinderProduct) ShadeFinderRecommendationHandler.b(cVar.lighter, z, ShadeFinderProduct.Type.LIGHTER).g();
                            builder2.d = (ShadeFinderProduct) ShadeFinderRecommendationHandler.b(cVar.darker, z, ShadeFinderProduct.Type.DARKER).g();
                        } else {
                            float f2 = shadeFinderDeltaE.f39848b;
                            int size = list.size();
                            ColorLab32f[] colorLab32fArr = new ColorLab32f[size];
                            for (int i5 = 0; i5 < size; i5++) {
                                colorLab32fArr[i5] = ((ShadeFinderRecommendationHandler.SkuData) list.get(i5)).f39876c;
                            }
                            com.perfectcorp.perfectlib.rh.kernelctrl.a aVar = new com.perfectcorp.perfectlib.rh.kernelctrl.a();
                            CUIShadeFinder cUIShadeFinder = ShadeFinderRecommendationHandler.ShadeFinderSingleton.f39872a;
                            if (!UIShadeFinderJNI.CUIShadeFinder_GetShadeFinderNeighborShade(cUIShadeFinder.f40400a, cUIShadeFinder, colorLab32fArr, i4, aVar)) {
                                Log.d("ShadeFinderRecommendationHandler", "Get shade finder neighbor shade result failed.");
                                v7.h("Can't get shade finder neighbor shade result.");
                                return null;
                            }
                            builder2.f39860b = (ShadeFinderProduct) ShadeFinderRecommendationHandler.c(list, aVar.warmer_item_index, aVar.warmer_item_delta_e, f2, ShadeFinderProduct.Type.WARMER).g();
                            builder2.f39861c = (ShadeFinderProduct) ShadeFinderRecommendationHandler.c(list, aVar.cooler_item_index, aVar.cooler_item_delta_e, f2, ShadeFinderProduct.Type.COOLER).g();
                            builder2.f39862e = (ShadeFinderProduct) ShadeFinderRecommendationHandler.c(list, aVar.lighter_item_index, aVar.lighter_item_delta_e, f2, ShadeFinderProduct.Type.LIGHTER).g();
                            builder2.d = (ShadeFinderProduct) ShadeFinderRecommendationHandler.c(list, aVar.darker_item_index, aVar.darker_item_delta_e, f2, ShadeFinderProduct.Type.DARKER).g();
                        }
                        optionalE = Optional.e(new ShadeFinderProductSet(builder2));
                    }
                    if (!optionalE.d()) {
                        immutableListI = builder.i();
                        Log.g(3, "ShadeFinderRecommendationHandler", "[getBestMatchAndNeighborsList] Return result. productSet size=" + immutableListI.size());
                        if (immutableListI.isEmpty()) {
                            Log.g(5, "ShadeFinderRecommendationHandler", "There has no products. Maybe the delta E is too small?");
                        }
                        Log.g(3, "ShadeFinderRecommendationHandler", "[getRecommendedResult] productSets.size()=" + immutableListI.size());
                        return new ShadeFinderRecommendationResult(immutableListI);
                    }
                    builder.f((ShadeFinderProductSet) optionalE.c());
                }
                immutableListI = builder.i();
                Log.g(3, "ShadeFinderRecommendationHandler", "[getBestMatchAndNeighborsList] Return result. productSet size=" + immutableListI.size());
                if (immutableListI.isEmpty()) {
                    Log.g(5, "ShadeFinderRecommendationHandler", "There has no products. Maybe the delta E is too small?");
                }
                Log.g(3, "ShadeFinderRecommendationHandler", "[getRecommendedResult] productSets.size()=" + immutableListI.size());
                return new ShadeFinderRecommendationResult(immutableListI);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        TagType tagType = (TagType) this.d;
        Iterator it = com.perfectcorp.perfectlib.ph.database.ymk.generictag.a.d.o(YMKDatabase.b(), tagType.f39993a, Long.toString(((com.perfectcorp.perfectlib.ph.database.ymk.generictag.c) obj).f41176b)).iterator();
        while (it.hasNext()) {
            List listC = TagHandler.c(tagType, Long.toString(((com.perfectcorp.perfectlib.ph.database.ymk.generictag.f) it.next()).f41190b));
            if (!((AbstractCollection) listC).isEmpty() && (tagType == TagType.LOOK || !this.f40437c || !((AbstractCollection) TagHandler.d(listC)).isEmpty())) {
                return true;
            }
        }
        return false;
    }

    public /* synthetic */ k1(Object obj, boolean z, int i2) {
        this.f40436b = i2;
        this.d = obj;
        this.f40437c = z;
    }
}
