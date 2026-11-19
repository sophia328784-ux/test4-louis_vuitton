package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.FlowRowScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.tooling.ComposableInvoker;
import androidx.compose.ui.tooling.PreviewActivity;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation3.runtime.NavBackStack;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.DropdownItem;
import com.vuitton.android.designkit.ui.theme.atoms.DropdownState;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleCardTypeUiModel;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.components.LVLiveCountdownKt;
import com.vuitton.android.presentation.compose.components.PagerParallaxFactor;
import com.vuitton.android.presentation.extensions.StringAndroidExtKt;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.account.inbox.components.InboxNotificationListScreenKt;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionBottomSheet;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.audioguide.components.ComposableSingletons$AudioGuideLanguageSelectorKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutContext;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt;
import com.vuitton.android.presentation.screen.authentication.common.components.a;
import com.vuitton.android.presentation.screen.booking.BookingRoutes;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.components.BookingImageSize;
import com.vuitton.android.presentation.screen.booking.components.BookingOverviewKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleCalendarKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleChoiceChipsKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleChoiceRadioGroupKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleMultipleTextKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleSlotChipsKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingDisclaimerUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.DisclaimerActionUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoNavDisplayKt;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoRoutes;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl;
import com.vuitton.android.presentation.screen.booking.personalinfo.loginstatus.components.BookingAccountStatusComposableKt;
import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetScreen;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateComposableKt;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateListItemsKt;
import com.vuitton.android.presentation.screen.certificates.components.nfc.CertificateNfcScanBottomSheetKt;
import com.vuitton.android.presentation.screen.certificates.model.AutomationTagsCertificate$EngravingItem;
import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondStoneUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateRubyUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateStatusUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcScanState;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentReceiveComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairPhotoItemKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairInitiateComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairPhoto;
import com.vuitton.android.presentation.screen.feed.components.card.FeedLiveCardContentKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.AssetArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeReviewScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionScreenKt;
import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.ProductExchangeCategoryUiModel;
import com.vuitton.android.presentation.screen.orders.models.VariationsResponseUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import com.vuitton.android.presentation.screen.portal.components.PortalSliderComponentKt;
import com.vuitton.android.presentation.screen.portal.models.PortalUiModel;
import com.vuitton.android.presentation.screen.portal.models.PortalViewState;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.android.presentation.screen.storemode.filters.components.ResetFilterTagListKt;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterViewState;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutConfirmationDetailUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouFeatureFlags;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouViewState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.time.Instant;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class r implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79204c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79205e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79206f;

    public /* synthetic */ r(MutableState mutableState, Context context, PermissionsViewModelImpl permissionsViewModelImpl, Function0 function0) {
        this.f79203b = 23;
        this.f79206f = mutableState;
        this.d = context;
        this.f79205e = permissionsViewModelImpl;
        this.f79204c = function0;
    }

    private final Object a(Object obj, Object obj2, Object obj3) {
        final CertificateRubyUiModel certificateRubyUiModel = (CertificateRubyUiModel) this.d;
        CertificateStatusUiModel certificateStatusUiModel = certificateRubyUiModel.g;
        String str = certificateRubyUiModel.f55843f;
        final Function1 function1 = (Function1) this.f79205e;
        final Function1 function2 = (Function1) this.f79204c;
        final Function1 function3 = (Function1) this.f79206f;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((ColumnScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (StringsKt.w(str)) {
                composer.L(-1320680892);
                composer.F();
            } else {
                composer.L(-1320949011);
                CertificateListItemsKt.c(null, certificateStatusUiModel, str, composer, 0);
                SpacerKt.a(composer, SizeKt.f(new DTFunctionNameModifier("CertificateRubyItem$lambda$1"), LVAppDesignKitTheme.l(composer).f48415c));
                composer.F();
            }
            TextKt.c(certificateRubyUiModel.d, ModifierExtKt.e(com.vuitton.android.designkit.components.ModifierExtKt.b(tr.d("CertificateRubyItem$lambda$1", 1.0f), StringsKt.w(str), new fl(1, (byte) 0), composer, 6), "certificateList_productName_text"), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48426f, composer, 0, 0, 131064);
            CertificateStatusUiModel certificateStatusUiModel2 = CertificateStatusUiModel.LOCKED;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (certificateStatusUiModel == certificateStatusUiModel2) {
                composer.L(-1320063465);
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer).f48446a;
                String strC = StringResources_androidKt.c(composer, R.string.my_certificate_activate_CTA);
                Modifier modifierM = PaddingKt.m(tr.d("CertificateRubyItem$lambda$1", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                boolean zK = composer.K(function1) | composer.K(certificateRubyUiModel);
                Object objX = composer.x();
                if (zK || objX == composer$Companion$Empty$1) {
                    final int i2 = 0;
                    objX = new Function0() { // from class: ml
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i3 = i2;
                            CertificateRubyUiModel certificateRubyUiModel2 = certificateRubyUiModel;
                            Function1 function4 = function1;
                            switch (i3) {
                                case 0:
                                    function4.invoke(certificateRubyUiModel2);
                                    break;
                                case 1:
                                    function4.invoke(certificateRubyUiModel2);
                                    break;
                                default:
                                    function4.invoke(certificateRubyUiModel2);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    composer.q(objX);
                }
                LVButtonKt.b(0, 504, composer, modifierM, configurationButton, null, null, strC, (Function0) objX, false, false, false);
                composer.F();
            } else {
                composer.L(-1319638207);
                ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(composer).f48446a;
                Modifier modifierE = ModifierExtKt.e(PaddingKt.m(tr.d("CertificateRubyItem$lambda$1", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, 5), "certificateList_openDetails_button");
                String strC2 = StringResources_androidKt.c(composer, R.string.my_certificate_view);
                boolean zK2 = composer.K(function2) | composer.K(certificateRubyUiModel);
                Object objX2 = composer.x();
                if (zK2 || objX2 == composer$Companion$Empty$1) {
                    final int i3 = 1;
                    objX2 = new Function0() { // from class: ml
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i4 = i3;
                            CertificateRubyUiModel certificateRubyUiModel2 = certificateRubyUiModel;
                            Function1 function4 = function2;
                            switch (i4) {
                                case 0:
                                    function4.invoke(certificateRubyUiModel2);
                                    break;
                                case 1:
                                    function4.invoke(certificateRubyUiModel2);
                                    break;
                                default:
                                    function4.invoke(certificateRubyUiModel2);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    composer.q(objX2);
                }
                LVButtonKt.b(0, 504, composer, modifierE, configurationButton2, null, null, strC2, (Function0) objX2, false, false, false);
                String strC3 = StringResources_androidKt.c(composer, R.string.my_certificate_transfer);
                Modifier modifierG = n00.g("CertificateRubyItem$lambda$1", "certificateList_transfer_button");
                boolean zK3 = composer.K(function3) | composer.K(certificateRubyUiModel);
                Object objX3 = composer.x();
                if (zK3 || objX3 == composer$Companion$Empty$1) {
                    final int i4 = 2;
                    objX3 = new Function0() { // from class: ml
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i5 = i4;
                            CertificateRubyUiModel certificateRubyUiModel2 = certificateRubyUiModel;
                            Function1 function4 = function3;
                            switch (i5) {
                                case 0:
                                    function4.invoke(certificateRubyUiModel2);
                                    break;
                                case 1:
                                    function4.invoke(certificateRubyUiModel2);
                                    break;
                                default:
                                    function4.invoke(certificateRubyUiModel2);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    composer.q(objX3);
                }
                LVLinkKt.a(modifierG, strC3, false, null, false, (Function0) objX3, composer, 0, 28);
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object b(Object obj, Object obj2, Object obj3) {
        NfcScanState nfcScanState = (NfcScanState) this.d;
        Function0 function0 = (Function0) this.f79204c;
        Function0 function1 = (Function0) this.f79205e;
        Function0 function2 = (Function0) this.f79206f;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((ColumnScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(WindowInsetsPadding_androidKt.b(BackgroundKt.b(tr.d("CertificateNfcScanBottomSheet$lambda$0", 1.0f), LVAppDesignKitTheme.c(composer).f48361b.f48374a, RectangleShapeKt.f8913a)), LVAppDesignKitTheme.l(composer).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48418h, LVAppDesignKitTheme.l(composer).f48417f, 2);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer, 48);
            int iHashCode = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
            Modifier modifierC = ComposedModifierKt.c(composer, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function3);
            } else {
                composer.o();
            }
            Updater.c(composer, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
            Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(composer, ComposeUiNode.Companion.f9645h);
            Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
            Function0 function4 = nfcScanState instanceof NfcScanState.NfcDisabled ? function0 : null;
            boolean zK = composer.K(nfcScanState) | composer.K(function0) | composer.K(function1);
            Object objX = composer.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new q(nfcScanState, function0, function1, 23);
                composer.q(objX);
            }
            CertificateNfcScanBottomSheetKt.b(nfcScanState, (Function0) objX, function2, function4, composer, 0);
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object c(Object obj, Object obj2, Object obj3) {
        ((Integer) obj3).intValue();
        ((AnimatedVisibilityScope) obj).getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        DistantRepairInitiateComponentKt.c((DistantRepairContactMethod) this.d, (String) this.f79205e, (Function0) this.f79204c, (Function1) this.f79206f, (Composer) obj2, 0);
        return Unit.f71739a;
    }

    private final Object d(Object obj, Object obj2, Object obj3) {
        List list = (List) this.d;
        List list2 = (List) this.f79205e;
        Function1 function1 = (Function1) this.f79204c;
        Function1 function2 = (Function1) this.f79206f;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((FlowRowScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i2 = 0;
            for (Object obj4 : CollectionsKt.q0(list, 7)) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                List list3 = list2;
                DistantRepairPhotoItemKt.a(tr.d("ProductEditCard$lambda$3$1", 0.33f), i2, (list3 == null || list3.isEmpty() || list2.size() <= i2) ? null : (DistantRepairPhoto) obj4, false, function1, function2, null, composer, 6, 72);
                i2 = i3;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00a7  */
    private final Object e(Object obj, Object obj2, Object obj3) {
        BoxScope boxScope;
        EditorialModuleCardTypeUiModel editorialModuleCardTypeUiModel = (EditorialModuleCardTypeUiModel) this.d;
        Function0 function0 = (Function0) this.f79204c;
        A11ySettings a11ySettings = (A11ySettings) this.f79205e;
        LvExoPlayer lvExoPlayer = (LvExoPlayer) this.f79206f;
        BoxScope boxScope2 = (BoxScope) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        boxScope2.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(boxScope2) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Live) {
                composer.L(-2115211981);
                EditorialModuleCardTypeUiModel.Live live = (EditorialModuleCardTypeUiModel.Live) editorialModuleCardTypeUiModel;
                FeedLiveCardContentKt.a(boxScope2, live.f50808c, live.f50806a, function0, composer, iIntValue & 14);
                boxScope = boxScope2;
                composer.F();
            } else {
                boxScope = boxScope2;
                if (editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Event) {
                    EditorialModuleCardTypeUiModel.Event event = (EditorialModuleCardTypeUiModel.Event) editorialModuleCardTypeUiModel;
                    if (event.f50805b) {
                        composer.L(-483863410);
                        Instant instant = event.f50804a;
                        if (instant == null) {
                            composer.L(-2114863821);
                            composer.F();
                        } else {
                            DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-2114863820, composer, "EditorialCard$lambda$11$5");
                            Alignment.f8582a.getClass();
                            LVLiveCountdownKt.a(com.vuitton.android.presentation.extensions.ModifierExtKt.a(boxScope.g(dTFunctionNameModifierJ, Alignment.Companion.f8587f), null, null, 7), 0L, instant, function0, composer, 0, 2);
                            composer = composer;
                            composer.F();
                        }
                        composer.F();
                    } else {
                        composer.L(-2114471298);
                        composer.F();
                    }
                } else {
                    composer.L(-2114471298);
                    composer.F();
                }
            }
            if (!a11ySettings.f51775a || lvExoPlayer == null) {
                composer.L(-2113711426);
                composer.F();
            } else {
                DTFunctionNameModifier dTFunctionNameModifierJ2 = pq0.j(-2114376438, composer, "EditorialCard$lambda$11$5");
                Alignment.f8582a.getClass();
                Modifier modifierE = ModifierExtKt.e(PaddingKt.i(boxScope.g(dTFunctionNameModifierJ2, Alignment.Companion.f8590j), LVAppDesignKitTheme.l(composer).f48415c), "editorialCard_playPause_button");
                boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer.f50901b).getF10755b()).booleanValue();
                boolean zY = composer.y(lvExoPlayer);
                Object objX = composer.x();
                if (zY || objX == Composer.Companion.f7939a) {
                    objX = new gj(lvExoPlayer, 3);
                    composer.q(objX);
                }
                LVPlayPauseButtonKt.a(0, composer, modifierE, (Function0) objX, zBooleanValue);
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object f(Object obj, Object obj2, Object obj3) {
        Function1 function1 = (Function1) this.d;
        ImmersiveArticleType immersiveArticleType = (ImmersiveArticleType) this.f79205e;
        AssetArticleSectionUiModel assetArticleSectionUiModel = (AssetArticleSectionUiModel) this.f79204c;
        AssetUiModel assetUiModel = (AssetUiModel) this.f79206f;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((BoxScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zK = composer.K(function1);
            Object objX = composer.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new k0(function1, 17);
                composer.q(objX);
            }
            LVZoomableContentComponentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, (Function1) objX, true, ComposableLambdaKt.b(1244960473, new g1(immersiveArticleType, assetArticleSectionUiModel, assetUiModel, 20), composer), composer, 221184, 7);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object i(Object obj, Object obj2, Object obj3) {
        InAppDispatch inAppDispatch = (InAppDispatch) this.d;
        InboxNotificationUiModel inboxNotificationUiModel = (InboxNotificationUiModel) this.f79205e;
        Function1 function1 = (Function1) this.f79204c;
        Function1 function2 = (Function1) this.f79206f;
        Modifier modifierE = (Modifier) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        if (modifierE != null) {
            modifierE = a.e(modifierE, "NotificationItem$lambda$4$1");
        }
        Modifier modifier = modifierE;
        modifier.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(modifier) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            InboxNotificationListScreenKt.b(modifier, inAppDispatch, inboxNotificationUiModel, function1, function2, composer, iIntValue & 14);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object j(Object obj, Object obj2, Object obj3) {
        List list = (List) this.d;
        DropdownState dropdownState = (DropdownState) this.f79205e;
        Function1 function1 = (Function1) this.f79204c;
        ConfigurationTextField configurationTextField = (ConfigurationTextField) this.f79206f;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((ColumnScope) obj).getClass();
        int i2 = 0;
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            for (Object obj4 : list) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                DropdownItem dropdownItem = (DropdownItem) obj4;
                boolean z = dropdownItem.f48442b;
                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1834242066, new rs(dropdownItem, configurationTextField, 21), composer);
                boolean zK = composer.K(dropdownState) | composer.K(function1) | composer.d(i2);
                Object objX = composer.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new ou(dropdownState, function1, i2, 4);
                    composer.q(objX);
                }
                AndroidMenu_androidKt.b(composableLambdaImplB, (Function0) objX, null, null, null, z, null, null, composer, 6, 476);
                i2 = i3;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object k(Object obj, Object obj2, Object obj3) {
        String str;
        Function0 function0 = (Function0) this.f79204c;
        CoroutineScope coroutineScope = (CoroutineScope) this.d;
        PagerState pagerState = (PagerState) this.f79205e;
        NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext = (NativeAuthenticationLayoutContext) this.f79206f;
        Composer composer = (Composer) obj2;
        ((Integer) obj3).getClass();
        ((AnimatedVisibilityScope) obj).getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Modifier modifierO = SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("NativeAuthenticationLayout$lambda$2$0$0$0"), LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(composer).o);
        Alignment.f8582a.getClass();
        Modifier modifierG = BoxScopeInstance.f4938a.g(modifierO, Alignment.Companion.f8586e);
        boolean zK = composer.K(function0) | composer.y(coroutineScope) | composer.K(pagerState);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new a(function0, coroutineScope, pagerState, 2);
            composer.q(objX);
        }
        Modifier modifierC = ModifierExtKt.c(modifierG, false, null, null, (Function0) objX, 31);
        int i2 = NativeAuthenticationLayoutKt.WhenMappings.f53478a[nativeAuthenticationLayoutContext.ordinal()];
        if (i2 == 1) {
            str = "nativeRegister_back_button";
        } else if (i2 == 2) {
            str = "nativeForgetPassword_back_button";
        } else {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            str = "account_activation_back";
        }
        Modifier modifierE = ModifierExtKt.e(modifierC, str);
        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer).H, composer, 0), StringResources_androidKt.c(composer, R.string.alt_back), modifierE, LVAppDesignKitTheme.c(composer).f48361b.m, composer, 8, 0);
        return Unit.f71739a;
    }

    private final Object m(Object obj, Object obj2, Object obj3) {
        LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) this.d;
        MutableState mutableState = (MutableState) this.f79206f;
        MutableState mutableState2 = (MutableState) this.f79205e;
        NativeCartBottomSheetScreen nativeCartBottomSheetScreen = (NativeCartBottomSheetScreen) obj;
        nativeCartBottomSheetScreen.getClass();
        mutableState.setValue(nativeCartBottomSheetScreen);
        mutableState2.setValue((CartItemUiModel) obj2);
        ((MutableState) this.f79204c).setValue((ReinsuranceUiModel) obj3);
        lVModalBottomSheetState.e();
        return Unit.f71739a;
    }

    private final Object n(Object obj, Object obj2, Object obj3) {
        OrderReturnOrExchangeViewState orderReturnOrExchangeViewState = (OrderReturnOrExchangeViewState) this.d;
        OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel = (OrderReturnOrExchangeItemUiModel) this.f79205e;
        Function0 function0 = (Function0) this.f79204c;
        Function0 function1 = (Function0) this.f79206f;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderExchangeReviewScreen$lambda$4");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierH = PaddingKt.h(BackgroundKt.b(dTFunctionNameModifier.o(fillElement), LVAppDesignKitTheme.c(composer).f48361b.f48374a, RectangleShapeKt.f8913a), paddingValues);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
            Modifier modifierC = ComposedModifierKt.c(composer, modifierH);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function2);
            } else {
                composer.o();
            }
            Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
            Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(composer, ComposeUiNode.Companion.f9645h);
            Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
            ExchangeSetupResponseUiModel exchangeSetupResponseUiModel = orderReturnOrExchangeViewState.m;
            if (exchangeSetupResponseUiModel instanceof ExchangeSetupResponseUiModel.Loading) {
                LVFlowerLoaderKt.a(BoxScopeInstance.f4938a.g(pq0.j(1846446107, composer, "OrderExchangeReviewScreen$lambda$4"), Alignment.Companion.f8587f), null, false, composer, 0, 6);
                composer = composer;
                composer.F();
            } else if (!(exchangeSetupResponseUiModel instanceof ExchangeSetupResponseUiModel.Result) || orderReturnOrExchangeItemUiModel == null) {
                composer.L(1405815168);
                composer.F();
            } else {
                composer.L(1846451860);
                OrderExchangeReviewScreenKt.a(new DTFunctionNameModifier("OrderExchangeReviewScreen$lambda$4").o(fillElement), ((ExchangeSetupResponseUiModel.Result) orderReturnOrExchangeViewState.m).f60254a, orderReturnOrExchangeItemUiModel, orderReturnOrExchangeViewState.f60309c instanceof VariationsResponseUiModel.Result ? function0 : null, function1, composer, 6);
                composer.F();
            }
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object p(Object obj, Object obj2, Object obj3) {
        OrderReturnOrExchangeViewState orderReturnOrExchangeViewState = (OrderReturnOrExchangeViewState) this.d;
        Function3 function3 = (Function3) this.f79205e;
        Function1 function1 = (Function1) this.f79206f;
        Function0 function0 = (Function0) this.f79204c;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(PaddingKt.h(new DTFunctionNameModifier("OrderExchangeVariantSelectionScreen$lambda$3").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.c(composer).f48361b.f48374a, RectangleShapeKt.f8913a);
            LazyListState lazyListStateA = LazyListStateKt.a(0, composer, 3);
            boolean zY = composer.y(orderReturnOrExchangeViewState) | composer.K(function3) | composer.K(function1) | composer.K(function0);
            Object objX = composer.x();
            if (zY || objX == Composer.Companion.f7939a) {
                k3 k3Var = new k3(23, orderReturnOrExchangeViewState, function3, function1, function0, false);
                composer.q(k3Var);
                objX = k3Var;
            }
            LazyDslKt.a(modifierB, lazyListStateA, null, null, null, null, false, null, (Function1) objX, composer, 0, 508);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object r(Object obj, Object obj2, Object obj3) {
        ProductExchangeCategoryUiModel productExchangeCategoryUiModel = (ProductExchangeCategoryUiModel) this.d;
        List list = (List) this.f79205e;
        Function3 function3 = (Function3) this.f79204c;
        Function1 function1 = (Function1) this.f79206f;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((LazyItemScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("dynamicProductExchangeCategoryItems$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48418h, 7);
            CategoryOptionUiModel categoryOptionUiModel = (CategoryOptionUiModel) CollectionsKt.firstOrNull(list);
            boolean zK = composer.K(function3) | composer.y(productExchangeCategoryUiModel);
            Object objX = composer.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new xg0(function3, productExchangeCategoryUiModel, 3);
                composer.q(objX);
            }
            OrderExchangeVariantSelectionScreenKt.c(modifierM, productExchangeCategoryUiModel, categoryOptionUiModel, (Function1) objX, function1, composer, 0);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object s(Object obj, Object obj2, Object obj3) {
        String str = (String) this.d;
        String str2 = (String) this.f79205e;
        String str3 = (String) this.f79204c;
        String str4 = (String) this.f79206f;
        RowScope rowScope = (RowScope) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        rowScope.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(rowScope) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVPushCardKt.b(rowScope, LVAppDesignKitTheme.i(composer).f48652b, null, ComposableLambdaKt.b(75316932, new ma(str4, 4), composer), str, str2, str3, composer, (iIntValue & 14) | 3072, 2);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object t(Object obj, Object obj2, Object obj3) {
        MutableState mutableState = (MutableState) this.f79206f;
        Context context = (Context) this.d;
        PermissionsViewModelImpl permissionsViewModelImpl = (PermissionsViewModelImpl) this.f79205e;
        Function0 function0 = (Function0) this.f79204c;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((ColumnScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            PermissionsBottomSheet permissionsBottomSheet = ((PermissionsUiModel) mutableState.getF10755b()).f62372a;
            String strA = StringResourceUiModelKt.a(permissionsBottomSheet.f62363a, context);
            String strA2 = StringResourceUiModelKt.a(permissionsBottomSheet.f62364b, context);
            String strA3 = StringResourceUiModelKt.a(permissionsBottomSheet.d, context);
            StringResourceUiModel.ResId resId = permissionsBottomSheet.f62365c;
            String strA4 = resId != null ? StringResourceUiModelKt.a(resId, context) : null;
            boolean zY = composer.y(permissionsViewModelImpl);
            Object objX = composer.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new fp0(permissionsViewModelImpl, 1);
                composer.q(objX);
            }
            LVModalBottomSheetKt.a(null, null, strA, null, null, strA2, null, strA3, null, false, null, (Function0) objX, null, false, null, null, strA4, false, function0, composer, 0, 0, 391003);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object u(Object obj, Object obj2, Object obj3) {
        PortalViewState portalViewState = (PortalViewState) this.d;
        Function1 function1 = (Function1) this.f79205e;
        Function0 function0 = (Function0) this.f79204c;
        Function1 function2 = (Function1) this.f79206f;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            PortalUiModel portalUiModel = portalViewState.f63332a;
            if (portalUiModel == null) {
                composer.L(-174914806);
                composer.F();
            } else {
                DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-174914805, composer, "PortalSliderScreen$lambda$3");
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.n;
                PortalSliderComponentKt.c(PaddingKt.m(dTFunctionNameModifierJ, PaddingKt.g(paddingValues, (LayoutDirection) composer.k(staticProvidableCompositionLocal)), Call.Parameters.DEFAULT_CAMERA_ZOOM, PaddingKt.f(paddingValues, (LayoutDirection) composer.k(staticProvidableCompositionLocal)), paddingValues.getD(), 2), portalUiModel, portalViewState.d, portalViewState.f63335e, PagerParallaxFactor.StrongParallax, function1, function0, function2, portalViewState.f63336f, portalViewState.g, portalViewState.f63337h, composer, 24576);
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object v(Object obj, Object obj2, Object obj3) throws Exception {
        String str = (String) this.d;
        String str2 = (String) this.f79205e;
        Object[] objArr = (Object[]) this.f79204c;
        MutableIntState mutableIntState = (MutableIntState) this.f79206f;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        int i2 = PreviewActivity.f10996h;
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierE = o60.e("setParameterizedContent$lambda$0$2", paddingValues);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
            Modifier modifierC = ComposedModifierKt.c(composer, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function0);
            } else {
                composer.o();
            }
            Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
            Updater.a(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(composer, ComposeUiNode.Companion.f9645h);
            Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
            ComposableInvoker.c(str, str2, composer, objArr[mutableIntState.f()]);
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object w(Object obj, Object obj2, Object obj3) {
        List list = (List) this.d;
        ProductFilterViewState productFilterViewState = (ProductFilterViewState) this.f79205e;
        ((Integer) obj3).intValue();
        ((AnimatedVisibilityScope) obj).getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        ResetFilterTagListKt.b(list, !productFilterViewState.f65022a, (Function2) this.f79206f, (Function0) this.f79204c, (Composer) obj2, 0);
        return Unit.f71739a;
    }

    private final Object x(Object obj, Object obj2, Object obj3) {
        AssessmentViewState assessmentViewState = (AssessmentViewState) this.d;
        Function1 function1 = (Function1) this.f79205e;
        Function1 function2 = (Function1) this.f79204c;
        Function1 function3 = (Function1) this.f79206f;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = new DTFunctionNameModifier("RepairDetailAddressBookScreen_sIePeig$lambda$1").o(SizeKt.f5052c);
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.f48375b;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierD = ScrollKt.d(WindowInsetsPadding_androidKt.b(PaddingKt.h(BackgroundKt.b(modifierO, j2, rectangleShapeKt$RectangleShape$1), paddingValues)), ScrollKt.b(composer), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
            int iHashCode = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
            Modifier modifierC = ComposedModifierKt.c(composer, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function0);
            } else {
                composer.o();
            }
            Function2 function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(composer, columnMeasurePolicyA, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(composer, persistentCompositionLocalMapN, function5);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(composer, numValueOf, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(composer, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            Modifier modifierI = PaddingKt.i(a.f(composer, modifierC, function8, "RepairDetailAddressBookScreen_sIePeig$lambda$1"), LVAppDesignKitTheme.l(composer).f48416e);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
            int iHashCode2 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
            Modifier modifierC2 = ComposedModifierKt.c(composer, modifierI);
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function0);
            } else {
                composer.o();
            }
            Updater.c(composer, columnMeasurePolicyA2, function4);
            Updater.c(composer, persistentCompositionLocalMapN2, function5);
            cj.s(iHashCode2, composer, function6, composer, function7);
            Modifier modifierA = ClipKt.a(n00.c(composer, modifierC2, function8, "RepairDetailAddressBookScreen_sIePeig$lambda$1", 1.0f), LVAppDesignKitTheme.j(composer).f48410b);
            ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
            int iHashCode3 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer.n();
            Modifier modifierC3 = ComposedModifierKt.c(composer, modifierA);
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function0);
            } else {
                composer.o();
            }
            Updater.c(composer, columnMeasurePolicyA3, function4);
            Updater.c(composer, persistentCompositionLocalMapN3, function5);
            cj.s(iHashCode3, composer, function6, composer, function7);
            Modifier modifierB = BackgroundKt.b(n00.c(composer, modifierC3, function8, "RepairDetailAddressBookScreen_sIePeig$lambda$1", 1.0f), LVAppDesignKitTheme.c(composer).f48361b.u, rectangleShapeKt$RectangleShape$1);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, composer, 0);
            int iHashCode4 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer.n();
            Modifier modifierC4 = ComposedModifierKt.c(composer, modifierB);
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function0);
            } else {
                composer.o();
            }
            Updater.c(composer, rowMeasurePolicyA, function4);
            Updater.c(composer, persistentCompositionLocalMapN4, function5);
            cj.s(iHashCode4, composer, function6, composer, function7);
            Modifier modifierI2 = PaddingKt.i(a.f(composer, modifierC4, function8, "RepairDetailAddressBookScreen_sIePeig$lambda$1"), LVAppDesignKitTheme.l(composer).f48416e);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, composer, 48);
            int iHashCode5 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer.n();
            Modifier modifierC5 = ComposedModifierKt.c(composer, modifierI2);
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function0);
            } else {
                composer.o();
            }
            Updater.c(composer, rowMeasurePolicyA2, function4);
            Updater.c(composer, persistentCompositionLocalMapN5, function5);
            cj.s(iHashCode5, composer, function6, composer, function7);
            Updater.c(composer, modifierC5, function8);
            TextKt.c(StringResources_androidKt.c(composer, R.string.dr_title_address_book_page), null, LVAppDesignKitTheme.c(composer).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48429j, composer, 0, 0, 131066);
            composer.r();
            composer.r();
            Modifier modifierB2 = BackgroundKt.b(SizeKt.d(new DTFunctionNameModifier("RepairDetailAddressBookScreen_sIePeig$lambda$1"), 1.0f), LVAppDesignKitTheme.c(composer).f48361b.f48374a, rectangleShapeKt$RectangleShape$1);
            ColumnMeasurePolicy columnMeasurePolicyA4 = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
            int iHashCode6 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN6 = composer.n();
            Modifier modifierC6 = ComposedModifierKt.c(composer, modifierB2);
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function0);
            } else {
                composer.o();
            }
            Updater.c(composer, columnMeasurePolicyA4, function4);
            Updater.c(composer, persistentCompositionLocalMapN6, function5);
            cj.s(iHashCode6, composer, function6, composer, function7);
            Updater.c(composer, modifierC6, function8);
            InAppDispatch inAppDispatch = assessmentViewState.f57356a;
            List list = assessmentViewState.f57360f;
            AddressUiModel addressUiModel = assessmentViewState.g;
            boolean zK = composer.K(function3) | composer.y(assessmentViewState);
            Object objX = composer.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new rp0(function3, assessmentViewState, 9);
                composer.q(objX);
            }
            AssessmentReceiveComponentKt.c(inAppDispatch, list, addressUiModel, function1, function2, (Function1) objX, composer, 0);
            composer.r();
            composer.r();
            composer.r();
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        ComposableLambdaImpl composableLambdaImpl;
        Modifier modifierB;
        Function0 function0;
        String strK;
        int i2 = this.f79203b;
        float f2 = 1.0f;
        int i3 = 6;
        int i4 = 2;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj4 = this.f79204c;
        Object obj5 = this.f79206f;
        Object obj6 = this.f79205e;
        Object obj7 = this.d;
        final int i5 = 0;
        switch (i2) {
            case 0:
                AICompanionTracker aICompanionTracker = (AICompanionTracker) obj7;
                AICompanionViewModel aICompanionViewModel = (AICompanionViewModel) obj6;
                Function0 function1 = (Function0) obj4;
                MutableState mutableState = (MutableState) obj5;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    AICompanionBottomSheet aICompanionBottomSheet = (AICompanionBottomSheet) mutableState.getF10755b();
                    if (aICompanionBottomSheet instanceof AICompanionBottomSheet.LegalMention) {
                        composer.L(576632119);
                        LVModalBottomSheetKt.a(null, null, StringResources_androidKt.c(composer, R.string.companion_beta_value), null, null, String.valueOf(StringAndroidExtKt.b(StringResources_androidKt.c(composer, R.string.companion_beta_description))), null, null, null, false, null, null, null, false, null, null, null, false, null, composer, 0, 0, 1048539);
                        composer.F();
                    } else if (aICompanionBottomSheet instanceof AICompanionBottomSheet.Exit) {
                        composer.L(577046031);
                        String strC = StringResources_androidKt.c(composer, R.string.companion_title_bottomsheet_leaving);
                        String strC2 = StringResources_androidKt.c(composer, R.string.companion_description_bottomsheet_leaving);
                        String strC3 = StringResources_androidKt.c(composer, R.string.cta_one_bottomsheet_leaving);
                        boolean zY = composer.y(aICompanionTracker) | composer.y(aICompanionViewModel) | composer.K(function1);
                        Object objX = composer.x();
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new n(aICompanionTracker, aICompanionViewModel, function1);
                            composer.q(objX);
                        }
                        Function0 function2 = (Function0) objX;
                        String strC4 = StringResources_androidKt.c(composer, R.string.cta_stay_bottomsheet_leaving);
                        boolean zY2 = composer.y(aICompanionTracker) | composer.y(aICompanionViewModel);
                        Object objX2 = composer.x();
                        if (zY2 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new i(aICompanionViewModel, aICompanionTracker);
                            composer.q(objX2);
                        }
                        LVModalBottomSheetKt.a(null, null, strC, null, null, strC2, null, strC3, null, false, null, function2, strC4, false, null, (Function0) objX2, null, false, null, composer, 0, 0, 976731);
                        composer.F();
                    } else {
                        composer.L(578028297);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                List<AudioGuideUiModel.AvailableLanguageUiModel> list = (List) obj7;
                AudioGuideUiModel.AvailableLanguageUiModel availableLanguageUiModel = (AudioGuideUiModel.AvailableLanguageUiModel) obj6;
                Function0 function3 = (Function0) obj4;
                Function1 function4 = (Function1) obj5;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    for (AudioGuideUiModel.AvailableLanguageUiModel availableLanguageUiModel2 : list) {
                        String str = availableLanguageUiModel2.f53212a;
                        String lowerCase = availableLanguageUiModel.f53212a.toLowerCase(Locale.ROOT);
                        lowerCase.getClass();
                        boolean zC = Intrinsics.c(str, lowerCase);
                        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AudioGuideLanguageDropDown$lambda$0");
                        String str2 = availableLanguageUiModel2.f53213b;
                        str2.getClass();
                        Modifier modifierE = ModifierExtKt.e(dTFunctionNameModifier, "audioGuide_languageDropDownItem_" + str2 + "_button");
                        if (zC) {
                            ComposableSingletons$AudioGuideLanguageSelectorKt.f53020a.getClass();
                            composableLambdaImpl = ComposableSingletons$AudioGuideLanguageSelectorKt.f53021b;
                        } else {
                            composableLambdaImpl = null;
                        }
                        ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(610011527, new z3(availableLanguageUiModel2, zC, i4), composer2);
                        boolean zK = composer2.K(function3) | composer2.K(function4) | composer2.K(availableLanguageUiModel2);
                        Object objX3 = composer2.x();
                        if (zK || objX3 == composer$Companion$Empty$1) {
                            objX3 = new q(function3, function4, availableLanguageUiModel2, 10);
                            composer2.q(objX3);
                        }
                        AndroidMenu_androidKt.b(composableLambdaImplB, (Function0) objX3, modifierE, null, composableLambdaImpl, false, null, null, composer2, 6, 488);
                    }
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                BookingFormModuleUiModel bookingFormModuleUiModel = (BookingFormModuleUiModel) obj7;
                Function2 function5 = (Function2) obj6;
                Function2 function6 = (Function2) obj4;
                Function1 function7 = (Function1) obj5;
                Composer composer3 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("BookingModule$lambda$8$3");
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer3, 0);
                int iHashCode = Long.hashCode(composer3.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                Modifier modifierC = ComposedModifierKt.c(composer3, dTFunctionNameModifier2);
                ComposeUiNode.b0.getClass();
                Function0 function8 = ComposeUiNode.Companion.f9641b;
                if (composer3.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer3.B();
                if (composer3.getS()) {
                    composer3.C(function8);
                } else {
                    composer3.o();
                }
                Updater.c(composer3, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                Updater.c(composer3, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                SpacerKt.a(composer3, SizeKt.f(a.f(composer3, modifierC, ComposeUiNode.Companion.d, "BookingModule$lambda$8$3"), LVAppDesignKitTheme.l(composer3).f48416e));
                String str3 = bookingFormModuleUiModel.d;
                BookingDisclaimerUiModel bookingDisclaimerUiModel = bookingFormModuleUiModel.f54539e;
                boolean z = bookingFormModuleUiModel.l;
                if (str3 == null) {
                    composer3.L(535691223);
                    composer3.F();
                } else {
                    TextKt.c(str3, PaddingKt.m(pq0.j(535691224, composer3, "BookingModule$lambda$8$3"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48416e, 7), LVAppDesignKitTheme.c(composer3).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).f48427h, composer3, 0, 0, 131064);
                    composer3.F();
                }
                String strC5 = StringResources_androidKt.c(composer3, R.string.alt_loading_status);
                if (z) {
                    DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(536219464, composer3, "BookingModule$lambda$8$3");
                    boolean zK2 = composer3.K(strC5);
                    Object objX4 = composer3.x();
                    if (zK2 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new a4(strC5, 11);
                        composer3.q(objX4);
                    }
                    modifierB = com.vuitton.android.presentation.extensions.ModifierExtKt.a(dTFunctionNameModifierJ, null, (Function1) objX4, 3);
                    composer3.F();
                } else {
                    modifierB = com.vuitton.android.designkit.components.ModifierExtKt.b(pq0.j(536458443, composer3, "BookingModule$lambda$8$3"), bookingDisclaimerUiModel != null, new t(17), composer3, 6);
                    composer3.F();
                }
                Modifier modifier = modifierB;
                BookingFormModuleDataUiModel bookingFormModuleDataUiModel = bookingFormModuleUiModel.f54544k;
                if (bookingFormModuleDataUiModel instanceof BookingFormModuleDataUiModel.SingleChoice) {
                    composer3.L(536793150);
                    BookingFormModuleDataUiModel.SingleChoice singleChoice = (BookingFormModuleDataUiModel.SingleChoice) bookingFormModuleDataUiModel;
                    int i6 = BookingModuleKt.WhenMappings.f54485a[singleChoice.f54524a.ordinal()];
                    if (i6 == 1) {
                        composer3.L(17318655);
                        boolean z2 = bookingFormModuleUiModel.l;
                        boolean zK3 = composer3.K(function5) | composer3.y(bookingFormModuleUiModel) | composer3.y(bookingFormModuleDataUiModel);
                        Object objX5 = composer3.x();
                        if (zK3 || objX5 == composer$Companion$Empty$1) {
                            objX5 = new yf(function5, bookingFormModuleUiModel, bookingFormModuleDataUiModel, 2);
                            composer3.q(objX5);
                        }
                        BookingModuleChoiceChipsKt.a(modifier, singleChoice, z2, (Function1) objX5, composer3, 0);
                        composer3.F();
                    } else {
                        if (i6 != 2) {
                            throw o60.v(composer3, 17315908);
                        }
                        composer3.L(17331076);
                        boolean z3 = bookingFormModuleUiModel.l;
                        boolean zK4 = composer3.K(function5) | composer3.y(bookingFormModuleUiModel) | composer3.y(bookingFormModuleDataUiModel);
                        Object objX6 = composer3.x();
                        if (zK4 || objX6 == composer$Companion$Empty$1) {
                            objX6 = new yf(function5, bookingFormModuleUiModel, bookingFormModuleDataUiModel, 3);
                            composer3.q(objX6);
                        }
                        BookingModuleChoiceRadioGroupKt.a(modifier, singleChoice, z3, (Function1) objX6, composer3, 0);
                        composer3.F();
                    }
                    composer3.F();
                } else if (bookingFormModuleDataUiModel instanceof BookingFormModuleDataUiModel.Calendar) {
                    composer3.L(17343932);
                    BookingFormModuleDataUiModel.Calendar calendar = (BookingFormModuleDataUiModel.Calendar) bookingFormModuleDataUiModel;
                    boolean z4 = bookingFormModuleUiModel.l;
                    boolean zY3 = composer3.y(bookingFormModuleDataUiModel) | composer3.K(function5) | composer3.y(bookingFormModuleUiModel);
                    Object objX7 = composer3.x();
                    if (zY3 || objX7 == composer$Companion$Empty$1) {
                        objX7 = new yf(bookingFormModuleDataUiModel, function5, bookingFormModuleUiModel, 0);
                        composer3.q(objX7);
                    }
                    BookingModuleCalendarKt.a(modifier, calendar, z4, (Function1) objX7, composer3, 0);
                    composer3.F();
                } else if (bookingFormModuleDataUiModel instanceof BookingFormModuleDataUiModel.Slot) {
                    composer3.L(17360824);
                    BookingFormModuleDataUiModel.Slot slot = (BookingFormModuleDataUiModel.Slot) bookingFormModuleDataUiModel;
                    boolean z5 = bookingFormModuleUiModel.l;
                    boolean zY4 = composer3.y(bookingFormModuleDataUiModel) | composer3.K(function5) | composer3.y(bookingFormModuleUiModel);
                    Object objX8 = composer3.x();
                    if (zY4 || objX8 == composer$Companion$Empty$1) {
                        objX8 = new yf(bookingFormModuleDataUiModel, function5, bookingFormModuleUiModel, 1);
                        composer3.q(objX8);
                    }
                    BookingModuleSlotChipsKt.a(modifier, slot, z5, (Function1) objX8, composer3, 0);
                    composer3.F();
                } else {
                    if (!(bookingFormModuleDataUiModel instanceof BookingFormModuleDataUiModel.MultipleText)) {
                        throw o60.v(composer3, 17314391);
                    }
                    composer3.L(17382480);
                    BookingFormModuleDataUiModel.MultipleText multipleText = (BookingFormModuleDataUiModel.MultipleText) bookingFormModuleDataUiModel;
                    boolean z6 = bookingFormModuleUiModel.l;
                    boolean zK5 = composer3.K(function6) | composer3.y(bookingFormModuleUiModel);
                    Object objX9 = composer3.x();
                    if (zK5 || objX9 == composer$Companion$Empty$1) {
                        objX9 = new k(function6, bookingFormModuleUiModel, 25);
                        composer3.q(objX9);
                    }
                    BookingModuleMultipleTextKt.a(modifier, multipleText, z6, (Function1) objX9, composer3, 0);
                    composer3.F();
                }
                if (z) {
                    composer3.L(539655380);
                    composer3.F();
                } else {
                    composer3.L(17395076);
                    if (bookingDisclaimerUiModel == null) {
                        composer3.L(539247357);
                        composer3.F();
                    } else {
                        Modifier modifierH = pq0.h(1.0f, 539247358, composer3, "BookingModule$lambda$8$3");
                        String str4 = bookingDisclaimerUiModel.f54493a;
                        DisclaimerActionUiModel disclaimerActionUiModel = bookingDisclaimerUiModel.f54494b;
                        String str5 = disclaimerActionUiModel != null ? disclaimerActionUiModel.f54562a : null;
                        if (disclaimerActionUiModel == null) {
                            composer3.L(-1549893620);
                            composer3.F();
                            function0 = null;
                        } else {
                            composer3.L(-1549893619);
                            boolean zK6 = composer3.K(function7) | composer3.y(disclaimerActionUiModel);
                            Object objX10 = composer3.x();
                            if (zK6 || objX10 == composer$Companion$Empty$1) {
                                objX10 = new tf(function7, disclaimerActionUiModel, 3);
                                composer3.q(objX10);
                            }
                            composer3.F();
                            function0 = (Function0) objX10;
                        }
                        LVDisclaimerKt.a(modifierH, str4, null, 0L, str5, function0, composer3, 6, 12);
                        composer3.F();
                    }
                    composer3.F();
                }
                composer3.r();
                return Unit.f71739a;
            case 3:
                PrebookSummaryViewModel prebookSummaryViewModel = (PrebookSummaryViewModel) obj7;
                SnackbarHostState snackbarHostState = (SnackbarHostState) obj6;
                NavBackStack navBackStack = (NavBackStack) obj5;
                Function0 function9 = (Function0) obj4;
                Composer composer4 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((BookingRoutes.PersonalInfo) obj).getClass();
                if (composer4.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer4);
                    if (viewModelStoreOwnerA == null) {
                        md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                        return null;
                    }
                    BookingPersonalInfoViewModel bookingPersonalInfoViewModel = (BookingPersonalInfoViewModel) ViewModelKt.a(Reflection.f71922a.b(BookingPersonalInfoViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer4), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer4);
                    boolean zY5 = composer4.y(navBackStack) | composer4.K(function9);
                    Object objX11 = composer4.x();
                    if (zY5 || objX11 == composer$Companion$Empty$1) {
                        objX11 = new y0(navBackStack, function9, 5);
                        composer4.q(objX11);
                    }
                    Function0 function10 = (Function0) objX11;
                    boolean zY6 = composer4.y(navBackStack);
                    Object objX12 = composer4.x();
                    if (zY6 || objX12 == composer$Companion$Empty$1) {
                        objX12 = new x0(navBackStack, 3);
                        composer4.q(objX12);
                    }
                    BookingPersonalInfoNavDisplayKt.a(bookingPersonalInfoViewModel, prebookSummaryViewModel, snackbarHostState, function10, (Function0) objX12, composer4, KyberEngine.KyberPolyBytes);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 4:
                BookingPersonalInfoViewModel bookingPersonalInfoViewModel2 = (BookingPersonalInfoViewModel) obj7;
                SnackbarHostState snackbarHostState2 = (SnackbarHostState) obj6;
                NavBackStack navBackStack2 = (NavBackStack) obj5;
                Function0 function11 = (Function0) obj4;
                Composer composer5 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((BookingPersonalInfoRoutes.AccountStatus) obj).getClass();
                if (composer5.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    boolean zY7 = composer5.y(navBackStack2) | composer5.K(function11);
                    Object objX13 = composer5.x();
                    if (zY7 || objX13 == composer$Companion$Empty$1) {
                        objX13 = new y0(navBackStack2, function11, 6);
                        composer5.q(objX13);
                    }
                    Function0 function12 = (Function0) objX13;
                    boolean zY8 = composer5.y(navBackStack2) | composer5.y(bookingPersonalInfoViewModel2);
                    Object objX14 = composer5.x();
                    if (zY8 || objX14 == composer$Companion$Empty$1) {
                        objX14 = new tf(navBackStack2, bookingPersonalInfoViewModel2, 8);
                        composer5.q(objX14);
                    }
                    BookingAccountStatusComposableKt.a(bookingPersonalInfoViewModel2, snackbarHostState2, function12, (Function0) objX14, composer5, 0);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 5:
                BookingUiModel bookingUiModel = (BookingUiModel) obj7;
                BookingCTAState bookingCTAState = (BookingCTAState) obj6;
                Function0 function13 = (Function0) obj4;
                Function0 function14 = (Function0) obj5;
                Composer composer6 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer6.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("CancelWarningBottomSheetContent$lambda$0");
                    Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, composer6, 0);
                    int iHashCode2 = Long.hashCode(composer6.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer6.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer6, dTFunctionNameModifier3);
                    ComposeUiNode.b0.getClass();
                    Function0 function15 = ComposeUiNode.Companion.f9641b;
                    if (composer6.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer6.B();
                    if (composer6.getS()) {
                        composer6.C(function15);
                    } else {
                        composer6.o();
                    }
                    Updater.c(composer6, columnMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer6, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer6, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer6, ComposeUiNode.Companion.f9645h);
                    BookingOverviewKt.a(PaddingKt.k(a.f(composer6, modifierC2, ComposeUiNode.Companion.d, "CancelWarningBottomSheetContent$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).f48417f, 1), bookingUiModel.f54619h, bookingUiModel.d, bookingUiModel.f54617e, bookingUiModel.f54618f, BookingImageSize.Large, composer6, ImageMetadata.EDGE_MODE, 0);
                    String str6 = bookingUiModel.l;
                    if (str6 == null) {
                        composer6.L(-505090721);
                        composer6.F();
                    } else {
                        LVDisclaimerKt.a(PaddingKt.m(pq0.j(-505090720, composer6, "CancelWarningBottomSheetContent$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).f48417f, 7), str6, null, 0L, null, null, composer6, 0, 60);
                        composer6.F();
                    }
                    boolean z7 = bookingCTAState == BookingCTAState.LOADING;
                    LVButtonKt.b(6, 376, composer6, tr.d("CancelWarningBottomSheetContent$lambda$0", 1.0f), LVAppDesignKitTheme.b(composer6).f48449e, null, null, StringResources_androidKt.c(composer6, R.string.booking_cancel_cancel_cta), function13, false, !z7, false);
                    Modifier modifierM = PaddingKt.m(tr.d("CancelWarningBottomSheetContent$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).f48416e, 5);
                    ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer6).f48446a;
                    if (z7) {
                        composer6.L(-504002870);
                        composer6.F();
                        strK = "";
                    } else {
                        strK = o60.k(composer6, -986089174, R.string.booking_cancel_accept_cta, composer6);
                    }
                    LVButtonKt.b(0, 488, composer6, modifierM, configurationButton, null, z7 ? Integer.valueOf(LVAppDesignKitTheme.a(composer6).p) : null, strK, function14, false, false, false);
                    composer6.r();
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 6:
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj7;
                Function1 function16 = (Function1) obj6;
                Function1 function17 = (Function1) obj4;
                MutableState mutableState2 = (MutableState) obj5;
                Composer composer7 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer7.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    CertificateUiModel certificateUiModel = (CertificateUiModel) mutableState2.getF10755b();
                    boolean zY9 = composer7.y(lVModalBottomSheetState) | composer7.K(function16);
                    Object objX15 = composer7.x();
                    if (zY9 || objX15 == composer$Companion$Empty$1) {
                        objX15 = new q4(lVModalBottomSheetState, function16);
                        composer7.q(objX15);
                    }
                    Function1 function18 = (Function1) objX15;
                    boolean zK7 = composer7.K(function17) | composer7.y(lVModalBottomSheetState);
                    Object objX16 = composer7.x();
                    if (zK7 || objX16 == composer$Companion$Empty$1) {
                        objX16 = new q4(function17, lVModalBottomSheetState, 2);
                        composer7.q(objX16);
                    }
                    CertificateComposableKt.d(certificateUiModel, function18, (Function1) objX16, composer7, 0);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 7:
                final CertificateDiamondUiModel certificateDiamondUiModel = (CertificateDiamondUiModel) obj7;
                CertificateStatusUiModel certificateStatusUiModel = certificateDiamondUiModel.g;
                String str7 = certificateDiamondUiModel.f55830f;
                final Function1 function19 = (Function1) obj6;
                final Function1 function20 = (Function1) obj4;
                Function2 function21 = (Function2) obj5;
                Composer composer8 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer8.p(iIntValue7 & 1, (iIntValue7 & 17) != 16)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    List list2 = certificateDiamondUiModel.o;
                    if (StringsKt.w(str7)) {
                        composer8.L(-1576544917);
                        composer8.F();
                    } else {
                        composer8.L(-1576813036);
                        CertificateListItemsKt.c(null, certificateStatusUiModel, str7, composer8, 0);
                        SpacerKt.a(composer8, SizeKt.f(new DTFunctionNameModifier("CertificateDiamondItem$lambda$1"), LVAppDesignKitTheme.l(composer8).f48415c));
                        composer8.F();
                    }
                    TextKt.c(certificateDiamondUiModel.d, ModifierExtKt.e(com.vuitton.android.designkit.components.ModifierExtKt.b(tr.d("CertificateDiamondItem$lambda$1", 1.0f), StringsKt.w(str7), new fl(2, (byte) 0), composer8, 6), "certificateList_productName_text"), LVAppDesignKitTheme.c(composer8).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer8).f48426f, composer8, 0, 0, 131064);
                    Composer composer9 = composer8;
                    if (certificateStatusUiModel == CertificateStatusUiModel.LOCKED) {
                        composer9.L(-1575927490);
                        ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(composer9).f48446a;
                        String strC6 = StringResources_androidKt.c(composer9, R.string.my_certificate_activate_CTA);
                        Modifier modifierM2 = PaddingKt.m(tr.d("CertificateDiamondItem$lambda$1", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer9).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                        boolean zK8 = composer9.K(function19) | composer9.y(certificateDiamondUiModel);
                        Object objX17 = composer9.x();
                        if (zK8 || objX17 == composer$Companion$Empty$1) {
                            objX17 = new Function0() { // from class: ll
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i7 = i5;
                                    CertificateDiamondUiModel certificateDiamondUiModel2 = certificateDiamondUiModel;
                                    Function1 function22 = function19;
                                    switch (i7) {
                                        case 0:
                                            function22.invoke(certificateDiamondUiModel2);
                                            break;
                                        default:
                                            function22.invoke(certificateDiamondUiModel2);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer9.q(objX17);
                        }
                        LVButtonKt.b(0, 504, composer9, modifierM2, configurationButton2, null, null, strC6, (Function0) objX17, false, false, false);
                        composer9.F();
                    } else {
                        Modifier modifierK = PaddingKt.k(pq0.h(1.0f, -1575466985, composer9, "CertificateDiamondItem$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer9).f48416e, 1);
                        Arrangement$Top$1 arrangement$Top$3 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$3, Alignment.Companion.n, composer9, 0);
                        int iHashCode3 = Long.hashCode(composer9.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer9.n();
                        Modifier modifierC3 = ComposedModifierKt.c(composer9, modifierK);
                        ComposeUiNode.b0.getClass();
                        Function0 function22 = ComposeUiNode.Companion.f9641b;
                        if (composer9.getF7976a() == null) {
                            ComposablesKt.b();
                            throw r6;
                        }
                        composer9.B();
                        if (composer9.getS()) {
                            composer9.C(function22);
                        } else {
                            composer9.o();
                        }
                        Updater.c(composer9, columnMeasurePolicyA3, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer9, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer9, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                        Updater.b(composer9, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer9, modifierC3, ComposeUiNode.Companion.d);
                        composer9.L(-1742888395);
                        Iterator it = list2.iterator();
                        int i7 = 0;
                        while (it.hasNext()) {
                            Object next = it.next();
                            int i8 = i7 + 1;
                            if (i7 < 0) {
                                CollectionsKt.t0();
                                throw r6;
                            }
                            CertificateDiamondStoneUiModel certificateDiamondStoneUiModel = (CertificateDiamondStoneUiModel) next;
                            Modifier modifierD = tr.d("CertificateDiamondItem$lambda$1", f2);
                            boolean zK9 = composer9.K(function21) | composer9.K(certificateDiamondStoneUiModel) | composer9.y(certificateDiamondUiModel);
                            Object objX18 = composer9.x();
                            if (zK9 || objX18 == composer$Companion$Empty$1) {
                                objX18 = new q(function21, certificateDiamondStoneUiModel, certificateDiamondUiModel, 22);
                                composer9.q(objX18);
                            }
                            Modifier modifierE2 = ModifierExtKt.e(PaddingKt.k(ModifierExtKt.c(modifierD, false, null, null, (Function0) objX18, 31), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer9).f48417f, 1), new AutomationTagsCertificate$EngravingItem(i7).f55816a);
                            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                            Alignment.f8582a.getClass();
                            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, composer9, i3);
                            OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                            int iHashCode4 = Long.hashCode(composer9.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer9.n();
                            Modifier modifierC4 = ComposedModifierKt.c(composer9, modifierE2);
                            ComposeUiNode.b0.getClass();
                            Function0 function23 = ComposeUiNode.Companion.f9641b;
                            if (composer9.getF7976a() == null) {
                                ComposablesKt.b();
                                throw 0;
                            }
                            composer9.B();
                            if (composer9.getS()) {
                                composer9.C(function23);
                            } else {
                                composer9.o();
                            }
                            Updater.c(composer9, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer9, persistentCompositionLocalMapN4, ComposeUiNode.Companion.f9643e);
                            Updater.c(composer9, Integer.valueOf(iHashCode4), ComposeUiNode.Companion.g);
                            Updater.b(composer9, ComposeUiNode.Companion.f9645h);
                            Updater.c(composer9, modifierC4, ComposeUiNode.Companion.d);
                            Iterator it2 = it;
                            Composer composer10 = composer9;
                            TextKt.c(tr.h(StringResources_androidKt.c(composer9, R.string.my_certificate_stone_engraving_label), " ", certificateDiamondStoneUiModel.f55825b), null, LVAppDesignKitTheme.c(composer9).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer9).f48429j, composer10, 0, 0, 131066);
                            composer9 = composer10;
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer9).I, composer9, 0), null, SizeKt.o(new DTFunctionNameModifier("CertificateDiamondItem$lambda$1"), IconSize.f48348b), LVAppDesignKitTheme.c(composer9).f48361b.f48382k, composer9, 56, 0);
                            composer9.r();
                            if (i7 < CollectionsKt.F(list2)) {
                                composer9.L(-1355439150);
                                DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(composer9).f48361b.q, composer9, 0, 3);
                                composer9.F();
                            } else {
                                composer9.L(-1355327674);
                                composer9.F();
                            }
                            it = it2;
                            i7 = i8;
                            f2 = 1.0f;
                            i3 = 6;
                        }
                        composer9.F();
                        composer9.r();
                        String strC7 = StringResources_androidKt.c(composer9, R.string.my_certificate_transfer);
                        Modifier modifierG = n00.g("CertificateDiamondItem$lambda$1", "certificateList_transfer_button");
                        boolean zK10 = composer9.K(function20) | composer9.y(certificateDiamondUiModel);
                        Object objX19 = composer9.x();
                        if (zK10 || objX19 == composer$Companion$Empty$1) {
                            final int i9 = 1;
                            objX19 = new Function0() { // from class: ll
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i10 = i9;
                                    CertificateDiamondUiModel certificateDiamondUiModel2 = certificateDiamondUiModel;
                                    Function1 function24 = function20;
                                    switch (i10) {
                                        case 0:
                                            function24.invoke(certificateDiamondUiModel2);
                                            break;
                                        default:
                                            function24.invoke(certificateDiamondUiModel2);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer9.q(objX19);
                        }
                        LVLinkKt.a(modifierG, strC7, false, null, false, (Function0) objX19, composer9, 0, 28);
                        composer9.F();
                    }
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 8:
                return a(obj, obj2, obj3);
            case 9:
                return b(obj, obj2, obj3);
            case 10:
                Function2 function24 = (Function2) obj7;
                ContextMenuScope contextMenuScope = (ContextMenuScope) obj6;
                Function3 function25 = (Function3) obj5;
                Function0 function26 = (Function0) obj4;
                ContextMenuColors contextMenuColors = (ContextMenuColors) obj;
                Composer composer11 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("item$lambda$0");
                if ((iIntValue8 & 6) == 0) {
                    iIntValue8 |= composer11.K(contextMenuColors) ? 4 : 2;
                }
                if (composer11.p(iIntValue8 & 1, (iIntValue8 & 19) != 18)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    String str8 = (String) function24.invoke(composer11, 0);
                    if (StringsKt.w(str8)) {
                        InlineClassHelperKt.c("Label must not be blank");
                    }
                    contextMenuScope.f4322a.q(dTFunctionNameModifier4, str8, Boolean.TRUE, contextMenuColors, function25, function26, composer11, Integer.valueOf((iIntValue8 << 9) & 7168));
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 11:
                return c(obj, obj2, obj3);
            case 12:
                return d(obj, obj2, obj3);
            case 13:
                return e(obj, obj2, obj3);
            case 14:
                return f(obj, obj2, obj3);
            case 15:
                return i(obj, obj2, obj3);
            case 16:
                return j(obj, obj2, obj3);
            case 17:
                return k(obj, obj2, obj3);
            case 18:
                return m(obj, obj2, obj3);
            case 19:
                return n(obj, obj2, obj3);
            case 20:
                return p(obj, obj2, obj3);
            case 21:
                return r(obj, obj2, obj3);
            case 22:
                return s(obj, obj2, obj3);
            case 23:
                return t(obj, obj2, obj3);
            case 24:
                return u(obj, obj2, obj3);
            case 25:
                return v(obj, obj2, obj3);
            case 26:
                return w(obj, obj2, obj3);
            case 27:
                return x(obj, obj2, obj3);
            default:
                ThankYouViewState thankYouViewState = (ThankYouViewState) obj7;
                LVModalBottomSheetState lVModalBottomSheetState2 = (LVModalBottomSheetState) obj6;
                MutableState mutableState3 = (MutableState) obj5;
                Function1 function27 = (Function1) obj4;
                Composer composer12 = (Composer) obj2;
                ((Integer) obj3).getClass();
                float f3 = ThankYouScreenKt.f65243a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                if (thankYouViewState instanceof ThankYouViewState.Success) {
                    composer12.L(-1306449601);
                    ThankYouViewState.Success success = (ThankYouViewState.Success) thankYouViewState;
                    CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel = success.f65301a;
                    ThankYouFeatureFlags thankYouFeatureFlags = success.d;
                    boolean zBooleanValue = ((Boolean) mutableState3.getF10755b()).booleanValue();
                    boolean zY10 = composer12.y(lVModalBottomSheetState2);
                    Object objX20 = composer12.x();
                    if (zY10 || objX20 == composer$Companion$Empty$1) {
                        objX20 = new t8(lVModalBottomSheetState2, 24);
                        composer12.q(objX20);
                    }
                    Function0 function28 = (Function0) objX20;
                    boolean zK11 = composer12.K(mutableState3);
                    Object objX21 = composer12.x();
                    if (zK11 || objX21 == composer$Companion$Empty$1) {
                        objX21 = new v11(3, mutableState3);
                        composer12.q(objX21);
                    }
                    ThankYouScreenKt.i(checkoutConfirmationDetailUiModel, thankYouFeatureFlags, lVModalBottomSheetState2, zBooleanValue, function28, (Function0) objX21, function27, composer12, LVModalBottomSheetState.f48797e << 6);
                    composer12.F();
                } else if (thankYouViewState instanceof ThankYouViewState.Error) {
                    Modifier modifierH2 = pq0.h(1.0f, -1305679840, composer12, "ThankYouScreen$lambda$13$6$3");
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA4 = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer12, 48);
                    int iHashCode5 = Long.hashCode(composer12.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer12.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer12, modifierH2);
                    ComposeUiNode.b0.getClass();
                    Function0 function29 = ComposeUiNode.Companion.f9641b;
                    if (composer12.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer12.B();
                    if (composer12.getS()) {
                        composer12.C(function29);
                    } else {
                        composer12.o();
                    }
                    Updater.c(composer12, columnMeasurePolicyA4, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer12, persistentCompositionLocalMapN5, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer12, Integer.valueOf(iHashCode5), ComposeUiNode.Companion.g);
                    Updater.b(composer12, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer12, modifierC5, ComposeUiNode.Companion.d);
                    String strC8 = StringResources_androidKt.c(composer12, R.string.checkout_confirmation_message_without_email);
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer12).g;
                    long j2 = LVAppDesignKitTheme.c(composer12).f48361b.f48382k;
                    TextAlign.f10959b.getClass();
                    TextKt.c(strC8, PaddingKt.k(n00.g("ThankYouScreen$lambda$13$6$3", "thankYou_thankYouDescription_text"), LVAppDesignKitTheme.l(composer12).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, composer12, 0, 0, 130040);
                    composer12.r();
                    composer12.F();
                } else {
                    composer12.L(-1304776500);
                    composer12.F();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ r(int i2, Object obj, Object obj2, Object obj3, Function0 function0) {
        this.f79203b = i2;
        this.d = obj;
        this.f79204c = function0;
        this.f79205e = obj2;
        this.f79206f = obj3;
    }

    public /* synthetic */ r(LVModalBottomSheetState lVModalBottomSheetState, MutableState mutableState, MutableState mutableState2, MutableState mutableState3) {
        this.f79203b = 18;
        this.d = lVModalBottomSheetState;
        this.f79206f = mutableState;
        this.f79205e = mutableState2;
        this.f79204c = mutableState3;
    }

    public /* synthetic */ r(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f79203b = i2;
        this.d = obj;
        this.f79205e = obj2;
        this.f79204c = obj3;
        this.f79206f = obj4;
    }

    public /* synthetic */ r(Object obj, Object obj2, Object obj3, Function function, int i2) {
        this.f79203b = i2;
        this.d = obj;
        this.f79205e = obj2;
        this.f79206f = obj3;
        this.f79204c = function;
    }

    public /* synthetic */ r(Function0 function0, CoroutineScope coroutineScope, PagerState pagerState, NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext) {
        this.f79203b = 17;
        this.f79204c = function0;
        this.d = coroutineScope;
        this.f79205e = pagerState;
        this.f79206f = nativeAuthenticationLayoutContext;
    }

    public /* synthetic */ r(Function2 function2, ContextMenuScope contextMenuScope, Function3 function3, Function0 function0) {
        this.f79203b = 10;
        this.d = function2;
        this.f79205e = contextMenuScope;
        this.f79206f = function3;
        this.f79204c = function0;
    }
}
