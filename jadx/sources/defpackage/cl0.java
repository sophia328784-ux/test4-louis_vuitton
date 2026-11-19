package defpackage;

import android.content.Context;
import android.content.Intent;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.ActivityResult;
import androidx.collection.ArrayMap;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.grid.LazyGridScope;
import androidx.compose.foundation.lazy.grid.LazyGridScope$items$1;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.text.TextFieldDelegate;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.navigation3.runtime.NavBackStack;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTypeConverters;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.model.LPDeviceInfo;
import com.linkplay.core.status.LPPlayChannel;
import com.sightcall.universal.media.offline.FileUtils;
import com.vuitton.android.R;
import com.vuitton.android.domain.monitoring.search.SearchPanelExitContext;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModelKt;
import com.vuitton.android.presentation.model.common.ProductTinyUiModel;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpCapsuleStyle;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.tracking.TrackingClickType;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkConfigHelper;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.AppointmentCalendarContext;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ColorUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.RecommendationUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorProductState;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModel;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistFeedbackUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModelKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductSortUiModel;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.ProductForWishlist;
import com.vuitton.android.presentation.screen.search.SearchActivity;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.components.SearchRoutes;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeTrackingUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.android.presentation.screen.story.models.StoryViewState;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import com.vuitton.android.presentation.screen.wishlist.share.components.ComposableSingletons$SharedWishlistScreenKt;
import com.vuitton.android.presentation.screen.wishlist.share.components.SharedWishlistScreenKt$SharedWishlistScreen$lambda$0$0$0$1$$inlined$items$default$1;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.android.presentation.tracking.GA4Tracker;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModelKt;
import com.vuitton.android.presentation.tracking.PLPListTrackingIds;
import com.vuitton.android.presentation.tracking.PersonalSelectionActions;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import com.vuitton.foundation.model.domain.model.place.PlaceAutocomplete;
import defpackage.pt0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.BuildersKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class cl0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f21181c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f21182e;

    public /* synthetic */ cl0(AppsFlyerUiTracker appsFlyerUiTracker, State state, State state2) {
        this.f21180b = 3;
        this.f21182e = appsFlyerUiTracker;
        this.f21181c = state;
        this.d = state2;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0356  */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws Exception {
        PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel;
        ProductForWishlist productForWishlist;
        MutableState mutableState;
        List list;
        Object next;
        PlpProductUiModel plpProductUiModel;
        MutableState mutableState2;
        PlpProductUiModel.SkuDataUiModel skuDataUiModel;
        String str;
        ColorUiModel colorUiModel;
        final SnapshotStateList snapshotStateList;
        AnnotatedString.Range range;
        int i2 = this.f21180b;
        int i3 = 7;
        int i4 = 3;
        int i5 = 0;
        String str2 = null;
        int i6 = 1;
        Object obj2 = this.f21182e;
        Object obj3 = this.d;
        Object obj4 = this.f21181c;
        switch (i2) {
            case 0:
                PLPViewModel pLPViewModel = (PLPViewModel) obj4;
                PLPListTrackingIds pLPListTrackingIds = (PLPListTrackingIds) obj3;
                AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) obj2;
                List list2 = (List) obj;
                list2.getClass();
                String str3 = ((PLPViewState) pLPViewModel.a().getValue()).f63005a;
                if (str3 != null) {
                    appsFlyerUiTracker.d(str3);
                }
                String strA = PlpProductUiModelKt.a(list2);
                String str4 = pLPListTrackingIds.f65827a;
                String str5 = pLPListTrackingIds.f65828b;
                List list3 = list2;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                int i7 = 0;
                for (Object obj5 : list3) {
                    int i8 = i7 + 1;
                    if (i7 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    arrayList.add(((PlpProductUiModel) obj5).c(i7, pLPListTrackingIds.f65829c, pLPListTrackingIds.d));
                    i7 = i8;
                }
                pLPViewModel.j(new GA4TrackingUiModel.ViewItemListLoaded("product_list", strA, str4, str5, arrayList));
                return Unit.f71739a;
            case 1:
                Function0 function0 = (Function0) obj4;
                MutableState mutableState3 = (MutableState) obj3;
                Function1 function1 = (Function1) obj2;
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                if (activityResult.f731b == -1) {
                    PLPWishlistFeedbackUiModel.RequestAuth requestAuth = (PLPWishlistFeedbackUiModel.RequestAuth) mutableState3.getF10755b();
                    if (requestAuth != null) {
                        function1.invoke(requestAuth.f62905a);
                    }
                    function0.mo47invoke();
                    mutableState3.setValue(null);
                } else {
                    PLPWishlistFeedbackUiModel.RequestAuth requestAuth2 = (PLPWishlistFeedbackUiModel.RequestAuth) mutableState3.getF10755b();
                    if (requestAuth2 != null && (pLPWishlistUpdateUiModel = requestAuth2.f62905a) != null && (productForWishlist = pLPWishlistUpdateUiModel.f62907a) != null && (mutableState = productForWishlist.f63168b) != null) {
                        ((PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b()).getClass();
                        mutableState.setValue(new PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel(false, false));
                    }
                    mutableState3.setValue(null);
                }
                return Unit.f71739a;
            case 2:
                PdpViewState pdpViewState = (PdpViewState) obj4;
                GA4Tracker gA4Tracker = (GA4Tracker) obj3;
                MutableState mutableState4 = (MutableState) obj2;
                if (((Boolean) obj).booleanValue()) {
                    ImmutableList immutableList = pdpViewState.q;
                    if (!immutableList.isEmpty() && !((Boolean) mutableState4.getF10755b()).booleanValue()) {
                        mutableState4.setValue(Boolean.TRUE);
                        String strA2 = CarouselSItemUiModelKt.a(immutableList);
                        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(immutableList, 10));
                        int i9 = 0;
                        for (Object obj6 : immutableList) {
                            int i10 = i9 + 1;
                            if (i9 < 0) {
                                CollectionsKt.t0();
                                throw null;
                            }
                            arrayList2.add(((CarouselSItemUiModel) obj6).a(i9, "product_sheet.you_may_also_like", "Related products"));
                            i9 = i10;
                        }
                        gA4Tracker.f65811a.a(GA4TrackingUiModelKt.a(new GA4TrackingUiModel.ViewItemListLoaded("product_sheet", strA2, "product_sheet.you_may_also_like", "Related products", arrayList2)));
                    }
                }
                return Unit.f71739a;
            case 3:
                AppsFlyerUiTracker appsFlyerUiTracker2 = (AppsFlyerUiTracker) obj2;
                PlpProductUiModel.SkuDataUiModel skuDataUiModel2 = (PlpProductUiModel.SkuDataUiModel) obj;
                skuDataUiModel2.getClass();
                PersonalSelectionsCurationAdvisorViewState personalSelectionsCurationAdvisorViewState = (PersonalSelectionsCurationAdvisorViewState) ((State) obj4).getF10755b();
                PersonalSelectionsCurationAdvisorProductState personalSelectionsCurationAdvisorProductState = (PersonalSelectionsCurationAdvisorProductState) ((State) obj3).getF10755b();
                if (personalSelectionsCurationAdvisorViewState instanceof PersonalSelectionsCurationAdvisorViewState.Success) {
                    String str6 = skuDataUiModel2.f62944b;
                    if (str6 == null) {
                        str6 = null;
                    }
                    PersonalSelectionActions personalSelectionActions = PersonalSelectionActions.PRODUCT_SELECTED;
                    String str7 = skuDataUiModel2.f62945c;
                    if (str7 == null) {
                        PersonalSelectionsCurationAdvisorProductState.Success success = personalSelectionsCurationAdvisorProductState instanceof PersonalSelectionsCurationAdvisorProductState.Success ? (PersonalSelectionsCurationAdvisorProductState.Success) personalSelectionsCurationAdvisorProductState : null;
                        if (success != null && (list = success.f62502a) != null) {
                            Iterator it = list.iterator();
                            do {
                                if (it.hasNext()) {
                                    next = it.next();
                                    str = ((PlpProductUiModel.SkuDataUiModel) ((PlpProductUiModel) next).f62934a.getF10755b()).f62944b;
                                    if (str == null) {
                                        str = null;
                                    }
                                } else {
                                    next = null;
                                }
                                plpProductUiModel = (PlpProductUiModel) next;
                                if (plpProductUiModel != null && (mutableState2 = plpProductUiModel.f62934a) != null && (skuDataUiModel = (PlpProductUiModel.SkuDataUiModel) mutableState2.getF10755b()) != null) {
                                    str2 = skuDataUiModel.f62945c;
                                }
                            } while (!Intrinsics.c(str, str6));
                            plpProductUiModel = (PlpProductUiModel) next;
                            if (plpProductUiModel != null) {
                                str2 = skuDataUiModel.f62945c;
                            }
                        }
                    } else {
                        str2 = str7;
                    }
                    String str8 = ((PersonalSelectionsCurationAdvisorViewState.Success) personalSelectionsCurationAdvisorViewState).f62507a.g.f62587a;
                    appsFlyerUiTracker2.getClass();
                    personalSelectionActions.getClass();
                    MapBuilder mapBuilder = new MapBuilder();
                    mapBuilder.put("action", personalSelectionActions.getValue());
                    if (str6 != null) {
                        mapBuilder.put("product_id", str6);
                    }
                    if (str2 != null) {
                        mapBuilder.put("product_category", str2);
                    }
                    if (str8 != null) {
                        mapBuilder.put("origin_store_id", str8);
                    }
                    appsFlyerUiTracker2.a(new AppsFlyerEvent.InteractiveWardrobing(mapBuilder.c()));
                }
                return Unit.f71739a;
            case 4:
                PlaceSearchViewModel placeSearchViewModel = (PlaceSearchViewModel) obj4;
                AutocompleteContext autocompleteContext = (AutocompleteContext) obj3;
                String str9 = (String) obj;
                str9.getClass();
                ((MutableState) obj2).setValue(str9);
                if (str9.length() > 0) {
                    placeSearchViewModel.R3(str9, autocompleteContext);
                }
                return Unit.f71739a;
            case 5:
                final List list4 = (List) obj4;
                final Function2 function2 = (Function2) obj3;
                final PlaceSearchActivity.PlaceInfoType placeInfoType = (PlaceSearchActivity.PlaceInfoType) obj2;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                lazyListScope.h(list4.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.placesearch.components.PlaceSearchPageComposableKt$PlaceSearchMainContent$lambda$1$1$0$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj7) {
                        list4.get(((Number) obj7).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.placesearch.components.PlaceSearchPageComposableKt$PlaceSearchMainContent$lambda$1$1$0$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj7, Object obj8, Object obj9, Object obj10) {
                        int i11;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj7;
                        int iIntValue = ((Number) obj8).intValue();
                        Composer composer = (Composer) obj9;
                        int iIntValue2 = ((Number) obj10).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i11 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i11 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i11 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i11 & 1, (i11 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            PlaceAutocomplete placeAutocomplete = (PlaceAutocomplete) list4.get(iIntValue);
                            composer.L(2004313147);
                            PlaceSearchPageComposableKt.a(placeAutocomplete, function2, placeInfoType, iIntValue == list4.size() - 1, composer, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            case 6:
                ((Function2) obj4).invoke((PlpProductUiModel) obj3, Integer.valueOf(((PagerState) obj2).k()));
                return Unit.f71739a;
            case 7:
                TimeSlotUiModel timeSlotUiModel = (TimeSlotUiModel) obj;
                timeSlotUiModel.getClass();
                ((Function1) obj4).invoke(new DistantRepairTrackingUiModel.RescheduleConfirmClickedEvent(AppointmentCalendarContext.RESCHEDULE));
                ((Function0) obj3).mo47invoke();
                ((Function1) obj2).invoke(timeSlotUiModel);
                return Unit.f71739a;
            case 8:
                final RoomDetailFragment roomDetailFragment = (RoomDetailFragment) obj2;
                RoomDetailFragment.Companion companion = RoomDetailFragment.L;
                ((LPDevice) obj).getClass();
                TrunkConfigHelper.b((LPDevice) obj4, (String) obj3, new Function0() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.a
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        RoomDetailFragment.Companion companion2 = RoomDetailFragment.L;
                        RoomDetailFragment roomDetailFragment2 = roomDetailFragment;
                        BuildersKt.c(LifecycleOwnerKt.a(roomDetailFragment2), null, null, new RoomDetailFragment$setRoomName$1$1$1(roomDetailFragment2, null), 3);
                        ((RoomDetailDeviceListAdapter) roomDetailFragment2.H.getF71699b()).notifyDataSetChanged();
                        FragmentActivity activity = roomDetailFragment2.getActivity();
                        if (activity != null) {
                            activity.runOnUiThread(new pt0(roomDetailFragment2, 3));
                        }
                        return Unit.f71739a;
                    }
                }, new ot0(roomDetailFragment, 1));
                return Unit.f71739a;
            case 9:
                String str10 = (String) obj;
                str10.getClass();
                ((PSPViewModel) obj4).X0(str10);
                ((SearchViewModel) obj3).S5(SearchPanelExitContext.PSP);
                ((NavBackStack) obj2).a(SearchRoutes.PSP.INSTANCE);
                return Unit.f71739a;
            case 10:
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj2;
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                if (((MouseSelectionObserver) obj4).d(pointerInputChange.f9330c, (SelectionAdjustment) obj3)) {
                    pointerInputChange.a();
                    ref$BooleanRef.f71917b = true;
                }
                return Unit.f71739a;
            case 11:
                RecommendationUiModel recommendationUiModel = (RecommendationUiModel) obj4;
                Context context = (Context) obj3;
                PagerState pagerState = (PagerState) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                ProductTinyUiModel productTinyUiModel = recommendationUiModel.f62170a;
                String str11 = productTinyUiModel.f51791b;
                String str12 = productTinyUiModel.g;
                if (str12 == null) {
                    TryOnProductUiModel tryOnProductUiModel = recommendationUiModel.f62172c;
                    if (tryOnProductUiModel != null && (colorUiModel = tryOnProductUiModel.g) != null) {
                        str2 = colorUiModel.f62159a;
                    }
                    str12 = str2 == null ? "" : str2;
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, d21.k(str11, ". ", str12, FileUtils.HIDDEN_PREFIX) + context.getString(R.string.alt_tab, Integer.valueOf(pagerState.k() + 1), Integer.valueOf(pagerState.o())) + " ");
                return Unit.f71739a;
            case 12:
                WishlistViewState wishlistViewState = (WishlistViewState) obj4;
                final Function2 function3 = (Function2) obj2;
                LazyListScope lazyListScope2 = (LazyListScope) obj;
                lazyListScope2.getClass();
                LazyListScope.f(lazyListScope2, null, new ComposableLambdaImpl(978739533, true, new ni0(wishlistViewState, (String) obj3, 23)), 3);
                WishlistUiModel wishlistUiModel = wishlistViewState.d;
                if (wishlistUiModel != null && (snapshotStateList = wishlistUiModel.f65755a) != null) {
                    final SharedWishlistScreenKt$SharedWishlistScreen$lambda$0$0$0$1$$inlined$items$default$1 sharedWishlistScreenKt$SharedWishlistScreen$lambda$0$0$0$1$$inlined$items$default$1 = new Function1() { // from class: com.vuitton.android.presentation.screen.wishlist.share.components.SharedWishlistScreenKt$SharedWishlistScreen$lambda$0$0$0$1$$inlined$items$default$1
                        @Override // kotlin.jvm.functions.Function1
                        public final /* bridge */ /* synthetic */ Object invoke(Object obj7) {
                            return null;
                        }
                    };
                    lazyListScope2.h(snapshotStateList.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.wishlist.share.components.SharedWishlistScreenKt$SharedWishlistScreen$lambda$0$0$0$1$$inlined$items$default$3
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj7) {
                            return sharedWishlistScreenKt$SharedWishlistScreen$lambda$0$0$0$1$$inlined$items$default$1.invoke(snapshotStateList.get(((Number) obj7).intValue()));
                        }
                    }, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.wishlist.share.components.SharedWishlistScreenKt$SharedWishlistScreen$lambda$0$0$0$1$$inlined$items$default$4
                        @Override // kotlin.jvm.functions.Function4
                        public final Object g(Object obj7, Object obj8, Object obj9, Object obj10) {
                            int i11;
                            LazyItemScope lazyItemScope = (LazyItemScope) obj7;
                            int iIntValue = ((Number) obj8).intValue();
                            Composer composer = (Composer) obj9;
                            int iIntValue2 = ((Number) obj10).intValue();
                            if ((iIntValue2 & 6) == 0) {
                                i11 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                            } else {
                                i11 = iIntValue2;
                            }
                            if ((iIntValue2 & 48) == 0) {
                                i11 |= composer.d(iIntValue) ? 32 : 16;
                            }
                            if (composer.p(i11 & 1, (i11 & 147) != 146)) {
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                WishlistItemUiModel wishlistItemUiModel = (WishlistItemUiModel) snapshotStateList.get(iIntValue);
                                composer.L(-2084666082);
                                SharedWishlistProductItemKt.a(null, wishlistItemUiModel, function3, composer, 0);
                                composer.F();
                            } else {
                                composer.D();
                            }
                            return Unit.f71739a;
                        }
                    }));
                }
                ComposableSingletons$SharedWishlistScreenKt.f65765a.getClass();
                LazyListScope.f(lazyListScope2, null, ComposableSingletons$SharedWishlistScreenKt.f65766b, 3);
                return Unit.f71739a;
            case 13:
                ProductSortUiModel productSortUiModel = (ProductSortUiModel) obj2;
                ((Boolean) obj).getClass();
                String string = ((Context) obj3).getString(R.string.sort_by);
                string.getClass();
                ((Function4) obj4).g(string, productSortUiModel.f62994b, null, productSortUiModel.f62993a);
                return Unit.f71739a;
            case 14:
                StoreModeViewModel storeModeViewModel = (StoreModeViewModel) obj4;
                ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj3;
                Context context2 = (Context) obj2;
                String str13 = (String) obj;
                storeModeViewModel.S6(StoreModeTrackingUiModel.SearchClickedEvent.f65075a);
                SearchActivity.Companion companion2 = SearchActivity.y;
                String str14 = ((StoreModeViewState) storeModeViewModel.getB().getValue()).f65089k;
                companion2.getClass();
                context2.getClass();
                Intent intent = new Intent(context2, (Class<?>) SearchActivity.class);
                if (str13 != null) {
                    intent.putExtra("RMS_CODE", str13);
                }
                if (str14 != null) {
                    intent.putExtra("SEARCH_QUERY", str14);
                }
                managedActivityResultLauncher.a(intent);
                return Unit.f71739a;
            case 15:
                ((DisposableEffectScope) obj).getClass();
                final Lifecycle lifecycle = ((LifecycleOwner) ((MutableState) obj4).getF10755b()).getD();
                final bn bnVar = new bn((StoryViewState) obj3, (MutableState) obj2, 7);
                lifecycle.a(bnVar);
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.story.components.StoryComposableKt$StoryComposable$lambda$13$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        lifecycle.d(bnVar);
                    }
                };
            case 16:
                Ref$BooleanRef ref$BooleanRef2 = (Ref$BooleanRef) obj4;
                AnnotatedString.Range range2 = (AnnotatedString.Range) obj3;
                SpanStyle spanStyle = (SpanStyle) obj2;
                AnnotatedString.Range range3 = (AnnotatedString.Range) obj;
                if (ref$BooleanRef2.f71917b) {
                    Object obj7 = range3.f10428a;
                    int i11 = range3.f10430c;
                    int i12 = range3.f10429b;
                    if ((obj7 instanceof SpanStyle) && i12 == range2.f10429b && i11 == range2.f10430c) {
                        if (spanStyle == null) {
                            spanStyle = new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65535, (DefaultConstructorMarker) null);
                        }
                        range = new AnnotatedString.Range(spanStyle, i12, i11);
                    } else {
                        range = range3;
                    }
                } else {
                    range = range3;
                }
                ref$BooleanRef2.f71917b = range2.equals(range3);
                return range;
            case 17:
                Function1 function4 = (Function1) obj3;
                TextFieldDelegate.Companion companion3 = TextFieldDelegate.f5962a;
                TextInputSession textInputSession = (TextInputSession) ((Ref$ObjectRef) obj2).f71921b;
                companion3.getClass();
                TextFieldValue textFieldValueA = ((EditProcessor) obj4).a((List) obj);
                if (textInputSession != null && Intrinsics.c((TextInputSession) textInputSession.f10861a.f10844b.get(), textInputSession)) {
                    textInputSession.f10862b.e(null, textFieldValueA);
                }
                function4.invoke(textFieldValueA);
                return Unit.f71739a;
            case 18:
                MutableState mutableState5 = (MutableState) obj2;
                Size size = (Size) obj;
                float f2 = TextFieldImplKt.f7647a;
                float fFloatValue = ((Number) ((State) obj3).getF10755b()).floatValue();
                float fIntBitsToFloat = Float.intBitsToFloat((int) (size.f8822a >> 32)) * fFloatValue;
                float fIntBitsToFloat2 = Float.intBitsToFloat((int) (size.f8822a & BodyPartID.bodyIdMax)) * fFloatValue;
                if (Float.intBitsToFloat((int) (((Size) mutableState5.getF10755b()).f8822a >> 32)) != fIntBitsToFloat || Float.intBitsToFloat((int) (((Size) mutableState5.getF10755b()).f8822a & BodyPartID.bodyIdMax)) != fIntBitsToFloat2) {
                    mutableState5.setValue(new Size((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & BodyPartID.bodyIdMax)));
                }
                return Unit.f71739a;
            case 19:
                ((String) obj).getClass();
                ((TheLookImmersiveArticleViewModel) obj4).w2(new TheLookImmersiveArticleTrackingUiModel.BackEventImmersiveArticle(((TheLookImmersiveArticleViewState) ((MutableState) obj2).getF10755b()).f65392a));
                ((Function0) obj3).mo47invoke();
                return Unit.f71739a;
            case 20:
                ArrayList arrayList3 = (ArrayList) obj4;
                LazyGridScope lazyGridScope = (LazyGridScope) obj;
                lazyGridScope.getClass();
                lazyGridScope.d(arrayList3.size(), LazyGridScope$items$1.f5334b, new ComposableLambdaImpl(1578761169, true, new s8((TheLookImmersiveArticleViewState) obj3, arrayList3, (Function2) obj2, 13)));
                return Unit.f71739a;
            case 21:
                MutableState mutableState6 = (MutableState) obj4;
                ThematicPlpViewModel thematicPlpViewModel = (ThematicPlpViewModel) obj3;
                State state = (State) obj2;
                ActivityResult activityResult2 = (ActivityResult) obj;
                activityResult2.getClass();
                if (activityResult2.f731b == -1) {
                    PLPWishlistFeedbackUiModel.RequestAuth requestAuth3 = (PLPWishlistFeedbackUiModel.RequestAuth) mutableState6.getF10755b();
                    if (requestAuth3 != null) {
                        thematicPlpViewModel.h4(requestAuth3.f62905a.f62907a.f63167a, (TrackingClickType) state.getF10755b());
                    }
                    mutableState6.setValue(null);
                }
                return Unit.f71739a;
            case 22:
                ThematicPlpCapsuleStyle thematicPlpCapsuleStyle = (ThematicPlpCapsuleStyle) obj4;
                ThemeUiModel themeUiModel = (ThemeUiModel) obj3;
                String str15 = (String) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                SemanticsPropertiesKt.p(semanticsPropertyReceiver2, thematicPlpCapsuleStyle == ThematicPlpCapsuleStyle.SELECTED);
                String str16 = themeUiModel.f55436b;
                if (str16 != null) {
                    str15 = str16;
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, str15);
                return Unit.f71739a;
            case 23:
                LPPlayChannel lPPlayChannel = (LPPlayChannel) obj4;
                WifiDeviceDetailFragment wifiDeviceDetailFragment = (WifiDeviceDetailFragment) obj3;
                Context context3 = (Context) obj2;
                LPDevice lPDevice = (LPDevice) obj;
                WifiDeviceDetailFragment.Companion companion4 = WifiDeviceDetailFragment.N;
                lPDevice.getClass();
                LPDeviceInfo deviceInfo = lPDevice.getDeviceInfo();
                if (deviceInfo != null) {
                    deviceInfo.setPlayChannel(lPPlayChannel);
                }
                wifiDeviceDetailFragment.O().m.setText(TrunkConfigHelper.a(context3, lPPlayChannel));
                return Unit.f71739a;
            default:
                List list5 = (List) obj3;
                WorkSpecDao_Impl workSpecDao_Impl = (WorkSpecDao_Impl) obj2;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                WorkSpecDao_Impl.Companion companion5 = WorkSpecDao_Impl.f20530c;
                sQLiteConnection.getClass();
                SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1((String) obj4);
                try {
                    Iterator it2 = list5.iterator();
                    int i13 = 1;
                    while (it2.hasNext()) {
                        sQLiteStatementT1.A(i13, (String) it2.next());
                        i13++;
                    }
                    ArrayMap arrayMap = new ArrayMap();
                    ArrayMap arrayMap2 = new ArrayMap();
                    while (sQLiteStatementT1.Q1()) {
                        String strM1 = sQLiteStatementT1.m1(0);
                        if (!arrayMap.containsKey(strM1)) {
                            arrayMap.put(strM1, new ArrayList());
                        }
                        String strM2 = sQLiteStatementT1.m1(0);
                        if (!arrayMap2.containsKey(strM2)) {
                            arrayMap2.put(strM2, new ArrayList());
                        }
                    }
                    sQLiteStatementT1.reset();
                    workSpecDao_Impl.C(sQLiteConnection, arrayMap);
                    workSpecDao_Impl.B(sQLiteConnection, arrayMap2);
                    ArrayList arrayList4 = new ArrayList();
                    while (sQLiteStatementT1.Q1()) {
                        String strM3 = sQLiteStatementT1.m1(i5);
                        WorkInfo.State stateE = WorkTypeConverters.e((int) sQLiteStatementT1.getLong(i6));
                        byte[] blob = sQLiteStatementT1.getBlob(2);
                        Data.f20243b.getClass();
                        Data dataA = Data.Companion.a(blob);
                        int i14 = (int) sQLiteStatementT1.getLong(i4);
                        int i15 = (int) sQLiteStatementT1.getLong(4);
                        long j2 = sQLiteStatementT1.getLong(14);
                        long j3 = sQLiteStatementT1.getLong(15);
                        long j4 = sQLiteStatementT1.getLong(16);
                        BackoffPolicy backoffPolicyB = WorkTypeConverters.b((int) sQLiteStatementT1.getLong(17));
                        long j5 = sQLiteStatementT1.getLong(18);
                        long j6 = sQLiteStatementT1.getLong(19);
                        int i16 = (int) sQLiteStatementT1.getLong(20);
                        long j7 = sQLiteStatementT1.getLong(21);
                        ArrayMap arrayMap3 = arrayMap2;
                        int i17 = (int) sQLiteStatementT1.getLong(22);
                        Constraints constraints = new Constraints(WorkTypeConverters.g(sQLiteStatementT1.getBlob(6)), WorkTypeConverters.c((int) sQLiteStatementT1.getLong(5)), ((int) sQLiteStatementT1.getLong(i3)) != 0, ((int) sQLiteStatementT1.getLong(8)) != 0, ((int) sQLiteStatementT1.getLong(9)) != 0, ((int) sQLiteStatementT1.getLong(10)) != 0, sQLiteStatementT1.getLong(11), sQLiteStatementT1.getLong(12), WorkTypeConverters.a(sQLiteStatementT1.getBlob(13)));
                        Object objD = MapsKt.d(arrayMap, sQLiteStatementT1.m1(0));
                        objD.getClass();
                        List list6 = (List) objD;
                        Object objD2 = MapsKt.d(arrayMap3, sQLiteStatementT1.m1(0));
                        objD2.getClass();
                        arrayList4.add(new WorkSpec.WorkInfoPojo(strM3, stateE, dataA, j2, j3, j4, constraints, i14, backoffPolicyB, j5, j6, i16, i15, j7, i17, list6, (List) objD2));
                        arrayMap2 = arrayMap3;
                        i3 = 7;
                        i4 = 3;
                        i5 = 0;
                        i6 = 1;
                        break;
                    }
                    return arrayList4;
                } finally {
                    sQLiteStatementT1.close();
                }
        }
    }

    public /* synthetic */ cl0(Object obj, Object obj2, Object obj3, int i2) {
        this.f21180b = i2;
        this.f21181c = obj;
        this.d = obj2;
        this.f21182e = obj3;
    }
}
