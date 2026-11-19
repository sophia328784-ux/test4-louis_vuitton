package defpackage;

import android.content.Context;
import android.location.Geocoder;
import android.os.Bundle;
import android.view.SurfaceHolder;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.activity.compose.ActivityResultLauncherHolder;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistry$register$3;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemScope;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridScope;
import androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridItemSpan;
import androidx.compose.foundation.text.KeyboardActionScope;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextFieldCursor_androidKt;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.CursorAnimationState;
import androidx.compose.foundation.text.input.internal.LegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntryKt;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavGraphBuilderKt;
import androidx.navigation.internal.NavControllerImpl;
import androidx.navigation3.runtime.NavBackStack;
import com.appsflyer.share.AFInAppEventParameterName;
import com.perfectcorp.perfectlib.CameraView;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.ShadeFinder;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonGroupKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.components.LVTagFilterKt;
import com.vuitton.android.presentation.compose.components.TagFilterType;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$1;
import com.vuitton.android.presentation.screen.account.addressbook.components.ComposableSingletons$AddressBookContentKt;
import com.vuitton.android.presentation.screen.account.addressbook.models.AccountAddressUiModel;
import com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpThemesOverlayKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.feed.FeedViewModel;
import com.vuitton.android.presentation.screen.feed.components.FeedComposableKt;
import com.vuitton.android.presentation.screen.feed.models.CalendarEventData;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModelKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.orders.components.exchange.ReturnOrExchangeRoute;
import com.vuitton.android.presentation.screen.orders.components.returns.OrderReturnSummaryComposableKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingUiModel;
import com.vuitton.android.presentation.screen.orders.models.VariationsResponseUiModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import com.vuitton.android.presentation.screen.osa.OsaRoutes;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormScreenKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$1;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.list.OsaListViewModel;
import com.vuitton.android.presentation.screen.osa.list.components.ComposableSingletons$OsaListDataScreenKt;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListDataScreenKt;
import com.vuitton.android.presentation.screen.osa.list.models.OsaListViewState;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.StoreInformationItemUiModel;
import com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel;
import com.vuitton.android.presentation.screen.pdp.PdpViewModel;
import com.vuitton.android.presentation.screen.pdp.components.PdpComposableKt;
import com.vuitton.android.presentation.screen.pdp.models.FindInStoreViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.FindInStoreTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyLegalConsentUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyLegalConsentUiModelKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LegalConsentContextUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.utils.CameraController;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModelKt;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PSPViewState;
import com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel;
import com.vuitton.android.presentation.screen.tracking.LegalConsentsTracker;
import com.vuitton.android.presentation.screen.tracking.LegalConsentsTrackingUiModel;
import com.vuitton.android.presentation.screen.tracking.LegalConsentsTrackingUiModelKt;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.core.infrastructure.perfectcorp.CameraFacing;
import com.vuitton.core.infrastructure.perfectcorp.CameraLibrary;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.jx;
import defpackage.md;
import defpackage.ui0;
import defpackage.vi0;
import defpackage.wi0;
import defpackage.yi0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.Function;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class d1 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f68388c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f68389e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f68390f;
    public final /* synthetic */ Object g;

    public /* synthetic */ d1(TextFieldValue textFieldValue, SoftwareKeyboardController softwareKeyboardController, FocusManager focusManager, Function0 function0, MutableState mutableState) {
        this.f68387b = 8;
        this.d = textFieldValue;
        this.f68389e = softwareKeyboardController;
        this.f68390f = focusManager;
        this.g = function0;
        this.f68388c = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        List listSubList;
        boolean zIsEmpty;
        TextLayoutResult textLayoutResult;
        int i2 = this.f68387b;
        String str = "";
        boolean z = false;
        int i3 = 0;
        final int i4 = 1;
        Object obj2 = this.d;
        Object obj3 = this.g;
        Object obj4 = this.f68388c;
        Object obj5 = this.f68390f;
        Object obj6 = this.f68389e;
        switch (i2) {
            case 0:
                LazyListScope lazyListScope = (LazyListScope) obj;
                int i5 = AICompanionOnboardingScreenKt.f52870b;
                lazyListScope.getClass();
                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(626299984, true, new f1((AICompanionViewState) obj2, (State) obj6, z ? 1 : 0)), 3);
                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(37022201, true, new g1((LvExoPlayer) obj5, (String) obj4, (Function0) obj3, z ? 1 : 0)), 3);
                return Unit.f71739a;
            case 1:
                final ActivityResultLauncherHolder activityResultLauncherHolder = (ActivityResultLauncherHolder) obj2;
                activityResultLauncherHolder.f694a = ((ActivityResultRegistry) obj6).e((String) obj4, (ActivityResultContract) obj5, new q3(0, (MutableState) obj3));
                return new DisposableEffectResult() { // from class: androidx.activity.compose.ActivityResultRegistryKt$rememberLauncherForActivityResult$lambda$4$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        ActivityResultRegistry$register$3 activityResultRegistry$register$3 = activityResultLauncherHolder.f694a;
                        if (activityResultRegistry$register$3 != null) {
                            activityResultRegistry$register$3.b();
                        } else {
                            md.k("Launcher has not been initialized");
                        }
                    }
                };
            case 2:
                AccountAddressUiModel accountAddressUiModel = (AccountAddressUiModel) obj2;
                final List list = (List) obj6;
                final InAppDispatch inAppDispatch = (InAppDispatch) obj5;
                final Function2 function2 = (Function2) obj4;
                final Function1 function1 = (Function1) obj3;
                LazyListScope lazyListScope2 = (LazyListScope) obj;
                lazyListScope2.getClass();
                if (accountAddressUiModel != null) {
                    ComposableSingletons$AddressBookContentKt.f52176a.getClass();
                    LazyListScope.f(lazyListScope2, null, ComposableSingletons$AddressBookContentKt.f52177b, 3);
                    LazyListScope.f(lazyListScope2, null, ComposableSingletons$AddressBookContentKt.f52178c, 3);
                    LazyListScope.f(lazyListScope2, null, new ComposableLambdaImpl(1725955553, true, new g1(inAppDispatch, accountAddressUiModel, function2, i4)), 3);
                }
                LazyListScope.f(lazyListScope2, null, new ComposableLambdaImpl(512431264, true, new o4(list, z ? 1 : 0)), 3);
                ComposableSingletons$AddressBookContentKt.f52176a.getClass();
                LazyListScope.f(lazyListScope2, null, ComposableSingletons$AddressBookContentKt.d, 3);
                final AddressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$1 addressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$1 = new Function1() { // from class: com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public final /* bridge */ /* synthetic */ Object invoke(Object obj7) {
                        return null;
                    }
                };
                lazyListScope2.h(list.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj7) {
                        return addressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$1.invoke(list.get(((Number) obj7).intValue()));
                    }
                }, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj7, Object obj8, Object obj9, Object obj10) {
                        int i6;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj7;
                        int iIntValue = ((Number) obj8).intValue();
                        Composer composer = (Composer) obj9;
                        int iIntValue2 = ((Number) obj10).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i6 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i6 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i6 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i6 & 1, (i6 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final AccountAddressUiModel accountAddressUiModel2 = (AccountAddressUiModel) list.get(iIntValue);
                            composer.L(-1132875844);
                            Modifier modifierM = PaddingKt.m(Modifier.Companion.f8607b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, 7);
                            final Function2 function3 = function2;
                            boolean zK = composer.K(function3) | composer.K(accountAddressUiModel2);
                            Object objX = composer.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                objX = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookContentKt$AddressBookContent$1$1$3$1$1
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        function3.invoke(accountAddressUiModel2, Boolean.FALSE);
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            AddressBookContentKt.b(modifierM, inAppDispatch, accountAddressUiModel2, (Function0) objX, composer, 0);
                            AddressBookContentKt.d(accountAddressUiModel2.f52184a, function1, composer, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            case 3:
                LegacyTextInputMethodRequest legacyTextInputMethodRequest = (LegacyTextInputMethodRequest) obj;
                LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode legacyPlatformTextInputNode = ((AndroidLegacyPlatformTextInputServiceAdapter) obj6).f6223a;
                legacyTextInputMethodRequest.f6231h = (TextFieldValue) obj2;
                legacyTextInputMethodRequest.f6232i = (ImeOptions) obj5;
                legacyTextInputMethodRequest.f6228c = (cl0) obj4;
                legacyTextInputMethodRequest.d = (Function1) obj3;
                legacyTextInputMethodRequest.f6229e = legacyPlatformTextInputNode != null ? legacyPlatformTextInputNode.getQ() : null;
                legacyTextInputMethodRequest.f6230f = legacyPlatformTextInputNode != null ? legacyPlatformTextInputNode.getR() : null;
                legacyTextInputMethodRequest.g = legacyPlatformTextInputNode != null ? legacyPlatformTextInputNode.getViewConfiguration() : null;
                return Unit.f71739a;
            case 4:
                final Set set = (Set) obj6;
                final Set set2 = (Set) obj5;
                final MutableState mutableState = (MutableState) obj4;
                final MutableState mutableState2 = (MutableState) obj3;
                final Object obj7 = this.d;
                return new DisposableEffectResult() { // from class: androidx.navigation3.runtime.DecoratedNavEntriesKt$PrepareBackStack$lambda$2$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        ArrayList arrayList;
                        List list2 = (List) mutableState.getF10755b();
                        if (list2 instanceof RandomAccess) {
                            arrayList = new ArrayList(list2.size());
                            int size = list2.size();
                            for (int i6 = 0; i6 < size; i6++) {
                                arrayList.add(((NavEntry) list2.get(i6)).f18398b);
                            }
                        } else {
                            List list3 = list2;
                            arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                            Iterator it = list3.iterator();
                            while (it.hasNext()) {
                                arrayList.add(((NavEntry) it.next()).f18398b);
                            }
                        }
                        Object obj8 = obj7;
                        if (!(arrayList.contains(obj8) ? false : set.remove(obj8)) || set2.contains(obj8)) {
                            return;
                        }
                        List list4 = (List) mutableState2.getF10755b();
                        if (!(list4 instanceof RandomAccess)) {
                            Iterator it2 = CollectionsKt.f0(list4).iterator();
                            while (it2.hasNext()) {
                                ((NavEntryDecorator) it2.next()).f18400a.invoke(obj8);
                            }
                            return;
                        }
                        int size2 = list4.size() - 1;
                        if (size2 < 0) {
                            return;
                        }
                        while (true) {
                            int i7 = size2 - 1;
                            ((NavEntryDecorator) list4.get(size2)).f18400a.invoke(obj8);
                            if (i7 < 0) {
                                return;
                            } else {
                                size2 = i7;
                            }
                        }
                    }
                };
            case 5:
                FeedTracker feedTracker = (FeedTracker) obj2;
                FeedViewModel feedViewModel = (FeedViewModel) obj6;
                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) obj5;
                MutableState mutableState3 = (MutableState) obj4;
                MutableState mutableState4 = (MutableState) obj3;
                String str2 = (String) obj;
                str2.getClass();
                if (((PermissionsUiModel) mutableState3.getF10755b()).f62374c && ((PermissionsUiModel) mutableState3.getF10755b()).d) {
                    FeedTab feedTab = (FeedTab) mutableState4.getF10755b();
                    feedTracker.getClass();
                    feedTracker.f57933a.a(FeedTrackingUiModelKt.a(new FeedTrackingUiModel.OnNotifyMeAlreadyNotifiedEvent(feedTab, str2)));
                    feedViewModel.B1();
                } else {
                    FeedTab feedTab2 = (FeedTab) mutableState4.getF10755b();
                    feedTracker.getClass();
                    feedTracker.f57933a.a(FeedTrackingUiModelKt.a(new FeedTrackingUiModel.OnNotifyMeClickEvent(feedTab2, str2)));
                    permissionsViewModel.aa((2 & 1) == 0, new ul0(8));
                }
                return Unit.f71739a;
            case 6:
                CalendarEventData calendarEventData = (CalendarEventData) obj;
                calendarEventData.getClass();
                ((Ref$ObjectRef) obj2).f71921b = calendarEventData.f57905a;
                FeedComposableKt.c((Context) obj5, (Ref$ObjectRef) obj4, (ManagedActivityResultLauncher) obj3, new dt((FeedViewModel) obj6, calendarEventData, 14));
                return Unit.f71739a;
            case 7:
                FindInStoreViewModel findInStoreViewModel = (FindInStoreViewModel) obj2;
                StoreUiModel storeUiModel = (StoreUiModel) obj;
                storeUiModel.getClass();
                findInStoreViewModel.s6(new FindInStoreTrackingUiModel.ClickOnUseDrivingDirectionEvent((String) obj4, null));
                findInStoreViewModel.b9(new Geocoder((Context) obj6, ((FindInStoreViewState) ((MutableState) obj5).getF10755b()).f61544a.o), storeUiModel, (PlaceGeocodingUiModel) ((MutableState) obj3).getF10755b());
                return Unit.f71739a;
            case 8:
                SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) obj6;
                FocusManager focusManager = (FocusManager) obj5;
                Function0 function0 = (Function0) obj3;
                MutableState mutableState5 = (MutableState) obj4;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSearchBarKt.f48654a;
                ((KeyboardActionScope) obj).getClass();
                if (!StringsKt.w(((TextFieldValue) obj2).f10840a.f10420c)) {
                    if (softwareKeyboardController != null) {
                        softwareKeyboardController.b();
                    }
                    focusManager.z(false);
                    function0.mo47invoke();
                    mutableState5.setValue(Boolean.TRUE);
                }
                return Unit.f71739a;
            case 9:
                TagFilterType tagFilterType = (TagFilterType) obj2;
                String str3 = (String) obj4;
                String str4 = (String) obj6;
                Function0 function3 = (Function0) obj3;
                HapticFeedback hapticFeedback = (HapticFeedback) obj5;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                SemanticsPropertiesKt.p(semanticsPropertyReceiver, tagFilterType == TagFilterType.ACTIVE_DELETABLE);
                int i6 = LVTagFilterKt.WhenMappings.f50998b[tagFilterType.ordinal()];
                if (i6 == 2) {
                    str = str3;
                } else if (i6 == 3) {
                    str = str4;
                }
                SemanticsPropertiesKt.r(semanticsPropertyReceiver, str);
                SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new f(function3, hapticFeedback, 5));
                return Unit.f71739a;
            case 10:
                ArrayList arrayList = (ArrayList) obj6;
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj5;
                NavControllerImpl navControllerImpl = (NavControllerImpl) obj4;
                Bundle bundle = (Bundle) obj3;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                int i7 = NavControllerImpl.B;
                navBackStackEntry.getClass();
                ((Ref$BooleanRef) obj2).f71917b = true;
                int iIndexOf = arrayList.indexOf(navBackStackEntry);
                if (iIndexOf != -1) {
                    int i8 = iIndexOf + 1;
                    listSubList = arrayList.subList(ref$IntRef.f71919b, i8);
                    ref$IntRef.f71919b = i8;
                } else {
                    listSubList = EmptyList.f71768b;
                }
                navControllerImpl.a(navBackStackEntry.f18113c, bundle, navBackStackEntry, listSubList);
                return Unit.f71739a;
            case 11:
                final OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel = (OrderReturnOrExchangeViewModel) obj2;
                final State state = (State) obj6;
                final NavHostController navHostController = (NavHostController) obj5;
                final Context context = (Context) obj4;
                final Function0 function4 = (Function0) obj3;
                NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                navGraphBuilder.getClass();
                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(-1510772862, true, new Function4() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.b
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        Composer composer = (Composer) obj10;
                        ((Integer) obj11).getClass();
                        ((AnimatedContentScope) obj8).getClass();
                        ((NavBackStackEntry) obj9).getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel2 = orderReturnOrExchangeViewModel;
                        boolean zY = composer.y(orderReturnOrExchangeViewModel2);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY || objX == composer$Companion$Empty$1) {
                            OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$1$1 orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$1$1 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$1$1(2, orderReturnOrExchangeViewModel2, OrderReturnOrExchangeViewModel.class, "selectReason", "selectReason(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;)V", 0);
                            composer.q(orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$1$1);
                            objX = orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$1$1;
                        }
                        Function2 function5 = (Function2) ((KFunction) objX);
                        boolean zY2 = composer.y(orderReturnOrExchangeViewModel2);
                        Object objX2 = composer.x();
                        if (zY2 || objX2 == composer$Companion$Empty$1) {
                            OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$2$1 orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$2$1 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$2$1(2, orderReturnOrExchangeViewModel2, OrderReturnOrExchangeViewModel.class, "productChecked", "productChecked(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;Z)V", 0);
                            composer.q(orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$2$1);
                            objX2 = orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$2$1;
                        }
                        Function2 function6 = (Function2) ((KFunction) objX2);
                        boolean zY3 = composer.y(orderReturnOrExchangeViewModel2);
                        State state2 = state;
                        boolean zK = zY3 | composer.K(state2);
                        NavHostController navHostController2 = navHostController;
                        boolean zY4 = zK | composer.y(navHostController2);
                        Object objX3 = composer.x();
                        if (zY4 || objX3 == composer$Companion$Empty$1) {
                            objX3 = new vi0(orderReturnOrExchangeViewModel2, navHostController2, state2, 0);
                            composer.q(objX3);
                        }
                        Function0 function7 = (Function0) objX3;
                        List list2 = ((OrderReturnOrExchangeViewState) state2.getF10755b()).f60310e;
                        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                            Iterator it = list2.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (((OrderReturnOrExchangeItemUiModel) it.next()).d) {
                                        List<OrderReturnOrExchangeItemUiModel> list3 = ((OrderReturnOrExchangeViewState) state2.getF10755b()).f60310e;
                                        if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                                            for (OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel : list3) {
                                                if (!orderReturnOrExchangeItemUiModel.d || orderReturnOrExchangeItemUiModel.f60305e != null) {
                                                }
                                            }
                                            break;
                                        }
                                        break;
                                    }
                                }
                                function7 = null;
                                break;
                            }
                        }
                        function7 = null;
                        break;
                        Function0 function8 = function7;
                        boolean zY5 = composer.y(orderReturnOrExchangeViewModel2);
                        Object objX4 = composer.x();
                        if (zY5 || objX4 == composer$Companion$Empty$1) {
                            OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$5$1 orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$5$1 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$5$1(0, orderReturnOrExchangeViewModel2, OrderReturnOrExchangeViewModel.class, "onReasonError", "onReasonError()V", 0);
                            composer.q(orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$5$1);
                            objX4 = orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$5$1;
                        }
                        Function0 function9 = (Function0) ((KFunction) objX4);
                        Context context2 = context;
                        boolean zY6 = composer.y(context2) | composer.K(state2);
                        Object objX5 = composer.x();
                        if (zY6 || objX5 == composer$Companion$Empty$1) {
                            objX5 = new wi0(context2, state2, 0);
                            composer.q(objX5);
                        }
                        Function0 function10 = (Function0) objX5;
                        boolean zY7 = composer.y(orderReturnOrExchangeViewModel2);
                        Object objX6 = composer.x();
                        if (zY7 || objX6 == composer$Companion$Empty$1) {
                            objX6 = new ui0(orderReturnOrExchangeViewModel2, 1);
                            composer.q(objX6);
                        }
                        OrderReturnOrExchangeReasonComposableKt.a(orderReturnOrExchangeViewModel2, function5, function6, function8, function9, function10, (Function0) objX6, function4, composer, 0);
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        return Unit.f71739a;
                    }
                });
                Map mapC = MapsKt.c();
                EmptyList emptyList = EmptyList.f71768b;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(ReturnOrExchangeRoute.Reason.class), mapC, emptyList, null, null, null, null, composableLambdaImpl);
                final int i9 = 0;
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(ReturnOrExchangeRoute.Selection.class), MapsKt.c(), emptyList, null, null, null, null, new ComposableLambdaImpl(1788530603, true, new Function4() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.c
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        int i10 = i9;
                        NavHostController navHostController2 = navHostController;
                        final int i11 = 1;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        final Context context2 = context;
                        final State state2 = state;
                        final int i12 = 2;
                        switch (i10) {
                            case 0:
                                Composer composer = (Composer) obj10;
                                ((Integer) obj11).getClass();
                                ((AnimatedContentScope) obj8).getClass();
                                ((NavBackStackEntry) obj9).getClass();
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                Unit unit = Unit.f71739a;
                                final OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel2 = orderReturnOrExchangeViewModel;
                                boolean zY = composer.y(orderReturnOrExchangeViewModel2);
                                Object objX = composer.x();
                                if (zY || objX == composer$Companion$Empty$1) {
                                    objX = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$2$1$1(orderReturnOrExchangeViewModel2, null);
                                    composer.q(objX);
                                }
                                EffectsKt.e(composer, unit, (Function2) objX);
                                VariationsResponseUiModel variationsResponseUiModel = ((OrderReturnOrExchangeViewState) state2.getF10755b()).f60309c;
                                boolean zK = composer.K(state2) | composer.y(orderReturnOrExchangeViewModel2);
                                Object objX2 = composer.x();
                                if (zK || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$2$2$1(orderReturnOrExchangeViewModel2, state2, null);
                                    composer.q(objX2);
                                }
                                EffectsKt.e(composer, variationsResponseUiModel, (Function2) objX2);
                                boolean zY2 = composer.y(orderReturnOrExchangeViewModel2) | composer.K(state2) | composer.y(navHostController2);
                                Object objX3 = composer.x();
                                if (zY2 || objX3 == composer$Companion$Empty$1) {
                                    objX3 = new vi0(orderReturnOrExchangeViewModel2, navHostController2, state2, 1);
                                    composer.q(objX3);
                                }
                                Function0 function5 = (Function0) objX3;
                                boolean zY3 = composer.y(orderReturnOrExchangeViewModel2) | composer.K(state2) | composer.y(navHostController2);
                                Object objX4 = composer.x();
                                if (zY3 || objX4 == composer$Companion$Empty$1) {
                                    objX4 = new vi0(orderReturnOrExchangeViewModel2, navHostController2, state2, 2);
                                    composer.q(objX4);
                                }
                                Function0 function6 = (Function0) objX4;
                                boolean zY4 = composer.y(orderReturnOrExchangeViewModel2) | composer.y(context2) | composer.K(state2);
                                Object objX5 = composer.x();
                                if (zY4 || objX5 == composer$Companion$Empty$1) {
                                    final int i13 = 0;
                                    objX5 = new Function0() { // from class: xi0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i14 = i13;
                                            State state3 = state2;
                                            Context context3 = context2;
                                            OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel3 = orderReturnOrExchangeViewModel2;
                                            switch (i14) {
                                                case 0:
                                                    orderReturnOrExchangeViewModel3.c0(OrderTrackingUiModel.ContactUsFromSelectionClick.f60339a);
                                                    AppCompatActivity appCompatActivityB = ContextExtKt.b(context3);
                                                    if (appCompatActivityB != null) {
                                                        ActivityExtKt.f(appCompatActivityB, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                case 1:
                                                    orderReturnOrExchangeViewModel3.c0(OrderTrackingUiModel.ContactUsFromReviewClick.f60338a);
                                                    AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB2 != null) {
                                                        ActivityExtKt.f(appCompatActivityB2, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                default:
                                                    orderReturnOrExchangeViewModel3.c0(OrderTrackingUiModel.ContactUsFromVariationClick.f60340a);
                                                    AppCompatActivity appCompatActivityB3 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB3 != null) {
                                                        ActivityExtKt.f(appCompatActivityB3, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer.q(objX5);
                                }
                                Function0 function7 = (Function0) objX5;
                                boolean zY5 = composer.y(orderReturnOrExchangeViewModel2);
                                Object objX6 = composer.x();
                                if (zY5 || objX6 == composer$Companion$Empty$1) {
                                    objX6 = new ui0(orderReturnOrExchangeViewModel2, 2);
                                    composer.q(objX6);
                                }
                                Function0 function8 = (Function0) objX6;
                                boolean zY6 = composer.y(navHostController2) | composer.y(orderReturnOrExchangeViewModel2);
                                Object objX7 = composer.x();
                                if (zY6 || objX7 == composer$Companion$Empty$1) {
                                    objX7 = new yi0(navHostController2, orderReturnOrExchangeViewModel2);
                                    composer.q(objX7);
                                }
                                OrderReturnOrExchangeSelectionComposableKt.a(orderReturnOrExchangeViewModel2, function5, function6, function7, function8, (Function0) objX7, composer, 0);
                                return unit;
                            case 1:
                                Composer composer2 = (Composer) obj10;
                                ((Integer) obj11).getClass();
                                ((AnimatedContentScope) obj8).getClass();
                                ((NavBackStackEntry) obj9).getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Unit unit2 = Unit.f71739a;
                                final OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel3 = orderReturnOrExchangeViewModel;
                                boolean zY7 = composer2.y(orderReturnOrExchangeViewModel3) | composer2.K(state2);
                                Object objX8 = composer2.x();
                                if (zY7 || objX8 == composer$Companion$Empty$1) {
                                    objX8 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$4$1$1(orderReturnOrExchangeViewModel3, state2, null);
                                    composer2.q(objX8);
                                }
                                EffectsKt.e(composer2, unit2, (Function2) objX8);
                                boolean zY8 = composer2.y(orderReturnOrExchangeViewModel3);
                                Object objX9 = composer2.x();
                                if (zY8 || objX9 == composer$Companion$Empty$1) {
                                    objX9 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$4$2$1(3, orderReturnOrExchangeViewModel3, OrderReturnOrExchangeViewModel.class, "selectExchangeOption", "selectExchangeOption(Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;I)V", 0);
                                    composer2.q(objX9);
                                }
                                KFunction kFunction = (KFunction) objX9;
                                boolean zY9 = composer2.y(orderReturnOrExchangeViewModel3);
                                Object objX10 = composer2.x();
                                if (zY9 || objX10 == composer$Companion$Empty$1) {
                                    objX10 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$4$3$1(1, orderReturnOrExchangeViewModel3, OrderReturnOrExchangeViewModel.class, "requestSizeGuide", "requestSizeGuide(Ljava/lang/String;)V", 0);
                                    composer2.q(objX10);
                                }
                                KFunction kFunction2 = (KFunction) objX10;
                                boolean zY10 = composer2.y(orderReturnOrExchangeViewModel3) | composer2.K(state2) | composer2.y(navHostController2);
                                Object objX11 = composer2.x();
                                if (zY10 || objX11 == composer$Companion$Empty$1) {
                                    objX11 = new jx(orderReturnOrExchangeViewModel3, navHostController2, state2, 25);
                                    composer2.q(objX11);
                                }
                                Function1 function9 = (Function1) objX11;
                                Function3 function10 = (Function3) kFunction;
                                boolean zY11 = composer2.y(orderReturnOrExchangeViewModel3) | composer2.y(context2) | composer2.K(state2);
                                Object objX12 = composer2.x();
                                if (zY11 || objX12 == composer$Companion$Empty$1) {
                                    objX12 = new Function0() { // from class: xi0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i14 = i12;
                                            State state3 = state2;
                                            Context context3 = context2;
                                            OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel4 = orderReturnOrExchangeViewModel3;
                                            switch (i14) {
                                                case 0:
                                                    orderReturnOrExchangeViewModel4.c0(OrderTrackingUiModel.ContactUsFromSelectionClick.f60339a);
                                                    AppCompatActivity appCompatActivityB = ContextExtKt.b(context3);
                                                    if (appCompatActivityB != null) {
                                                        ActivityExtKt.f(appCompatActivityB, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                case 1:
                                                    orderReturnOrExchangeViewModel4.c0(OrderTrackingUiModel.ContactUsFromReviewClick.f60338a);
                                                    AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB2 != null) {
                                                        ActivityExtKt.f(appCompatActivityB2, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                default:
                                                    orderReturnOrExchangeViewModel4.c0(OrderTrackingUiModel.ContactUsFromVariationClick.f60340a);
                                                    AppCompatActivity appCompatActivityB3 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB3 != null) {
                                                        ActivityExtKt.f(appCompatActivityB3, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX12);
                                }
                                Function0 function11 = (Function0) objX12;
                                Function1 function12 = (Function1) kFunction2;
                                boolean zY12 = composer2.y(orderReturnOrExchangeViewModel3) | composer2.y(navHostController2);
                                Object objX13 = composer2.x();
                                if (zY12 || objX13 == composer$Companion$Empty$1) {
                                    objX13 = new yi0(orderReturnOrExchangeViewModel3, navHostController2, 2);
                                    composer2.q(objX13);
                                }
                                OrderExchangeVariantSelectionComposableKt.a(orderReturnOrExchangeViewModel3, function9, function10, function11, function12, (Function0) objX13, composer2, 0);
                                return unit2;
                            default:
                                NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj9;
                                Composer composer3 = (Composer) obj10;
                                ((Integer) obj11).getClass();
                                ((AnimatedContentScope) obj8).getClass();
                                navBackStackEntry2.getClass();
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                String str5 = ((ReturnOrExchangeRoute.ExchangeReview) NavBackStackEntryKt.a(navBackStackEntry2, Reflection.f71922a.b(ReturnOrExchangeRoute.ExchangeReview.class))).f60168a;
                                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                                str5.getClass();
                                SkuIdUiModel skuIdUiModel = new SkuIdUiModel(str5);
                                final OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel4 = orderReturnOrExchangeViewModel;
                                boolean zY13 = composer3.y(orderReturnOrExchangeViewModel4) | composer3.K(str5);
                                Object objX14 = composer3.x();
                                if (zY13 || objX14 == composer$Companion$Empty$1) {
                                    objX14 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$1$1(orderReturnOrExchangeViewModel4, str5, null);
                                    composer3.q(objX14);
                                }
                                EffectsKt.e(composer3, skuIdUiModel, (Function2) objX14);
                                Unit unit3 = Unit.f71739a;
                                boolean zY14 = composer3.y(orderReturnOrExchangeViewModel4) | composer3.K(state2);
                                Object objX15 = composer3.x();
                                if (zY14 || objX15 == composer$Companion$Empty$1) {
                                    objX15 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$2$1(orderReturnOrExchangeViewModel4, state2, null);
                                    composer3.q(objX15);
                                }
                                EffectsKt.e(composer3, unit3, (Function2) objX15);
                                boolean zY15 = composer3.y(orderReturnOrExchangeViewModel4);
                                Object objX16 = composer3.x();
                                if (zY15 || objX16 == composer$Companion$Empty$1) {
                                    OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1 orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1(0, orderReturnOrExchangeViewModel4, OrderReturnOrExchangeViewModel.class, "submitExchange", "submitExchange()V", 0);
                                    composer3.q(orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1);
                                    objX16 = orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1;
                                }
                                Function0 function13 = (Function0) ((KFunction) objX16);
                                boolean zY16 = composer3.y(orderReturnOrExchangeViewModel4) | composer3.K(state2);
                                NavHostController navHostController3 = navHostController;
                                boolean zY17 = zY16 | composer3.y(navHostController3);
                                Object objX17 = composer3.x();
                                if (zY17 || objX17 == composer$Companion$Empty$1) {
                                    objX17 = new vi0(orderReturnOrExchangeViewModel4, navHostController3, state2, 3);
                                    composer3.q(objX17);
                                }
                                Function0 function14 = (Function0) objX17;
                                boolean zY18 = composer3.y(orderReturnOrExchangeViewModel4) | composer3.y(context2) | composer3.K(state2);
                                Object objX18 = composer3.x();
                                if (zY18 || objX18 == composer$Companion$Empty$1) {
                                    objX18 = new Function0() { // from class: xi0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i14 = i11;
                                            State state3 = state2;
                                            Context context3 = context2;
                                            OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel5 = orderReturnOrExchangeViewModel4;
                                            switch (i14) {
                                                case 0:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromSelectionClick.f60339a);
                                                    AppCompatActivity appCompatActivityB = ContextExtKt.b(context3);
                                                    if (appCompatActivityB != null) {
                                                        ActivityExtKt.f(appCompatActivityB, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                case 1:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromReviewClick.f60338a);
                                                    AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB2 != null) {
                                                        ActivityExtKt.f(appCompatActivityB2, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                default:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromVariationClick.f60340a);
                                                    AppCompatActivity appCompatActivityB3 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB3 != null) {
                                                        ActivityExtKt.f(appCompatActivityB3, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer3.q(objX18);
                                }
                                Function0 function15 = (Function0) objX18;
                                boolean zY19 = composer3.y(navHostController3);
                                Object objX19 = composer3.x();
                                if (zY19 || objX19 == composer$Companion$Empty$1) {
                                    OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1 orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1(0, navHostController3, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                    composer3.q(orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1);
                                    objX19 = orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1;
                                }
                                Function0 function16 = (Function0) objX19;
                                boolean zY20 = composer3.y(orderReturnOrExchangeViewModel4) | composer3.y(navHostController3);
                                Object objX20 = composer3.x();
                                if (zY20 || objX20 == composer$Companion$Empty$1) {
                                    objX20 = new yi0(orderReturnOrExchangeViewModel4, navHostController3, 1);
                                    composer3.q(objX20);
                                }
                                OrderExchangeReviewComposableKt.a(orderReturnOrExchangeViewModel4, function13, function14, function15, function16, (Function0) objX20, composer3, 0);
                                return unit3;
                        }
                    }
                }));
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(ReturnOrExchangeRoute.ReturnSummary.class), MapsKt.c(), emptyList, null, null, null, null, new ComposableLambdaImpl(-167616310, true, new Function4() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.d
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        Composer composer = (Composer) obj10;
                        ((Integer) obj11).getClass();
                        ((AnimatedContentScope) obj8).getClass();
                        ((NavBackStackEntry) obj9).getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        NavHostController navHostController2 = navHostController;
                        boolean zY = composer.y(navHostController2);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY || objX == composer$Companion$Empty$1) {
                            OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$3$1$1 orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$3$1$1 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$3$1$1(0, navHostController2, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                            composer.q(orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$3$1$1);
                            objX = orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$3$1$1;
                        }
                        Function0 function5 = (Function0) objX;
                        OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel2 = orderReturnOrExchangeViewModel;
                        boolean zY2 = composer.y(orderReturnOrExchangeViewModel2);
                        Object objX2 = composer.x();
                        if (zY2 || objX2 == composer$Companion$Empty$1) {
                            OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$3$2$1 orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$3$2$1 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$3$2$1(0, orderReturnOrExchangeViewModel2, OrderReturnOrExchangeViewModel.class, "confirmReturn", "confirmReturn()V", 0);
                            composer.q(orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$3$2$1);
                            objX2 = orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$3$2$1;
                        }
                        OrderReturnSummaryComposableKt.a(orderReturnOrExchangeViewModel2, function5, (Function0) ((KFunction) objX2), composer, 0);
                        return Unit.f71739a;
                    }
                }));
                final int i10 = 1;
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(ReturnOrExchangeRoute.ExchangeVariation.class), MapsKt.c(), emptyList, null, null, null, null, new ComposableLambdaImpl(-2123763223, true, new Function4() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.c
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        int i11 = i10;
                        NavHostController navHostController2 = navHostController;
                        final int i12 = 1;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        final Context context2 = context;
                        final State state2 = state;
                        final int i13 = 2;
                        switch (i11) {
                            case 0:
                                Composer composer = (Composer) obj10;
                                ((Integer) obj11).getClass();
                                ((AnimatedContentScope) obj8).getClass();
                                ((NavBackStackEntry) obj9).getClass();
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                Unit unit = Unit.f71739a;
                                final OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel2 = orderReturnOrExchangeViewModel;
                                boolean zY = composer.y(orderReturnOrExchangeViewModel2);
                                Object objX = composer.x();
                                if (zY || objX == composer$Companion$Empty$1) {
                                    objX = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$2$1$1(orderReturnOrExchangeViewModel2, null);
                                    composer.q(objX);
                                }
                                EffectsKt.e(composer, unit, (Function2) objX);
                                VariationsResponseUiModel variationsResponseUiModel = ((OrderReturnOrExchangeViewState) state2.getF10755b()).f60309c;
                                boolean zK = composer.K(state2) | composer.y(orderReturnOrExchangeViewModel2);
                                Object objX2 = composer.x();
                                if (zK || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$2$2$1(orderReturnOrExchangeViewModel2, state2, null);
                                    composer.q(objX2);
                                }
                                EffectsKt.e(composer, variationsResponseUiModel, (Function2) objX2);
                                boolean zY2 = composer.y(orderReturnOrExchangeViewModel2) | composer.K(state2) | composer.y(navHostController2);
                                Object objX3 = composer.x();
                                if (zY2 || objX3 == composer$Companion$Empty$1) {
                                    objX3 = new vi0(orderReturnOrExchangeViewModel2, navHostController2, state2, 1);
                                    composer.q(objX3);
                                }
                                Function0 function5 = (Function0) objX3;
                                boolean zY3 = composer.y(orderReturnOrExchangeViewModel2) | composer.K(state2) | composer.y(navHostController2);
                                Object objX4 = composer.x();
                                if (zY3 || objX4 == composer$Companion$Empty$1) {
                                    objX4 = new vi0(orderReturnOrExchangeViewModel2, navHostController2, state2, 2);
                                    composer.q(objX4);
                                }
                                Function0 function6 = (Function0) objX4;
                                boolean zY4 = composer.y(orderReturnOrExchangeViewModel2) | composer.y(context2) | composer.K(state2);
                                Object objX5 = composer.x();
                                if (zY4 || objX5 == composer$Companion$Empty$1) {
                                    final int i14 = 0;
                                    objX5 = new Function0() { // from class: xi0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i15 = i14;
                                            State state3 = state2;
                                            Context context3 = context2;
                                            OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel5 = orderReturnOrExchangeViewModel2;
                                            switch (i15) {
                                                case 0:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromSelectionClick.f60339a);
                                                    AppCompatActivity appCompatActivityB = ContextExtKt.b(context3);
                                                    if (appCompatActivityB != null) {
                                                        ActivityExtKt.f(appCompatActivityB, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                case 1:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromReviewClick.f60338a);
                                                    AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB2 != null) {
                                                        ActivityExtKt.f(appCompatActivityB2, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                default:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromVariationClick.f60340a);
                                                    AppCompatActivity appCompatActivityB3 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB3 != null) {
                                                        ActivityExtKt.f(appCompatActivityB3, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer.q(objX5);
                                }
                                Function0 function7 = (Function0) objX5;
                                boolean zY5 = composer.y(orderReturnOrExchangeViewModel2);
                                Object objX6 = composer.x();
                                if (zY5 || objX6 == composer$Companion$Empty$1) {
                                    objX6 = new ui0(orderReturnOrExchangeViewModel2, 2);
                                    composer.q(objX6);
                                }
                                Function0 function8 = (Function0) objX6;
                                boolean zY6 = composer.y(navHostController2) | composer.y(orderReturnOrExchangeViewModel2);
                                Object objX7 = composer.x();
                                if (zY6 || objX7 == composer$Companion$Empty$1) {
                                    objX7 = new yi0(navHostController2, orderReturnOrExchangeViewModel2);
                                    composer.q(objX7);
                                }
                                OrderReturnOrExchangeSelectionComposableKt.a(orderReturnOrExchangeViewModel2, function5, function6, function7, function8, (Function0) objX7, composer, 0);
                                return unit;
                            case 1:
                                Composer composer2 = (Composer) obj10;
                                ((Integer) obj11).getClass();
                                ((AnimatedContentScope) obj8).getClass();
                                ((NavBackStackEntry) obj9).getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Unit unit2 = Unit.f71739a;
                                final OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel3 = orderReturnOrExchangeViewModel;
                                boolean zY7 = composer2.y(orderReturnOrExchangeViewModel3) | composer2.K(state2);
                                Object objX8 = composer2.x();
                                if (zY7 || objX8 == composer$Companion$Empty$1) {
                                    objX8 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$4$1$1(orderReturnOrExchangeViewModel3, state2, null);
                                    composer2.q(objX8);
                                }
                                EffectsKt.e(composer2, unit2, (Function2) objX8);
                                boolean zY8 = composer2.y(orderReturnOrExchangeViewModel3);
                                Object objX9 = composer2.x();
                                if (zY8 || objX9 == composer$Companion$Empty$1) {
                                    objX9 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$4$2$1(3, orderReturnOrExchangeViewModel3, OrderReturnOrExchangeViewModel.class, "selectExchangeOption", "selectExchangeOption(Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;I)V", 0);
                                    composer2.q(objX9);
                                }
                                KFunction kFunction = (KFunction) objX9;
                                boolean zY9 = composer2.y(orderReturnOrExchangeViewModel3);
                                Object objX10 = composer2.x();
                                if (zY9 || objX10 == composer$Companion$Empty$1) {
                                    objX10 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$4$3$1(1, orderReturnOrExchangeViewModel3, OrderReturnOrExchangeViewModel.class, "requestSizeGuide", "requestSizeGuide(Ljava/lang/String;)V", 0);
                                    composer2.q(objX10);
                                }
                                KFunction kFunction2 = (KFunction) objX10;
                                boolean zY10 = composer2.y(orderReturnOrExchangeViewModel3) | composer2.K(state2) | composer2.y(navHostController2);
                                Object objX11 = composer2.x();
                                if (zY10 || objX11 == composer$Companion$Empty$1) {
                                    objX11 = new jx(orderReturnOrExchangeViewModel3, navHostController2, state2, 25);
                                    composer2.q(objX11);
                                }
                                Function1 function9 = (Function1) objX11;
                                Function3 function10 = (Function3) kFunction;
                                boolean zY11 = composer2.y(orderReturnOrExchangeViewModel3) | composer2.y(context2) | composer2.K(state2);
                                Object objX12 = composer2.x();
                                if (zY11 || objX12 == composer$Companion$Empty$1) {
                                    objX12 = new Function0() { // from class: xi0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i15 = i13;
                                            State state3 = state2;
                                            Context context3 = context2;
                                            OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel5 = orderReturnOrExchangeViewModel3;
                                            switch (i15) {
                                                case 0:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromSelectionClick.f60339a);
                                                    AppCompatActivity appCompatActivityB = ContextExtKt.b(context3);
                                                    if (appCompatActivityB != null) {
                                                        ActivityExtKt.f(appCompatActivityB, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                case 1:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromReviewClick.f60338a);
                                                    AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB2 != null) {
                                                        ActivityExtKt.f(appCompatActivityB2, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                default:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromVariationClick.f60340a);
                                                    AppCompatActivity appCompatActivityB3 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB3 != null) {
                                                        ActivityExtKt.f(appCompatActivityB3, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX12);
                                }
                                Function0 function11 = (Function0) objX12;
                                Function1 function12 = (Function1) kFunction2;
                                boolean zY12 = composer2.y(orderReturnOrExchangeViewModel3) | composer2.y(navHostController2);
                                Object objX13 = composer2.x();
                                if (zY12 || objX13 == composer$Companion$Empty$1) {
                                    objX13 = new yi0(orderReturnOrExchangeViewModel3, navHostController2, 2);
                                    composer2.q(objX13);
                                }
                                OrderExchangeVariantSelectionComposableKt.a(orderReturnOrExchangeViewModel3, function9, function10, function11, function12, (Function0) objX13, composer2, 0);
                                return unit2;
                            default:
                                NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj9;
                                Composer composer3 = (Composer) obj10;
                                ((Integer) obj11).getClass();
                                ((AnimatedContentScope) obj8).getClass();
                                navBackStackEntry2.getClass();
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                String str5 = ((ReturnOrExchangeRoute.ExchangeReview) NavBackStackEntryKt.a(navBackStackEntry2, Reflection.f71922a.b(ReturnOrExchangeRoute.ExchangeReview.class))).f60168a;
                                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                                str5.getClass();
                                SkuIdUiModel skuIdUiModel = new SkuIdUiModel(str5);
                                final OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel4 = orderReturnOrExchangeViewModel;
                                boolean zY13 = composer3.y(orderReturnOrExchangeViewModel4) | composer3.K(str5);
                                Object objX14 = composer3.x();
                                if (zY13 || objX14 == composer$Companion$Empty$1) {
                                    objX14 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$1$1(orderReturnOrExchangeViewModel4, str5, null);
                                    composer3.q(objX14);
                                }
                                EffectsKt.e(composer3, skuIdUiModel, (Function2) objX14);
                                Unit unit3 = Unit.f71739a;
                                boolean zY14 = composer3.y(orderReturnOrExchangeViewModel4) | composer3.K(state2);
                                Object objX15 = composer3.x();
                                if (zY14 || objX15 == composer$Companion$Empty$1) {
                                    objX15 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$2$1(orderReturnOrExchangeViewModel4, state2, null);
                                    composer3.q(objX15);
                                }
                                EffectsKt.e(composer3, unit3, (Function2) objX15);
                                boolean zY15 = composer3.y(orderReturnOrExchangeViewModel4);
                                Object objX16 = composer3.x();
                                if (zY15 || objX16 == composer$Companion$Empty$1) {
                                    OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1 orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1(0, orderReturnOrExchangeViewModel4, OrderReturnOrExchangeViewModel.class, "submitExchange", "submitExchange()V", 0);
                                    composer3.q(orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1);
                                    objX16 = orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1;
                                }
                                Function0 function13 = (Function0) ((KFunction) objX16);
                                boolean zY16 = composer3.y(orderReturnOrExchangeViewModel4) | composer3.K(state2);
                                NavHostController navHostController3 = navHostController;
                                boolean zY17 = zY16 | composer3.y(navHostController3);
                                Object objX17 = composer3.x();
                                if (zY17 || objX17 == composer$Companion$Empty$1) {
                                    objX17 = new vi0(orderReturnOrExchangeViewModel4, navHostController3, state2, 3);
                                    composer3.q(objX17);
                                }
                                Function0 function14 = (Function0) objX17;
                                boolean zY18 = composer3.y(orderReturnOrExchangeViewModel4) | composer3.y(context2) | composer3.K(state2);
                                Object objX18 = composer3.x();
                                if (zY18 || objX18 == composer$Companion$Empty$1) {
                                    objX18 = new Function0() { // from class: xi0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i15 = i12;
                                            State state3 = state2;
                                            Context context3 = context2;
                                            OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel5 = orderReturnOrExchangeViewModel4;
                                            switch (i15) {
                                                case 0:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromSelectionClick.f60339a);
                                                    AppCompatActivity appCompatActivityB = ContextExtKt.b(context3);
                                                    if (appCompatActivityB != null) {
                                                        ActivityExtKt.f(appCompatActivityB, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                case 1:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromReviewClick.f60338a);
                                                    AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB2 != null) {
                                                        ActivityExtKt.f(appCompatActivityB2, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                default:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromVariationClick.f60340a);
                                                    AppCompatActivity appCompatActivityB3 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB3 != null) {
                                                        ActivityExtKt.f(appCompatActivityB3, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer3.q(objX18);
                                }
                                Function0 function15 = (Function0) objX18;
                                boolean zY19 = composer3.y(navHostController3);
                                Object objX19 = composer3.x();
                                if (zY19 || objX19 == composer$Companion$Empty$1) {
                                    OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1 orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1(0, navHostController3, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                    composer3.q(orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1);
                                    objX19 = orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1;
                                }
                                Function0 function16 = (Function0) objX19;
                                boolean zY20 = composer3.y(orderReturnOrExchangeViewModel4) | composer3.y(navHostController3);
                                Object objX20 = composer3.x();
                                if (zY20 || objX20 == composer$Companion$Empty$1) {
                                    objX20 = new yi0(orderReturnOrExchangeViewModel4, navHostController3, 1);
                                    composer3.q(objX20);
                                }
                                OrderExchangeReviewComposableKt.a(orderReturnOrExchangeViewModel4, function13, function14, function15, function16, (Function0) objX20, composer3, 0);
                                return unit3;
                        }
                    }
                }));
                final int i11 = 2;
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(ReturnOrExchangeRoute.ExchangeReview.class), MapsKt.c(), emptyList, null, null, null, null, new ComposableLambdaImpl(215057160, true, new Function4() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.c
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        int i12 = i11;
                        NavHostController navHostController2 = navHostController;
                        final int i13 = 1;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        final Context context2 = context;
                        final State state2 = state;
                        final int i14 = 2;
                        switch (i12) {
                            case 0:
                                Composer composer = (Composer) obj10;
                                ((Integer) obj11).getClass();
                                ((AnimatedContentScope) obj8).getClass();
                                ((NavBackStackEntry) obj9).getClass();
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                Unit unit = Unit.f71739a;
                                final OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel2 = orderReturnOrExchangeViewModel;
                                boolean zY = composer.y(orderReturnOrExchangeViewModel2);
                                Object objX = composer.x();
                                if (zY || objX == composer$Companion$Empty$1) {
                                    objX = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$2$1$1(orderReturnOrExchangeViewModel2, null);
                                    composer.q(objX);
                                }
                                EffectsKt.e(composer, unit, (Function2) objX);
                                VariationsResponseUiModel variationsResponseUiModel = ((OrderReturnOrExchangeViewState) state2.getF10755b()).f60309c;
                                boolean zK = composer.K(state2) | composer.y(orderReturnOrExchangeViewModel2);
                                Object objX2 = composer.x();
                                if (zK || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$2$2$1(orderReturnOrExchangeViewModel2, state2, null);
                                    composer.q(objX2);
                                }
                                EffectsKt.e(composer, variationsResponseUiModel, (Function2) objX2);
                                boolean zY2 = composer.y(orderReturnOrExchangeViewModel2) | composer.K(state2) | composer.y(navHostController2);
                                Object objX3 = composer.x();
                                if (zY2 || objX3 == composer$Companion$Empty$1) {
                                    objX3 = new vi0(orderReturnOrExchangeViewModel2, navHostController2, state2, 1);
                                    composer.q(objX3);
                                }
                                Function0 function5 = (Function0) objX3;
                                boolean zY3 = composer.y(orderReturnOrExchangeViewModel2) | composer.K(state2) | composer.y(navHostController2);
                                Object objX4 = composer.x();
                                if (zY3 || objX4 == composer$Companion$Empty$1) {
                                    objX4 = new vi0(orderReturnOrExchangeViewModel2, navHostController2, state2, 2);
                                    composer.q(objX4);
                                }
                                Function0 function6 = (Function0) objX4;
                                boolean zY4 = composer.y(orderReturnOrExchangeViewModel2) | composer.y(context2) | composer.K(state2);
                                Object objX5 = composer.x();
                                if (zY4 || objX5 == composer$Companion$Empty$1) {
                                    final int i15 = 0;
                                    objX5 = new Function0() { // from class: xi0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i16 = i15;
                                            State state3 = state2;
                                            Context context3 = context2;
                                            OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel5 = orderReturnOrExchangeViewModel2;
                                            switch (i16) {
                                                case 0:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromSelectionClick.f60339a);
                                                    AppCompatActivity appCompatActivityB = ContextExtKt.b(context3);
                                                    if (appCompatActivityB != null) {
                                                        ActivityExtKt.f(appCompatActivityB, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                case 1:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromReviewClick.f60338a);
                                                    AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB2 != null) {
                                                        ActivityExtKt.f(appCompatActivityB2, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                default:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromVariationClick.f60340a);
                                                    AppCompatActivity appCompatActivityB3 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB3 != null) {
                                                        ActivityExtKt.f(appCompatActivityB3, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer.q(objX5);
                                }
                                Function0 function7 = (Function0) objX5;
                                boolean zY5 = composer.y(orderReturnOrExchangeViewModel2);
                                Object objX6 = composer.x();
                                if (zY5 || objX6 == composer$Companion$Empty$1) {
                                    objX6 = new ui0(orderReturnOrExchangeViewModel2, 2);
                                    composer.q(objX6);
                                }
                                Function0 function8 = (Function0) objX6;
                                boolean zY6 = composer.y(navHostController2) | composer.y(orderReturnOrExchangeViewModel2);
                                Object objX7 = composer.x();
                                if (zY6 || objX7 == composer$Companion$Empty$1) {
                                    objX7 = new yi0(navHostController2, orderReturnOrExchangeViewModel2);
                                    composer.q(objX7);
                                }
                                OrderReturnOrExchangeSelectionComposableKt.a(orderReturnOrExchangeViewModel2, function5, function6, function7, function8, (Function0) objX7, composer, 0);
                                return unit;
                            case 1:
                                Composer composer2 = (Composer) obj10;
                                ((Integer) obj11).getClass();
                                ((AnimatedContentScope) obj8).getClass();
                                ((NavBackStackEntry) obj9).getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Unit unit2 = Unit.f71739a;
                                final OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel3 = orderReturnOrExchangeViewModel;
                                boolean zY7 = composer2.y(orderReturnOrExchangeViewModel3) | composer2.K(state2);
                                Object objX8 = composer2.x();
                                if (zY7 || objX8 == composer$Companion$Empty$1) {
                                    objX8 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$4$1$1(orderReturnOrExchangeViewModel3, state2, null);
                                    composer2.q(objX8);
                                }
                                EffectsKt.e(composer2, unit2, (Function2) objX8);
                                boolean zY8 = composer2.y(orderReturnOrExchangeViewModel3);
                                Object objX9 = composer2.x();
                                if (zY8 || objX9 == composer$Companion$Empty$1) {
                                    objX9 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$4$2$1(3, orderReturnOrExchangeViewModel3, OrderReturnOrExchangeViewModel.class, "selectExchangeOption", "selectExchangeOption(Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;I)V", 0);
                                    composer2.q(objX9);
                                }
                                KFunction kFunction = (KFunction) objX9;
                                boolean zY9 = composer2.y(orderReturnOrExchangeViewModel3);
                                Object objX10 = composer2.x();
                                if (zY9 || objX10 == composer$Companion$Empty$1) {
                                    objX10 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$4$3$1(1, orderReturnOrExchangeViewModel3, OrderReturnOrExchangeViewModel.class, "requestSizeGuide", "requestSizeGuide(Ljava/lang/String;)V", 0);
                                    composer2.q(objX10);
                                }
                                KFunction kFunction2 = (KFunction) objX10;
                                boolean zY10 = composer2.y(orderReturnOrExchangeViewModel3) | composer2.K(state2) | composer2.y(navHostController2);
                                Object objX11 = composer2.x();
                                if (zY10 || objX11 == composer$Companion$Empty$1) {
                                    objX11 = new jx(orderReturnOrExchangeViewModel3, navHostController2, state2, 25);
                                    composer2.q(objX11);
                                }
                                Function1 function9 = (Function1) objX11;
                                Function3 function10 = (Function3) kFunction;
                                boolean zY11 = composer2.y(orderReturnOrExchangeViewModel3) | composer2.y(context2) | composer2.K(state2);
                                Object objX12 = composer2.x();
                                if (zY11 || objX12 == composer$Companion$Empty$1) {
                                    objX12 = new Function0() { // from class: xi0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i16 = i14;
                                            State state3 = state2;
                                            Context context3 = context2;
                                            OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel5 = orderReturnOrExchangeViewModel3;
                                            switch (i16) {
                                                case 0:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromSelectionClick.f60339a);
                                                    AppCompatActivity appCompatActivityB = ContextExtKt.b(context3);
                                                    if (appCompatActivityB != null) {
                                                        ActivityExtKt.f(appCompatActivityB, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                case 1:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromReviewClick.f60338a);
                                                    AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB2 != null) {
                                                        ActivityExtKt.f(appCompatActivityB2, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                default:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromVariationClick.f60340a);
                                                    AppCompatActivity appCompatActivityB3 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB3 != null) {
                                                        ActivityExtKt.f(appCompatActivityB3, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX12);
                                }
                                Function0 function11 = (Function0) objX12;
                                Function1 function12 = (Function1) kFunction2;
                                boolean zY12 = composer2.y(orderReturnOrExchangeViewModel3) | composer2.y(navHostController2);
                                Object objX13 = composer2.x();
                                if (zY12 || objX13 == composer$Companion$Empty$1) {
                                    objX13 = new yi0(orderReturnOrExchangeViewModel3, navHostController2, 2);
                                    composer2.q(objX13);
                                }
                                OrderExchangeVariantSelectionComposableKt.a(orderReturnOrExchangeViewModel3, function9, function10, function11, function12, (Function0) objX13, composer2, 0);
                                return unit2;
                            default:
                                NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj9;
                                Composer composer3 = (Composer) obj10;
                                ((Integer) obj11).getClass();
                                ((AnimatedContentScope) obj8).getClass();
                                navBackStackEntry2.getClass();
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                String str5 = ((ReturnOrExchangeRoute.ExchangeReview) NavBackStackEntryKt.a(navBackStackEntry2, Reflection.f71922a.b(ReturnOrExchangeRoute.ExchangeReview.class))).f60168a;
                                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                                str5.getClass();
                                SkuIdUiModel skuIdUiModel = new SkuIdUiModel(str5);
                                final OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel4 = orderReturnOrExchangeViewModel;
                                boolean zY13 = composer3.y(orderReturnOrExchangeViewModel4) | composer3.K(str5);
                                Object objX14 = composer3.x();
                                if (zY13 || objX14 == composer$Companion$Empty$1) {
                                    objX14 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$1$1(orderReturnOrExchangeViewModel4, str5, null);
                                    composer3.q(objX14);
                                }
                                EffectsKt.e(composer3, skuIdUiModel, (Function2) objX14);
                                Unit unit3 = Unit.f71739a;
                                boolean zY14 = composer3.y(orderReturnOrExchangeViewModel4) | composer3.K(state2);
                                Object objX15 = composer3.x();
                                if (zY14 || objX15 == composer$Companion$Empty$1) {
                                    objX15 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$2$1(orderReturnOrExchangeViewModel4, state2, null);
                                    composer3.q(objX15);
                                }
                                EffectsKt.e(composer3, unit3, (Function2) objX15);
                                boolean zY15 = composer3.y(orderReturnOrExchangeViewModel4);
                                Object objX16 = composer3.x();
                                if (zY15 || objX16 == composer$Companion$Empty$1) {
                                    OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1 orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1(0, orderReturnOrExchangeViewModel4, OrderReturnOrExchangeViewModel.class, "submitExchange", "submitExchange()V", 0);
                                    composer3.q(orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1);
                                    objX16 = orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1;
                                }
                                Function0 function13 = (Function0) ((KFunction) objX16);
                                boolean zY16 = composer3.y(orderReturnOrExchangeViewModel4) | composer3.K(state2);
                                NavHostController navHostController3 = navHostController;
                                boolean zY17 = zY16 | composer3.y(navHostController3);
                                Object objX17 = composer3.x();
                                if (zY17 || objX17 == composer$Companion$Empty$1) {
                                    objX17 = new vi0(orderReturnOrExchangeViewModel4, navHostController3, state2, 3);
                                    composer3.q(objX17);
                                }
                                Function0 function14 = (Function0) objX17;
                                boolean zY18 = composer3.y(orderReturnOrExchangeViewModel4) | composer3.y(context2) | composer3.K(state2);
                                Object objX18 = composer3.x();
                                if (zY18 || objX18 == composer$Companion$Empty$1) {
                                    objX18 = new Function0() { // from class: xi0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i16 = i13;
                                            State state3 = state2;
                                            Context context3 = context2;
                                            OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel5 = orderReturnOrExchangeViewModel4;
                                            switch (i16) {
                                                case 0:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromSelectionClick.f60339a);
                                                    AppCompatActivity appCompatActivityB = ContextExtKt.b(context3);
                                                    if (appCompatActivityB != null) {
                                                        ActivityExtKt.f(appCompatActivityB, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                case 1:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromReviewClick.f60338a);
                                                    AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB2 != null) {
                                                        ActivityExtKt.f(appCompatActivityB2, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                                default:
                                                    orderReturnOrExchangeViewModel5.c0(OrderTrackingUiModel.ContactUsFromVariationClick.f60340a);
                                                    AppCompatActivity appCompatActivityB3 = ContextExtKt.b(context3);
                                                    if (appCompatActivityB3 != null) {
                                                        ActivityExtKt.f(appCompatActivityB3, ((OrderReturnOrExchangeViewState) state3.getF10755b()).g);
                                                    }
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer3.q(objX18);
                                }
                                Function0 function15 = (Function0) objX18;
                                boolean zY19 = composer3.y(navHostController3);
                                Object objX19 = composer3.x();
                                if (zY19 || objX19 == composer$Companion$Empty$1) {
                                    OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1 orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1 = new OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1(0, navHostController3, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                    composer3.q(orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1);
                                    objX19 = orderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1;
                                }
                                Function0 function16 = (Function0) objX19;
                                boolean zY20 = composer3.y(orderReturnOrExchangeViewModel4) | composer3.y(navHostController3);
                                Object objX20 = composer3.x();
                                if (zY20 || objX20 == composer$Companion$Empty$1) {
                                    objX20 = new yi0(orderReturnOrExchangeViewModel4, navHostController3, 1);
                                    composer3.q(objX20);
                                }
                                OrderExchangeReviewComposableKt.a(orderReturnOrExchangeViewModel4, function13, function14, function15, function16, (Function0) objX20, composer3, 0);
                                return unit3;
                        }
                    }
                }));
                return Unit.f71739a;
            case 12:
                final OsaListViewState osaListViewState = (OsaListViewState) obj2;
                final Function0 function5 = (Function0) obj3;
                final Function2 function6 = (Function2) obj6;
                final Function1 function7 = (Function1) obj5;
                final Function1 function8 = (Function1) obj4;
                LazyListScope lazyListScope3 = (LazyListScope) obj;
                lazyListScope3.getClass();
                final int i12 = z ? 1 : 0;
                LazyListScope.f(lazyListScope3, null, new ComposableLambdaImpl(-1744713327, true, new Function3() { // from class: lj0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj8, Object obj9, Object obj10) {
                        int i13 = i12;
                        OsaListViewState osaListViewState2 = osaListViewState;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                        Composer composer = (Composer) obj9;
                        int iIntValue = ((Integer) obj10).intValue();
                        switch (i13) {
                            case 0:
                                lazyItemScope.getClass();
                                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                                    OsaListDataScreenKt.c(osaListViewState2.f60909f.size(), composer, 0);
                                } else {
                                    composer.D();
                                }
                                break;
                            default:
                                lazyItemScope.getClass();
                                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    OsaListDataScreenKt.b(osaListViewState2.f60908e.size(), composer, 0);
                                } else {
                                    composer.D();
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                }), 3);
                final List list2 = osaListViewState.f60909f;
                lazyListScope3.h(list2.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.osa.list.components.OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj8) {
                        list2.get(((Number) obj8).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.osa.list.components.OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        int i13;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                        final int iIntValue = ((Number) obj9).intValue();
                        Composer composer = (Composer) obj10;
                        int iIntValue2 = ((Number) obj11).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i13 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i13 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i13 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        boolean z2 = true;
                        if (composer.p(i13 & 1, (i13 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            OsaItemUiModel osaItemUiModel = (OsaItemUiModel) list2.get(iIntValue);
                            composer.L(40259318);
                            if ((((i13 & 112) ^ 48) <= 32 || !composer.d(iIntValue)) && (i13 & 48) != 32) {
                                z2 = false;
                            }
                            Object objX = composer.x();
                            if (z2 || objX == Composer.Companion.f7939a) {
                                objX = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.osa.list.components.OsaListDataScreenKt$OsaListDataScreen$2$1$2$1$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj12) {
                                        SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj12;
                                        semanticsPropertyReceiver2.getClass();
                                        SemanticsPropertiesKt.g(semanticsPropertyReceiver2, new CollectionItemInfo(iIntValue, 1, 0, 1));
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            Modifier modifierE = ModifierExtKt.e(SemanticsModifierKt.b(Modifier.Companion.f8607b, false, (Function1) objX), "osa_ongoingAppointment_view");
                            OsaListViewState osaListViewState2 = osaListViewState;
                            OsaListDataScreenKt.a(modifierE, osaListViewState2.f60905a, osaItemUiModel, true, osaListViewState2.g, osaListViewState2.f60910h, function5, function6, function7, function8, composer, 3072, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                ComposableSingletons$OsaListDataScreenKt.f60877a.getClass();
                LazyListScope.f(lazyListScope3, null, ComposableSingletons$OsaListDataScreenKt.f60878b, 3);
                LazyListScope.f(lazyListScope3, null, new ComposableLambdaImpl(-1882446503, true, new Function3() { // from class: lj0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj8, Object obj9, Object obj10) {
                        int i13 = i4;
                        OsaListViewState osaListViewState2 = osaListViewState;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                        Composer composer = (Composer) obj9;
                        int iIntValue = ((Integer) obj10).intValue();
                        switch (i13) {
                            case 0:
                                lazyItemScope.getClass();
                                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                                    OsaListDataScreenKt.c(osaListViewState2.f60909f.size(), composer, 0);
                                } else {
                                    composer.D();
                                }
                                break;
                            default:
                                lazyItemScope.getClass();
                                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    OsaListDataScreenKt.b(osaListViewState2.f60908e.size(), composer, 0);
                                } else {
                                    composer.D();
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                }), 3);
                final List list3 = osaListViewState.f60908e;
                lazyListScope3.h(list3.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.osa.list.components.OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$5
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj8) {
                        list3.get(((Number) obj8).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.osa.list.components.OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$6
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        int i13;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                        final int iIntValue = ((Number) obj9).intValue();
                        Composer composer = (Composer) obj10;
                        int iIntValue2 = ((Number) obj11).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i13 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i13 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i13 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        boolean z2 = true;
                        if (composer.p(i13 & 1, (i13 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            OsaItemUiModel osaItemUiModel = (OsaItemUiModel) list3.get(iIntValue);
                            composer.L(-530155128);
                            final OsaListViewState osaListViewState2 = osaListViewState;
                            boolean zY = composer.y(osaListViewState2);
                            if ((((i13 & 112) ^ 48) <= 32 || !composer.d(iIntValue)) && (i13 & 48) != 32) {
                                z2 = false;
                            }
                            boolean z3 = zY | z2;
                            Object objX = composer.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (z3 || objX == composer$Companion$Empty$1) {
                                objX = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.osa.list.components.OsaListDataScreenKt$OsaListDataScreen$2$1$4$1$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj12) {
                                        SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj12;
                                        semanticsPropertyReceiver2.getClass();
                                        SemanticsPropertiesKt.g(semanticsPropertyReceiver2, new CollectionItemInfo(osaListViewState2.f60909f.size() + iIntValue, 1, 0, 1));
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            Modifier modifierE = ModifierExtKt.e(SemanticsModifierKt.b(Modifier.Companion.f8607b, false, (Function1) objX), "osa_historyAppointment_view");
                            InAppDispatch inAppDispatch2 = osaListViewState2.f60905a;
                            boolean z4 = osaListViewState2.g;
                            Object objX2 = composer.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = OsaListDataScreenKt$OsaListDataScreen$2$1$4$2$1.f60894b;
                                composer.q(objX2);
                            }
                            OsaListDataScreenKt.a(modifierE, inAppDispatch2, osaItemUiModel, false, z4, false, function5, function6, function7, (Function1) objX2, composer, 805506048, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                LazyListScope.f(lazyListScope3, null, ComposableSingletons$OsaListDataScreenKt.f60879c, 3);
                return Unit.f71739a;
            case 13:
                AppointmentTypeUiModel appointmentTypeUiModel = (AppointmentTypeUiModel) obj2;
                String str5 = (String) obj4;
                final OsaFormItemUiModel osaFormItemUiModel = (OsaFormItemUiModel) obj6;
                final TimeSlotUiModel timeSlotUiModel = (TimeSlotUiModel) obj5;
                final Function2 function9 = (Function2) obj3;
                LazyListScope lazyListScope4 = (LazyListScope) obj;
                lazyListScope4.getClass();
                if (appointmentTypeUiModel != null && Intrinsics.c(str5, osaFormItemUiModel.f60914b)) {
                    int i13 = OsaLocationFormScreenKt.WhenMappings.f60831a[appointmentTypeUiModel.ordinal()];
                    if (i13 == 1) {
                        zIsEmpty = osaFormItemUiModel.f60918h.isEmpty();
                    } else {
                        if (i13 != 2) {
                            v40.g();
                            return null;
                        }
                        zIsEmpty = osaFormItemUiModel.f60919i.isEmpty();
                    }
                    if (!zIsEmpty) {
                        final List listA = osaFormItemUiModel.a(appointmentTypeUiModel);
                        final OsaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$1 osaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$1 = new Function1() { // from class: com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$1
                            @Override // kotlin.jvm.functions.Function1
                            public final /* bridge */ /* synthetic */ Object invoke(Object obj8) {
                                return null;
                            }
                        };
                        lazyListScope4.h(listA.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$3
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj8) {
                                return osaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$1.invoke(listA.get(((Number) obj8).intValue()));
                            }
                        }, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormScreenKt$StoreAppointmentItem$lambda$0$5$0$$inlined$items$default$4
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                                int i14;
                                LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                                int iIntValue = ((Number) obj9).intValue();
                                Composer composer = (Composer) obj10;
                                int iIntValue2 = ((Number) obj11).intValue();
                                if ((iIntValue2 & 6) == 0) {
                                    i14 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                                } else {
                                    i14 = iIntValue2;
                                }
                                if ((iIntValue2 & 48) == 0) {
                                    i14 |= composer.d(iIntValue) ? 32 : 16;
                                }
                                if (composer.p(i14 & 1, (i14 & 147) != 146)) {
                                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                                    final TimeSlotUiModel timeSlotUiModel2 = (TimeSlotUiModel) listA.get(iIntValue);
                                    composer.L(336829057);
                                    Modifier modifierE = ModifierExtKt.e(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, 4), "osa_appointmentSlot_button");
                                    String str6 = timeSlotUiModel2.d;
                                    final OsaFormItemUiModel osaFormItemUiModel2 = osaFormItemUiModel;
                                    String strK = DateTimeUtils.k(str6, osaFormItemUiModel2.f60920j);
                                    if (strK == null) {
                                        strK = "";
                                    }
                                    String str7 = strK;
                                    boolean zC = Intrinsics.c(timeSlotUiModel, timeSlotUiModel2);
                                    final Function2 function10 = function9;
                                    boolean zK = composer.K(function10) | composer.y(timeSlotUiModel2) | composer.y(osaFormItemUiModel2);
                                    Object objX = composer.x();
                                    if (zK || objX == Composer.Companion.f7939a) {
                                        objX = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormScreenKt$StoreAppointmentItem$1$6$1$1$1$1
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                function10.invoke(timeSlotUiModel2, osaFormItemUiModel2);
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer.q(objX);
                                    }
                                    LVButtonGroupKt.a(modifierE, str7, zC, false, null, (Function0) objX, composer, 0, 24);
                                    composer.F();
                                } else {
                                    composer.D();
                                }
                                return Unit.f71739a;
                            }
                        }));
                    }
                }
                return Unit.f71739a;
            case 14:
                OsaListViewModel osaListViewModel = (OsaListViewModel) obj2;
                OsaReasonsFormViewModel osaReasonsFormViewModel = (OsaReasonsFormViewModel) obj6;
                OsaLocationFormViewModel osaLocationFormViewModel = (OsaLocationFormViewModel) obj5;
                OsaContactFormViewModel osaContactFormViewModel = (OsaContactFormViewModel) obj4;
                NavBackStack navBackStack = (NavBackStack) obj3;
                OsaItemUiModel osaItemUiModel = (OsaItemUiModel) obj;
                osaItemUiModel.getClass();
                String str6 = osaItemUiModel.f60924a;
                boolean z2 = osaItemUiModel.f60932k;
                StoreInformationItemUiModel storeInformationItemUiModel = osaItemUiModel.f60929h;
                String str7 = storeInformationItemUiModel != null ? storeInformationItemUiModel.f60938a : null;
                osaListViewModel.o(new OsaTrackingUiModel.ModifyAppointmentEvent(str6, str7 != null ? str7 : ""));
                OsaReasonUiModel osaReasonUiModel = osaItemUiModel.f60930i;
                if (osaReasonUiModel != null) {
                    osaReasonsFormViewModel.r8(osaReasonUiModel);
                    osaReasonsFormViewModel.G4(((OsaLocationFormViewState) osaLocationFormViewModel.getU().getValue()).r);
                }
                if (z2) {
                    osaReasonsFormViewModel.C7();
                }
                osaLocationFormViewModel.J5(osaItemUiModel);
                osaContactFormViewModel.p3(z2);
                navBackStack.a(OsaRoutes.LocationForm.INSTANCE);
                return Unit.f71739a;
            case 15:
                PSPViewModel pSPViewModel = (PSPViewModel) obj2;
                String str8 = (String) obj4;
                String str9 = (String) obj6;
                AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) obj3;
                List list4 = (List) obj;
                list4.getClass();
                String str10 = ((PSPViewState) ((MutableState) obj5).getF10755b()).f63014a;
                if (str10 != null) {
                    appsFlyerUiTracker.getClass();
                    appsFlyerUiTracker.a(new AppsFlyerEvent.Search(MapsKt.h(new Pair(AFInAppEventParameterName.SEARCH_STRING, str10))));
                    appsFlyerUiTracker.d(null);
                }
                String strA = PlpProductUiModelKt.a(list4);
                List list5 = list4;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list5, 10));
                for (Object obj8 : list5) {
                    int i14 = i3 + 1;
                    if (i3 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    arrayList2.add(((PlpProductUiModel) obj8).c(i3, str8, str9));
                    i3 = i14;
                }
                pSPViewModel.j(new GA4TrackingUiModel.ViewItemListLoaded("search", strA, str8, str9, arrayList2));
                return Unit.f71739a;
            case 16:
                PdpViewModel pdpViewModel = (PdpViewModel) obj2;
                Function0 function10 = (Function0) obj3;
                Function0 function11 = (Function0) obj6;
                LegalConsentsTracker legalConsentsTracker = (LegalConsentsTracker) obj5;
                MutableState mutableState6 = (MutableState) obj4;
                BeautyLegalConsentUiModel beautyLegalConsentUiModel = (BeautyLegalConsentUiModel) obj;
                beautyLegalConsentUiModel.getClass();
                LegalConsentContextUiModel legalConsentContextUiModel = beautyLegalConsentUiModel.d;
                if (legalConsentContextUiModel != null) {
                    legalConsentsTracker.getClass();
                    legalConsentsTracker.f65397a.a(LegalConsentsTrackingUiModelKt.a(new LegalConsentsTrackingUiModel.AcceptConsentsClickedEvent(BeautyLegalConsentUiModelKt.a(legalConsentContextUiModel))));
                }
                mutableState6.setValue(null);
                pdpViewModel.ob(beautyLegalConsentUiModel);
                int i15 = legalConsentContextUiModel != null ? PdpComposableKt.WhenMappings.f61397a[legalConsentContextUiModel.ordinal()] : -1;
                if (i15 == 1) {
                    function10.mo47invoke();
                } else if (i15 == 2) {
                    function11.mo47invoke();
                }
                return Unit.f71739a;
            case 17:
                CameraView cameraView = (CameraView) obj4;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj3;
                Context context2 = (Context) obj;
                context2.getClass();
                final CameraController cameraController = new CameraController(context2, (MakeupCam) obj2, (ShadeFinder) obj6);
                ((Function1) obj5).invoke(cameraController);
                ViewParent parent = cameraView.getParent();
                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup != null) {
                    viewGroup.removeView(cameraView);
                }
                SurfaceHolder.Callback callback = new SurfaceHolder.Callback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.PerfectCameraComposableKt$PerfectCameraComposable$5$1$surfaceCallback$1
                    @Override // android.view.SurfaceHolder.Callback
                    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i16, int i17, int i18) {
                        surfaceHolder.getClass();
                    }

                    @Override // android.view.SurfaceHolder.Callback
                    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
                        surfaceHolder.getClass();
                        cameraController.a(CameraLibrary.CAMERA_2, CameraFacing.FRONT);
                    }

                    @Override // android.view.SurfaceHolder.Callback
                    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                        surfaceHolder.getClass();
                        cameraController.b();
                    }
                };
                ref$ObjectRef.f71921b = callback;
                cameraView.getHolder().addCallback(callback);
                return cameraView;
            case 18:
                final List list6 = (List) obj2;
                Function2 function12 = (Function2) obj6;
                final Function1 function13 = (Function1) obj5;
                final Function1 function14 = (Function1) obj4;
                final Function1 function15 = (Function1) obj3;
                LazyStaggeredGridScope lazyStaggeredGridScope = (LazyStaggeredGridScope) obj;
                lazyStaggeredGridScope.getClass();
                lazyStaggeredGridScope.k(list6.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorLookListKt$PersonalSelectionsCurationAdvisorLookList$lambda$0$0$$inlined$items$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj9) {
                        list6.get(((Number) obj9).intValue());
                        return null;
                    }
                }, null, new ComposableLambdaImpl(-334987442, true, new Function4<LazyStaggeredGridItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorLookListKt$PersonalSelectionsCurationAdvisorLookList$lambda$0$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj9, Object obj10, Object obj11, Object obj12) {
                        int i16;
                        LazyStaggeredGridItemScope lazyStaggeredGridItemScope = (LazyStaggeredGridItemScope) obj9;
                        int iIntValue = ((Number) obj10).intValue();
                        Composer composer = (Composer) obj11;
                        int iIntValue2 = ((Number) obj12).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i16 = (composer.K(lazyStaggeredGridItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i16 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i16 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i16 & 1, (i16 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            SelectionAssetUiModel selectionAssetUiModel = (SelectionAssetUiModel) list6.get(iIntValue);
                            composer.L(2120291420);
                            final Function1 function16 = function13;
                            boolean zK = composer.K(function16);
                            final Function1 function17 = function14;
                            boolean zK2 = zK | composer.K(function17);
                            final Function1 function18 = function15;
                            boolean zK3 = zK2 | composer.K(function18);
                            Object objX = composer.x();
                            if (zK3 || objX == Composer.Companion.f7939a) {
                                objX = new Function1<SelectionAssetUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorLookListKt$PersonalSelectionsCurationAdvisorLookList$1$1$1$1$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj13) {
                                        String str11;
                                        String str12;
                                        SelectionAssetUiModel selectionAssetUiModel2 = (SelectionAssetUiModel) obj13;
                                        selectionAssetUiModel2.getClass();
                                        List list7 = selectionAssetUiModel2.f62578c;
                                        AssetUiModel assetUiModel = selectionAssetUiModel2.f62576a;
                                        if (list7.isEmpty()) {
                                            AssetVideoUiModel assetVideoUiModel = assetUiModel.f51781c;
                                            AssetImageUiModel assetImageUiModel = assetUiModel.f51780b;
                                            if (assetVideoUiModel != null && (str12 = assetVideoUiModel.f51783c) != null && StringExtKt.a(str12)) {
                                                function17.invoke(assetUiModel.f51781c.f51783c);
                                            } else if (assetImageUiModel != null && (str11 = assetImageUiModel.f51778b) != null && StringExtKt.a(str11)) {
                                                function18.invoke(assetImageUiModel.f51778b);
                                            }
                                        } else {
                                            function16.invoke(selectionAssetUiModel2);
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            PersonalSelectionsCurationAdvisorLookListKt.c(selectionAssetUiModel, (Function1) objX, composer, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                if (function12 != null) {
                    StaggeredGridItemSpan.f5682a.getClass();
                    lazyStaggeredGridScope.e(StaggeredGridItemSpan.f5683b, new ComposableLambdaImpl(1383102755, true, new sm(i4, function12)));
                }
                return Unit.f71739a;
            case 19:
                String str11 = (String) obj4;
                String str12 = (String) obj6;
                Function0 function16 = (Function0) obj3;
                Function0 function17 = (Function0) obj5;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                boolean z3 = ((QuickAccessFiltersViewState) obj2).f58169a == FiltersButtonState.OpenCategoriesAnimation;
                if (!z3) {
                    str11 = str12;
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, str11);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                SemanticsPropertiesKt.e(semanticsPropertyReceiver2, null, new pg(z3, function16, function17, 1));
                return Unit.f71739a;
            case 20:
                OffsetMapping offsetMapping = (OffsetMapping) obj6;
                TextFieldValue textFieldValue = (TextFieldValue) obj5;
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj4;
                Brush brush = (Brush) obj3;
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                contentDrawScope.R1();
                float fA = ((SnapshotMutableFloatStateImpl) ((CursorAnimationState) obj2).f6202c).a();
                if (fA != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    long j2 = textFieldValue.f10841b;
                    TextRange.Companion companion = TextRange.f10564b;
                    int iB = offsetMapping.b((int) (j2 >> 32));
                    TextLayoutResultProxy textLayoutResultProxyD = legacyTextFieldState.d();
                    Rect rect = (textLayoutResultProxyD == null || (textLayoutResult = textLayoutResultProxyD.f6011a) == null) ? new Rect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM) : textLayoutResult.c(iB);
                    float fFloor = (float) Math.floor(contentDrawScope.u1(TextFieldCursor_androidKt.f5961a));
                    if (fFloor < 1.0f) {
                        fFloor = 1.0f;
                    }
                    float f2 = fFloor / 2.0f;
                    float f3 = rect.f8811a + f2;
                    float fIntBitsToFloat = Float.intBitsToFloat((int) (contentDrawScope.b() >> 32)) - f2;
                    if (f3 > fIntBitsToFloat) {
                        f3 = fIntBitsToFloat;
                    }
                    if (f3 >= f2) {
                        f2 = f3;
                    }
                    float fFloor2 = ((int) fFloor) % 2 == 1 ? ((float) Math.floor(f2)) + 0.5f : (float) Math.rint(f2);
                    long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fFloor2)) << 32) | (((long) Float.floatToRawIntBits(rect.f8812b)) & BodyPartID.bodyIdMax);
                    Offset.Companion companion2 = Offset.f8806b;
                    long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(fFloor2)) << 32) | (((long) Float.floatToRawIntBits(rect.d)) & BodyPartID.bodyIdMax);
                    Stroke.f9011f.getClass();
                    DrawScope.a0.getClass();
                    contentDrawScope.m1(brush, jFloatToRawIntBits, jFloatToRawIntBits2, fFloor, fA, DrawScope.Companion.f9007b);
                }
                return Unit.f71739a;
            default:
                MutableState mutableState7 = (MutableState) obj6;
                CoroutineScope coroutineScope = (CoroutineScope) obj5;
                MutableState mutableState8 = (MutableState) obj4;
                Function1 function18 = (Function1) obj3;
                ThemeUiModel themeUiModel = (ThemeUiModel) obj;
                themeUiModel.getClass();
                HapticFeedbackType.f9193b.getClass();
                int i16 = PlatformHapticFeedbackType.f9196a;
                ((HapticFeedback) obj2).a(0);
                if (!Intrinsics.c((ThemeUiModel) mutableState7.getF10755b(), themeUiModel)) {
                    mutableState7.setValue(themeUiModel);
                }
                ThematicPlpThemesOverlayKt.c(coroutineScope, mutableState8, function18);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ d1(ActivityResultLauncherHolder activityResultLauncherHolder, ActivityResultRegistry activityResultRegistry, String str, ActivityResultContract activityResultContract, MutableState mutableState) {
        this.f68387b = 1;
        this.d = activityResultLauncherHolder;
        this.f68389e = activityResultRegistry;
        this.f68388c = str;
        this.f68390f = activityResultContract;
        this.g = mutableState;
    }

    public /* synthetic */ d1(int i2, Object obj, Object obj2, Object obj3, Function function, Function0 function0) {
        this.f68387b = i2;
        this.d = obj;
        this.g = function0;
        this.f68389e = function;
        this.f68390f = obj2;
        this.f68388c = obj3;
    }

    public /* synthetic */ d1(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i2) {
        this.f68387b = i2;
        this.d = obj;
        this.f68389e = obj2;
        this.f68390f = obj3;
        this.f68388c = obj4;
        this.g = obj5;
    }

    public /* synthetic */ d1(Object obj, String str, Object obj2, Object obj3, Object obj4, int i2) {
        this.f68387b = i2;
        this.d = obj;
        this.f68388c = str;
        this.f68389e = obj2;
        this.f68390f = obj3;
        this.g = obj4;
    }

    public /* synthetic */ d1(Object obj, String str, String str2, Function0 function0, Object obj2, int i2) {
        this.f68387b = i2;
        this.d = obj;
        this.f68388c = str;
        this.f68389e = str2;
        this.g = function0;
        this.f68390f = obj2;
    }
}
