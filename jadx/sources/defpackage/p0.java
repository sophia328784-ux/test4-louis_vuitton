package defpackage;

import android.content.ClipboardManager;
import android.content.Context;
import android.content.res.Configuration;
import androidx.collection.MutableScatterSet;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.CompositingStrategy;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextMeasurer;
import androidx.compose.ui.text.TextMeasurerHelperKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.NavEntry;
import androidx.navigation3.runtime.NavEntryDecorator;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFadingTextKt;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.molecules.LVCapsulePageControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.common.editorial.components.carouselm.CarouselMKt;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.compose.NestedScroll;
import com.vuitton.android.presentation.compose.components.LVIconSelectorKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.calendar.CalendarEventUiModel;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.ProductTinyUiModel;
import com.vuitton.android.presentation.model.onboarding.IconLauncherType;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatHistoryUiModel;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.base.WebViewAuthChromeClient;
import com.vuitton.android.presentation.screen.authentication.base.WebViewAuthContentKt;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetKt;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialRegisterComposableKt;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterViewState;
import com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeComposableKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeViewState;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.details.components.bottomsheets.CancelWarningBottomSheetContentKt;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
import com.vuitton.android.presentation.screen.booking.list.models.BookingListViewState;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.ExperienceBottomSheet;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoRoutes;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.infoform.components.BookingInfoFormComposableKt;
import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import com.vuitton.android.presentation.screen.catalog.CatalogTracker;
import com.vuitton.android.presentation.screen.catalog.components.CatalogSubcategoryBottomSheetContentKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormState;
import com.vuitton.android.presentation.screen.certificates.components.add.AddCertificateComposableKt;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateScreenKt;
import com.vuitton.android.presentation.screen.certificates.components.visionnaire.CertificateVisionnaireContentKt;
import com.vuitton.android.presentation.screen.certificates.components.visionnaire.CertificateVisionnaireHeaderKt;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.model.AddCertificateUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateViewState;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentReceiveComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.feed.components.c;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.osa.OsaRoutes;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpVariationContainerKt;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ColorUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.RecommendationUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderResponseUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity;
import com.vuitton.android.presentation.screen.placesearch.components.PlaceSearchPageComposableKt;
import com.vuitton.android.presentation.screen.placesearch.models.PlacesUiModel;
import com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressBffComposableKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressComposableKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffItemKt;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceProductUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.android.presentation.screen.search.models.HistoryUiModel;
import com.vuitton.android.presentation.screen.storemode.filters.ProductFilterBottomSheetContentKt;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterViewState;
import com.vuitton.android.presentation.screen.webview.AnalyticsWebInterface;
import com.vuitton.android.presentation.security.AkamaiSecurityHelper;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceCategory;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.product.universal.VariationType;
import defpackage.q61;
import defpackage.qn;
import java.time.LocalDateTime;
import java.time.format.FormatStyle;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.Function;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class p0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f78713c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f78714e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f78715f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f78716h;

    public /* synthetic */ p0(LVModalBottomSheetState lVModalBottomSheetState, Function1 function1, HapticFeedback hapticFeedback, Function1 function2, MutableState mutableState, MutableState mutableState2) {
        this.f78712b = 13;
        this.f78714e = lVModalBottomSheetState;
        this.f78713c = function1;
        this.d = hapticFeedback;
        this.f78715f = function2;
        this.g = mutableState;
        this.f78716h = mutableState2;
    }

    private final Object a(Object obj, Object obj2, Object obj3) {
        CertificateVisionnaireUiModel certificateVisionnaireUiModel = (CertificateVisionnaireUiModel) this.d;
        Function0 function0 = (Function0) this.f78714e;
        String str = (String) this.f78715f;
        Function0 function1 = (Function0) this.g;
        Function0 function2 = (Function0) this.f78716h;
        Function1 function3 = (Function1) this.f78713c;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierH = PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("CertificateVisionnaireScreen$lambda$2"), LVAppDesignKitTheme.c(composer).f48361b.f48374a, RectangleShapeKt.f8913a).o(SizeKt.f5052c), paddingValues);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
            int iHashCode = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
            Modifier modifierC = ComposedModifierKt.c(composer, modifierH);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function4);
            } else {
                composer.o();
            }
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(composer, columnMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(composer, persistentCompositionLocalMapN, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(composer, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(composer, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(composer, modifierC, function9);
            CertificateVisionnaireHeaderKt.a(certificateVisionnaireUiModel.f55885e, function0, composer, 0);
            Modifier modifierD = ScrollKt.d(ColumnScopeInstance.f4944a.a(new DTFunctionNameModifier("CertificateVisionnaireScreen$lambda$2"), 1.0f, true), ScrollKt.b(composer), false, 14);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
            int iHashCode2 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
            Modifier modifierC2 = ComposedModifierKt.c(composer, modifierD);
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function4);
            } else {
                composer.o();
            }
            Updater.c(composer, columnMeasurePolicyA2, function5);
            Updater.c(composer, persistentCompositionLocalMapN2, function6);
            cj.s(iHashCode2, composer, function7, composer, function8);
            TextKt.c(certificateVisionnaireUiModel.d, ModifierExtKt.e(PaddingKt.m(a.f(composer, modifierC2, function9, "CertificateVisionnaireScreen$lambda$2"), LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, 4), "visionnaireDetails_title_text"), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48425e, composer, 0, 0, 131064);
            CertificateVisionnaireContentKt.a(certificateVisionnaireUiModel, str, function1, function2, composer, 0);
            composer.r();
            ContributionLinkUiModel contributionLinkUiModel = certificateVisionnaireUiModel.f55889j;
            if (contributionLinkUiModel == null) {
                composer.L(1410104310);
                composer.F();
            } else {
                composer.L(1410104311);
                Modifier modifierE = ModifierExtKt.e(PaddingKt.j(WindowInsetsPadding_androidKt.b(SizeKt.d(new DTFunctionNameModifier("CertificateVisionnaireScreen$lambda$2"), 1.0f)), LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48415c), "visionnaireDetails_bottomAction_button");
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer).f48446a;
                String strC = StringResources_androidKt.c(composer, R.string.certificate_details_view_journey_CTA);
                boolean zK = composer.K(function3) | composer.y(contributionLinkUiModel);
                Object objX = composer.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new lj(function3, contributionLinkUiModel, 4);
                    composer.q(objX);
                }
                LVButtonKt.b(0, 504, composer, modifierE, configurationButton, null, null, strC, (Function0) objX, false, false, false);
                composer.F();
            }
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v13, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r12v14, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r12v17, types: [java.util.ArrayList] */
    private final Object b(Object obj, Object obj2, Object obj3) {
        ?? Y0;
        Set set = (Set) this.d;
        Set set2 = (Set) this.f78714e;
        MutableState mutableState = (MutableState) this.g;
        List list = (List) this.f78715f;
        NavEntry navEntry = (NavEntry) this.f78716h;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zY = composer.y(set);
            Object obj4 = this.f78713c;
            boolean zY2 = composer.y(obj4) | zY | composer.y(set2) | composer.K(mutableState);
            Object objX = composer.x();
            if (zY2 || objX == Composer.Companion.f7939a) {
                k3 k3Var = new k3(8, set, obj4, set2, mutableState, false);
                composer.q(k3Var);
                objX = k3Var;
            }
            EffectsKt.c(obj4, (Function1) objX, composer);
            composer.L(358947325);
            if (list instanceof RandomAccess) {
                MutableScatterSet mutableScatterSet = new MutableScatterSet(list.size());
                Y0 = new ArrayList(list.size());
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Object obj5 = list.get(i2);
                    if (mutableScatterSet.d(obj5)) {
                        Y0.add(obj5);
                    }
                }
            } else {
                List list2 = list;
                list2.getClass();
                Y0 = CollectionsKt.y0(CollectionsKt.A0(list2));
            }
            if (!Y0.isEmpty()) {
                ListIterator listIterator = Y0.listIterator(Y0.size());
                while (listIterator.hasPrevious()) {
                    navEntry = new NavEntry(navEntry, ComposableLambdaKt.b(-330823412, new f1((NavEntryDecorator) listIterator.previous(), navEntry, 21), composer));
                }
            }
            composer.F();
            navEntry.a(composer, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object c(Object obj, Object obj2, Object obj3) {
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Composer composer;
        InAppDispatch inAppDispatch = (InAppDispatch) this.d;
        Function1 function1 = (Function1) this.f78713c;
        InAppDispatch inAppDispatch2 = (InAppDispatch) this.f78714e;
        Function1 function2 = (Function1) this.f78715f;
        Function1 function3 = (Function1) this.g;
        String str = (String) this.f78716h;
        Composer composer2 = (Composer) obj2;
        ((Integer) obj3).getClass();
        ((AnimatedVisibilityScope) obj).getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Modifier modifierD = tr.d("DispatchCountryItemView$lambda$0", 1.0f);
        boolean zY = composer2.y(inAppDispatch) | composer2.K(function1) | composer2.y(inAppDispatch2) | composer2.K(function2) | composer2.K(function3);
        Object objX = composer2.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
        if (zY || objX == composer$Companion$Empty$2) {
            yh yhVar = new yh(inAppDispatch, function1, inAppDispatch2, function2, function3, 4);
            composer2.q(yhVar);
            objX = yhVar;
        }
        Modifier modifierM = PaddingKt.m(ModifierExtKt.c(modifierD, false, null, null, (Function0) objX, 31), LVAppDesignKitTheme.l(composer2).f48417f, LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12);
        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
        Alignment.f8582a.getClass();
        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
        int iHashCode = Long.hashCode(composer2.getT());
        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
        Modifier modifierC = ComposedModifierKt.c(composer2, modifierM);
        ComposeUiNode.b0.getClass();
        Function0 function0 = ComposeUiNode.Companion.f9641b;
        if (composer2.getF7976a() == null) {
            ComposablesKt.b();
            throw null;
        }
        composer2.B();
        if (composer2.getS()) {
            composer2.C(function0);
        } else {
            composer2.o();
        }
        Function2 function4 = ComposeUiNode.Companion.f9644f;
        Updater.c(composer2, columnMeasurePolicyA, function4);
        Function2 function5 = ComposeUiNode.Companion.f9643e;
        Updater.c(composer2, persistentCompositionLocalMapN, function5);
        Integer numValueOf = Integer.valueOf(iHashCode);
        Function2 function6 = ComposeUiNode.Companion.g;
        Updater.c(composer2, numValueOf, function6);
        Function1 function7 = ComposeUiNode.Companion.f9645h;
        Updater.b(composer2, function7);
        Function2 function8 = ComposeUiNode.Companion.d;
        Modifier modifierC2 = n00.c(composer2, modifierC, function8, "DispatchCountryItemView$lambda$0", 1.0f);
        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, composer2, 6);
        int iHashCode2 = Long.hashCode(composer2.getT());
        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
        Modifier modifierC3 = ComposedModifierKt.c(composer2, modifierC2);
        if (composer2.getF7976a() == null) {
            ComposablesKt.b();
            throw null;
        }
        composer2.B();
        if (composer2.getS()) {
            composer2.C(function0);
        } else {
            composer2.o();
        }
        Updater.c(composer2, rowMeasurePolicyA, function4);
        Updater.c(composer2, persistentCompositionLocalMapN2, function5);
        cj.s(iHashCode2, composer2, function6, composer2, function7);
        Updater.c(composer2, modifierC3, function8);
        boolean z = inAppDispatch2.f67481h;
        RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
        if (z) {
            composer = composer2;
            composer$Companion$Empty$1 = composer$Companion$Empty$2;
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).F0, composer2, 0), null, PaddingKt.m(rowScopeInstance.b(pq0.j(1549847700, composer2, "DispatchCountryItemView$lambda$0"), Alignment.Companion.l), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), 0L, composer, 56, 8);
            composer.F();
        } else {
            composer$Companion$Empty$1 = composer$Companion$Empty$2;
            composer = composer2;
            composer.L(1550208633);
            composer.F();
        }
        Modifier modifierE = ModifierExtKt.e(rowScopeInstance.b(new DTFunctionNameModifier("DispatchCountryItemView$lambda$0"), Alignment.Companion.l), "dispatchCountry_country_text");
        boolean zY2 = composer.y(inAppDispatch2) | composer.K(str);
        Object objX2 = composer.x();
        if (zY2 || objX2 == composer$Companion$Empty$1) {
            objX2 = new vg(inAppDispatch2, str, 25);
            composer.q(objX2);
        }
        Composer composer3 = composer;
        TextKt.c(inAppDispatch2.f67480f, SemanticsModifierKt.b(modifierE, false, (Function1) objX2), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48429j, composer3, 0, 0, 131068);
        composer3.r();
        DividerKt.a(PaddingKt.m(new DTFunctionNameModifier("DispatchCountryItemView$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(composer3).f48361b.q, composer3, 0, 2);
        composer3.r();
        return Unit.f71739a;
    }

    private final Object d(Object obj, Object obj2, Object obj3) {
        boolean z;
        NestedScroll nestedScroll = (NestedScroll) this.d;
        HistoryUiModel historyUiModel = (HistoryUiModel) this.f78714e;
        Function2 function2 = (Function2) this.f78715f;
        Function1 function1 = (Function1) this.f78713c;
        Function0 function0 = (Function0) this.g;
        LinearGradient linearGradient = (LinearGradient) this.f78716h;
        Composer composer = (Composer) obj2;
        ((Integer) obj3).getClass();
        ((AnimatedVisibilityScope) obj).getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Modifier modifierD = tr.d("HistoryComposable$lambda$0", 1.0f);
        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
        Alignment.f8582a.getClass();
        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer, 0);
        int iHashCode = Long.hashCode(composer.getT());
        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
        Modifier modifierC = ComposedModifierKt.c(composer, modifierD);
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
        Modifier modifierM = PaddingKt.m(PaddingKt.k(n00.c(composer, modifierC, function8, "HistoryComposable$lambda$0", 1.0f), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, composer, 54);
        int iHashCode2 = Long.hashCode(composer.getT());
        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
        Modifier modifierC2 = ComposedModifierKt.c(composer, modifierM);
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
        Updater.c(composer, rowMeasurePolicyA, function4);
        Updater.c(composer, persistentCompositionLocalMapN2, function5);
        cj.s(iHashCode2, composer, function6, composer, function7);
        DTFunctionNameModifier dTFunctionNameModifierF = a.f(composer, modifierC2, function8, "HistoryComposable$lambda$0");
        Object objX = composer.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (objX == composer$Companion$Empty$1) {
            objX = new dy(21);
            composer.q(objX);
        }
        Modifier modifierE = ModifierExtKt.e(SemanticsModifierKt.b(dTFunctionNameModifierF, false, (Function1) objX), "searchHistory_title_text");
        TextKt.c(StringResources_androidKt.c(composer, R.string.search_historic_Title), modifierE, LVAppDesignKitTheme.c(composer).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48425e, composer, 0, 0, 131064);
        LVLinkKt.a(n00.g("HistoryComposable$lambda$0", "searchHistory_clear_button"), StringResources_androidKt.c(composer, R.string.search_historic_clear), false, LVColorScheme.INVERT, false, function0, composer, 3072, 20);
        composer.r();
        Modifier modifierA = NestedScrollModifierKt.a(SizeKt.d(new DTFunctionNameModifier("HistoryComposable$lambda$0"), 1.0f), nestedScroll, null);
        CompositingStrategy.f8875a.getClass();
        Modifier modifierC3 = GraphicsLayerModifierKt.c(modifierA, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, CompositingStrategy.f8876b, 458751);
        Object objX2 = composer.x();
        if (objX2 == composer$Companion$Empty$1) {
            z = false;
            objX2 = new l10(linearGradient, 0);
            composer.q(objX2);
        } else {
            z = false;
        }
        Modifier modifierD2 = DrawModifierKt.d(modifierC3, (Function1) objX2);
        boolean zY = composer.y(historyUiModel);
        Object objX3 = composer.x();
        if (zY || objX3 == composer$Companion$Empty$1) {
            objX3 = new l00(historyUiModel, 3);
            composer.q(objX3);
        }
        Modifier modifierB = SemanticsModifierKt.b(modifierD2, z, (Function1) objX3);
        boolean zY2 = composer.y(historyUiModel) | composer.K(function2) | composer.K(function1);
        Object objX4 = composer.x();
        if (zY2 || objX4 == composer$Companion$Empty$1) {
            objX4 = new jx(historyUiModel, function2, function1, 3);
            composer.q(objX4);
        }
        LazyDslKt.a(modifierB, null, null, null, null, null, false, null, (Function1) objX4, composer, 0, 510);
        composer.r();
        return Unit.f71739a;
    }

    private final Object e(Object obj, Object obj2, Object obj3) {
        LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) this.f78714e;
        Function1 function1 = (Function1) this.f78713c;
        HapticFeedback hapticFeedback = (HapticFeedback) this.d;
        Function1 function2 = (Function1) this.f78715f;
        MutableState mutableState = (MutableState) this.g;
        MutableState mutableState2 = (MutableState) this.f78716h;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        boolean z = true;
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierH = PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("MyIconsScreen$lambda$7").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer).f48361b.f48375b, RectangleShapeKt.f8913a), paddingValues);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$SpaceBetween$1, Alignment.Companion.n, composer, 6);
            int iHashCode = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
            Modifier modifierC = ComposedModifierKt.c(composer, modifierH);
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
            Updater.c(composer, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
            Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(composer, ComposeUiNode.Companion.f9645h);
            Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
            Modifier modifierM = PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48417f, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.q;
            IconLauncherType iconLauncherType = (IconLauncherType) mutableState.getF10755b();
            boolean zY = composer.y(hapticFeedback);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new rs(hapticFeedback, mutableState, 29);
                composer.q(objX);
            }
            LVIconSelectorKt.a(modifierM, (Function2) objX, j2, iconLauncherType, null, null, composer, 0, 48);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer).f48446a;
            Modifier modifierM2 = PaddingKt.m(tr.d("MyIconsScreen$lambda$7", 1.0f), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48417f, 2);
            String strC = StringResources_androidKt.c(composer, R.string.my_icons_cta);
            if (((IconLauncherType) mutableState2.getF10755b()) != null && ((IconLauncherType) mutableState.getF10755b()) == ((IconLauncherType) mutableState2.getF10755b())) {
                z = false;
            }
            boolean zK = composer.K(function2) | composer.y(lVModalBottomSheetState);
            Object objX2 = composer.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new qd0(function2, lVModalBottomSheetState, mutableState);
                composer.q(objX2);
            }
            LVButtonKt.b(0, 376, composer, modifierM2, configurationButton, null, null, strC, (Function0) objX2, false, z, false);
            composer.r();
            if (lVModalBottomSheetState.a()) {
                composer.L(-1276266555);
                String strC2 = StringResources_androidKt.c(composer, R.string.alt_close);
                boolean zK2 = composer.K(function1);
                Object objX3 = composer.x();
                if (zK2 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new o8(function1, mutableState, 7);
                    composer.q(objX3);
                }
                LVModalBottomSheetKt.b(null, strC2, (Function0) objX3, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(-1915660457, new rd0(lVModalBottomSheetState, function1, mutableState, 0), composer), composer, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                composer.F();
            } else {
                composer.L(-1275682918);
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object f(Object obj, Object obj2, Object obj3) {
        OsaLocationFormViewModel osaLocationFormViewModel = (OsaLocationFormViewModel) this.d;
        Function1 function1 = (Function1) this.f78713c;
        Function0 function0 = (Function0) this.f78714e;
        Function0 function2 = (Function0) this.f78715f;
        NavBackStack navBackStack = (NavBackStack) this.g;
        Function0 function3 = (Function0) this.f78716h;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((OsaRoutes.Login) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(osaLocationFormViewModel.R0(), composer);
            TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.OSA;
            boolean zY = composer.y(osaLocationFormViewModel) | composer.K(function1);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new xj0(osaLocationFormViewModel, function1, 1);
                composer.q(objX);
            }
            Function0 function4 = (Function0) objX;
            boolean zY2 = composer.y(osaLocationFormViewModel) | composer.K(function0);
            Object objX2 = composer.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new rh0(osaLocationFormViewModel, function0, 12);
                composer.q(objX2);
            }
            SocialLoginBottomSheetState socialLoginBottomSheetStateB = SocialLoginBottomSheetKt.b(trackingAuthOrigin, function4, (Function0) objX2, function2, null, composer, 6, 16);
            WelcomeViewState welcomeViewState = (WelcomeViewState) mutableStateB.getF10755b();
            boolean zY3 = composer.y(osaLocationFormViewModel) | composer.y(navBackStack);
            Object objX3 = composer.x();
            if (zY3 || objX3 == composer$Companion$Empty$1) {
                objX3 = new rh0(osaLocationFormViewModel, navBackStack, 13);
                composer.q(objX3);
            }
            Function0 function5 = (Function0) objX3;
            boolean zY4 = composer.y(osaLocationFormViewModel);
            Object objX4 = composer.x();
            if (zY4 || objX4 == composer$Companion$Empty$1) {
                objX4 = new wj0(osaLocationFormViewModel, 2);
                composer.q(objX4);
            }
            WelcomeComposableKt.a(null, socialLoginBottomSheetStateB, welcomeViewState, true, function5, null, null, function3, (Function0) objX4, null, composer, 3072, 1233);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object i(Object obj, Object obj2, Object obj3) {
        ProductFilterViewState productFilterViewState = (ProductFilterViewState) this.d;
        Function0 function0 = (Function0) this.f78713c;
        LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) this.f78714e;
        Function0 function1 = (Function0) this.f78715f;
        Function2 function2 = (Function2) this.g;
        Function5 function5 = (Function5) this.f78716h;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((ColumnScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zK = composer.K(function0) | composer.y(lVModalBottomSheetState);
            Object objX = composer.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new t3(function0, lVModalBottomSheetState, 12);
                composer.q(objX);
            }
            ProductFilterBottomSheetContentKt.a(productFilterViewState, (Function0) objX, function1, function2, function5, composer, 0);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object j(Object obj, Object obj2, Object obj3) {
        ProductFilterViewState productFilterViewState = (ProductFilterViewState) this.d;
        Function0 function0 = (Function0) this.f78714e;
        Function1 function1 = (Function1) this.f78713c;
        Function0 function2 = (Function0) this.f78715f;
        Function2 function3 = (Function2) this.g;
        Function5 function5 = (Function5) this.f78716h;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((ColumnScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zK = composer.K(function0) | composer.K(function1);
            Object objX = composer.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new wz(function0, function1, 7);
                composer.q(objX);
            }
            ProductFilterBottomSheetContentKt.a(productFilterViewState, (Function0) objX, function2, function3, function5, composer, 0);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object k(Object obj, Object obj2, Object obj3) {
        ProductUiModel productUiModel = (ProductUiModel) this.d;
        PdpViewState pdpViewState = (PdpViewState) this.f78713c;
        Function0 function0 = (Function0) this.f78714e;
        Function2 function2 = (Function2) this.f78715f;
        Function2 function3 = (Function2) this.g;
        Function2 function4 = (Function2) this.f78716h;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((LazyItemScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(tr.d("PdpMainView$lambda$3$0$3", 1.0f), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            String str = productUiModel.f61735b;
            boolean z = pdpViewState.f61571i.f61557e;
            boolean z2 = productUiModel.G && pdpViewState.o != null;
            Pair pairC = productUiModel.c();
            VariationType variationType = pairC != null ? (VariationType) pairC.f71705b : null;
            Pair pairC2 = productUiModel.c();
            PdpVariationContainerKt.a(modifierK, str, z, z2, variationType, pairC2 != null ? (List) pairC2.f71706c : null, productUiModel.m, productUiModel.b1, function0, function2, function3, function4, composer, 0);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object m(Object obj, Object obj2, Object obj3) {
        PlacesUiModel placesUiModel = (PlacesUiModel) this.d;
        Function2 function2 = (Function2) this.f78714e;
        Function1 function1 = (Function1) this.f78713c;
        PlaceSearchActivity.PlaceInfoType placeInfoType = (PlaceSearchActivity.PlaceInfoType) this.f78715f;
        String str = (String) this.g;
        Function0 function0 = (Function0) this.f78716h;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierE = o60.e("PlaceSearchScreen$lambda$2", paddingValues);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
            Modifier modifierC = ComposedModifierKt.c(composer, modifierE);
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
            Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
            Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(composer, ComposeUiNode.Companion.f9645h);
            Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
            PlaceSearchPageComposableKt.c(placesUiModel, function2, function1, placeInfoType, str, function0, composer, 0);
            if (placesUiModel.f62695b) {
                ProgressViewKt.a(PaddingKt.m(BoxScopeInstance.f4938a.g(pq0.j(-1375031216, composer, "PlaceSearchScreen$lambda$2"), Alignment.Companion.f8589i), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48421k, 7), 0L, false, composer, 0, 6);
                composer = composer;
                composer.F();
            } else {
                composer.L(-1374799615);
                composer.F();
            }
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object n(Object obj, Object obj2, Object obj3) {
        RepairsBffViewState repairsBffViewState = (RepairsBffViewState) this.d;
        AssessmentBffViewState assessmentBffViewState = (AssessmentBffViewState) this.f78713c;
        ContactUsUiModel contactUsUiModel = (ContactUsUiModel) this.f78714e;
        LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) this.f78715f;
        Function0 function0 = (Function0) this.g;
        Function0 function1 = (Function0) this.f78716h;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierH = PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("RepairsConfirmAddressBffScreen$lambda$3").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer).f48361b.f48375b, RectangleShapeKt.f8913a), paddingValues);
            boolean zY = composer.y(contactUsUiModel) | composer.y(lVModalBottomSheetState);
            Object objX = composer.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new qr0(contactUsUiModel, lVModalBottomSheetState, 0);
                composer.q(objX);
            }
            RepairConfirmAddressBffComposableKt.b(modifierH, repairsBffViewState, assessmentBffViewState, (Function0) objX, function0, function1, composer, 0);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object p(Object obj, Object obj2, Object obj3) {
        RepairsViewState repairsViewState = (RepairsViewState) this.d;
        AssessmentViewState assessmentViewState = (AssessmentViewState) this.f78713c;
        ContactUsUiModel contactUsUiModel = (ContactUsUiModel) this.f78714e;
        LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) this.f78715f;
        Function0 function0 = (Function0) this.g;
        Function0 function1 = (Function0) this.f78716h;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierH = PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("RepairsConfirmAddressScreen$lambda$3").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer).f48361b.f48375b, RectangleShapeKt.f8913a), paddingValues);
            boolean zY = composer.y(contactUsUiModel) | composer.y(lVModalBottomSheetState);
            Object objX = composer.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new qr0(contactUsUiModel, lVModalBottomSheetState, 1);
                composer.q(objX);
            }
            RepairConfirmAddressComposableKt.c(modifierH, repairsViewState, assessmentViewState, (Function0) objX, function0, function1, composer, 0);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object r(Object obj, Object obj2, Object obj3) {
        Function1 function1;
        Function0 function0;
        Function2 function2;
        Function2 function3;
        float f2;
        Function2 function4;
        Composer composer;
        Composer composer2;
        Function1 function5;
        RowScopeInstance rowScopeInstance;
        CareServiceCategory careServiceCategory;
        CareServiceCategory careServiceCategory2;
        int i2;
        int i3;
        CareServiceShortUiModel careServiceShortUiModel;
        String strG;
        AssetImageUiModel assetImageUiModel;
        AssetImageUiModel assetImageUiModel2;
        CareServiceShortUiModel careServiceShortUiModel2 = (CareServiceShortUiModel) this.d;
        Function1 function6 = (Function1) this.f78713c;
        Function1 function7 = (Function1) this.f78714e;
        Function1 function8 = (Function1) this.f78715f;
        Function0 function9 = (Function0) this.g;
        RepairsBffViewState repairsBffViewState = (RepairsBffViewState) this.f78716h;
        Composer composer3 = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((ColumnScope) obj).getClass();
        if (composer3.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(tr.d("RepairListBffItem$lambda$1", 1.0f), LVAppDesignKitTheme.c(composer3).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(composer3).f48416e);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer3, 0);
            int iHashCode = Long.hashCode(composer3.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
            Modifier modifierC = ComposedModifierKt.c(composer3, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function10 = ComposeUiNode.Companion.f9641b;
            if (composer3.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer3.B();
            if (composer3.getS()) {
                composer3.C(function10);
            } else {
                composer3.o();
            }
            Function2 function11 = ComposeUiNode.Companion.f9644f;
            Updater.c(composer3, columnMeasurePolicyA, function11);
            Function2 function12 = ComposeUiNode.Companion.f9643e;
            Updater.c(composer3, persistentCompositionLocalMapN, function12);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function13 = ComposeUiNode.Companion.g;
            Updater.c(composer3, numValueOf, function13);
            Function1 function14 = ComposeUiNode.Companion.f9645h;
            Updater.b(composer3, function14);
            Function2 function15 = ComposeUiNode.Companion.d;
            DTFunctionNameModifier dTFunctionNameModifierF = a.f(composer3, modifierC, function15, "RepairListBffItem$lambda$1");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = dTFunctionNameModifierF.o(fillElement);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, composer3, 0);
            int iHashCode2 = Long.hashCode(composer3.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
            Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierO);
            if (composer3.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer3.B();
            if (composer3.getS()) {
                composer3.C(function10);
            } else {
                composer3.o();
            }
            Updater.c(composer3, rowMeasurePolicyA, function11);
            Updater.c(composer3, persistentCompositionLocalMapN2, function12);
            cj.s(iHashCode2, composer3, function13, composer3, function14);
            Updater.c(composer3, modifierC2, function15);
            Modifier modifierA = ClipKt.a(SizeKt.o(new DTFunctionNameModifier("RepairListBffItem$lambda$1"), LVAppDesignKitTheme.d(composer3).D), LVAppDesignKitTheme.j(composer3).f48410b);
            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, composer3, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA2 = PainterModifierKt.a(modifierA, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode3 = Long.hashCode(composer3.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer3.n();
            Modifier modifierC3 = ComposedModifierKt.c(composer3, modifierA2);
            if (composer3.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer3.B();
            if (composer3.getS()) {
                composer3.C(function10);
            } else {
                composer3.o();
            }
            Updater.c(composer3, measurePolicyD, function11);
            Updater.c(composer3, persistentCompositionLocalMapN3, function12);
            cj.s(iHashCode3, composer3, function13, composer3, function14);
            Updater.c(composer3, modifierC3, function15);
            CareServiceProductUiModel careServiceProductUiModel = careServiceShortUiModel2.f64068i;
            CareServiceCategory careServiceCategory3 = careServiceShortUiModel2.f64066f;
            if (StringExtKt.a((careServiceProductUiModel == null || (assetImageUiModel2 = careServiceProductUiModel.d) == null) ? null : assetImageUiModel2.f51778b)) {
                composer3.L(-1450567601);
                Modifier modifierA3 = AspectRatioKt.a(new DTFunctionNameModifier("RepairListBffItem$lambda$1").o(fillElement), 1.0f, false);
                String str = (careServiceProductUiModel == null || (assetImageUiModel = careServiceProductUiModel.d) == null) ? null : assetImageUiModel.f51778b;
                if (str == null) {
                    str = "";
                }
                function2 = function12;
                function3 = function13;
                function1 = function14;
                function4 = function11;
                function0 = function10;
                f2 = 1.0f;
                ImageLoaderKt.b(modifierA3, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer3, 390, 2040);
                composer = composer3;
                composer.F();
            } else {
                function1 = function14;
                function0 = function10;
                function2 = function12;
                function3 = function13;
                f2 = 1.0f;
                function4 = function11;
                ImageKt.a(PainterResources_androidKt.a(2131230926, composer3, 0), null, AspectRatioKt.a(pq0.h(1.0f, -1450140948, composer3, "RepairListBffItem$lambda$1"), 1.0f, false), null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, composer3, 25016, 104);
                composer = composer3;
                composer.F();
            }
            composer.r();
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("RepairListBffItem$lambda$1");
            RowScopeInstance rowScopeInstance2 = RowScopeInstance.f5040a;
            Modifier modifierK = PaddingKt.k(rowScopeInstance2.a(dTFunctionNameModifier, f2, true), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
            int iHashCode4 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer.n();
            Modifier modifierC4 = ComposedModifierKt.c(composer, modifierK);
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
            Updater.c(composer, persistentCompositionLocalMapN4, function2);
            Function2 function16 = function3;
            Function1 function17 = function1;
            cj.s(iHashCode4, composer, function16, composer, function17);
            Updater.c(composer, modifierC4, function15);
            String str2 = careServiceProductUiModel != 0 ? careServiceProductUiModel.f64062c : null;
            if (str2 == null) {
                composer.L(798506349);
                composer.F();
                rowScopeInstance = rowScopeInstance2;
                function5 = function17;
                composer2 = composer;
            } else {
                composer2 = composer;
                function5 = function17;
                rowScopeInstance = rowScopeInstance2;
                TextKt.c(str2, PaddingKt.m(pq0.j(798506350, composer, "RepairListBffItem$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).m, composer2, 0, 0, 131064);
                composer2.F();
            }
            TextKt.c(careServiceShortUiModel2.f64064c, PaddingKt.m(new DTFunctionNameModifier("RepairListBffItem$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).m, composer2, 0, 0, 131064);
            Composer composer4 = composer2;
            CareServiceCategory careServiceCategory4 = CareServiceCategory.OnGoing;
            if (careServiceCategory3 == careServiceCategory4) {
                composer4.L(799484307);
                careServiceCategory2 = careServiceCategory3;
                careServiceCategory = careServiceCategory4;
                TextKt.c(careServiceShortUiModel2.g, null, LVAppDesignKitTheme.c(composer4).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer4).n, composer4, 0, 0, 131066);
                composer4 = composer4;
                composer4.F();
            } else {
                careServiceCategory = careServiceCategory4;
                careServiceCategory2 = careServiceCategory3;
                composer4.L(799746381);
                composer4.F();
            }
            composer4.r();
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer4).I, composer4, 0), null, SizeKt.o(rowScopeInstance.b(new DTFunctionNameModifier("RepairListBffItem$lambda$1"), vertical), LVAppDesignKitTheme.d(composer4).m), 0L, composer4, 56, 8);
            composer4.r();
            Modifier modifierM = PaddingKt.m(SizeKt.d(new DTFunctionNameModifier("RepairListBffItem$lambda$1"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, Alignment.Companion.l, composer4, 48);
            int iHashCode5 = Long.hashCode(composer4.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer4.n();
            Modifier modifierC5 = ComposedModifierKt.c(composer4, modifierM);
            if (composer4.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer4.B();
            if (composer4.getS()) {
                composer4.C(function0);
            } else {
                composer4.o();
            }
            Updater.c(composer4, rowMeasurePolicyA2, function4);
            Updater.c(composer4, persistentCompositionLocalMapN5, function2);
            cj.s(iHashCode5, composer4, function16, composer4, function5);
            Modifier modifierA4 = rowScopeInstance.a(a.f(composer4, modifierC5, function15, "RepairListBffItem$lambda$1"), 1.0f, true);
            CareServiceCategory careServiceCategory5 = careServiceCategory;
            if (careServiceCategory2 == careServiceCategory5) {
                i2 = 2119051566;
                i3 = R.string.dr_repair_date;
            } else {
                i2 = 2119154486;
                i3 = R.string.dr_delivered_on;
            }
            Composer composer5 = composer4;
            TextKt.c(o60.k(composer4, i2, i3, composer4), modifierA4, LVAppDesignKitTheme.c(composer4).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer4).m, composer5, 0, 0, 131064);
            if (careServiceCategory2 == careServiceCategory5) {
                InAppDispatch inAppDispatch = repairsBffViewState.f64083a;
                careServiceShortUiModel = careServiceShortUiModel2;
                long j2 = careServiceShortUiModel.f64070k;
                FormatStyle formatStyle = FormatStyle.LONG;
                strG = DateTimeUtils.g(inAppDispatch, j2);
            } else {
                careServiceShortUiModel = r6;
                Long l = careServiceShortUiModel.n;
                if (l == null && (l = careServiceShortUiModel.m) == null) {
                    l = careServiceShortUiModel.l;
                }
                if (l != null) {
                    long jLongValue = l.longValue();
                    InAppDispatch inAppDispatch2 = repairsBffViewState.f64083a;
                    FormatStyle formatStyle2 = FormatStyle.LONG;
                    strG = DateTimeUtils.g(inAppDispatch2, jLongValue);
                } else {
                    strG = " ";
                }
            }
            TextKt.c(strG, null, LVAppDesignKitTheme.c(composer5).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer5).m, composer5, 0, 0, 131066);
            composer5.r();
            RepairListBffItemKt.a(careServiceShortUiModel, function6, function7, function8, function9, composer5, 0);
            composer5.r();
        } else {
            composer3.D();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:42:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:44:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:47:0x023a  */
    /* JADX WARN: Code duplicated, block: B:52:0x0245  */
    /* JADX WARN: Code duplicated, block: B:54:0x0248  */
    /* JADX WARN: Code duplicated, block: B:55:0x024a A[PHI: r4
      0x024a: PHI (r4v9 java.lang.String) = (r4v8 java.lang.String), (r4v28 java.lang.String) binds: [B:46:0x0238, B:54:0x0248] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:56:0x024c  */
    /* JADX WARN: Code duplicated, block: B:59:0x0288  */
    /* JADX WARN: Code duplicated, block: B:62:0x0299  */
    /* JADX WARN: Code duplicated, block: B:63:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:66:0x030a  */
    /* JADX WARN: Code duplicated, block: B:67:0x032c  */
    /* JADX WARN: Code duplicated, block: B:69:0x0339  */
    private final Object s(Object obj, Object obj2, Object obj3) {
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapN;
        Modifier modifierC;
        ProductTinyUiModel productTinyUiModel;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        String str;
        String str2;
        float f2;
        Object objX;
        float f3;
        String str3;
        TryOnProductUiModel tryOnProductUiModel;
        String str4;
        ColorUiModel colorUiModel;
        ShadeFinderResponseUiModel shadeFinderResponseUiModel = (ShadeFinderResponseUiModel) this.d;
        List list = (List) this.f78713c;
        RecommendationUiModel recommendationUiModel = (RecommendationUiModel) this.f78714e;
        Context context = (Context) this.f78715f;
        PagerState pagerState = (PagerState) this.g;
        ShadeFinderViewState shadeFinderViewState = (ShadeFinderViewState) this.f78716h;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierH = PaddingKt.h(ScrollKt.d(tr.d("ShadeFinderResultScreen$lambda$0$8", 1.0f), ScrollKt.b(composer), false, 14), paddingValues);
            Object objX2 = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
            if (objX2 == composer$Companion$Empty$3) {
                objX2 = new av0(16);
                composer.q(objX2);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierH, false, (Function1) objX2);
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, composer, 48);
            int iHashCode2 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
            Modifier modifierC2 = ComposedModifierKt.c(composer, modifierB);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(composer, columnMeasurePolicyA2, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(composer, persistentCompositionLocalMapN2, function3);
            Integer numValueOf = Integer.valueOf(iHashCode2);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(composer, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(composer, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            DTFunctionNameModifier dTFunctionNameModifierF = a.f(composer, modifierC2, function5, "ShadeFinderResultScreen$lambda$0$8");
            Object objX3 = composer.x();
            if (objX3 == composer$Companion$Empty$3) {
                objX3 = new av0(17);
                composer.q(objX3);
            }
            boolean z = false;
            TextKt.c(shadeFinderResponseUiModel.f62173a, SemanticsModifierKt.b(dTFunctionNameModifierF, false, (Function1) objX3), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).l, composer, 0, 0, 131064);
            if (list.size() > 1) {
                z = true;
            }
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ShadeFinderResultScreen$lambda$0$8");
            boolean zY = composer.y(recommendationUiModel) | composer.y(context) | composer.K(pagerState);
            Object objX4 = composer.x();
            if (zY) {
                composer$Companion$Empty$1 = composer$Companion$Empty$3;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$3;
                if (objX4 == composer$Companion$Empty$1) {
                }
                Modifier modifierB2 = SemanticsModifierKt.b(dTFunctionNameModifier, true, (Function1) objX4);
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer, 48);
                iHashCode = Long.hashCode(composer.getT());
                persistentCompositionLocalMapN = composer.n();
                modifierC = ComposedModifierKt.c(composer, modifierB2);
                if (composer.getF7976a() != null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer.B();
                if (composer.getS()) {
                    composer.C(function0);
                } else {
                    composer.o();
                }
                Updater.c(composer, columnMeasurePolicyA, function2);
                Updater.c(composer, persistentCompositionLocalMapN, function3);
                cj.s(iHashCode, composer, function4, composer, function1);
                Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(PaddingKt.m(a.f(composer, modifierC, function5, "ShadeFinderResultScreen$lambda$0$8"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), null, null, 7);
                productTinyUiModel = recommendationUiModel.f62170a;
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                LVFadingTextKt.a(modifierA, productTinyUiModel.f51791b, LVAppDesignKitTheme.n(composer).f48425e, LVAppDesignKitTheme.c(composer).f48361b.f48382k, null, composer, ImageMetadata.EDGE_MODE, 16);
                Modifier modifierA2 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(PaddingKt.m(new DTFunctionNameModifier("ShadeFinderResultScreen$lambda$0$8"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), null, null, 7);
                str = productTinyUiModel.g;
                if (str != null) {
                    str2 = str;
                } else {
                    tryOnProductUiModel = recommendationUiModel.f62172c;
                    if (tryOnProductUiModel != null || (colorUiModel = tryOnProductUiModel.g) == null) {
                        str4 = null;
                    } else {
                        str4 = colorUiModel.f62159a;
                    }
                    if (str4 == null) {
                        str = "";
                        str2 = str;
                    } else {
                        str2 = str4;
                    }
                }
                LVFadingTextKt.a(modifierA2, str2, LVAppDesignKitTheme.n(composer).f48425e, LVAppDesignKitTheme.c(composer).f48361b.f48382k, null, composer, ImageMetadata.EDGE_MODE, 16);
                SpacerKt.a(composer, SizeKt.f(new DTFunctionNameModifier("ShadeFinderResultScreen$lambda$0$8"), LVAppDesignKitTheme.l(composer).g));
                f2 = ((Configuration) composer.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
                Dp.Companion companion = Dp.f11004c;
                objX = composer.x();
                if (objX == composer$Companion$Empty$2) {
                    objX = new Dp(f2 * 0.75f);
                    composer.q(objX);
                }
                f3 = ((Dp) objX).f11006b;
                if (z) {
                    composer.L(121411384);
                    boolean z2 = shadeFinderViewState.f62181e;
                    str3 = "ShadeFinderResultScreen$lambda$0$8";
                    ShadeFinderResultScreenKt.a(pagerState, list, f3, z2, composer, KyberEngine.KyberPolyBytes);
                    pagerState = pagerState;
                    composer.F();
                } else {
                    str3 = "ShadeFinderResultScreen$lambda$0$8";
                    composer.L(121763544);
                    ShadeFinderResultScreenKt.b(f3, 48, composer, productTinyUiModel.f51792c.f51778b);
                    composer.F();
                }
                composer.r();
                Modifier modifierL = PaddingKt.l(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer).f48420j, LVAppDesignKitTheme.l(composer).g, LVAppDesignKitTheme.l(composer).f48420j, LVAppDesignKitTheme.l(composer).f48416e);
                String str5 = recommendationUiModel.f62171b;
                TextStyle textStyle = LVAppDesignKitTheme.n(composer).g;
                long j2 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
                TextAlign.f10959b.getClass();
                LVFadingTextKt.a(modifierL, str5, textStyle, j2, new TextAlign(TextAlign.f10961e), composer, ImageMetadata.EDGE_MODE, 0);
                if (z) {
                    LVCapsulePageControlKt.a(PaddingKt.k(pq0.j(984726214, composer, str3), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).g, 1), pagerState, LVColorScheme.DEFAULT, false, composer, KyberEngine.KyberPolyBytes, 8);
                    composer.F();
                } else {
                    composer.L(985011631);
                    composer.F();
                }
                composer.r();
            }
            objX4 = new cl0(recommendationUiModel, context, pagerState, 11);
            composer.q(objX4);
            Modifier modifierB3 = SemanticsModifierKt.b(dTFunctionNameModifier, true, (Function1) objX4);
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer, 48);
            iHashCode = Long.hashCode(composer.getT());
            persistentCompositionLocalMapN = composer.n();
            modifierC = ComposedModifierKt.c(composer, modifierB3);
            if (composer.getF7976a() != null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function0);
            } else {
                composer.o();
            }
            Updater.c(composer, columnMeasurePolicyA, function2);
            Updater.c(composer, persistentCompositionLocalMapN, function3);
            cj.s(iHashCode, composer, function4, composer, function1);
            Modifier modifierA3 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(PaddingKt.m(a.f(composer, modifierC, function5, "ShadeFinderResultScreen$lambda$0$8"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), null, null, 7);
            productTinyUiModel = recommendationUiModel.f62170a;
            composer$Companion$Empty$2 = composer$Companion$Empty$1;
            LVFadingTextKt.a(modifierA3, productTinyUiModel.f51791b, LVAppDesignKitTheme.n(composer).f48425e, LVAppDesignKitTheme.c(composer).f48361b.f48382k, null, composer, ImageMetadata.EDGE_MODE, 16);
            Modifier modifierA4 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(PaddingKt.m(new DTFunctionNameModifier("ShadeFinderResultScreen$lambda$0$8"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), null, null, 7);
            str = productTinyUiModel.g;
            if (str != null) {
                str2 = str;
            } else {
                tryOnProductUiModel = recommendationUiModel.f62172c;
                if (tryOnProductUiModel != null) {
                    str4 = null;
                } else {
                    str4 = null;
                }
                if (str4 == null) {
                    str = "";
                    str2 = str;
                } else {
                    str2 = str4;
                }
            }
            LVFadingTextKt.a(modifierA4, str2, LVAppDesignKitTheme.n(composer).f48425e, LVAppDesignKitTheme.c(composer).f48361b.f48382k, null, composer, ImageMetadata.EDGE_MODE, 16);
            SpacerKt.a(composer, SizeKt.f(new DTFunctionNameModifier("ShadeFinderResultScreen$lambda$0$8"), LVAppDesignKitTheme.l(composer).g));
            f2 = ((Configuration) composer.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
            Dp.Companion companion2 = Dp.f11004c;
            objX = composer.x();
            if (objX == composer$Companion$Empty$2) {
                objX = new Dp(f2 * 0.75f);
                composer.q(objX);
            }
            f3 = ((Dp) objX).f11006b;
            if (z) {
                composer.L(121411384);
                boolean z3 = shadeFinderViewState.f62181e;
                str3 = "ShadeFinderResultScreen$lambda$0$8";
                ShadeFinderResultScreenKt.a(pagerState, list, f3, z3, composer, KyberEngine.KyberPolyBytes);
                pagerState = pagerState;
                composer.F();
            } else {
                str3 = "ShadeFinderResultScreen$lambda$0$8";
                composer.L(121763544);
                ShadeFinderResultScreenKt.b(f3, 48, composer, productTinyUiModel.f51792c.f51778b);
                composer.F();
            }
            composer.r();
            Modifier modifierL2 = PaddingKt.l(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer).f48420j, LVAppDesignKitTheme.l(composer).g, LVAppDesignKitTheme.l(composer).f48420j, LVAppDesignKitTheme.l(composer).f48416e);
            String str6 = recommendationUiModel.f62171b;
            TextStyle textStyle2 = LVAppDesignKitTheme.n(composer).g;
            long j3 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
            TextAlign.f10959b.getClass();
            LVFadingTextKt.a(modifierL2, str6, textStyle2, j3, new TextAlign(TextAlign.f10961e), composer, ImageMetadata.EDGE_MODE, 0);
            if (z) {
                LVCapsulePageControlKt.a(PaddingKt.k(pq0.j(984726214, composer, str3), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).g, 1), pagerState, LVColorScheme.DEFAULT, false, composer, KyberEngine.KyberPolyBytes, 8);
                composer.F();
            } else {
                composer.L(985011631);
                composer.F();
            }
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object t(Object obj, Object obj2, Object obj3) {
        Modifier modifier = (Modifier) this.d;
        Function2 function2 = (Function2) this.f78713c;
        State state = (State) this.f78714e;
        Function0 function0 = (Function0) this.f78715f;
        Function0 function1 = (Function0) this.g;
        Function0 function3 = (Function0) this.f78716h;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        Modifier modifierO = modifier.o(new DTFunctionNameModifier("SocialRegisterLayout$lambda$9"));
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO2 = new DTFunctionNameModifier("SocialRegisterLayout$lambda$9").o(SizeKt.f5052c);
            Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierK = PaddingKt.k(PaddingKt.h(WindowInsetsPadding_androidKt.b(PainterModifierKt.a(modifierO2, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54)), paddingValues), LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer, 0);
            int iHashCode = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
            Modifier modifierC = ComposedModifierKt.c(composer, modifierK);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function4);
            } else {
                composer.o();
            }
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(composer, columnMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(composer, persistentCompositionLocalMapN, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(composer, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(composer, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Modifier modifierD = SizeKt.d(PaddingKt.m(a.f(composer, modifierC, function9, "SocialRegisterLayout$lambda$9"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
            Modifier modifierC2 = ComposedModifierKt.c(composer, modifierD);
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function4);
            } else {
                composer.o();
            }
            Updater.c(composer, measurePolicyD, function5);
            Updater.c(composer, persistentCompositionLocalMapN2, function6);
            cj.s(iHashCode2, composer, function7, composer, function8);
            Updater.c(composer, modifierC2, function9);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer).q, composer, 0), StringResources_androidKt.c(composer, R.string.close), ModifierExtKt.c(BoxScopeInstance.f4938a.g(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("SocialRegisterLayout$lambda$9"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.d(composer).o), Alignment.Companion.g), false, null, null, function3, 31), LVAppDesignKitTheme.c(composer).f48361b.m, composer, 8, 0);
            composer.r();
            Modifier modifierD2 = SizeKt.d(PaddingKt.k(PaddingKt.m(modifierO, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, Alignment.Companion.o, composer, 48);
            int iHashCode3 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer.n();
            Modifier modifierC3 = ComposedModifierKt.c(composer, modifierD2);
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function4);
            } else {
                composer.o();
            }
            Updater.c(composer, columnMeasurePolicyA2, function5);
            Updater.c(composer, persistentCompositionLocalMapN3, function6);
            cj.s(iHashCode3, composer, function7, composer, function8);
            Updater.c(composer, modifierC3, function9);
            String strC = StringResources_androidKt.c(composer, R.string.mylv_authent_native_apple_complete_profile_title);
            TextStyle textStyle = LVAppDesignKitTheme.n(composer).f48426f;
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.m;
            TextAlign.f10959b.getClass();
            int i2 = TextAlign.f10961e;
            TextKt.c(strC, null, j2, 0L, null, 0L, null, new TextAlign(i2), 0L, 0, false, 0, 0, null, textStyle, composer, 0, 0, 130042);
            TextStyle textStyle2 = LVAppDesignKitTheme.n(composer).l;
            TextMeasurer textMeasurerA = TextMeasurerHelperKt.a(composer);
            boolean zK = composer.K(textStyle2) | composer.K(textMeasurerA);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = Integer.valueOf((int) (TextMeasurer.a(textMeasurerA, "\n", textStyle2, 0L, 1020).f10554c & BodyPartID.bodyIdMax));
                composer.q(objX);
            }
            TextKt.c(StringResources_androidKt.c(composer, R.string.mylv_authent_native_apple_complete_profile_description), SizeKt.f(PaddingKt.m(new DTFunctionNameModifier("SocialRegisterLayout$lambda$9"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), ((Density) composer.k(CompositionLocalsKt.f10031h)).k1(((Number) objX).intValue())), LVAppDesignKitTheme.c(composer).f48361b.n, 0L, null, 0L, null, new TextAlign(i2), 0L, 0, false, 2, 0, null, textStyle2, composer, 0, 24576, 113656);
            composer.r();
            SocialRegisterViewState socialRegisterViewState = (SocialRegisterViewState) state.getF10755b();
            boolean zK2 = composer.K(state) | composer.K(function0);
            Object objX2 = composer.x();
            if (zK2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new jm0(function0, state, 29);
                composer.q(objX2);
            }
            SocialRegisterComposableKt.a(null, socialRegisterViewState, function2, (Function0) objX2, function1, composer, 0);
            composer.r();
            if (((SocialRegisterViewState) state.getF10755b()).d) {
                composer.L(1334717200);
                LVLoadingOverlayKt.a(false, composer, 0, 1);
                composer.F();
            } else {
                composer.L(1334757562);
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:195:0x068b  */
    /* JADX WARN: Code duplicated, block: B:196:0x0695  */
    /* JADX WARN: Code duplicated, block: B:199:0x06b4  */
    /* JADX WARN: Code duplicated, block: B:203:0x06ce  */
    /* JADX WARN: Code duplicated, block: B:260:0x09b2  */
    /* JADX WARN: Code duplicated, block: B:263:0x09d5  */
    /* JADX WARN: Code duplicated, block: B:266:0x09e2  */
    /* JADX WARN: Code duplicated, block: B:271:0x0a03  */
    /* JADX WARN: Code duplicated, block: B:274:0x0a17  */
    /* JADX WARN: Code duplicated, block: B:278:0x0a32  */
    /* JADX WARN: Code duplicated, block: B:292:0x0a78  */
    /* JADX WARN: Code duplicated, block: B:293:0x0aac  */
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Function2 function2;
        final HapticFeedback hapticFeedback;
        final MutableState mutableState;
        Function1 function1;
        Object obj4;
        final MutableState mutableState2;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        boolean zY;
        Object objX;
        Object objX2;
        MutableState mutableState3;
        boolean zK;
        Object objX3;
        boolean zK2;
        Object objX4;
        int i2;
        BookingUiModel bookingUiModel;
        boolean zY2;
        Object objX5;
        boolean zY3;
        Object objX6;
        Composer composer;
        FeedTab feedTab;
        CalendarEventUiModel calendarEventUiModel;
        int i3;
        int i4;
        int i5 = this.f78712b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
        Object obj5 = this.f78716h;
        Object obj6 = this.f78713c;
        Object obj7 = this.g;
        Object obj8 = this.f78715f;
        Object obj9 = this.f78714e;
        Object obj10 = null;
        Object obj11 = this.d;
        switch (i5) {
            case 0:
                HapticFeedback hapticFeedback2 = (HapticFeedback) obj11;
                final Function1 function3 = (Function1) obj6;
                final ChatHistoryUiModel chatHistoryUiModel = (ChatHistoryUiModel) obj9;
                AICompanionViewState aICompanionViewState = (AICompanionViewState) obj8;
                MutableState mutableState4 = (MutableState) obj7;
                ClipboardManager clipboardManager = (ClipboardManager) obj5;
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AICompanionHistoryScreen$lambda$5$0$0$0$0$0$1$1");
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function0);
                    } else {
                        composer2.o();
                    }
                    Function2 function4 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer2, columnMeasurePolicyA, function4);
                    Function2 function5 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer2, persistentCompositionLocalMapN, function5);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function6 = ComposeUiNode.Companion.g;
                    Updater.c(composer2, numValueOf, function6);
                    Function1 function7 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer2, function7);
                    Function2 function8 = ComposeUiNode.Companion.d;
                    Updater.c(composer2, modifierC, function8);
                    Modifier modifierE = ModifierExtKt.e(new DTFunctionNameModifier("AICompanionHistoryScreen$lambda$5$0$0$0$0$0$1$1"), "aiCompanion_historyDeleteConversation_button");
                    boolean zY4 = composer2.y(hapticFeedback2) | composer2.K(function3) | composer2.K(chatHistoryUiModel);
                    Object objX7 = composer2.x();
                    if (zY4 || objX7 == composer$Companion$Empty$3) {
                        final int i6 = 0;
                        function2 = function8;
                        hapticFeedback = hapticFeedback2;
                        mutableState = mutableState4;
                        function1 = function7;
                        objX7 = new Function0() { // from class: q0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i7 = i6;
                                MutableState mutableState5 = mutableState;
                                ChatHistoryUiModel chatHistoryUiModel2 = chatHistoryUiModel;
                                Function1 function9 = function3;
                                HapticFeedback hapticFeedback3 = hapticFeedback;
                                switch (i7) {
                                    case 0:
                                        HapticFeedbackType.f9193b.getClass();
                                        hapticFeedback3.a(PlatformHapticFeedbackType.f9196a);
                                        function9.invoke(chatHistoryUiModel2.f52899a);
                                        mutableState5.setValue(null);
                                        break;
                                    default:
                                        HapticFeedbackType.f9193b.getClass();
                                        hapticFeedback3.a(PlatformHapticFeedbackType.f9196a);
                                        function9.invoke(chatHistoryUiModel2.f52899a);
                                        mutableState5.setValue(null);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX7);
                    } else {
                        hapticFeedback = hapticFeedback2;
                        mutableState = mutableState4;
                        function1 = function7;
                        function2 = function8;
                    }
                    Modifier modifierI = PaddingKt.i(ModifierExtKt.c(modifierE, false, null, null, (Function0) objX7, 31), LVAppDesignKitTheme.l(composer2).f48416e);
                    BiasAlignment.Vertical vertical = Alignment.Companion.l;
                    MutableState mutableState5 = mutableState;
                    Composer$Companion$Empty$1 composer$Companion$Empty$4 = composer$Companion$Empty$3;
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(composer2).f48415c), vertical, composer2, 48);
                    int iHashCode2 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierI);
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function0);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, rowMeasurePolicyA, function4);
                    Updater.c(composer2, persistentCompositionLocalMapN2, r68);
                    cj.s(iHashCode2, composer2, function6, composer2, function1);
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).o1, composer2, 0), null, SizeKt.o(a.f(composer2, modifierC2, function2, "AICompanionHistoryScreen$lambda$5$0$0$0$0$0$1$1"), LVAppDesignKitTheme.d(composer2).m), LVAppDesignKitTheme.c(composer2).f48361b.x, composer2, 56, 0);
                    TextKt.c(StringResources_androidKt.c(composer2, R.string.menu_delete), null, LVAppDesignKitTheme.c(composer2).f48361b.x, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).f48426f, composer2, 0, 0, 131066);
                    composer2.r();
                    if (aICompanionViewState.g) {
                        DividerKt.a(PaddingKt.k(pq0.j(801260244, composer2, "AICompanionHistoryScreen$lambda$5$0$0$0$0$0$1$1"), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(composer2).f48361b.q, composer2, 0, 2);
                        DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("AICompanionHistoryScreen$lambda$5$0$0$0$0$0$1$1");
                        boolean zY5 = composer2.y(hapticFeedback) | composer2.K(function3) | composer2.K(chatHistoryUiModel);
                        Object objX8 = composer2.x();
                        if (zY5) {
                            final int i7 = 1;
                            mutableState2 = mutableState5;
                            composer$Companion$Empty$1 = composer$Companion$Empty$4;
                            obj4 = new Function0() { // from class: q0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i8 = i7;
                                    MutableState mutableState6 = mutableState2;
                                    ChatHistoryUiModel chatHistoryUiModel2 = chatHistoryUiModel;
                                    Function1 function9 = function3;
                                    HapticFeedback hapticFeedback3 = hapticFeedback;
                                    switch (i8) {
                                        case 0:
                                            HapticFeedbackType.f9193b.getClass();
                                            hapticFeedback3.a(PlatformHapticFeedbackType.f9196a);
                                            function9.invoke(chatHistoryUiModel2.f52899a);
                                            mutableState6.setValue(null);
                                            break;
                                        default:
                                            HapticFeedbackType.f9193b.getClass();
                                            hapticFeedback3.a(PlatformHapticFeedbackType.f9196a);
                                            function9.invoke(chatHistoryUiModel2.f52899a);
                                            mutableState6.setValue(null);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(obj4);
                        } else if (objX8 == composer$Companion$Empty$4) {
                            composer$Companion$Empty$4 = composer$Companion$Empty$4;
                            final int i8 = 1;
                            mutableState2 = mutableState5;
                            composer$Companion$Empty$1 = composer$Companion$Empty$4;
                            obj4 = new Function0() { // from class: q0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i9 = i8;
                                    MutableState mutableState6 = mutableState2;
                                    ChatHistoryUiModel chatHistoryUiModel2 = chatHistoryUiModel;
                                    Function1 function9 = function3;
                                    HapticFeedback hapticFeedback3 = hapticFeedback;
                                    switch (i9) {
                                        case 0:
                                            HapticFeedbackType.f9193b.getClass();
                                            hapticFeedback3.a(PlatformHapticFeedbackType.f9196a);
                                            function9.invoke(chatHistoryUiModel2.f52899a);
                                            mutableState6.setValue(null);
                                            break;
                                        default:
                                            HapticFeedbackType.f9193b.getClass();
                                            hapticFeedback3.a(PlatformHapticFeedbackType.f9196a);
                                            function9.invoke(chatHistoryUiModel2.f52899a);
                                            mutableState6.setValue(null);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(obj4);
                        } else {
                            composer$Companion$Empty$1 = composer$Companion$Empty$4;
                            obj4 = objX8;
                            mutableState2 = mutableState5;
                        }
                        Modifier modifierI2 = PaddingKt.i(ModifierExtKt.c(dTFunctionNameModifier2, false, null, null, (Function0) obj4, 31), LVAppDesignKitTheme.l(composer2).f48416e);
                        RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(composer2).f48415c), vertical, composer2, 48);
                        int iHashCode3 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                        Modifier modifierC3 = ComposedModifierKt.c(composer2, modifierI2);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function0);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, rowMeasurePolicyA2, function4);
                        Updater.c(composer2, persistentCompositionLocalMapN3, function5);
                        cj.s(iHashCode3, composer2, function6, composer2, function1);
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).G1, composer2, 0), null, SizeKt.o(a.f(composer2, modifierC3, function2, "AICompanionHistoryScreen$lambda$5$0$0$0$0$0$1$1"), LVAppDesignKitTheme.d(composer2).m), LVAppDesignKitTheme.c(composer2).f48361b.f48382k, composer2, 56, 0);
                        DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("AICompanionHistoryScreen$lambda$5$0$0$0$0$0$1$1");
                        boolean zY6 = composer2.y(hapticFeedback) | composer2.K(chatHistoryUiModel) | composer2.y(clipboardManager);
                        Object objX9 = composer2.x();
                        if (zY6 || objX9 == composer$Companion$Empty$1) {
                            r0 r0Var = new r0(hapticFeedback, chatHistoryUiModel, clipboardManager, mutableState2, 0);
                            composer2.q(r0Var);
                            objX9 = r0Var;
                        }
                        TextKt.c("Copier le session ID", ModifierExtKt.c(dTFunctionNameModifier3, false, null, null, (Function0) objX9, 31), LVAppDesignKitTheme.c(composer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).f48426f, composer2, 6, 0, 131064);
                        composer2 = composer2;
                        composer2.r();
                        composer2.F();
                    } else {
                        composer2.L(804300848);
                        composer2.F();
                    }
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 1:
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj11;
                AddCertificateUiModel addCertificateUiModel = (AddCertificateUiModel) obj9;
                Function1 function9 = (Function1) obj6;
                Function1 function10 = (Function1) obj8;
                Function0 function11 = (Function0) obj7;
                Function0 function12 = (Function0) obj5;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer3.K(paddingValues) ? 4 : 2;
                }
                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierK = PaddingKt.k(PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("AddCertificateScreen$lambda$3").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer3).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), paddingValues), LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$2, horizontal, composer3, 0);
                    int iHashCode4 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer3.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer3, modifierK);
                    ComposeUiNode.b0.getClass();
                    Function0 function13 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function13);
                    } else {
                        composer3.o();
                    }
                    Function2 function14 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer3, columnMeasurePolicyA2, function14);
                    Function2 function15 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer3, persistentCompositionLocalMapN4, function15);
                    Integer numValueOf2 = Integer.valueOf(iHashCode4);
                    Function2 function16 = ComposeUiNode.Companion.g;
                    Updater.c(composer3, numValueOf2, function16);
                    Function1 function17 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer3, function17);
                    Function2 function18 = ComposeUiNode.Companion.d;
                    TextKt.c(StringResources_androidKt.c(composer3, R.string.certificate_activation_form_step1_title), ModifierExtKt.e(PaddingKt.m(a.f(composer3, modifierC4, function18, "AddCertificateScreen$lambda$3"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48416e, 5), "certificateAdd_title_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).f48426f, composer3, 0, 0, 131068);
                    Modifier modifierB = BackgroundKt.b(tr.d("AddCertificateScreen$lambda$3", 1.0f), LVAppDesignKitTheme.c(composer3).f48361b.f48374a, LVAppDesignKitTheme.j(composer3).f48410b);
                    ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$2, horizontal, composer3, 0);
                    int iHashCode5 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer3.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer3, modifierB);
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function13);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, columnMeasurePolicyA3, function14);
                    Updater.c(composer3, persistentCompositionLocalMapN5, function15);
                    cj.s(iHashCode5, composer3, function16, composer3, function17);
                    Modifier modifierK2 = PaddingKt.k(n00.c(composer3, modifierC5, function18, "AddCertificateScreen$lambda$3", 1.0f), LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    ColumnMeasurePolicy columnMeasurePolicyA4 = ColumnKt.a(arrangement$Top$2, horizontal, composer3, 0);
                    int iHashCode6 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN6 = composer3.n();
                    Modifier modifierC6 = ComposedModifierKt.c(composer3, modifierK2);
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function13);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, columnMeasurePolicyA4, function14);
                    Updater.c(composer3, persistentCompositionLocalMapN6, function15);
                    cj.s(iHashCode6, composer3, function16, composer3, function17);
                    TextKt.c(StringResources_androidKt.c(composer3, R.string.certificate_activation_form_step1_subtitle), ModifierExtKt.e(PaddingKt.m(a.f(composer3, modifierC6, function18, "AddCertificateScreen$lambda$3"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "certificateAdd_instruction_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).f48427h, composer3, 0, 0, 131068);
                    Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("AddCertificateScreen$lambda$3"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    InAppDispatch inAppDispatch = addCertificateUiModel.f55785a;
                    boolean z = addCertificateUiModel.g;
                    CertificateFormState certificateFormState = addCertificateUiModel.f55787c;
                    String str = addCertificateUiModel.d;
                    boolean zY7 = composer3.y(lVModalBottomSheetState) | composer3.K(function11);
                    Object objX10 = composer3.x();
                    if (zY7) {
                        composer$Companion$Empty$2 = composer$Companion$Empty$3;
                    } else {
                        composer$Companion$Empty$2 = composer$Companion$Empty$3;
                        if (objX10 == composer$Companion$Empty$2) {
                        }
                        Function0 function19 = (Function0) objX10;
                        zY = composer3.y(lVModalBottomSheetState) | composer3.K(function12);
                        objX = composer3.x();
                        if (zY || objX == composer$Companion$Empty$2) {
                            objX = new t3(lVModalBottomSheetState, function12, 1);
                            composer3.q(objX);
                        }
                        AddCertificateComposableKt.i(modifierM, inAppDispatch, certificateFormState, str, function19, (Function0) objX, composer3, 0);
                        composer3.r();
                        objX2 = composer3.x();
                        if (objX2 == composer$Companion$Empty$2) {
                            objX2 = SnapshotStateKt.g(Boolean.FALSE);
                            composer3.q(objX2);
                        }
                        mutableState3 = (MutableState) objX2;
                        if (z) {
                            composer3.L(-638760988);
                            boolean zBooleanValue = ((Boolean) mutableState3.getF10755b()).booleanValue();
                            zK2 = composer3.K(function9);
                            objX4 = composer3.x();
                            if (!zK2 || objX4 == composer$Companion$Empty$2) {
                                i2 = 0;
                                objX4 = new x3(mutableState3, function9, 0);
                                composer3.q(objX4);
                            } else {
                                i2 = 0;
                            }
                            AddCertificateComposableKt.h(zBooleanValue, (Function1) objX4, composer3, i2);
                            composer3.F();
                        } else {
                            composer3.L(-638442897);
                            composer3.F();
                        }
                        zK = composer3.K(function10) | composer3.y(addCertificateUiModel);
                        objX3 = composer3.x();
                        if (zK || objX3 == composer$Companion$Empty$2) {
                            objX3 = new l0(function10, addCertificateUiModel, 1);
                            composer3.q(objX3);
                        }
                        AddCertificateComposableKt.a(0, composer3, (Function0) objX3, (z || ((Boolean) mutableState3.getF10755b()).booleanValue()) && ((Boolean) ((SnapshotMutableStateImpl) addCertificateUiModel.f55787c.f55685b).getF10755b()).booleanValue() && !addCertificateUiModel.f55788e);
                        composer3.r();
                        AddCertificateComposableKt.j(composer3, 0);
                        composer3.r();
                        if (lVModalBottomSheetState.a()) {
                            composer3.L(1634234660);
                            LVModalBottomSheetKt.b(null, StringResources_androidKt.c(composer3, R.string.alt_close), null, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(-251033672, new d3(addCertificateUiModel, 1), composer3), composer3, (LVModalBottomSheetState.f48797e << 9) | 100663296, 245);
                            composer3.F();
                        } else {
                            composer3.L(1634512699);
                            composer3.F();
                        }
                    }
                    objX10 = new t3(lVModalBottomSheetState, function11, 0);
                    composer3.q(objX10);
                    Function0 function110 = (Function0) objX10;
                    zY = composer3.y(lVModalBottomSheetState) | composer3.K(function12);
                    objX = composer3.x();
                    if (zY) {
                        objX = new t3(lVModalBottomSheetState, function12, 1);
                        composer3.q(objX);
                    } else {
                        objX = new t3(lVModalBottomSheetState, function12, 1);
                        composer3.q(objX);
                    }
                    AddCertificateComposableKt.i(modifierM, inAppDispatch, certificateFormState, str, function110, (Function0) objX, composer3, 0);
                    composer3.r();
                    objX2 = composer3.x();
                    if (objX2 == composer$Companion$Empty$2) {
                        objX2 = SnapshotStateKt.g(Boolean.FALSE);
                        composer3.q(objX2);
                    }
                    mutableState3 = (MutableState) objX2;
                    if (z) {
                        composer3.L(-638760988);
                        boolean zBooleanValue2 = ((Boolean) mutableState3.getF10755b()).booleanValue();
                        zK2 = composer3.K(function9);
                        objX4 = composer3.x();
                        if (zK2) {
                            i2 = 0;
                            objX4 = new x3(mutableState3, function9, 0);
                            composer3.q(objX4);
                        } else {
                            i2 = 0;
                            objX4 = new x3(mutableState3, function9, 0);
                            composer3.q(objX4);
                        }
                        AddCertificateComposableKt.h(zBooleanValue2, (Function1) objX4, composer3, i2);
                        composer3.F();
                    } else {
                        composer3.L(-638442897);
                        composer3.F();
                    }
                    zK = composer3.K(function10) | composer3.y(addCertificateUiModel);
                    objX3 = composer3.x();
                    if (zK) {
                        objX3 = new l0(function10, addCertificateUiModel, 1);
                        composer3.q(objX3);
                    } else {
                        objX3 = new l0(function10, addCertificateUiModel, 1);
                        composer3.q(objX3);
                    }
                    AddCertificateComposableKt.a(0, composer3, (Function0) objX3, (z || ((Boolean) mutableState3.getF10755b()).booleanValue()) && ((Boolean) ((SnapshotMutableStateImpl) addCertificateUiModel.f55787c.f55685b).getF10755b()).booleanValue() && !addCertificateUiModel.f55788e);
                    composer3.r();
                    AddCertificateComposableKt.j(composer3, 0);
                    composer3.r();
                    if (lVModalBottomSheetState.a()) {
                        composer3.L(1634234660);
                        LVModalBottomSheetKt.b(null, StringResources_androidKt.c(composer3, R.string.alt_close), null, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(-251033672, new d3(addCertificateUiModel, 1), composer3), composer3, (LVModalBottomSheetState.f48797e << 9) | 100663296, 245);
                        composer3.F();
                    } else {
                        composer3.L(1634512699);
                        composer3.F();
                    }
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 2:
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                AssessmentReceiveComponentKt.c((InAppDispatch) obj11, (List) obj9, (AddressUiModel) obj8, (Function1) obj6, (Function1) obj7, (Function1) obj5, (Composer) obj2, 0);
                return Unit.f71739a;
            case 3:
                SnackbarHostState snackbarHostState = (SnackbarHostState) obj11;
                MutableState mutableState6 = (MutableState) obj7;
                MutableState mutableState7 = (MutableState) obj6;
                BookingListViewModelImpl bookingListViewModelImpl = (BookingListViewModelImpl) obj9;
                String str2 = (String) obj8;
                MutableState mutableState8 = (MutableState) obj5;
                Composer composer4 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer4.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierD = tr.d("BookingDetailsComposable_8_sRg8k$lambda$17", 1.0f);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode7 = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN7 = composer4.n();
                    Modifier modifierC7 = ComposedModifierKt.c(composer4, modifierD);
                    ComposeUiNode.b0.getClass();
                    Function0 function20 = ComposeUiNode.Companion.f9641b;
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function20);
                    } else {
                        composer4.o();
                    }
                    Function2 function21 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer4, measurePolicyD, function21);
                    Function2 function22 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer4, persistentCompositionLocalMapN7, function22);
                    Integer numValueOf3 = Integer.valueOf(iHashCode7);
                    Function2 function23 = ComposeUiNode.Companion.g;
                    Updater.c(composer4, numValueOf3, function23);
                    Function1 function24 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer4, function24);
                    Function2 function25 = ComposeUiNode.Companion.d;
                    Updater.c(composer4, modifierC7, function25);
                    Modifier modifierD2 = tr.d("BookingDetailsComposable_8_sRg8k$lambda$17", 1.0f);
                    ColumnMeasurePolicy columnMeasurePolicyA5 = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer4, 0);
                    int iHashCode8 = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN8 = composer4.n();
                    Modifier modifierC8 = ComposedModifierKt.c(composer4, modifierD2);
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function20);
                    } else {
                        composer4.o();
                    }
                    Updater.c(composer4, columnMeasurePolicyA5, function21);
                    Updater.c(composer4, persistentCompositionLocalMapN8, function22);
                    cj.s(iHashCode8, composer4, function23, composer4, function24);
                    Updater.c(composer4, modifierC8, function25);
                    if (((ExperienceBottomSheet) mutableState6.getF10755b()) instanceof ExperienceBottomSheet.CancelWarning) {
                        composer4.L(-479390855);
                        for (Object obj12 : ((BookingListViewState) mutableState7.getF10755b()).d) {
                            String str3 = ((BookingUiModel) obj12).f54614a;
                            ExperienceBottomSheet experienceBottomSheet = (ExperienceBottomSheet) mutableState6.getF10755b();
                            experienceBottomSheet.getClass();
                            String str4 = ((ExperienceBottomSheet.CancelWarning) experienceBottomSheet).f54626a;
                            BookingId.Companion companion = BookingId.INSTANCE;
                            if (str3.equals(str4)) {
                                obj10 = obj12;
                                bookingUiModel = (BookingUiModel) obj10;
                                if (bookingUiModel == null) {
                                    composer4.L(-479166788);
                                    composer4.F();
                                } else {
                                    composer4.L(-479166787);
                                    BookingCTAState bookingCTAState = (BookingCTAState) mutableState8.getF10755b();
                                    zY2 = composer4.y(bookingListViewModelImpl) | composer4.K(str2);
                                    objX5 = composer4.x();
                                    if (zY2 || objX5 == composer$Companion$Empty$3) {
                                        objX5 = new l0(bookingListViewModelImpl, str2, 27);
                                        composer4.q(objX5);
                                    }
                                    Function0 function26 = (Function0) objX5;
                                    zY3 = composer4.y(bookingListViewModelImpl);
                                    objX6 = composer4.x();
                                    if (zY3 || objX6 == composer$Companion$Empty$3) {
                                        objX6 = new jf(bookingListViewModelImpl, 0);
                                        composer4.q(objX6);
                                    }
                                    CancelWarningBottomSheetContentKt.a(bookingUiModel, bookingCTAState, function26, (Function0) objX6, composer4, 0);
                                    composer4.F();
                                }
                                composer4.F();
                            }
                        }
                        bookingUiModel = (BookingUiModel) obj10;
                        if (bookingUiModel == null) {
                            composer4.L(-479166788);
                            composer4.F();
                        } else {
                            composer4.L(-479166787);
                            BookingCTAState bookingCTAState2 = (BookingCTAState) mutableState8.getF10755b();
                            zY2 = composer4.y(bookingListViewModelImpl) | composer4.K(str2);
                            objX5 = composer4.x();
                            if (zY2) {
                                objX5 = new l0(bookingListViewModelImpl, str2, 27);
                                composer4.q(objX5);
                            } else {
                                objX5 = new l0(bookingListViewModelImpl, str2, 27);
                                composer4.q(objX5);
                            }
                            Function0 function27 = (Function0) objX5;
                            zY3 = composer4.y(bookingListViewModelImpl);
                            objX6 = composer4.x();
                            if (zY3) {
                                objX6 = new jf(bookingListViewModelImpl, 0);
                                composer4.q(objX6);
                            } else {
                                objX6 = new jf(bookingListViewModelImpl, 0);
                                composer4.q(objX6);
                            }
                            CancelWarningBottomSheetContentKt.a(bookingUiModel, bookingCTAState2, function27, (Function0) objX6, composer4, 0);
                            composer4.F();
                        }
                        composer4.F();
                    } else {
                        composer4.L(-478685326);
                        composer4.F();
                    }
                    composer4.r();
                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("BookingDetailsComposable_8_sRg8k$lambda$17");
                    Alignment.f8582a.getClass();
                    LVSnackbarKt.a(BoxScopeInstance.f4938a.g(dTFunctionNameModifier4, Alignment.Companion.f8585c), snackbarHostState, composer4, 48, 0);
                    composer4.r();
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 4:
                BookingPersonalInfoViewModel bookingPersonalInfoViewModel = (BookingPersonalInfoViewModel) obj11;
                PrebookSummaryViewModel prebookSummaryViewModel = (PrebookSummaryViewModel) obj6;
                SnackbarHostState snackbarHostState2 = (SnackbarHostState) obj9;
                NavBackStack navBackStack = (NavBackStack) obj8;
                Function0 function28 = (Function0) obj7;
                Function0 function29 = (Function0) obj5;
                Composer composer5 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((BookingPersonalInfoRoutes.InfoForm) obj).getClass();
                if (composer5.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    boolean zY8 = composer5.y(navBackStack) | composer5.K(function28);
                    Object objX11 = composer5.x();
                    if (zY8 || objX11 == composer$Companion$Empty$3) {
                        objX11 = new y0(navBackStack, function28, 7);
                        composer5.q(objX11);
                    }
                    BookingInfoFormComposableKt.a(bookingPersonalInfoViewModel, prebookSummaryViewModel, snackbarHostState2, (Function0) objX11, function29, composer5, 0);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 5:
                CalendarEventUiModel calendarEventUiModel2 = (CalendarEventUiModel) obj11;
                FeedTracker feedTracker = (FeedTracker) obj6;
                FeedTab feedTab2 = (FeedTab) obj9;
                c cVar = (c) obj8;
                c cVar2 = (c) obj7;
                Function0 function30 = (Function0) obj5;
                Composer composer6 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer6.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    LocalDateTime localDateTime = calendarEventUiModel2.f51772i;
                    Boolean bool = calendarEventUiModel2.f51773j;
                    if (localDateTime != null) {
                        composer6.L(-1741640313);
                        TextKt.c(DateTimeUtils.i(DateTimeUtils.f65832a, calendarEventUiModel2.f51772i, false, 2), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("CalendarEventBottomSheetContent$lambda$0$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).f48416e, 7), "feedBottomSheet_calendarEventDate_text"), LVAppDesignKitTheme.c(composer6).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer6).g, composer6, 0, 0, 131064);
                        composer = composer6;
                        composer.F();
                    } else {
                        composer = composer6;
                        composer.L(-1741048864);
                        composer.F();
                    }
                    Boolean bool2 = Boolean.TRUE;
                    TextKt.c(StringResources_androidKt.c(composer, Intrinsics.c(bool, bool2) ? R.string.feed_card_notify_me_label : R.string.feed_card_notify_me_label_before_set), n00.g("CalendarEventBottomSheetContent$lambda$0$1", "feedBottomSheet_calendarEventDescription_text"), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).g, composer, 0, 0, 131064);
                    ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer).f48446a;
                    Modifier modifierE2 = ModifierExtKt.e(PaddingKt.k(tr.d("CalendarEventBottomSheetContent$lambda$0$1", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, 1), "feedBottomSheet_calendarEventAddToCalendar_button");
                    String strC = StringResources_androidKt.c(composer, R.string.feed_calendar_add_cta);
                    boolean zC = Intrinsics.c(bool, Boolean.FALSE);
                    boolean zY9 = composer.y(feedTracker) | composer.d(feedTab2 == null ? -1 : feedTab2.ordinal()) | composer.y(calendarEventUiModel2) | composer.K(cVar);
                    Object objX12 = composer.x();
                    if (zY9 || objX12 == composer$Companion$Empty$3) {
                        feedTab = feedTab2;
                        calendarEventUiModel = calendarEventUiModel2;
                        r0 r0Var2 = new r0(feedTracker, feedTab, calendarEventUiModel, cVar, 7);
                        composer.q(r0Var2);
                        objX12 = r0Var2;
                    } else {
                        feedTab = feedTab2;
                        calendarEventUiModel = calendarEventUiModel2;
                    }
                    Composer composer7 = composer;
                    LVButtonKt.b(0, 376, composer7, modifierE2, configurationButton, null, null, strC, (Function0) objX12, false, zC, false);
                    ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(composer7).f48449e;
                    Modifier modifierE3 = ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("CalendarEventBottomSheetContent$lambda$0$1"), 1.0f), "feedBottomSheet_calendarEventCancel_button");
                    if (Intrinsics.c(bool, bool2)) {
                        i3 = -1739448706;
                        i4 = R.string.feed_calendar_delete_cta;
                    } else {
                        i3 = -1739345538;
                        i4 = R.string.feed_calendar_cancel_cta;
                    }
                    String strK = o60.k(composer7, i3, i4, composer7);
                    boolean zY10 = composer7.y(calendarEventUiModel) | composer7.y(feedTracker) | composer7.d(feedTab != null ? feedTab.ordinal() : -1) | composer7.K(cVar2) | composer7.K(function30);
                    Object objX13 = composer7.x();
                    if (zY10 || objX13 == composer$Companion$Empty$3) {
                        yh yhVar = new yh(calendarEventUiModel, feedTracker, feedTab, cVar2, function30, 0);
                        composer7.q(yhVar);
                        objX13 = yhVar;
                    }
                    LVButtonKt.b(0, 504, composer7, modifierE3, configurationButton2, null, null, strK, (Function0) objX13, false, false, false);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 6:
                EditorialModuleUiModel.CarouselMUiModel carouselMUiModel = (EditorialModuleUiModel.CarouselMUiModel) obj11;
                List list = (List) obj9;
                A11ySettings a11ySettings = (A11ySettings) obj8;
                CatalogTracker catalogTracker = (CatalogTracker) obj7;
                String str5 = (String) obj5;
                Function1 function31 = (Function1) obj6;
                Composer composer8 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer8.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    Object objX14 = composer8.x();
                    if (objX14 == composer$Companion$Empty$3) {
                        objX14 = SnapshotStateKt.g(Boolean.TRUE);
                        composer8.q(objX14);
                    }
                    MutableState mutableState9 = (MutableState) objX14;
                    Modifier modifierG = n00.g("CatalogSubcategoryBottomSheetContent$lambda$0$0$1$0", "subcategory_carousel_view");
                    String str6 = carouselMUiModel.f50826b;
                    LVColorScheme lVColorScheme = LVColorScheme.DEFAULT;
                    boolean z2 = a11ySettings.f51775a;
                    boolean zBooleanValue3 = ((Boolean) mutableState9.getF10755b()).booleanValue();
                    boolean zY11 = composer8.y(catalogTracker) | composer8.K(str5) | composer8.K(function31);
                    Object objX15 = composer8.x();
                    if (zY11 || objX15 == composer$Companion$Empty$3) {
                        objX15 = new u((Object) catalogTracker, function31, (Object) str5, 19);
                        composer8.q(objX15);
                    }
                    Function2 function32 = (Function2) objX15;
                    boolean zY12 = composer8.y(catalogTracker) | composer8.K(str5);
                    Object objX16 = composer8.x();
                    if (zY12 || objX16 == composer$Companion$Empty$3) {
                        objX16 = new q(catalogTracker, str5, mutableState9, 21);
                        composer8.q(objX16);
                    }
                    CarouselMKt.a(modifierG, str6, list, lVColorScheme, z2, zBooleanValue3, function32, (Function0) objX16, composer8, 3072, 0);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 7:
                State state = (State) obj11;
                LazyListState lazyListState = (LazyListState) obj9;
                CategoryUiModel categoryUiModel = (CategoryUiModel) obj8;
                CatalogViewState catalogViewState = (CatalogViewState) obj7;
                Function1 function33 = (Function1) obj6;
                Function1 function34 = (Function1) obj5;
                Composer composer9 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer9.p(iIntValue7 & 1, (iIntValue7 & 17) != 16)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    Modifier modifierF = SizeKt.f(new DTFunctionNameModifier("CatalogSubcategoryScreen$lambda$14$0"), ((Dp) RangesKt.a(new Dp(((Dp) state.getF10755b()).f11006b), new Dp(LVAppDesignKitTheme.d(composer9).f48383a))).f11006b);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode9 = Long.hashCode(composer9.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN9 = composer9.n();
                    Modifier modifierC9 = ComposedModifierKt.c(composer9, modifierF);
                    ComposeUiNode.b0.getClass();
                    Function0 function35 = ComposeUiNode.Companion.f9641b;
                    if (composer9.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer9.B();
                    if (composer9.getS()) {
                        composer9.C(function35);
                    } else {
                        composer9.o();
                    }
                    Updater.c(composer9, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer9, persistentCompositionLocalMapN9, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer9, Integer.valueOf(iHashCode9), ComposeUiNode.Companion.g);
                    Updater.b(composer9, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer9, modifierC9, ComposeUiNode.Companion.d);
                    CatalogSubcategoryBottomSheetContentKt.a(lazyListState, categoryUiModel.f55366e, categoryUiModel.f55367f.f55361c, categoryUiModel.f55364b, catalogViewState.g, function33, function34, composer9, 0);
                    composer9.r();
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 8:
                CertificateViewState.Success success = (CertificateViewState.Success) obj11;
                Function1 function36 = (Function1) obj6;
                Function1 function37 = (Function1) obj9;
                Function0 function38 = (Function0) obj8;
                Function1 function39 = (Function1) obj7;
                Function2 function40 = (Function2) obj5;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer10 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((iIntValue8 & 6) == 0) {
                    iIntValue8 |= composer10.K(paddingValues2) ? 4 : 2;
                }
                if (composer10.p(1 & iIntValue8, (iIntValue8 & 19) != 18)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    CertificateScreenKt.a(PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("CertificateScreen$lambda$1").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer10).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), paddingValues2), success.f55880a, success.f55881b.f55836b, function36, function37, function38, function39, function40, composer10, 0);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 9:
                return a(obj, obj2, obj3);
            case 10:
                return b(obj, obj2, obj3);
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
            default:
                final AuthenticationViewModel authenticationViewModel = (AuthenticationViewModel) obj11;
                AkamaiSecurityHelper akamaiSecurityHelper = (AkamaiSecurityHelper) obj9;
                AnalyticsWebInterface analyticsWebInterface = (AnalyticsWebInterface) obj8;
                final Logger logger = (Logger) obj7;
                final Function1 function41 = (Function1) obj6;
                final String str7 = (String) obj5;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer11 = (Composer) obj2;
                int iIntValue9 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((iIntValue9 & 6) == 0) {
                    iIntValue9 |= composer11.K(paddingValues3) ? 4 : 2;
                }
                if (composer11.p(iIntValue9 & 1, (iIntValue9 & 19) != 18)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    boolean zY13 = composer11.y(logger) | composer11.y(authenticationViewModel) | composer11.K(function41) | composer11.K(str7);
                    Object objX17 = composer11.x();
                    if (zY13 || objX17 == composer$Companion$Empty$3) {
                        objX17 = new Function0() { // from class: com.vuitton.android.presentation.screen.authentication.login.legacy.b
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                AuthenticationViewModel authenticationViewModel2 = authenticationViewModel;
                                return new LoginWebViewClient(logger, new WebViewLoginScreenKt$WebViewLoginScreen$6$1$1$1(0, authenticationViewModel2, AuthenticationViewModel.class, "onWebViewPageStarted", "onWebViewPageStarted()V", 0), function41, str7, new q61(authenticationViewModel2, 0), new qn(26));
                            }
                        };
                        composer11.q(objX17);
                    }
                    Function0 function42 = (Function0) objX17;
                    boolean zY14 = composer11.y(logger) | composer11.y(authenticationViewModel);
                    Object objX18 = composer11.x();
                    if (zY14 || objX18 == composer$Companion$Empty$3) {
                        objX18 = new Function0() { // from class: com.vuitton.android.presentation.screen.authentication.login.legacy.c
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                AuthenticationViewModel authenticationViewModel2 = authenticationViewModel;
                                return new WebViewAuthChromeClient(logger, authenticationViewModel2.getD() && authenticationViewModel2.getC(), new WebViewLoginScreenKt$WebViewLoginScreen$6$2$1$1(0, authenticationViewModel2, AuthenticationViewModel.class, "onWebViewPageStarted", "onWebViewPageStarted()V", 0), new WebViewLoginScreenKt$WebViewLoginScreen$6$2$1$2(1, authenticationViewModel2, AuthenticationViewModel.class, "extractAndProcessKisaPayload", "extractAndProcessKisaPayload(Ljava/lang/String;)V", 0));
                            }
                        };
                        composer11.q(objX18);
                    }
                    WebViewAuthContentKt.a(authenticationViewModel, akamaiSecurityHelper, analyticsWebInterface, function42, (Function0) objX18, o60.e("WebViewLoginScreen$lambda$7", paddingValues3), composer11, 0);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ p0(SnackbarHostState snackbarHostState, MutableState mutableState, MutableState mutableState2, BookingListViewModelImpl bookingListViewModelImpl, String str, MutableState mutableState3) {
        this.f78712b = 3;
        this.d = snackbarHostState;
        this.g = mutableState;
        this.f78713c = mutableState2;
        this.f78714e = bookingListViewModelImpl;
        this.f78715f = str;
        this.f78716h = mutableState3;
    }

    public /* synthetic */ p0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, int i2) {
        this.f78712b = i2;
        this.d = obj;
        this.f78713c = obj2;
        this.f78714e = obj3;
        this.f78715f = obj4;
        this.g = obj5;
        this.f78716h = obj6;
    }

    public /* synthetic */ p0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Function1 function1, int i2) {
        this.f78712b = i2;
        this.d = obj;
        this.f78714e = obj2;
        this.f78715f = obj3;
        this.g = obj4;
        this.f78716h = obj5;
        this.f78713c = function1;
    }

    public /* synthetic */ p0(Object obj, Object obj2, Object obj3, Object obj4, Function1 function1, Object obj5, int i2) {
        this.f78712b = i2;
        this.d = obj;
        this.f78714e = obj2;
        this.f78715f = obj3;
        this.g = obj4;
        this.f78713c = function1;
        this.f78716h = obj5;
    }

    public /* synthetic */ p0(Object obj, Object obj2, Object obj3, Function1 function1, Function function, Object obj4, int i2) {
        this.f78712b = i2;
        this.d = obj;
        this.f78714e = obj2;
        this.f78715f = obj3;
        this.f78713c = function1;
        this.g = function;
        this.f78716h = obj4;
    }

    public /* synthetic */ p0(Object obj, Object obj2, Function1 function1, Object obj3, Object obj4, Function function, int i2) {
        this.f78712b = i2;
        this.d = obj;
        this.f78714e = obj2;
        this.f78713c = function1;
        this.f78715f = obj3;
        this.g = obj4;
        this.f78716h = function;
    }

    public /* synthetic */ p0(Set set, Object obj, Set set2, MutableState mutableState, List list, NavEntry navEntry) {
        this.f78712b = 10;
        this.d = set;
        this.f78713c = obj;
        this.f78714e = set2;
        this.g = mutableState;
        this.f78715f = list;
        this.f78716h = navEntry;
    }
}
