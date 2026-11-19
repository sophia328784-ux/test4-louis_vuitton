package com.vuitton.android.presentation.screen.catalog.components;

import android.content.Context;
import androidx.compose.runtime.MutableState;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.screen.catalog.CatalogDestinations;
import com.vuitton.android.presentation.screen.catalog.CatalogDestinationsKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogUiModelKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.catalog.models.CategoryRedirectionUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel;
import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import com.vuitton.android.presentation.screen.catalog.models.PlpEntryType;
import com.vuitton.android.presentation.screen.catalog.models.SubcategoryGroupsUiModel;
import com.vuitton.android.presentation.screen.catalog.models.SubcategoryRedirectionUiModel;
import com.vuitton.android.presentation.screen.catalog.models.SubcategoryUiModel;
import com.vuitton.android.presentation.screen.main.navigation.CatalogDeepLinkType;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.components.CatalogComposableKt$CatalogComposable$1$1", f = "CatalogComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class CatalogComposableKt$CatalogComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MutableState f55264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CatalogRoute f55265c;
    public final /* synthetic */ Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NavHostController f55266e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogComposableKt$CatalogComposable$1$1(MutableState mutableState, CatalogRoute catalogRoute, Context context, NavHostController navHostController, Continuation continuation) {
        super(2, continuation);
        this.f55264b = mutableState;
        this.f55265c = catalogRoute;
        this.d = context;
        this.f55266e = navHostController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CatalogComposableKt$CatalogComposable$1$1(this.f55264b, this.f55265c, this.d, this.f55266e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CatalogComposableKt$CatalogComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object skuList;
        CategoryUiModel categoryUiModelA;
        SubcategoryUiModel subcategoryUiModel;
        PLPEntryUiModel pLPEntryUiModel;
        PLPEntryUiModel pLPEntryUiModel2;
        SubcategoryRedirectionUiModel subcategoryRedirectionUiModel;
        List list;
        Object next;
        SubcategoryRedirectionUiModel subcategoryRedirectionUiModel2;
        List list2;
        Object next2;
        CategoryRedirectionUiModel categoryRedirectionUiModel;
        List list3;
        Object next3;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutableState mutableState = this.f55264b;
        if (((CatalogViewState) mutableState.getF10755b()).f55356c) {
            return Unit.f71739a;
        }
        CatalogUiModel catalogUiModel = ((CatalogViewState) mutableState.getF10755b()).f55354a;
        if (catalogUiModel != null) {
            CatalogRoute catalogRoute = this.f55265c;
            catalogRoute.getClass();
            Context context = this.d;
            context.getClass();
            CatalogDeepLinkType catalogDeepLinkType = catalogRoute.f59151a;
            int i2 = catalogDeepLinkType == null ? -1 : CatalogRoute.WhenMappings.f59161a[catalogDeepLinkType.ordinal()];
            if (i2 == -1) {
                skuList = null;
            } else {
                if (i2 == 1) {
                    String str = catalogRoute.f59155f;
                    if (str == null) {
                        str = new String();
                    }
                    String str2 = str;
                    SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                    context.startActivity(CatalogDestinationsKt.a(new CatalogDestinations.ToPdpPage(str2, null, catalogRoute.g, 2, null), context));
                } else if (i2 == 2) {
                    List list4 = catalogRoute.f59154e;
                    String strK = list4 != null ? CollectionsKt.K(list4, null, null, null, null, 63) : null;
                    if (strK == null) {
                        strK = "";
                    }
                    skuList = new CatalogRoutes.SkuList(strK);
                } else if (i2 == 3) {
                    String str3 = catalogRoute.f59156h;
                    if (str3 != null) {
                        Triple tripleB = CatalogUiModelKt.b(catalogUiModel, str3);
                        if (tripleB != null) {
                            CategoryUiModel categoryUiModel = (CategoryUiModel) tripleB.f71716b;
                            SubcategoryUiModel subcategoryUiModel2 = (SubcategoryUiModel) tripleB.f71717c;
                            PlpEntryType plpEntryType = (PlpEntryType) tripleB.d;
                            new CatalogRoutes.Subcategory(categoryUiModel.f55363a);
                            skuList = plpEntryType == PlpEntryType.Thematic ? new CatalogRoutes.ThematicPlp(categoryUiModel.f55363a, subcategoryUiModel2.f55382a, subcategoryUiModel2.f55383b, (String) null, catalogRoute.l, 8, (DefaultConstructorMarker) null) : new CatalogRoutes.Plp(categoryUiModel.f55363a, subcategoryUiModel2.f55382a, str3, subcategoryUiModel2.f55383b);
                        } else {
                            skuList = new CatalogRoutes.Plp(new String(), new String(), str3, new String());
                        }
                    }
                } else if (i2 == 4) {
                    String str4 = catalogRoute.f59157i;
                    String str5 = catalogRoute.f59158j;
                    String str6 = catalogRoute.f59159k;
                    if (str4 != null) {
                        if (str4.equals(DeepLink.CATALOG_WOMEN.getHost())) {
                            categoryUiModelA = CatalogUiModelKt.a(catalogUiModel, "femme");
                        } else {
                            categoryUiModelA = str4.equals(DeepLink.CATALOG_MEN.getHost()) ? CatalogUiModelKt.a(catalogUiModel, "homme") : CatalogUiModelKt.a(catalogUiModel, str4);
                        }
                        if (str5 == null || categoryUiModelA == null || (categoryRedirectionUiModel = categoryUiModelA.f55367f) == null || (list3 = categoryRedirectionUiModel.f55361c) == null) {
                            subcategoryUiModel = null;
                        } else {
                            List list5 = list3;
                            ArrayList arrayList = new ArrayList(CollectionsKt.t(list5, 10));
                            Iterator it = list5.iterator();
                            while (it.hasNext()) {
                                arrayList.add(((SubcategoryGroupsUiModel) it.next()).f55378b);
                            }
                            Iterator it2 = CollectionsKt.D(arrayList).iterator();
                            do {
                                if (!it2.hasNext()) {
                                    next3 = null;
                                    break;
                                }
                                next3 = it2.next();
                            } while (!Intrinsics.c(((SubcategoryUiModel) next3).f55382a, str5));
                            subcategoryUiModel = (SubcategoryUiModel) next3;
                        }
                        if (str6 == null || subcategoryUiModel == null || (subcategoryRedirectionUiModel2 = subcategoryUiModel.f55384c) == null || (list2 = subcategoryRedirectionUiModel2.f55379a) == null) {
                            pLPEntryUiModel = null;
                        } else {
                            Iterator it3 = list2.iterator();
                            do {
                                if (!it3.hasNext()) {
                                    next2 = null;
                                    break;
                                }
                                next2 = it3.next();
                            } while (!Intrinsics.c(((PLPEntryUiModel) next2).f55372a, str6));
                            pLPEntryUiModel = (PLPEntryUiModel) next2;
                        }
                        if (str6 == null || subcategoryUiModel == null || (subcategoryRedirectionUiModel = subcategoryUiModel.f55384c) == null || (list = subcategoryRedirectionUiModel.f55380b) == null) {
                            pLPEntryUiModel2 = null;
                        } else {
                            Iterator it4 = list.iterator();
                            do {
                                if (!it4.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it4.next();
                            } while (!Intrinsics.c(((PLPEntryUiModel) next).f55372a, str6));
                            pLPEntryUiModel2 = (PLPEntryUiModel) next;
                        }
                        PLPEntryUiModel pLPEntryUiModel3 = pLPEntryUiModel == null ? pLPEntryUiModel2 : pLPEntryUiModel;
                        if (categoryUiModelA == null || subcategoryUiModel == null || pLPEntryUiModel3 == null) {
                            skuList = null;
                        } else {
                            skuList = (pLPEntryUiModel2 == null || pLPEntryUiModel != null) ? new CatalogRoutes.Plp(categoryUiModelA.f55363a, subcategoryUiModel.f55382a, pLPEntryUiModel3.f55373b, pLPEntryUiModel3.f55374c) : new CatalogRoutes.ThematicPlp(categoryUiModelA.f55363a, subcategoryUiModel.f55382a, pLPEntryUiModel3.f55374c, (String) null, (String) null, 24, (DefaultConstructorMarker) null);
                        }
                        if (skuList == null) {
                            skuList = categoryUiModelA != null ? new CatalogRoutes.Subcategory(categoryUiModelA.f55363a) : null;
                        }
                        if (skuList == null) {
                        }
                    }
                } else if (i2 != 5) {
                    v40.g();
                    return null;
                }
                skuList = null;
            }
            if (skuList != null) {
                NavController.d(this.f55266e, skuList, null, 6);
            }
        }
        return Unit.f71739a;
    }
}
