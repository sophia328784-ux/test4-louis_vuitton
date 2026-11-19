package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.LazyGridScope;
import androidx.compose.foundation.lazy.grid.LazyGridScope$items$1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.core.app.ActivityCompat;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavGraphBuilderKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteScreenContext;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteViewState;
import com.vuitton.android.presentation.screen.account.addressautocomplete.tracking.AddressAutocompleteTrackingUiModel;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorRoute;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.base.WebViewAuthUtilsKt;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterAddressTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.list.components.ExtendExperienceCardKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingAdditionalUiModel;
import com.vuitton.android.presentation.screen.booking.summary.components.ComposableSingletons$BookingSummaryScreenKt;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookSummaryUiModel;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookUiModel;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookViewState;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModelKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.LookSkuTypeUiModel;
import com.vuitton.android.presentation.screen.options.dispatch.components.DispatchComposableKt$DispatchContinentListView$lambda$0$0$0$$inlined$items$default$1;
import com.vuitton.android.presentation.screen.orders.OrderRoute$ReturnOrExchange;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeNavHostKt;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.components.composables.PLPDispatchFilterComposableKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeRoute;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleRoutes;
import com.vuitton.android.presentation.utils.PermissionUtils;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import com.vuitton.foundation.model.domain.model.booking.PreBookId;
import com.vuitton.foundation.model.domain.model.dispatch.DispatchArea;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.m21;
import defpackage.md;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g4 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69280c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69281e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f69282f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69283h;

    public /* synthetic */ g4(StoreModeViewModel storeModeViewModel, Function0 function0, NavHostController navHostController, PSPStoreModeViewModel pSPStoreModeViewModel, Function0 function1, Function1 function2) {
        this.f69279b = 8;
        this.d = storeModeViewModel;
        this.f69282f = function0;
        this.g = navHostController;
        this.f69280c = pSPStoreModeViewModel;
        this.f69283h = function1;
        this.f69281e = function2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f69279b;
        boolean zB = true;
        Object obj2 = this.f69283h;
        Object obj3 = this.f69280c;
        Object obj4 = this.g;
        Object obj5 = this.f69282f;
        Object obj6 = this.f69281e;
        Object obj7 = this.d;
        switch (i2) {
            case 0:
                AddressAutocompleteScreenContext addressAutocompleteScreenContext = (AddressAutocompleteScreenContext) obj7;
                Function1 function1 = (Function1) obj6;
                TrackingAuthOrigin trackingAuthOrigin = (TrackingAuthOrigin) obj5;
                TrackingAuthEntryPoint trackingAuthEntryPoint = (TrackingAuthEntryPoint) obj4;
                AddressAutocompleteViewModel addressAutocompleteViewModel = (AddressAutocompleteViewModel) obj3;
                MutableState mutableState = (MutableState) obj2;
                String str = (String) obj;
                str.getClass();
                if (addressAutocompleteScreenContext != AddressAutocompleteScreenContext.NATIVE_REGISTER_ADDRESS) {
                    addressAutocompleteViewModel.N1(new AddressAutocompleteTrackingUiModel.AutocompleteSucceededEvent(((AddressAutocompleteViewState) mutableState.getF10755b()).f52118c.length()));
                } else if (function1 != null) {
                    function1.invoke(new NativeRegisterAddressTrackingUiModel.OnSelectAddressClickedEvent(trackingAuthOrigin, trackingAuthEntryPoint, ((AddressAutocompleteViewState) mutableState.getF10755b()).f52118c.length()));
                }
                addressAutocompleteViewModel.Ra(str);
                return Unit.f71739a;
            case 1:
                AddressEditorViewModel addressEditorViewModel = (AddressEditorViewModel) obj7;
                NavHostController navHostController = (NavHostController) obj4;
                NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                navGraphBuilder.getClass();
                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(-1148472160, true, new w4((Object) addressEditorViewModel, obj6, obj5, (Object) navHostController, 0));
                Map mapC = MapsKt.c();
                EmptyList emptyList = EmptyList.f71768b;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(AddressEditorRoute.AddressEditorForm.class), mapC, emptyList, null, null, null, null, composableLambdaImpl);
                NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(AddressEditorRoute.AddressEditorAutocomplete.class), MapsKt.c(), emptyList, null, null, null, null, new ComposableLambdaImpl(1372117961, true, new w4((Object) addressEditorViewModel, obj3, navHostController, obj2, 1)));
                return Unit.f71739a;
            case 2:
                final PreBookViewState preBookViewState = (PreBookViewState) obj7;
                final Function2 function2 = (Function2) obj5;
                final Function1 function3 = (Function1) obj6;
                final Function2 function4 = (Function2) obj4;
                final MutableState mutableState2 = (MutableState) obj2;
                final Function1 function5 = (Function1) obj3;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                PreBookViewState.Success success = (PreBookViewState.Success) preBookViewState;
                final List list = success.f54829a.f54817a;
                final t tVar = new t(23);
                lazyListScope.h(list.size(), new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj8) {
                        int iIntValue = ((Number) obj8).intValue();
                        return tVar.invoke(Integer.valueOf(iIntValue), list.get(iIntValue));
                    }
                }, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj8) {
                        list.get(((Number) obj8).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        int i3;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                        final int iIntValue = ((Number) obj9).intValue();
                        Composer composer = (Composer) obj10;
                        int iIntValue2 = ((Number) obj11).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i3 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i3 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i3 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        boolean z = true;
                        boolean zEquals = false;
                        if (composer.p(i3 & 1, (i3 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final PreBookUiModel preBookUiModel = (PreBookUiModel) list.get(iIntValue);
                            composer.L(-659770342);
                            Modifier modifierK = PaddingKt.k(PaddingKt.m(Modifier.Companion.f8607b, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            if ((((i3 & 112) ^ 48) <= 32 || !composer.d(iIntValue)) && (i3 & 48) != 32) {
                                z = false;
                            }
                            Object objX = composer.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (z || objX == composer$Companion$Empty$1) {
                                objX = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$1$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj12) {
                                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj12;
                                        semanticsPropertyReceiver.getClass();
                                        SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(iIntValue, 1, 0, 1));
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            Modifier modifierB = SemanticsModifierKt.b(modifierK, false, (Function1) objX);
                            String str2 = preBookUiModel.f54820a;
                            final MutableState mutableState3 = mutableState2;
                            PreBookId preBookId = (PreBookId) mutableState3.getF10755b();
                            String str3 = preBookId != null ? preBookId.f66774a : null;
                            if (str3 != null) {
                                PreBookId.Companion companion = PreBookId.INSTANCE;
                                zEquals = str2.equals(str3);
                            }
                            boolean zY = composer.y(preBookUiModel);
                            final Function1 function6 = function3;
                            boolean zK = zY | composer.K(function6);
                            Object objX2 = composer.x();
                            if (zK || objX2 == composer$Companion$Empty$1) {
                                objX2 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$2$1
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        PreBookUiModel preBookUiModel2 = preBookUiModel;
                                        mutableState3.setValue(new PreBookId(preBookUiModel2.f54820a));
                                        function6.invoke(new ExperienceId(preBookUiModel2.f54821b));
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX2);
                            }
                            Function0 function0 = (Function0) objX2;
                            Object objX3 = composer.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                objX3 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$3$1
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        mutableState3.setValue(null);
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX3);
                            }
                            BookingSummaryCardKt.a(modifierB, preBookUiModel, zEquals, function2, function0, (Function0) objX3, function4, composer, ImageMetadata.EDGE_MODE);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                PreBookSummaryUiModel preBookSummaryUiModel = success.f54829a;
                if (!preBookSummaryUiModel.f54818b.isEmpty()) {
                    ComposableSingletons$BookingSummaryScreenKt.f54796a.getClass();
                    LazyListScope.f(lazyListScope, null, ComposableSingletons$BookingSummaryScreenKt.f54797b, 3);
                    final List list2 = preBookSummaryUiModel.f54818b;
                    final t tVar2 = new t(24);
                    lazyListScope.h(list2.size(), new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$4
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj8) {
                            int iIntValue = ((Number) obj8).intValue();
                            return tVar2.invoke(Integer.valueOf(iIntValue), list2.get(iIntValue));
                        }
                    }, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$5
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj8) {
                            list2.get(((Number) obj8).intValue());
                            return null;
                        }
                    }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$6
                        @Override // kotlin.jvm.functions.Function4
                        public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                            int i3;
                            LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                            final int iIntValue = ((Number) obj9).intValue();
                            Composer composer = (Composer) obj10;
                            int iIntValue2 = ((Number) obj11).intValue();
                            if ((iIntValue2 & 6) == 0) {
                                i3 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                            } else {
                                i3 = iIntValue2;
                            }
                            if ((iIntValue2 & 48) == 0) {
                                i3 |= composer.d(iIntValue) ? 32 : 16;
                            }
                            boolean z = true;
                            if (composer.p(i3 & 1, (i3 & 147) != 146)) {
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                final BookingAdditionalUiModel bookingAdditionalUiModel = (BookingAdditionalUiModel) list2.get(iIntValue);
                                composer.L(-1284631644);
                                Modifier modifierK = PaddingKt.k(PaddingKt.m(Modifier.Companion.f8607b, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                final PreBookViewState preBookViewState2 = preBookViewState;
                                boolean zY = composer.y(preBookViewState2);
                                if ((((i3 & 112) ^ 48) <= 32 || !composer.d(iIntValue)) && (i3 & 48) != 32) {
                                    z = false;
                                }
                                boolean z2 = zY | z;
                                Object objX = composer.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (z2 || objX == composer$Companion$Empty$1) {
                                    objX = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$4$1$1
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj12) {
                                            SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj12;
                                            semanticsPropertyReceiver.getClass();
                                            SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(((PreBookViewState.Success) preBookViewState2).f54829a.f54817a.size() + iIntValue, 1, 0, 1));
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer.q(objX);
                                }
                                Modifier modifierB = SemanticsModifierKt.b(modifierK, false, (Function1) objX);
                                String str2 = bookingAdditionalUiModel.f54605c;
                                String str3 = bookingAdditionalUiModel.d;
                                if (str3 == null) {
                                    str3 = "";
                                }
                                String str4 = str3;
                                String str5 = bookingAdditionalUiModel.f54606e;
                                final Function1 function6 = function5;
                                boolean zK = composer.K(function6) | composer.y(bookingAdditionalUiModel);
                                Object objX2 = composer.x();
                                if (zK || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$4$2$1
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            function6.invoke(bookingAdditionalUiModel.f54604b);
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer.q(objX2);
                                }
                                ExtendExperienceCardKt.a(modifierB, str2, str4, str5, (Function0) objX2, composer, 0);
                                composer.F();
                            } else {
                                composer.D();
                            }
                            return Unit.f71739a;
                        }
                    }));
                }
                ComposableSingletons$BookingSummaryScreenKt.f54796a.getClass();
                LazyListScope.f(lazyListScope, null, ComposableSingletons$BookingSummaryScreenKt.f54798c, 3);
                return Unit.f71739a;
            case 3:
                List<Pair> list3 = (List) obj7;
                Function1 function6 = (Function1) obj6;
                final InAppDispatch inAppDispatch = (InAppDispatch) obj5;
                final Function1 function7 = (Function1) obj4;
                final Function1 function8 = (Function1) obj3;
                final Function1 function9 = (Function1) obj2;
                LazyListScope lazyListScope2 = (LazyListScope) obj;
                lazyListScope2.getClass();
                for (final Pair pair : list3) {
                    LazyListScope.f(lazyListScope2, null, new ComposableLambdaImpl(1248627903, true, new g1(pair, list3, function6, 15)), 3);
                    final List list4 = ((DispatchArea) pair.f71705b).d;
                    final DispatchComposableKt$DispatchContinentListView$lambda$0$0$0$$inlined$items$default$1 dispatchComposableKt$DispatchContinentListView$lambda$0$0$0$$inlined$items$default$1 = new Function1() { // from class: com.vuitton.android.presentation.screen.options.dispatch.components.DispatchComposableKt$DispatchContinentListView$lambda$0$0$0$$inlined$items$default$1
                        @Override // kotlin.jvm.functions.Function1
                        public final /* bridge */ /* synthetic */ Object invoke(Object obj8) {
                            return null;
                        }
                    };
                    lazyListScope2.h(list4.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.options.dispatch.components.DispatchComposableKt$DispatchContinentListView$lambda$0$0$0$$inlined$items$default$3
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj8) {
                            return dispatchComposableKt$DispatchContinentListView$lambda$0$0$0$$inlined$items$default$1.invoke(list4.get(((Number) obj8).intValue()));
                        }
                    }, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.options.dispatch.components.DispatchComposableKt$DispatchContinentListView$lambda$0$0$0$$inlined$items$default$4
                        @Override // kotlin.jvm.functions.Function4
                        public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                            int i3;
                            LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                            int iIntValue = ((Number) obj9).intValue();
                            Composer composer = (Composer) obj10;
                            int iIntValue2 = ((Number) obj11).intValue();
                            if ((iIntValue2 & 6) == 0) {
                                i3 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                            } else {
                                i3 = iIntValue2;
                            }
                            if ((iIntValue2 & 48) == 0) {
                                i3 |= composer.d(iIntValue) ? 32 : 16;
                            }
                            if (composer.p(i3 & 1, (i3 & 147) != 146)) {
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                InAppDispatch inAppDispatch2 = (InAppDispatch) list4.get(iIntValue);
                                composer.L(-357065846);
                                DispatchComposableKt.d(((Boolean) pair.f71706c).booleanValue(), inAppDispatch2, inAppDispatch, function7, function8, function9, composer, 0);
                                composer.F();
                            } else {
                                composer.D();
                            }
                            return Unit.f71739a;
                        }
                    }));
                }
                return Unit.f71739a;
            case 4:
                FeedTracker feedTracker = (FeedTracker) obj7;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj6;
                Ref$ObjectRef ref$ObjectRef2 = (Ref$ObjectRef) obj5;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj4;
                Context context = (Context) obj3;
                MutableState mutableState3 = (MutableState) obj2;
                Map map = (Map) obj;
                map.getClass();
                if (map.containsValue(Boolean.FALSE)) {
                    lVModalBottomSheetState.b(new k40(28));
                    AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                    appCompatActivityB.getClass();
                    if (ActivityCompat.shouldShowRequestPermissionRationale(appCompatActivityB, (String) ArraysKt.w(PermissionUtils.f65864c))) {
                        FeedTab feedTab = (FeedTab) mutableState3.getF10755b();
                        String str2 = (String) ref$ObjectRef.f71921b;
                        feedTracker.getClass();
                        str2.getClass();
                        feedTracker.f57933a.a(FeedTrackingUiModelKt.a(new FeedTrackingUiModel.OnRefuseCalendarPermissionEvent(feedTab, str2)));
                    } else {
                        AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context);
                        if (appCompatActivityB2 != null) {
                            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                            intent.setData(Uri.fromParts("package", context.getPackageName(), null));
                            appCompatActivityB2.startActivity(intent);
                        }
                    }
                } else {
                    FeedTab feedTab2 = (FeedTab) mutableState3.getF10755b();
                    String str3 = (String) ref$ObjectRef.f71921b;
                    feedTracker.getClass();
                    str3.getClass();
                    feedTracker.f57933a.a(FeedTrackingUiModelKt.a(new FeedTrackingUiModel.OnAuthorizeCalendarPermissionEvent(feedTab2, str3)));
                    ((Function0) ref$ObjectRef2.f71921b).mo47invoke();
                }
                return Unit.f71739a;
            case 5:
                final OrderViewModel orderViewModel = (OrderViewModel) obj7;
                final NavHostController navHostController2 = (NavHostController) obj4;
                final Function1 function10 = (Function1) obj6;
                NavGraphBuilder navGraphBuilder2 = (NavGraphBuilder) obj;
                navGraphBuilder2.getClass();
                NavGraphBuilderKt.b(navGraphBuilder2, "list", new ComposableLambdaImpl(751863228, true, new w4((Object) orderViewModel, obj5, navHostController2, (Object) function10, 8)));
                NavGraphBuilderKt.b(navGraphBuilder2, "detail", new ComposableLambdaImpl(-875537357, true, new rl(orderViewModel, navHostController2, function10, (Function1) obj3, (Function1) obj2)));
                NavGraphBuilderKt.a(navGraphBuilder2, Reflection.f71922a.b(OrderRoute$ReturnOrExchange.class), MapsKt.c(), EmptyList.f71768b, null, null, null, null, new ComposableLambdaImpl(1099217523, true, new Function4() { // from class: com.vuitton.android.presentation.screen.orders.b
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        Composer composer = (Composer) obj10;
                        ((Integer) obj11).getClass();
                        ((AnimatedContentScope) obj8).getClass();
                        ((NavBackStackEntry) obj9).getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer);
                        if (viewModelStoreOwnerA == null) {
                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                            return null;
                        }
                        OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel = (OrderReturnOrExchangeViewModel) ViewModelKt.a(Reflection.f71922a.b(OrderReturnOrExchangeViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer);
                        NavHostController navHostController3 = navHostController2;
                        boolean zY = composer.y(navHostController3);
                        OrderViewModel orderViewModel2 = orderViewModel;
                        boolean zY2 = zY | composer.y(orderViewModel2);
                        Function1 function11 = function10;
                        boolean zK = zY2 | composer.K(function11);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zK || objX == composer$Companion$Empty$1) {
                            objX = new OrderNavHostKt$OrderNavHost$5$1$3$1$1(navHostController3, orderViewModel2, function11);
                            composer.q(objX);
                        }
                        Function0 function0 = (Function0) ((KFunction) objX);
                        boolean zY3 = composer.y(navHostController3) | composer.y(orderViewModel2) | composer.K(function11);
                        Object objX2 = composer.x();
                        if (zY3 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new OrderNavHostKt$OrderNavHost$5$1$3$2$1(navHostController3, orderViewModel2, function11);
                            composer.q(objX2);
                        }
                        Function0 function12 = (Function0) ((KFunction) objX2);
                        boolean zY4 = composer.y(navHostController3);
                        Object objX3 = composer.x();
                        if (zY4 || objX3 == composer$Companion$Empty$1) {
                            OrderNavHostKt$OrderNavHost$5$1$3$3$1 orderNavHostKt$OrderNavHost$5$1$3$3$1 = new OrderNavHostKt$OrderNavHost$5$1$3$3$1(0, navHostController3, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                            composer.q(orderNavHostKt$OrderNavHost$5$1$3$3$1);
                            objX3 = orderNavHostKt$OrderNavHost$5$1$3$3$1;
                        }
                        OrderReturnOrExchangeNavHostKt.a(orderReturnOrExchangeViewModel, function0, function12, (Function0) objX3, composer, 0);
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            case 6:
                final List list5 = (List) obj7;
                final HapticFeedback hapticFeedback = (HapticFeedback) obj5;
                final Function1 function11 = (Function1) obj6;
                final Function1 function12 = (Function1) obj4;
                final CoroutineScope coroutineScope = (CoroutineScope) obj3;
                final LazyListState lazyListState = (LazyListState) obj2;
                LazyListScope lazyListScope3 = (LazyListScope) obj;
                float f2 = PLPDispatchFilterComposableKt.f62727a;
                lazyListScope3.getClass();
                lazyListScope3.h(list5.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.plp.components.composables.PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj8) {
                        list5.get(((Number) obj8).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.plp.components.composables.PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        int i3;
                        final ProductFilterValueUiModel productFilterValueUiModel;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                        final int iIntValue = ((Number) obj9).intValue();
                        Composer composer = (Composer) obj10;
                        int iIntValue2 = ((Number) obj11).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i3 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i3 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i3 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i3 & 1, (i3 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            ProductFilterValueUiModel productFilterValueUiModel2 = (ProductFilterValueUiModel) list5.get(iIntValue);
                            composer.L(-650709837);
                            int i4 = i3 & 112;
                            boolean zK = composer.K(productFilterValueUiModel2) | composer.y(hapticFeedback) | composer.K(function11) | composer.K(function12) | composer.y(coroutineScope) | composer.K(lazyListState) | (((i4 ^ 48) > 32 && composer.d(iIntValue)) || (i3 & 48) == 32);
                            Object objX = composer.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                final CoroutineScope coroutineScope2 = coroutineScope;
                                final LazyListState lazyListState2 = lazyListState;
                                final HapticFeedback hapticFeedback2 = hapticFeedback;
                                final Function1 function13 = function11;
                                final Function1 function14 = function12;
                                productFilterValueUiModel = productFilterValueUiModel2;
                                Function0<Unit> function0 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.plp.components.composables.PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        ProductFilterValueUiModel productFilterValueUiModel3 = productFilterValueUiModel;
                                        String str4 = productFilterValueUiModel3.d;
                                        if (str4 != null) {
                                            HapticFeedbackType.f9193b.getClass();
                                            int i5 = PlatformHapticFeedbackType.f9196a;
                                            hapticFeedback2.a(0);
                                            function13.invoke(str4);
                                            function14.invoke(productFilterValueUiModel3.f62965a);
                                            BuildersKt.c(coroutineScope2, null, null, new PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1$1$1(iIntValue, lazyListState2, null), 3);
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(function0);
                                objX = function0;
                            } else {
                                productFilterValueUiModel = productFilterValueUiModel2;
                            }
                            PLPDispatchFilterComposableKt.a(productFilterValueUiModel, iIntValue, (Function0) objX, composer, i4);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            case 7:
                List list6 = (List) obj7;
                Function2 function13 = (Function2) obj5;
                LazyGridScope lazyGridScope = (LazyGridScope) obj;
                lazyGridScope.getClass();
                lazyGridScope.d(list6.size(), LazyGridScope$items$1.f5334b, new ComposableLambdaImpl(184150335, true, new rl(list6, (Function1) obj6, (List) obj4, (Function1) obj3, (Function1) obj2, 3)));
                if (function13 != null) {
                    LazyGridScope.c(lazyGridScope, null, new yk0(25), new ComposableLambdaImpl(-1435668981, true, new sm(2, function13)), 5);
                }
                return Unit.f71739a;
            case 8:
                StoreModeViewModel storeModeViewModel = (StoreModeViewModel) obj7;
                Function0 function0 = (Function0) obj5;
                NavGraphBuilder navGraphBuilder3 = (NavGraphBuilder) obj;
                navGraphBuilder3.getClass();
                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(564117408, true, new s8(storeModeViewModel, function0, (NavHostController) obj4, 11));
                Map mapC2 = MapsKt.c();
                EmptyList emptyList2 = EmptyList.f71768b;
                ReflectionFactory reflectionFactory2 = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder3, reflectionFactory2.b(StoreModeRoute.Welcome.class), mapC2, emptyList2, null, null, null, null, composableLambdaImpl2);
                NavGraphBuilderKt.a(navGraphBuilder3, reflectionFactory2.b(StoreModeRoute.StoreModeHome.class), MapsKt.c(), emptyList2, null, null, null, null, new ComposableLambdaImpl(1508882825, true, new rl(storeModeViewModel, (PSPStoreModeViewModel) obj3, function0, (Function0) obj2, (Function1) obj6)));
                return Unit.f71739a;
            case 9:
                final TheLookImmersiveArticleViewModel theLookImmersiveArticleViewModel = (TheLookImmersiveArticleViewModel) obj7;
                final NavHostController navHostController3 = (NavHostController) obj5;
                final Function2 function14 = (Function2) obj4;
                final Function2 function15 = (Function2) obj3;
                final Function3 function16 = (Function3) obj2;
                NavGraphBuilder navGraphBuilder4 = (NavGraphBuilder) obj;
                navGraphBuilder4.getClass();
                ComposableLambdaImpl composableLambdaImpl3 = new ComposableLambdaImpl(1736160763, true, new s8(theLookImmersiveArticleViewModel, (Context) obj6, navHostController3, 14));
                Map mapC3 = MapsKt.c();
                EmptyList emptyList3 = EmptyList.f71768b;
                ReflectionFactory reflectionFactory3 = Reflection.f71922a;
                NavGraphBuilderKt.a(navGraphBuilder4, reflectionFactory3.b(TheLookImmersiveArticleRoutes.LookList.class), mapC3, emptyList3, null, null, null, null, composableLambdaImpl3);
                NavGraphBuilderKt.a(navGraphBuilder4, reflectionFactory3.b(TheLookImmersiveArticleRoutes.LookDetail.class), MapsKt.c(), emptyList3, null, null, null, null, new ComposableLambdaImpl(668932708, true, new Function4() { // from class: com.vuitton.android.presentation.screen.thelookimmersivearticle.components.c
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        Composer composer = (Composer) obj10;
                        ((Integer) obj11).getClass();
                        ((AnimatedContentScope) obj8).getClass();
                        ((NavBackStackEntry) obj9).getClass();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        String strC = StringResources_androidKt.c(composer, R.string.look_title);
                        String strC2 = StringResources_androidKt.c(composer, R.string.get_the_look_CTA);
                        Function2 function17 = function14;
                        boolean zK = composer.K(function17);
                        TheLookImmersiveArticleViewModel theLookImmersiveArticleViewModel2 = theLookImmersiveArticleViewModel;
                        boolean zY = zK | composer.y(theLookImmersiveArticleViewModel2);
                        Object objX = composer.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new m21(function17, theLookImmersiveArticleViewModel2, 12);
                            composer.q(objX);
                        }
                        Function1 function18 = (Function1) objX;
                        final Function2 function19 = function15;
                        boolean zK2 = composer.K(function19);
                        Object objX2 = composer.x();
                        if (zK2 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new Function2<SkuIdUiModel, LookSkuTypeUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleNavHostKt$TheLookImmersiveArticleNavHost$1$1$2$2$1
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj12, Object obj13) {
                                    String str4 = ((SkuIdUiModel) obj12).f61764b;
                                    str4.getClass();
                                    SkuIdUiModel skuIdUiModel = new SkuIdUiModel(str4);
                                    function19.invoke(skuIdUiModel, (LookSkuTypeUiModel) obj13);
                                    return Unit.f71739a;
                                }
                            };
                            composer.q(objX2);
                        }
                        Function2 function20 = (Function2) objX2;
                        NavHostController navHostController4 = navHostController3;
                        boolean zY2 = composer.y(navHostController4);
                        Object objX3 = composer.x();
                        if (zY2 || objX3 == composer$Companion$Empty$1) {
                            TheLookImmersiveArticleNavHostKt$TheLookImmersiveArticleNavHost$1$1$2$3$1 theLookImmersiveArticleNavHostKt$TheLookImmersiveArticleNavHost$1$1$2$3$1 = new TheLookImmersiveArticleNavHostKt$TheLookImmersiveArticleNavHost$1$1$2$3$1(0, navHostController4, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                            composer.q(theLookImmersiveArticleNavHostKt$TheLookImmersiveArticleNavHost$1$1$2$3$1);
                            objX3 = theLookImmersiveArticleNavHostKt$TheLookImmersiveArticleNavHost$1$1$2$3$1;
                        }
                        TheLookImmersiveArticleDetailComposableKt.a(theLookImmersiveArticleViewModel2, strC, strC2, function18, function20, (Function0) objX3, function16, composer, 0);
                        return Unit.f71739a;
                    }
                }));
                return Unit.f71739a;
            default:
                AuthenticationViewModel authenticationViewModel = (AuthenticationViewModel) obj7;
                String str4 = (String) obj4;
                String str5 = (String) obj3;
                Function0 function17 = (Function0) obj2;
                String str6 = (String) obj;
                str6.getClass();
                if (!WebViewAuthUtilsKt.a(str6, authenticationViewModel, (LinkHandler) obj6, (AppCompatActivity) obj5)) {
                    if (StringsKt.P(str6, str4, false)) {
                        authenticationViewModel.I0(AuthenticationTrackingUiModel.RegistrationSuccessfulEvent.f53706a);
                        zB = WebViewAuthUtilsKt.b(authenticationViewModel, str6);
                    } else if (StringsKt.P(str6, str5, false)) {
                        authenticationViewModel.I0(AuthenticationTrackingUiModel.RegistrationFailedEvent.f53705a);
                        function17.mo47invoke();
                    } else {
                        zB = false;
                    }
                }
                return Boolean.valueOf(zB);
        }
    }

    public /* synthetic */ g4(OrderViewModel orderViewModel, Function0 function0, NavHostController navHostController, Function1 function1, Function1 function2, Function1 function3) {
        this.f69279b = 5;
        this.d = orderViewModel;
        this.f69282f = function0;
        this.g = navHostController;
        this.f69281e = function1;
        this.f69280c = function2;
        this.f69283h = function3;
    }

    public /* synthetic */ g4(PreBookViewState preBookViewState, Function2 function2, Function1 function1, Function2 function3, MutableState mutableState, Function1 function4) {
        this.f69279b = 2;
        this.d = preBookViewState;
        this.f69282f = function2;
        this.f69281e = function1;
        this.g = function3;
        this.f69283h = mutableState;
        this.f69280c = function4;
    }

    public /* synthetic */ g4(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, int i2) {
        this.f69279b = i2;
        this.d = obj;
        this.f69281e = obj2;
        this.f69282f = obj3;
        this.g = obj4;
        this.f69280c = obj5;
        this.f69283h = obj6;
    }

    public /* synthetic */ g4(List list, Object obj, Function1 function1, Object obj2, Object obj3, Object obj4, int i2) {
        this.f69279b = i2;
        this.d = list;
        this.f69282f = obj;
        this.f69281e = function1;
        this.g = obj2;
        this.f69280c = obj3;
        this.f69283h = obj4;
    }
}
