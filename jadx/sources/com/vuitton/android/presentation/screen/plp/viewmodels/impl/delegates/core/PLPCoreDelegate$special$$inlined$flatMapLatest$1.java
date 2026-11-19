package com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.paging.Pager;
import androidx.paging.PagingConfig;
import androidx.paging.PagingData;
import androidx.paging.PagingSource;
import com.vuitton.android.presentation.common.editorial.mapper.EditorialModuleUiModelMapperKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.android.presentation.screen.plp.models.plp.ProductListUiModelKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductVariationUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.mapper.PLPItemMapperKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.mapper.ProductShortMapperKt;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.pagingsources.PLPPagingSource;
import com.vuitton.android.presentation.screen.search.models.HistoryUiModelKt;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import com.vuitton.foundation.model.domain.model.plp.PlpProductItem;
import com.vuitton.foundation.model.domain.model.plp.PlpSection;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortCharacteristic;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductVariation;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: Add missing generic type declarations: [Param] */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0003\u001a\u00028\u0001H\n"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "<anonymous>"}, k = 3, mv = {2, 3, 0})
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate$special$$inlined$flatMapLatest$1", f = "PLPCoreDelegate.kt", l = {189}, m = "invokeSuspend", v = 2)
public final class PLPCoreDelegate$special$$inlined$flatMapLatest$1<Param> extends SuspendLambda implements Function3<FlowCollector<? super PagingData<PlpSectionUiModel>>, Param, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ FlowCollector f63193c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f63194e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function3 f63195f;
    public final /* synthetic */ PLPCoreDelegate g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f63196h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPCoreDelegate$special$$inlined$flatMapLatest$1(Continuation continuation, int i2, Function3 function3, PLPCoreDelegate pLPCoreDelegate, boolean z) {
        super(3, continuation);
        this.f63194e = i2;
        this.f63195f = function3;
        this.g = pLPCoreDelegate;
        this.f63196h = z;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        PLPCoreDelegate$special$$inlined$flatMapLatest$1 pLPCoreDelegate$special$$inlined$flatMapLatest$1 = new PLPCoreDelegate$special$$inlined$flatMapLatest$1((Continuation) obj3, this.f63194e, this.f63195f, this.g, this.f63196h);
        pLPCoreDelegate$special$$inlined$flatMapLatest$1.f63193c = (FlowCollector) obj;
        pLPCoreDelegate$special$$inlined$flatMapLatest$1.d = obj2;
        return pLPCoreDelegate$special$$inlined$flatMapLatest$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        FlowCollector flowCollector = this.f63193c;
        final Object obj2 = this.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63192b;
        if (i2 == 0) {
            ResultKt.b(obj);
            PagingConfig pagingConfig = new PagingConfig(this.f63194e, 0, false, 0, 0, 0, 62, null);
            final PLPCoreDelegate pLPCoreDelegate = this.g;
            final boolean z = this.f63196h;
            final Function3 function3 = this.f63195f;
            Pager pager = new Pager(pagingConfig, null, new Function0<PagingSource<Integer, PlpSectionUiModel>>() { // from class: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate$items$1$1

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate$items$1$1$1, reason: invalid class name */
                @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "pageIndex", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate$items$1$1$1", f = "PLPCoreDelegate.kt", l = {EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY, 76, 79, EACTags.HISTORICAL_BYTES, 85}, m = "invokeSuspend", v = 2)
                final class AnonymousClass1 extends SuspendLambda implements Function2<Integer, Continuation<? super Result<? extends PlpPagination>>, Object> {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public int f63181b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f63182c;
                    public Object d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public PLPCoreDelegate f63183e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public PlpPagination f63184f;
                    public Iterator g;

                    /* JADX INFO: renamed from: h, reason: collision with root package name */
                    public SkuId f63185h;

                    /* JADX INFO: renamed from: i, reason: collision with root package name */
                    public LinkedHashMap f63186i;

                    /* JADX INFO: renamed from: j, reason: collision with root package name */
                    public int f63187j;

                    /* JADX INFO: renamed from: k, reason: collision with root package name */
                    public /* synthetic */ int f63188k;
                    public final /* synthetic */ Function3 l;
                    public final /* synthetic */ Object m;
                    public final /* synthetic */ PLPCoreDelegate n;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public AnonymousClass1(Function3 function3, Object obj, PLPCoreDelegate pLPCoreDelegate, Continuation continuation) {
                        super(2, continuation);
                        this.l = function3;
                        this.m = obj;
                        this.n = pLPCoreDelegate;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation create(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.l, this.m, this.n, continuation);
                        anonymousClass1.f63188k = ((Number) obj).intValue();
                        return anonymousClass1;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ((AnonymousClass1) create(Integer.valueOf(((Number) obj).intValue()), (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                    }

                    /* JADX WARN: Code duplicated, block: B:103:0x0137 A[SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:28:0x00b5  */
                    /* JADX WARN: Code duplicated, block: B:30:0x00bf  */
                    /* JADX WARN: Code duplicated, block: B:33:0x00da A[LOOP:2: B:31:0x00d4->B:33:0x00da, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:34:0x00ec  */
                    /* JADX WARN: Code duplicated, block: B:36:0x00f0  */
                    /* JADX WARN: Code duplicated, block: B:37:0x00fb  */
                    /* JADX WARN: Code duplicated, block: B:39:0x00ff  */
                    /* JADX WARN: Code duplicated, block: B:40:0x010a  */
                    /* JADX WARN: Code duplicated, block: B:42:0x010e  */
                    /* JADX WARN: Code duplicated, block: B:43:0x0119  */
                    /* JADX WARN: Code duplicated, block: B:45:0x011d  */
                    /* JADX WARN: Code duplicated, block: B:46:0x0128  */
                    /* JADX WARN: Code duplicated, block: B:48:0x012c  */
                    /* JADX WARN: Code duplicated, block: B:55:0x014b  */
                    /* JADX WARN: Code duplicated, block: B:59:0x017c  */
                    /* JADX WARN: Code duplicated, block: B:62:0x0183 A[ADDED_TO_REGION] */
                    /* JADX WARN: Code duplicated, block: B:66:0x0190  */
                    /* JADX WARN: Code duplicated, block: B:68:0x0194  */
                    /* JADX WARN: Code duplicated, block: B:70:0x0198  */
                    /* JADX WARN: Code duplicated, block: B:71:0x019f  */
                    /* JADX WARN: Code duplicated, block: B:73:0x01a2  */
                    /* JADX WARN: Code duplicated, block: B:75:0x01a9  */
                    /* JADX WARN: Code duplicated, block: B:80:0x01cd  */
                    /* JADX WARN: Code duplicated, block: B:83:0x01ed  */
                    /* JADX WARN: Code duplicated, block: B:87:0x01f3 A[PHI: r3
                      0x01f3: PHI (r3v14 java.lang.Object) = (r3v6 java.lang.Object), (r3v12 java.lang.Object), (r3v12 java.lang.Object), (r3v23 java.lang.Object) binds: [B:86:0x01f2, B:79:0x01cb, B:84:0x01ef, B:12:0x002e] A[DONT_GENERATE, DONT_INLINE]] */
                    /* JADX WARN: Code duplicated, block: B:89:0x01f9  */
                    /* JADX WARN: Code duplicated, block: B:94:0x021e  */
                    /* JADX WARN: Code duplicated, block: B:97:0x0223  */
                    /* JADX WARN: Code restructure failed: missing block: B:56:0x0174, code lost:
                    
                        if (r6 == r2) goto L96;
                     */
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r15v2, types: [kotlin.collections.EmptyList] */
                    /* JADX WARN: Type inference failed for: r15v3, types: [java.util.List] */
                    /* JADX WARN: Type inference failed for: r15v4, types: [java.util.List] */
                    /* JADX WARN: Type inference failed for: r15v5, types: [java.util.List] */
                    /* JADX WARN: Type inference failed for: r15v6, types: [java.util.List] */
                    /* JADX WARN: Type inference failed for: r15v7 */
                    /* JADX WARN: Type inference failed for: r15v9, types: [java.util.ArrayList] */
                    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0174 -> B:58:0x0178). Please report as a decompilation issue!!! */
                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object invokeSuspend(java.lang.Object r17) throws java.lang.Throwable {
                        /*
                            Method dump skipped, instruction units count: 555
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate$items$1$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    Function3 function4 = function3;
                    Object obj3 = obj2;
                    final PLPCoreDelegate pLPCoreDelegate2 = pLPCoreDelegate;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(function4, obj3, pLPCoreDelegate2, null);
                    final boolean z2 = z;
                    return new PLPPagingSource(anonymousClass1, new Function1<PlpPagination, List<? extends PlpSectionUiModel>>() { // from class: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate$items$1$1.2
                        /* JADX WARN: Code duplicated, block: B:37:0x0154  */
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            Iterator it;
                            int i3;
                            PlpSectionUiModel curatedText;
                            PlpSectionUiModel.CuratedText.LabelUiModel.FontUiModel fontUiModel;
                            PlpSectionUiModel.HalfEdito.AlignmentUiModel alignmentUiModel;
                            String str;
                            int i4;
                            ProductShortPriceUiModel productShortPriceUiModelC;
                            PlpPagination plpPagination = (PlpPagination) obj4;
                            plpPagination.getClass();
                            List list = plpPagination.d;
                            int i5 = 10;
                            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                            Iterator it2 = list.iterator();
                            while (true) {
                                boolean zHasNext = it2.hasNext();
                                final PLPCoreDelegate pLPCoreDelegate3 = pLPCoreDelegate2;
                                if (!zHasNext) {
                                    for (PlpProductUiModel plpProductUiModel : ProductListUiModelKt.a(arrayList)) {
                                        pLPCoreDelegate3.f63175i.put(new SkuIdUiModel(((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62943a), plpProductUiModel);
                                    }
                                    return arrayList;
                                }
                                PlpSection plpSection = (PlpSection) it2.next();
                                Function1<SkuId, Boolean> function1 = new Function1<SkuId, Boolean>() { // from class: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate$items$1$1$2$1$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj5) {
                                        String str2 = ((SkuId) obj5).f67933a;
                                        str2.getClass();
                                        Boolean bool = (Boolean) pLPCoreDelegate3.f63176j.get(new SkuId(str2));
                                        return Boolean.valueOf(bool != null ? bool.booleanValue() : false);
                                    }
                                };
                                boolean z3 = pLPCoreDelegate3.f63172e;
                                plpSection.getClass();
                                boolean z4 = plpSection instanceof PlpSection.Products;
                                boolean z5 = z2;
                                if (z4) {
                                    PlpSection.Products products = (PlpSection.Products) plpSection;
                                    String str2 = products.f67853a;
                                    List list2 = products.f67854b;
                                    ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, i5));
                                    Iterator it3 = list2.iterator();
                                    while (it3.hasNext()) {
                                        PlpProductItem plpProductItem = (PlpProductItem) it3.next();
                                        boolean zBooleanValue = ((Boolean) function1.invoke(new SkuId(plpProductItem.f67828c))).booleanValue();
                                        ProductShortPrice productShortPrice = plpProductItem.f67834k;
                                        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                                        String str3 = plpProductItem.f67828c;
                                        companion.getClass();
                                        SkuIdUiModel.Companion.c(str3);
                                        String str4 = plpProductItem.f67826a;
                                        if (str4 != null) {
                                            ProductIdUiModel.f61731c.getClass();
                                            str = str4;
                                        } else {
                                            str = null;
                                        }
                                        String str5 = plpProductItem.d;
                                        String str6 = plpProductItem.f67827b;
                                        AssetUiModel assetUiModelB = AssetMapperKt.b(plpProductItem.f67830f);
                                        List list3 = plpProductItem.g;
                                        Iterator it4 = it2;
                                        Iterator it5 = it3;
                                        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
                                        Iterator it6 = list3.iterator();
                                        while (it6.hasNext()) {
                                            arrayList3.add(AssetMapperKt.b((Asset) it6.next()));
                                        }
                                        boolean z6 = plpProductItem.p;
                                        boolean z7 = plpProductItem.q;
                                        MutableState mutableStateG = SnapshotStateKt.g(new PlpProductUiModel.SkuDataUiModel(str3, str, str5, str6, assetUiModelB, arrayList3, HistoryUiModelKt.b(plpProductItem.n), str4 != null ? SnapshotStateKt.g(new PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel(zBooleanValue, false)) : null, z6, z7, plpProductItem.r, null));
                                        MutableState mutableStateG2 = SnapshotStateKt.g(Boolean.FALSE);
                                        ListBuilder listBuilderV = CollectionsKt.v();
                                        ProductShortCharacteristic productShortCharacteristic = plpProductItem.f67832i;
                                        if (productShortCharacteristic != null) {
                                            SkuIdUiModel.f61763c.getClass();
                                            listBuilderV.add(new ProductVariationUiModel(str3, ProductShortMapperKt.b(productShortCharacteristic), null));
                                            List list4 = plpProductItem.f67831h;
                                            i4 = 10;
                                            ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list4, 10));
                                            Iterator it7 = list4.iterator();
                                            while (it7.hasNext()) {
                                                arrayList4.add(ProductShortMapperKt.e((ProductVariation) it7.next()));
                                            }
                                            listBuilderV.addAll(arrayList4);
                                        } else {
                                            i4 = 10;
                                        }
                                        ListBuilder listBuilderR = CollectionsKt.r(listBuilderV);
                                        if (productShortPrice == null) {
                                            productShortPriceUiModelC = null;
                                        } else {
                                            ProductShortPrice productShortPrice2 = z5 ? productShortPrice : null;
                                            if (productShortPrice2 != null) {
                                                productShortPriceUiModelC = ProductShortMapperKt.c(productShortPrice2);
                                            } else {
                                                productShortPriceUiModelC = null;
                                            }
                                        }
                                        arrayList2.add(new PlpProductUiModel(mutableStateG, mutableStateG2, listBuilderR, productShortPriceUiModelC, plpProductItem.f67833j, productShortPrice != null && z3 && plpProductItem.l, null, plpProductItem.m, 64, null));
                                        i5 = i4;
                                        it2 = it4;
                                        it3 = it5;
                                    }
                                    it = it2;
                                    i3 = i5;
                                    curatedText = new PlpSectionUiModel.Products(str2, arrayList2);
                                } else {
                                    it = it2;
                                    i3 = i5;
                                    if (plpSection instanceof PlpSection.ProductHighlight) {
                                        PlpSection.ProductHighlight productHighlight = (PlpSection.ProductHighlight) plpSection;
                                        String str7 = productHighlight.f67848a;
                                        ProductShort productShort = productHighlight.f67849b;
                                        curatedText = new PlpSectionUiModel.ProductHighlight(str7, PLPItemMapperKt.a(productShort, z5, ((Boolean) function1.invoke(new SkuId(productShort.f68128e))).booleanValue(), z3), AssetMapperKt.b(productHighlight.f67850c));
                                    } else if (plpSection instanceof PlpSection.ProductSlider) {
                                        PlpSection.ProductSlider productSlider = (PlpSection.ProductSlider) plpSection;
                                        String str8 = productSlider.f67851a;
                                        ProductShort productShort2 = productSlider.f67852b;
                                        curatedText = new PlpSectionUiModel.ProductSlider(str8, PLPItemMapperKt.a(productShort2, z5, ((Boolean) function1.invoke(new SkuId(productShort2.f68128e))).booleanValue(), z3));
                                    } else if (plpSection instanceof PlpSection.ProductFullscreen) {
                                        PlpSection.ProductFullscreen productFullscreen = (PlpSection.ProductFullscreen) plpSection;
                                        String str9 = productFullscreen.f67845a;
                                        ProductShort productShort3 = productFullscreen.f67846b;
                                        curatedText = new PlpSectionUiModel.ProductFullscreen(str9, PLPItemMapperKt.a(productShort3, z5, ((Boolean) function1.invoke(new SkuId(productShort3.f68128e))).booleanValue(), z3), EditorialModuleUiModelMapperKt.c(productFullscreen.f67847c));
                                    } else if (plpSection instanceof PlpSection.HalfEdito) {
                                        PlpSection.HalfEdito halfEdito = (PlpSection.HalfEdito) plpSection;
                                        String str10 = halfEdito.f67840a;
                                        String str11 = halfEdito.f67841b;
                                        String str12 = halfEdito.f67842c;
                                        String str13 = halfEdito.d;
                                        int i6 = PLPItemMapperKt.WhenMappings.f63001a[halfEdito.f67843e.ordinal()];
                                        if (i6 == 1) {
                                            alignmentUiModel = PlpSectionUiModel.HalfEdito.AlignmentUiModel.LEFT;
                                        } else {
                                            if (i6 != 2) {
                                                v40.g();
                                                return null;
                                            }
                                            alignmentUiModel = PlpSectionUiModel.HalfEdito.AlignmentUiModel.CENTER;
                                        }
                                        curatedText = new PlpSectionUiModel.HalfEdito(str10, str11, str12, str13, alignmentUiModel, AssetMapperKt.b(halfEdito.f67844f), ProductShortMapperKt.d(halfEdito.g));
                                    } else {
                                        if (!(plpSection instanceof PlpSection.CuratedText)) {
                                            v40.g();
                                            return null;
                                        }
                                        PlpSection.CuratedText curatedText2 = (PlpSection.CuratedText) plpSection;
                                        String str14 = curatedText2.f67835a;
                                        PlpSection.CuratedText.Label label = curatedText2.f67836b;
                                        String str15 = label.f67838a;
                                        int i7 = PLPItemMapperKt.WhenMappings.f63002b[label.f67839b.ordinal()];
                                        if (i7 == 1) {
                                            fontUiModel = PlpSectionUiModel.CuratedText.LabelUiModel.FontUiModel.SMALL;
                                        } else if (i7 == 2) {
                                            fontUiModel = PlpSectionUiModel.CuratedText.LabelUiModel.FontUiModel.MEDIUM;
                                        } else {
                                            if (i7 != 3) {
                                                v40.g();
                                                return null;
                                            }
                                            fontUiModel = PlpSectionUiModel.CuratedText.LabelUiModel.FontUiModel.LARGE;
                                        }
                                        PlpSectionUiModel.CuratedText.LabelUiModel labelUiModel = new PlpSectionUiModel.CuratedText.LabelUiModel(str15, fontUiModel);
                                        String str16 = curatedText2.f67837c;
                                        AssetImage assetImage = curatedText2.d;
                                        curatedText = new PlpSectionUiModel.CuratedText(str14, labelUiModel, str16, assetImage != null ? AssetMapperKt.a(assetImage) : null);
                                    }
                                }
                                arrayList.add(curatedText);
                                i5 = i3;
                                it2 = it;
                            }
                        }
                    });
                }
            }, 2, null);
            this.f63193c = null;
            this.d = null;
            this.f63192b = 1;
            if (FlowKt.n(flowCollector, pager.f18835a, this) == coroutineSingletons) {
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
