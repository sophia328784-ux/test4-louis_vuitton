package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
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
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.Autofill;
import androidx.compose.ui.autofill.AutofillNode;
import androidx.compose.ui.autofill.AutofillTree;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Html_androidKt;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVRadioButtonBlockKt;
import com.vuitton.android.designkit.components.components.ZoomableContentScope;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.common.hotcontent.components.HotContentWidgetKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.components.LVNotificationKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.contact.compose.ContactUsIconKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.model.common.mapper.FeatureThemeMapperKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookContentKt;
import com.vuitton.android.presentation.screen.account.addressbook.models.AccountAddressUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.EditAvatarViewState;
import com.vuitton.android.presentation.screen.account.lvpass.components.TopBarQRCodeKt;
import com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideSwipeablePushCardKt;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import com.vuitton.android.presentation.screen.booking.personalinfo.infoform.components.BookingConflictBottomSheetContentKt;
import com.vuitton.android.presentation.screen.booking.summary.models.SummaryBottomSheet;
import com.vuitton.android.presentation.screen.cart.components.sections.NativeCartReinsuranceKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormState;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateComposableKt;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateListItemsKt;
import com.vuitton.android.presentation.screen.certificates.components.transfer.CertificateTransferScreenKt;
import com.vuitton.android.presentation.screen.certificates.diamonds.transfer.model.CertificateTransferUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateCapucineData;
import com.vuitton.android.presentation.screen.certificates.model.CertificateCapucineUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateStatusUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentBottomSheetScreen;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import com.vuitton.android.presentation.screen.feed.components.FeedComposableKt;
import com.vuitton.android.presentation.screen.feed.components.bottomsheets.PermissionBottomSheetContentKt;
import com.vuitton.android.presentation.screen.feed.models.FeedViewState;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.uimodels.AudioGuideBannerUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.AssetArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSizeCardUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleViewState;
import com.vuitton.android.presentation.screen.mylv.MyLvViewModel;
import com.vuitton.android.presentation.screen.mylv.models.MyLvViewState;
import com.vuitton.android.presentation.screen.options.dispatch.components.DispatchComposableKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionScreenKt;
import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.orders.models.ProductExchangeCategoryUiModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListBottomSheetScreen;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewState;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.CancellationReasonsScreenKt;
import com.vuitton.android.presentation.screen.repairs.models.CancellationReasonUiModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeDataUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.BufferedChannelKt;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.selects.SelectInstance;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g1 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69246b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69247c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69248e;

    public /* synthetic */ g1(String str, String str2, Function1 function1) {
        this.f69246b = 22;
        this.d = str;
        this.f69247c = str2;
        this.f69248e = function1;
    }

    private final Object a(Object obj, Object obj2, Object obj3) {
        CertificateTransferUiModel certificateTransferUiModel = (CertificateTransferUiModel) this.f69247c;
        Function1 function1 = (Function1) this.d;
        MutableState mutableState = (MutableState) this.f69248e;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(PaddingKt.k(PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("CertificateTransferScreen$lambda$4").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer).f48361b.f48375b, RectangleShapeKt.f8913a), paddingValues), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), ScrollKt.b(composer), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer, 0);
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
            Updater.c(composer, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
            Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(composer, ComposeUiNode.Companion.f9645h);
            TextKt.c(StringResources_androidKt.c(composer, R.string.certificate_transfer_step2_title), ModifierExtKt.e(PaddingKt.m(a.f(composer, modifierC, ComposeUiNode.Companion.d, "CertificateTransferScreen$lambda$4"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "certificateTransfer_title_text"), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48426f, composer, 0, 0, 131064);
            CertificateTransferScreenKt.a(PaddingKt.m(new DTFunctionNameModifier("CertificateTransferScreen$lambda$4"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), certificateTransferUiModel.f55811a, (CertificateFormState) mutableState.getF10755b(), certificateTransferUiModel.f55812b, function1, composer, 0);
            TextKt.c(StringResources_androidKt.c(composer, R.string.my_certificate_help_contact), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("CertificateTransferScreen$lambda$4"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, 5), "certificateTransfer_contact_text"), LVAppDesignKitTheme.c(composer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).m, composer, 0, 0, 131064);
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object b(Object obj, Object obj2, Object obj3) {
        Function1 function1 = (Function1) this.f69247c;
        Function0 function0 = (Function0) this.f69248e;
        Function0 function2 = (Function0) this.d;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((ColumnScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierG = n00.g("DistantRepairFormBottomSheetLegal$lambda$0", "careservicesConsent_description_text");
            int i2 = AnnotatedString.f10418f;
            String strC = StringResources_androidKt.c(composer, R.string.dr_legal_text_request_repair);
            TextDecoration.f10965b.getClass();
            TextLinkStyles textLinkStyles = new TextLinkStyles(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), null, null, null, 14, null);
            boolean zK = composer.K(function1);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new rm(function1, 1);
                composer.q(objX);
            }
            TextKt.d(Html_androidKt.a(strC, textLinkStyles, (LinkInteractionListener) objX), modifierG, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(composer).f48427h, composer, 0, 0, 262136);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer).f48446a;
            String strC2 = StringResources_androidKt.c(composer, R.string.dr_legal_acception);
            Modifier modifierE = ModifierExtKt.e(PaddingKt.m(tr.d("DistantRepairFormBottomSheetLegal$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "careservicesConsent_accept_button");
            boolean zK2 = composer.K(function0) | composer.K(function2);
            Object objX2 = composer.x();
            if (zK2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new il(function0, function2, 2);
                composer.q(objX2);
            }
            LVButtonKt.b(0, 504, composer, modifierE, configurationButton, null, null, strC2, (Function0) objX2, false, false, false);
            ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(composer).f48446a;
            String strC3 = StringResources_androidKt.c(composer, R.string.dr_legal_refuse);
            Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(tr.d("DistantRepairFormBottomSheetLegal$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, 5), "careservicesConsent_decline_button");
            boolean zK3 = composer.K(function2);
            Object objX3 = composer.x();
            if (zK3 || objX3 == composer$Companion$Empty$1) {
                objX3 = new h1(function2, 24);
                composer.q(objX3);
            }
            LVButtonKt.b(0, 504, composer, modifierE2, configurationButton2, null, null, strC3, (Function0) objX3, false, false, false);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object c(Object obj, Object obj2, Object obj3) {
        EditAvatarViewState editAvatarViewState = (EditAvatarViewState) this.f69247c;
        Function1 function1 = (Function1) this.d;
        Function0 function0 = (Function0) this.f69248e;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (editAvatarViewState instanceof EditAvatarViewState.Loading) {
                ProgressViewKt.a(pq0.j(267749235, composer, "EditAvatarScreen$lambda$2").o(SizeKt.f5052c), 0L, false, composer, 6, 6);
                composer.F();
            } else if (editAvatarViewState instanceof EditAvatarViewState.Success) {
                Modifier modifierH = PaddingKt.h(pq0.j(267895245, composer, "EditAvatarScreen$lambda$2").o(SizeKt.f5052c), paddingValues);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer).f48416e);
                boolean zK = composer.K(editAvatarViewState) | composer.K(function1);
                Object objX = composer.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new gv((Object) editAvatarViewState, function1, 1);
                    composer.q(objX);
                }
                LazyDslKt.a(modifierH, null, null, spacedAlignedF, null, null, false, null, (Function1) objX, composer, 0, 494);
                composer.F();
            } else {
                if (!(editAvatarViewState instanceof EditAvatarViewState.Error)) {
                    throw o60.v(composer, -1099742341);
                }
                LVEmptyViewKt.e(PaddingKt.h(pq0.j(268679762, composer, "EditAvatarScreen$lambda$2").o(SizeKt.f5052c), paddingValues), null, StringResources_androidKt.c(composer, R.string.error_generic), null, null, StringResources_androidKt.c(composer, R.string.button_try_again), function0, composer, 0, 122);
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object d(Object obj, Object obj2, Object obj3) {
        long j2;
        long j3;
        AudioGuideBannerUiModel audioGuideBannerUiModel = (AudioGuideBannerUiModel) this.f69247c;
        Context context = (Context) this.d;
        ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) this.f69248e;
        Composer composer = (Composer) obj2;
        ((Integer) obj3).getClass();
        ((AnimatedVisibilityScope) obj).getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Modifier modifierK = PaddingKt.k(PaddingKt.k(new DTFunctionNameModifier("FeedComposable$lambda$0$37$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).n, 1), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
        String str = audioGuideBannerUiModel.d;
        String strC = StringResources_androidKt.c(composer, R.string.push_audio_guide_subtitle);
        long j4 = audioGuideBannerUiModel.f57978c;
        FeatureThemeUiModel featureThemeUiModel = audioGuideBannerUiModel.f57977b;
        int[] iArr = FeedComposableKt.WhenMappings.f57808b;
        int i2 = iArr[featureThemeUiModel.ordinal()];
        if (i2 == 1) {
            composer.L(-455579371);
            j2 = LVAppDesignKitTheme.c(composer).f48361b.y;
            composer.F();
        } else {
            if (i2 != 2) {
                throw o60.v(composer, -455582513);
            }
            composer.L(-455576273);
            j2 = LVAppDesignKitTheme.c(composer).f48361b.u;
            composer.F();
        }
        int i3 = iArr[featureThemeUiModel.ordinal()];
        if (i3 == 1) {
            composer.L(-455570788);
            j3 = LVAppDesignKitTheme.c(composer).f48361b.n;
            composer.F();
        } else {
            if (i3 != 2) {
                throw o60.v(composer, -455573923);
            }
            composer.L(-455567466);
            j3 = LVAppDesignKitTheme.c(composer).f48361b.l;
            composer.F();
        }
        String str2 = audioGuideBannerUiModel.f57979e;
        boolean zK = composer.K(audioGuideBannerUiModel) | composer.y(context) | composer.y(managedActivityResultLauncher);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new pp(audioGuideBannerUiModel, context, managedActivityResultLauncher, 8);
            composer.q(objX);
        }
        long j5 = j2;
        AudioGuideSwipeablePushCardKt.a(modifierK, str, strC, str2, j5, j3, j4, (Function0) objX, composer, 0);
        return Unit.f71739a;
    }

    private final Object e(Object obj, Object obj2, Object obj3) {
        FeedViewState feedViewState = (FeedViewState) this.f69247c;
        Function1 function1 = (Function1) this.d;
        FeedTracker feedTracker = (FeedTracker) this.f69248e;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((LazyItemScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            List list = feedViewState.f57926e;
            boolean z = feedViewState.f57927f;
            boolean z2 = feedViewState.g.f57912b;
            boolean z3 = feedViewState.f57928h.f51777c;
            LVColorScheme lVColorSchemeA = FeatureThemeMapperKt.a(feedViewState.f57923a);
            boolean zY = composer.y(feedTracker);
            Object objX = composer.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new gx(feedTracker, 1);
                composer.q(objX);
            }
            HotContentWidgetKt.c(null, list, z, z2, z3, lVColorSchemeA, function1, (Function0) objX, composer, 0, 1);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object f(Object obj, Object obj2, Object obj3) {
        ImmersiveArticleType immersiveArticleType = (ImmersiveArticleType) this.f69247c;
        AssetArticleSectionUiModel assetArticleSectionUiModel = (AssetArticleSectionUiModel) this.d;
        AssetUiModel assetUiModel = (AssetUiModel) this.f69248e;
        ZoomableContentScope zoomableContentScope = (ZoomableContentScope) obj;
        Composer composer = (Composer) obj2;
        ((Integer) obj3).getClass();
        zoomableContentScope.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Modifier modifierC = GraphicsLayerModifierKt.c(com.vuitton.android.designkit.components.ModifierExtKt.b(new DTFunctionNameModifier("ImmersiveArticleAssetView$lambda$2$0$0$1"), immersiveArticleType == ImmersiveArticleType.IMMERSIVE_ARTICLE && assetArticleSectionUiModel.g != ImmersiveArticleSizeCardUiModel.FULLSCREEN, new w20(assetArticleSectionUiModel, 0), composer, 6).o(SizeKt.f5052c), zoomableContentScope.getF48292a(), zoomableContentScope.getF48292a(), Call.Parameters.DEFAULT_CAMERA_ZOOM, zoomableContentScope.getF48293b(), zoomableContentScope.getF48294c(), Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, 0, 524260);
        String str = assetUiModel.f51780b.f51778b;
        str.getClass();
        ContentScale.f9447a.getClass();
        ImageLoaderKt.b(modifierC, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer, KyberEngine.KyberPolyBytes, 2040);
        return Unit.f71739a;
    }

    private final Object i(Object obj, Object obj2, Object obj3) {
        ImmersiveArticleViewState immersiveArticleViewState = (ImmersiveArticleViewState) this.f69247c;
        Function0 function0 = (Function0) this.f69248e;
        Bitmap bitmap = (Bitmap) this.d;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        float f2 = ImmersiveArticleContentKt.f58386a;
        ((RowScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ImmersiveArticleUiModel immersiveArticleUiModel = immersiveArticleViewState.f58801c;
            String str = immersiveArticleUiModel != null ? immersiveArticleUiModel.f58792b : null;
            if (str == null) {
                str = "";
            }
            LVNotificationKt.b(str, StringResources_androidKt.c(composer, R.string.product_share), function0, bitmap, composer, 0);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object j(Object obj, Object obj2, Object obj3) {
        String str = (String) this.d;
        String str2 = (String) this.f69247c;
        Function1 function1 = (Function1) this.f69248e;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(WindowInsetsPadding_androidKt.b(BackgroundKt.b(PaddingKt.h(SizeKt.d(SizeKt.v(new DTFunctionNameModifier("LegalTextScreen$lambda$1"), null, 3), 1.0f), paddingValues), LVAppDesignKitTheme.c(composer).f48361b.f48375b, RectangleShapeKt.f8913a)), ScrollKt.b(composer), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer, 0);
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
            Updater.c(composer, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
            Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(composer, ComposeUiNode.Companion.f9645h);
            Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
            Modifier modifierI = PaddingKt.i(ModifierExtKt.e(new DTFunctionNameModifier("LegalTextScreen$lambda$1"), str), LVAppDesignKitTheme.l(composer).f48417f);
            int i2 = AnnotatedString.f10418f;
            TextDecoration.f10965b.getClass();
            TextLinkStyles textLinkStyles = new TextLinkStyles(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), null, null, null, 14, null);
            boolean zK = composer.K(function1);
            Object objX = composer.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new rm(function1, 2);
                composer.q(objX);
            }
            TextKt.d(Html_androidKt.a(str2, textLinkStyles, (LinkInteractionListener) objX), modifierI, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(composer).f48427h, composer, 0, 0, 262136);
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object k(Object obj, Object obj2, Object obj3) {
        Modifier modifierA;
        AutofillNode autofillNode = (AutofillNode) this.f69247c;
        Function0 function0 = (Function0) this.f69248e;
        Autofill autofill = (Autofill) this.d;
        Modifier modifierE = (Modifier) obj;
        Composer composer = (Composer) obj2;
        ((Integer) obj3).getClass();
        if (modifierE != null) {
            modifierE = a.e(modifierE, "autofill$lambda$0");
        }
        modifierE.getClass();
        composer.L(582431261);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        if (autofillNode == null) {
            composer.L(-458142343);
            composer.F();
            modifierA = null;
        } else {
            composer.L(-458142342);
            ((AutofillTree) composer.k(CompositionLocalsKt.f10028c)).f8646a.put(Integer.valueOf(autofillNode.d), autofillNode);
            boolean zY = composer.y(autofillNode) | composer.K(function0);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new k60(autofillNode, function0, 13);
                composer.q(objX);
            }
            Modifier modifierA2 = OnGloballyPositionedModifierKt.a(modifierE, (Function1) objX);
            boolean zY2 = composer.y(autofill) | composer.y(autofillNode);
            Object objX2 = composer.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new k60(autofill, autofillNode, 14);
                composer.q(objX2);
            }
            modifierA = FocusChangedModifierKt.a(modifierA2, (Function1) objX2);
            composer.F();
        }
        if (modifierA == null) {
            modifierA = new DTFunctionNameModifier("autofill$lambda$0");
        }
        composer.F();
        return modifierA;
    }

    private final Object m(Object obj, Object obj2, Object obj3) {
        MyLvViewModel myLvViewModel = (MyLvViewModel) this.f69247c;
        Context context = (Context) this.d;
        State state = (State) this.f69248e;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((RowScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (((MyLvViewState) state.getF10755b()).f59454j) {
                composer.L(1612513551);
                boolean zY = composer.y(myLvViewModel) | composer.y(context);
                Object objX = composer.x();
                if (zY || objX == Composer.Companion.f7939a) {
                    objX = new zd0(myLvViewModel, context, 8);
                    composer.q(objX);
                }
                TopBarQRCodeKt.a(null, 0L, (Function0) objX, composer, 0, 3);
                composer.F();
            } else {
                composer.L(1612888341);
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object n(Object obj, Object obj2, Object obj3) {
        Function1 function1 = (Function1) this.f69247c;
        Function3 function3 = (Function3) this.d;
        ReinsuranceViewModelImpl.ReinsuranceState reinsuranceState = (ReinsuranceViewModelImpl.ReinsuranceState) this.f69248e;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((LazyItemScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = composer.x();
            if (objX == Composer.Companion.f7939a) {
                ReinsuranceViewModelImpl.ReinsuranceState.Loaded loaded = reinsuranceState instanceof ReinsuranceViewModelImpl.ReinsuranceState.Loaded ? (ReinsuranceViewModelImpl.ReinsuranceState.Loaded) reinsuranceState : null;
                objX = loaded != null ? loaded.f63424a : null;
                composer.q(objX);
            }
            ImmutableList immutableList = (ImmutableList) objX;
            if (immutableList != null) {
                NativeCartReinsuranceKt.a(PaddingKt.k(pq0.j(-1918591899, composer, "NativeCartMainView$lambda$2$0$8"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, 1), immutableList, function1, function3, composer, 0);
                composer.F();
            } else {
                SpacerKt.a(composer, SizeKt.f(pq0.j(-1918215559, composer, "NativeCartMainView$lambda$2$0$8"), LVAppDesignKitTheme.l(composer).f48417f));
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object p(Object obj, Object obj2, Object obj3) {
        NativeRegisterViewState nativeRegisterViewState = (NativeRegisterViewState) this.f69247c;
        Function2 function2 = (Function2) this.d;
        Function0 function0 = (Function0) this.f69248e;
        Composer composer = (Composer) obj2;
        ((Integer) obj3).getClass();
        ((AnimatedVisibilityScope) obj).getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("NativeRegisterBirthInfoComposable$lambda$7"), LVAppDesignKitTheme.l(composer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
        Alignment.f8582a.getClass();
        int i2 = 0;
        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer, 0);
        int iHashCode = Long.hashCode(composer.getT());
        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
        Modifier modifierC = ComposedModifierKt.c(composer, modifierM);
        ComposeUiNode.b0.getClass();
        Function0 function1 = ComposeUiNode.Companion.f9641b;
        if (composer.getF7976a() == null) {
            ComposablesKt.b();
            throw null;
        }
        composer.B();
        if (composer.getS()) {
            composer.C(function1);
        } else {
            composer.o();
        }
        Updater.c(composer, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
        Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
        Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
        Updater.b(composer, ComposeUiNode.Companion.f9645h);
        Modifier modifierM2 = PaddingKt.m(a.f(composer, modifierC, ComposeUiNode.Companion.d, "NativeRegisterBirthInfoComposable$lambda$7"), LVAppDesignKitTheme.l(composer).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
        TextKt.c(StringResources_androidKt.c(composer, R.string.mylv_native_register_preferences_header_title), modifierM2, LVAppDesignKitTheme.c(composer).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).l, composer, 0, 0, 131064);
        Modifier modifierM3 = PaddingKt.m(new DTFunctionNameModifier("NativeRegisterBirthInfoComposable$lambda$7"), LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
        LVColorScheme lVColorScheme = LVColorScheme.INVERT;
        Dp.Companion companion = Dp.f11004c;
        DynamicFormComposableKt.a(modifierM3, lVColorScheme, nativeRegisterViewState.f54035i, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, function2, null, null, null, null, false, false, false, new a3(function0, 16), new a3(function0, 18), null, ComposableLambdaKt.b(-1427690837, new nf0(nativeRegisterViewState, function2, i2), composer), null, false, composer, 24624, 1572864, 434120);
        composer.r();
        return Unit.f71739a;
    }

    private final Object r(Object obj, Object obj2, Object obj3) {
        List list = (List) this.f69247c;
        Function3 function3 = (Function3) this.d;
        Function1 function1 = (Function1) this.f69248e;
        LazyItemScope lazyItemScope = (LazyItemScope) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        lazyItemScope.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(lazyItemScope) ? 4 : 2;
        }
        int i2 = 0;
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object obj4 = null;
            Modifier modifierB = AnimationModifierKt.b(new DTFunctionNameModifier("dynamicProductExchangeCategoryItems$lambda$1"), null, 3);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer, 0);
            int iHashCode = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
            Modifier modifierC = ComposedModifierKt.c(composer, modifierB);
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
            composer.L(1041727499);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                ProductExchangeCategoryUiModel productExchangeCategoryUiModel = ((CategoryOptionUiModel) next).f60231e;
                if (productExchangeCategoryUiModel == null) {
                    composer.L(866275426);
                    composer.F();
                } else {
                    Modifier modifierM = PaddingKt.m(pq0.j(866275427, composer, "dynamicProductExchangeCategoryItems$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48418h, 7);
                    SpringSpec springSpecB = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, obj4);
                    IntOffset.Companion companion = IntOffset.f11012b;
                    Rect rect = VisibilityThresholdsKt.f4089a;
                    Modifier modifierC2 = lazyItemScope.c(modifierM, springSpecB, AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntOffset(4294967297L)), AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, null));
                    CategoryOptionUiModel categoryOptionUiModel = (CategoryOptionUiModel) CollectionsKt.G(i3, list);
                    boolean zK = composer.K(function3) | composer.y(productExchangeCategoryUiModel) | composer.d(i3);
                    Object objX = composer.x();
                    if (zK || objX == Composer.Companion.f7939a) {
                        objX = new zd(function3, productExchangeCategoryUiModel, i3, 8);
                        composer.q(objX);
                    }
                    OrderExchangeVariantSelectionScreenKt.c(modifierC2, productExchangeCategoryUiModel, categoryOptionUiModel, (Function1) objX, function1, composer, 0);
                    composer.F();
                }
                it = it;
                i2 = i3;
                obj4 = null;
            }
            composer.F();
            composer.r();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object s(Object obj, Object obj2, Object obj3) {
        MutableState mutableState = (MutableState) this.f69247c;
        Function0 function0 = (Function0) this.f69248e;
        Function0 function1 = (Function0) this.d;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((ColumnScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            OsaListBottomSheetScreen osaListBottomSheetScreen = (OsaListBottomSheetScreen) mutableState.getF10755b();
            if (osaListBottomSheetScreen == null) {
                composer.L(789730534);
                composer.F();
            } else {
                composer.L(789730535);
                OsaListBottomSheetScreenKt.b(WindowInsetsPadding_androidKt.e(new DTFunctionNameModifier("OsaListScreen$lambda$7$2")), osaListBottomSheetScreen, function0, function1, composer, 0);
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0383  */
    /* JADX WARN: Code duplicated, block: B:101:0x038d  */
    /* JADX WARN: Code duplicated, block: B:103:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:107:0x042f  */
    /* JADX WARN: Code duplicated, block: B:97:0x0377  */
    /* JADX WARN: Code duplicated, block: B:98:0x0380  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2;
        int i3;
        Object next;
        CertificateCapucineData certificateCapucineData;
        Integer numValueOf;
        boolean zK;
        Object objX;
        String sku;
        String str;
        int i4 = this.f69246b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        String strC = null;
        Object obj4 = Composer.Companion.f7939a;
        Object obj5 = this.f69248e;
        Object obj6 = this.d;
        Object obj7 = this.f69247c;
        Object[] objArr = 0;
        switch (i4) {
            case 0:
                LvExoPlayer lvExoPlayer = (LvExoPlayer) obj7;
                String str2 = (String) obj6;
                Function0 function0 = (Function0) obj5;
                LazyItemScope lazyItemScope = (LazyItemScope) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                int i5 = AICompanionOnboardingScreenKt.f52870b;
                lazyItemScope.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(lazyItemScope) ? 4 : 2;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    AICompanionOnboardingScreenKt.c(lazyItemScope, lvExoPlayer, str2, function0, composer, iIntValue & 14);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                InAppDispatch inAppDispatch = (InAppDispatch) obj7;
                AccountAddressUiModel accountAddressUiModel = (AccountAddressUiModel) obj6;
                Function2 function2 = (Function2) obj5;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierE = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("AddressBookContent$lambda$0$0$0$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, 7), "addressBook_primaryAddressMain_view");
                    boolean zK2 = composer2.K(function2) | composer2.K(accountAddressUiModel);
                    Object objX2 = composer2.x();
                    if (zK2 || objX2 == obj4) {
                        objX2 = new l0(function2, accountAddressUiModel, 4);
                        composer2.q(objX2);
                    }
                    AddressBookContentKt.b(modifierE, inAppDispatch, accountAddressUiModel, (Function0) objX2, composer2, 0);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                MutableState mutableState = (MutableState) obj7;
                Function0 function1 = (Function0) obj5;
                DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel = (DistantRepairAssessmentBffViewModel) obj6;
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    AssessmentBottomSheetScreen assessmentBottomSheetScreen = (AssessmentBottomSheetScreen) mutableState.getF10755b();
                    if (assessmentBottomSheetScreen == null) {
                        composer3.L(-1354373012);
                        composer3.F();
                    } else {
                        composer3.L(-1354373011);
                        boolean zK3 = composer3.K(function1) | composer3.y(distantRepairAssessmentBffViewModel);
                        Object objX3 = composer3.x();
                        if (zK3 || objX3 == obj4) {
                            objX3 = new l0(function1, distantRepairAssessmentBffViewModel, 11);
                            composer3.q(objX3);
                        }
                        AssessmentBottomSheetScreenKt.b(assessmentBottomSheetScreen, function1, (Function0) objX3, composer3, 0);
                        composer3.F();
                    }
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                MutableState mutableState2 = (MutableState) obj7;
                Function0 function3 = (Function0) obj5;
                DistantRepairAssessmentViewModel distantRepairAssessmentViewModel = (DistantRepairAssessmentViewModel) obj6;
                Composer composer4 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    AssessmentBottomSheetScreen assessmentBottomSheetScreen2 = (AssessmentBottomSheetScreen) mutableState2.getF10755b();
                    if (assessmentBottomSheetScreen2 == null) {
                        composer4.L(1153100140);
                        composer4.F();
                    } else {
                        composer4.L(1153100141);
                        boolean zK4 = composer4.K(function3) | composer4.y(distantRepairAssessmentViewModel);
                        Object objX4 = composer4.x();
                        if (zK4 || objX4 == obj4) {
                            objX4 = new l0(function3, distantRepairAssessmentViewModel, 12);
                            composer4.q(objX4);
                        }
                        AssessmentBottomSheetScreenKt.b(assessmentBottomSheetScreen2, function3, (Function0) objX4, composer4, 0);
                        composer4.F();
                    }
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 4:
                SummaryBottomSheet.BookingConflict bookingConflict = (SummaryBottomSheet.BookingConflict) obj7;
                Context context = (Context) obj6;
                Function0 function4 = (Function0) obj5;
                Composer composer5 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    if (bookingConflict == null) {
                        composer5.L(1174793977);
                        composer5.F();
                    } else {
                        composer5.L(1174793978);
                        BookingConflictBottomSheetContentKt.a(StringResourceUiModelKt.a(bookingConflict.f54832a, context), function4, composer5, 0);
                        composer5.F();
                    }
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 5:
                BufferedChannel bufferedChannel = (BufferedChannel) obj6;
                SelectInstance selectInstance = (SelectInstance) obj5;
                AtomicLongFieldUpdater atomicLongFieldUpdater = BufferedChannel.f74728e;
                if (obj7 != BufferedChannelKt.l) {
                    OnUndeliveredElementKt.a(bufferedChannel.f74735c, obj7, selectInstance.getF75186b());
                }
                return Unit.f71739a;
            case 6:
                RepairStatusUiModel repairStatusUiModel = (RepairStatusUiModel) obj7;
                CancellationReasonsViewState cancellationReasonsViewState = (CancellationReasonsViewState) obj6;
                Object obj8 = (Function1) obj5;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer6 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue6 & 6) == 0) {
                    iIntValue6 |= composer6.K(paddingValues) ? 4 : 2;
                }
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 19) != 18)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    Modifier modifierK = PaddingKt.k(PaddingKt.m(PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("CancellationReasonsScreen$lambda$1").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer6).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), paddingValues), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer6).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer6, 6);
                    int iHashCode = Long.hashCode(composer6.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer6.n();
                    Modifier modifierC = ComposedModifierKt.c(composer6, modifierK);
                    ComposeUiNode.b0.getClass();
                    Function0 function5 = ComposeUiNode.Companion.f9641b;
                    if (composer6.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer6.B();
                    if (composer6.getS()) {
                        composer6.C(function5);
                    } else {
                        composer6.o();
                    }
                    Updater.c(composer6, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer6, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer6, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer6, ComposeUiNode.Companion.f9645h);
                    Modifier modifierM = PaddingKt.m(PaddingKt.m(n00.c(composer6, modifierC, ComposeUiNode.Companion.d, "CancellationReasonsScreen$lambda$1", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).f48416e, 7);
                    if ((repairStatusUiModel == null ? -1 : CancellationReasonsScreenKt.WhenMappings.f63621a[repairStatusUiModel.ordinal()]) == 1) {
                        i2 = -2016722303;
                        i3 = R.string.dr_decline_subtitle;
                    } else {
                        i2 = -2016719668;
                        i3 = R.string.dr_cancel_appointment_subtitle;
                    }
                    TextKt.c(o60.k(composer6, i2, i3, composer6), modifierM, LVAppDesignKitTheme.c(composer6).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer6).g, composer6, 0, 0, 131064);
                    composer6.L(-2016710354);
                    for (CancellationReasonUiModel cancellationReasonUiModel : cancellationReasonsViewState.f63590c) {
                        Modifier modifierD = tr.d("CancellationReasonsScreen$lambda$1", 1.0f);
                        String str3 = cancellationReasonUiModel.f63978c;
                        CancellationReasonUiModel cancellationReasonUiModel2 = cancellationReasonsViewState.d;
                        boolean zC = Intrinsics.c(cancellationReasonUiModel2 != null ? cancellationReasonUiModel2.f63977b : null, cancellationReasonUiModel.f63977b);
                        boolean zK5 = composer6.K(obj8) | composer6.K(cancellationReasonUiModel);
                        Object objX5 = composer6.x();
                        if (zK5 || objX5 == obj4) {
                            objX5 = new vg(obj8, cancellationReasonUiModel, 3);
                            composer6.q(objX5);
                        }
                        LVRadioButtonBlockKt.a(modifierD, str3, null, false, zC, (Function1) objX5, null, null, composer6, 6, 204);
                    }
                    composer6.F();
                    composer6.r();
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 7:
                CatalogViewState catalogViewState = (CatalogViewState) obj7;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj6;
                Function1 function6 = (Function1) obj5;
                RowScope rowScope = (RowScope) obj;
                Composer composer7 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                rowScope.getClass();
                if ((iIntValue7 & 6) == 0) {
                    iIntValue7 |= composer7.K(rowScope) ? 4 : 2;
                }
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 19) != 18)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    if (catalogViewState.f55358f.f51154a) {
                        DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(1427649889, composer7, "CatalogCategoryScreen$lambda$0$0$0$0");
                        Alignment.f8582a.getClass();
                        Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(rowScope.b(dTFunctionNameModifierJ, Alignment.Companion.l), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer7).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), "contactUs_contact_button");
                        ContactUsUiModel contactUsUiModel = catalogViewState.f55358f;
                        boolean zY = composer7.y(lVModalBottomSheetState);
                        Object objX6 = composer7.x();
                        if (zY || objX6 == obj4) {
                            objX6 = new t8(lVModalBottomSheetState, 2);
                            composer7.q(objX6);
                        }
                        Function0 function7 = (Function0) objX6;
                        boolean zK6 = composer7.K(function6);
                        Object objX7 = composer7.x();
                        if (zK6 || objX7 == obj4) {
                            objX7 = new u8(function6, 8);
                            composer7.q(objX7);
                        }
                        ContactUsIconKt.a(modifierE2, contactUsUiModel, function7, (Function0) objX7, true, null, composer7, 24576, 32);
                        composer7.F();
                    } else {
                        composer7.L(1428373522);
                        composer7.F();
                    }
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 8:
                Modifier modifierE3 = (Modifier) obj7;
                Function0 function8 = (Function0) obj5;
                StoreModeViewState storeModeViewState = (StoreModeViewState) obj6;
                LazyItemScope lazyItemScope2 = (LazyItemScope) obj;
                Composer composer8 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                float f2 = CatalogStoreModeKt.f64850a;
                if (modifierE3 != null) {
                    modifierE3 = a.e(modifierE3, "StoreModeExploreScreen$lambda$1$0$1");
                }
                lazyItemScope2.getClass();
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 17) != 16)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    LVPushCardKt.a(PaddingKt.m(PaddingKt.k(modifierE3, LVAppDesignKitTheme.l(composer8).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer8).f48417f, 7), false, function8, ComposableLambdaKt.b(625396586, new d3(storeModeViewState, 10), composer8), composer8, 3072, 2);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 9:
                StoreModeDataUiModel storeModeDataUiModel = (StoreModeDataUiModel) obj7;
                Modifier modifierE4 = (Modifier) obj6;
                Function1 function9 = (Function1) obj5;
                LazyItemScope lazyItemScope3 = (LazyItemScope) obj;
                Composer composer9 = (Composer) obj2;
                int iIntValue9 = ((Integer) obj3).intValue();
                float f3 = CatalogStoreModeKt.f64850a;
                if (modifierE4 != null) {
                    modifierE4 = a.e(modifierE4, "StoreModeExploreScreen$lambda$1$0$2$0$0");
                }
                lazyItemScope3.getClass();
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 17) != 16)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    if (!(storeModeDataUiModel instanceof StoreModeDataUiModel.StoreModeSimpleUiModel)) {
                        throw o60.v(composer9, 2141792433);
                    }
                    composer9.L(1971146598);
                    Modifier modifierM2 = PaddingKt.m(PaddingKt.k(modifierE4, LVAppDesignKitTheme.l(composer9).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer9).f48417f, 7);
                    boolean zK7 = composer9.K(function9) | composer9.K(storeModeDataUiModel);
                    Object objX8 = composer9.x();
                    if (zK7 || objX8 == obj4) {
                        objX8 = new tf(function9, storeModeDataUiModel, 14);
                        composer9.q(objX8);
                    }
                    LVPushCardKt.a(modifierM2, false, (Function0) objX8, ComposableLambdaKt.b(-1726592974, new d3(storeModeDataUiModel, 11), composer9), composer9, 3072, 2);
                    composer9.F();
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 10:
                CatalogViewState catalogViewState2 = (CatalogViewState) obj7;
                Function0 function10 = (Function0) obj5;
                Function0 function11 = (Function0) obj6;
                Composer composer10 = (Composer) obj2;
                int iIntValue10 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (composer10.p(iIntValue10 & 1, (iIntValue10 & 17) != 16)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    ContactUsIconKt.a(ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("CatalogSubcategoryTransparentTopBar$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer10).d, LVAppDesignKitTheme.l(composer10).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), "contactUs_contact_button"), catalogViewState2.f55358f, function10, function11, true, null, composer10, 24576, 32);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 11:
                final Function1 function12 = (Function1) obj7;
                final CertificateUiModel certificateUiModel = (CertificateUiModel) obj6;
                final Function1 function13 = (Function1) obj5;
                Composer composer11 = (Composer) obj2;
                int iIntValue11 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer11.p(iIntValue11 & 1, (iIntValue11 & 17) != 16)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    TextKt.c(StringResources_androidKt.c(composer11, R.string.certificate_transfer_warning_subtitle), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("CertificateTransferBottomSheetContent$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer11).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer11).f48417f, 5), "certificateListTransferBottomSheet_description_text"), LVAppDesignKitTheme.c(composer11).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer11).f48427h, composer11, 0, 0, 131064);
                    Modifier modifierD2 = tr.d("CertificateTransferBottomSheetContent$lambda$2", 1.0f);
                    Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                    Alignment.f8582a.getClass();
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.l, composer11, 54);
                    int iHashCode2 = Long.hashCode(composer11.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer11.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer11, modifierD2);
                    ComposeUiNode.b0.getClass();
                    Function0 function14 = ComposeUiNode.Companion.f9641b;
                    if (composer11.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer11.B();
                    if (composer11.getS()) {
                        composer11.C(function14);
                    } else {
                        composer11.o();
                    }
                    Function2 function15 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer11, rowMeasurePolicyA, function15);
                    Function2 function16 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer11, persistentCompositionLocalMapN2, function16);
                    Integer numValueOf2 = Integer.valueOf(iHashCode2);
                    Function2 function17 = ComposeUiNode.Companion.g;
                    Updater.c(composer11, numValueOf2, function17);
                    Function1 function18 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer11, function18);
                    Function2 function19 = ComposeUiNode.Companion.d;
                    Modifier modifierA = ClipKt.a(SizeKt.o(a.f(composer11, modifierC2, function19, "CertificateTransferBottomSheetContent$lambda$2"), LVAppDesignKitTheme.d(composer11).D), LVAppDesignKitTheme.j(composer11).f48410b);
                    Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, composer11, 0);
                    ContentScale.f9447a.getClass();
                    Modifier modifierE5 = ModifierExtKt.e(PainterModifierKt.a(modifierA, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), "certificateListTransferBottomSheet_product_image");
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode3 = Long.hashCode(composer11.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer11.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer11, modifierE5);
                    if (composer11.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer11.B();
                    if (composer11.getS()) {
                        composer11.C(function14);
                    } else {
                        composer11.o();
                    }
                    Updater.c(composer11, measurePolicyD, function15);
                    Updater.c(composer11, persistentCompositionLocalMapN3, function16);
                    cj.s(iHashCode3, composer11, function17, composer11, function18);
                    Updater.c(composer11, modifierC3, function19);
                    String f55842e = certificateUiModel.getF55842e();
                    String str4 = StringExtKt.a(f55842e) ? f55842e : null;
                    Modifier modifierA2 = AspectRatioKt.a(ClipKt.a(new DTFunctionNameModifier("CertificateTransferBottomSheetContent$lambda$2").o(SizeKt.f5052c), LVAppDesignKitTheme.j(composer11).f48410b), 1.0f, false);
                    if (str4 == null) {
                        str4 = "";
                    }
                    ImageLoaderKt.b(modifierA2, str4, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer11, KyberEngine.KyberPolyBytes, 2040);
                    composer11.r();
                    TextKt.c(certificateUiModel.getD(), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("CertificateTransferBottomSheetContent$lambda$2"), LVAppDesignKitTheme.l(composer11).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "certificateListTransferBottomSheet_productName_text"), LVAppDesignKitTheme.c(composer11).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer11).f48430k, composer11, 0, 0, 131064);
                    composer11.r();
                    ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer11).f48446a;
                    Modifier modifierE6 = ModifierExtKt.e(PaddingKt.m(tr.d("CertificateTransferBottomSheetContent$lambda$2", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer11).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "certificateListTransferBottomSheet_transfer_button");
                    String strC2 = StringResources_androidKt.c(composer11, R.string.certificate_transfer_cta_step1);
                    boolean zK8 = composer11.K(function12) | composer11.K(certificateUiModel);
                    Object objX9 = composer11.x();
                    if (zK8 || objX9 == obj4) {
                        final int i6 = 0;
                        objX9 = new Function0() { // from class: el
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i6) {
                                    case 0:
                                        function12.invoke(certificateUiModel);
                                        break;
                                    default:
                                        function12.invoke(certificateUiModel);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer11.q(objX9);
                    }
                    LVButtonKt.b(0, 504, composer11, modifierE6, configurationButton, null, null, strC2, (Function0) objX9, false, false, false);
                    ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(composer11).f48449e;
                    Modifier modifierE7 = ModifierExtKt.e(PaddingKt.m(tr.d("CertificateTransferBottomSheetContent$lambda$2", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer11).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer11).f48417f, 5), "certificateListTransferBottomSheet_cancel_button");
                    String strC3 = StringResources_androidKt.c(composer11, R.string.certificate_transfer_cta_cancel);
                    boolean zK9 = composer11.K(function13) | composer11.K(certificateUiModel);
                    Object objX10 = composer11.x();
                    if (zK9 || objX10 == obj4) {
                        final int i7 = 1;
                        objX10 = new Function0() { // from class: el
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i7) {
                                    case 0:
                                        function13.invoke(certificateUiModel);
                                        break;
                                    default:
                                        function13.invoke(certificateUiModel);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer11.q(objX10);
                    }
                    LVButtonKt.b(0, 504, composer11, modifierE7, configurationButton2, null, null, strC3, (Function0) objX10, false, false, false);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 12:
                final CertificateCapucineUiModel certificateCapucineUiModel = (CertificateCapucineUiModel) obj7;
                CertificateStatusUiModel certificateStatusUiModel = certificateCapucineUiModel.g;
                final Function1 function20 = (Function1) obj6;
                final Function1 function21 = (Function1) obj5;
                Composer composer12 = (Composer) obj2;
                int iIntValue12 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer12.p(iIntValue12 & 1, (iIntValue12 & 17) != 16)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    CertificateListItemsKt.c(null, certificateStatusUiModel, certificateCapucineUiModel.f55821h, composer12, 0);
                    SpacerKt.a(composer12, SizeKt.f(new DTFunctionNameModifier("CertificateCapucineItem$lambda$1"), LVAppDesignKitTheme.l(composer12).f48415c));
                    TextKt.c(StringResources_androidKt.b(R.string.arty_capucines_name, new Object[]{certificateCapucineUiModel.f55823j}, composer12), n00.g("CertificateCapucineItem$lambda$1", "certificateList_productName_text"), LVAppDesignKitTheme.c(composer12).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer12).f48426f, composer12, 0, 0, 131064);
                    if (certificateStatusUiModel == CertificateStatusUiModel.LOCKED) {
                        composer12.L(-591630607);
                        ConfigurationButton configurationButton3 = LVAppDesignKitTheme.b(composer12).f48446a;
                        String strC4 = StringResources_androidKt.c(composer12, R.string.my_certificate_activate_CTA);
                        Modifier modifierM3 = PaddingKt.m(tr.d("CertificateCapucineItem$lambda$1", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer12).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                        boolean zK10 = composer12.K(function20) | composer12.y(certificateCapucineUiModel);
                        Object objX11 = composer12.x();
                        if (zK10 || objX11 == obj4) {
                            final Object[] objArr2 = objArr == true ? 1 : 0;
                            objX11 = new Function0() { // from class: nl
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i8 = objArr2;
                                    CertificateCapucineUiModel certificateCapucineUiModel2 = certificateCapucineUiModel;
                                    Function1 function22 = function20;
                                    switch (i8) {
                                        case 0:
                                            function22.invoke(certificateCapucineUiModel2);
                                            break;
                                        default:
                                            function22.invoke(certificateCapucineUiModel2);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer12.q(objX11);
                        }
                        LVButtonKt.b(0, 504, composer12, modifierM3, configurationButton3, null, null, strC4, (Function0) objX11, false, false, false);
                        composer12.F();
                    } else {
                        composer12.L(-591190686);
                        CertificateComposableKt.b(null, StringResources_androidKt.c(composer12, R.string.arty_capucines_acquired_date), certificateCapucineUiModel.f55822i, composer12, 0, 1);
                        TextKt.c(StringResources_androidKt.c(composer12, R.string.product_detail_materials), PaddingKt.m(new DTFunctionNameModifier("CertificateCapucineItem$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer12).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer12).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer12).m, composer12, 0, 0, 131064);
                        Iterator<E> it = CertificateCapucineData.b().iterator();
                        do {
                            if (it.hasNext()) {
                                next = it.next();
                                sku = ((CertificateCapucineData) next).getSku();
                                str = certificateCapucineUiModel.f55818c;
                                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                            } else {
                                next = null;
                            }
                            certificateCapucineData = (CertificateCapucineData) next;
                            if (certificateCapucineData != null) {
                                numValueOf = Integer.valueOf(certificateCapucineData.getMaterialStringId());
                            } else {
                                numValueOf = null;
                            }
                            if (numValueOf == null) {
                                composer12.L(-590538509);
                                composer12.F();
                            } else {
                                composer12.L(-590538508);
                                strC = StringResources_androidKt.c(composer12, numValueOf.intValue());
                                composer12.F();
                            }
                            if (strC == null) {
                                strC = certificateCapucineUiModel.f55824k;
                            }
                            TextKt.c(strC, PaddingKt.m(new DTFunctionNameModifier("CertificateCapucineItem$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer12).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer12).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer12).m, composer12, 0, 0, 131064);
                            ConfigurationButton configurationButton4 = LVAppDesignKitTheme.b(composer12).f48446a;
                            Modifier modifierE8 = ModifierExtKt.e(PaddingKt.m(tr.d("CertificateCapucineItem$lambda$1", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer12).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "certificateList_openDetails_button");
                            String strC5 = StringResources_androidKt.c(composer12, R.string.my_certificate_view);
                            zK = composer12.K(function21) | composer12.y(certificateCapucineUiModel);
                            objX = composer12.x();
                            if (zK || objX == obj4) {
                                final int i8 = 1;
                                objX = new Function0() { // from class: nl
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i9 = i8;
                                        CertificateCapucineUiModel certificateCapucineUiModel2 = certificateCapucineUiModel;
                                        Function1 function22 = function21;
                                        switch (i9) {
                                            case 0:
                                                function22.invoke(certificateCapucineUiModel2);
                                                break;
                                            default:
                                                function22.invoke(certificateCapucineUiModel2);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer12.q(objX);
                            }
                            LVButtonKt.b(0, 504, composer12, modifierE8, configurationButton4, null, null, strC5, (Function0) objX, false, false, false);
                            composer12.F();
                        } while (!Intrinsics.c(sku, str));
                        certificateCapucineData = (CertificateCapucineData) next;
                        if (certificateCapucineData != null) {
                            numValueOf = Integer.valueOf(certificateCapucineData.getMaterialStringId());
                        } else {
                            numValueOf = null;
                        }
                        if (numValueOf == null) {
                            composer12.L(-590538509);
                            composer12.F();
                        } else {
                            composer12.L(-590538508);
                            strC = StringResources_androidKt.c(composer12, numValueOf.intValue());
                            composer12.F();
                        }
                        if (strC == null) {
                            strC = certificateCapucineUiModel.f55824k;
                        }
                        TextKt.c(strC, PaddingKt.m(new DTFunctionNameModifier("CertificateCapucineItem$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer12).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer12).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer12).m, composer12, 0, 0, 131064);
                        ConfigurationButton configurationButton5 = LVAppDesignKitTheme.b(composer12).f48446a;
                        Modifier modifierE9 = ModifierExtKt.e(PaddingKt.m(tr.d("CertificateCapucineItem$lambda$1", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer12).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "certificateList_openDetails_button");
                        String strC6 = StringResources_androidKt.c(composer12, R.string.my_certificate_view);
                        zK = composer12.K(function21) | composer12.y(certificateCapucineUiModel);
                        objX = composer12.x();
                        if (zK) {
                            final int i9 = 1;
                            objX = new Function0() { // from class: nl
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i10 = i9;
                                    CertificateCapucineUiModel certificateCapucineUiModel2 = certificateCapucineUiModel;
                                    Function1 function22 = function21;
                                    switch (i10) {
                                        case 0:
                                            function22.invoke(certificateCapucineUiModel2);
                                            break;
                                        default:
                                            function22.invoke(certificateCapucineUiModel2);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer12.q(objX);
                        } else {
                            final int i10 = 1;
                            objX = new Function0() { // from class: nl
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i11 = i10;
                                    CertificateCapucineUiModel certificateCapucineUiModel2 = certificateCapucineUiModel;
                                    Function1 function22 = function21;
                                    switch (i11) {
                                        case 0:
                                            function22.invoke(certificateCapucineUiModel2);
                                            break;
                                        default:
                                            function22.invoke(certificateCapucineUiModel2);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer12.q(objX);
                        }
                        LVButtonKt.b(0, 504, composer12, modifierE9, configurationButton5, null, null, strC6, (Function0) objX, false, false, false);
                        composer12.F();
                    }
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 13:
                return a(obj, obj2, obj3);
            case 14:
                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) obj7;
                Context context2 = (Context) obj6;
                MutableState mutableState3 = (MutableState) obj5;
                Composer composer13 = (Composer) obj2;
                int iIntValue13 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer13.p(iIntValue13 & 1, (iIntValue13 & 17) != 16)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    PermissionsUiModel permissionsUiModel = (PermissionsUiModel) mutableState3.getF10755b();
                    boolean zY2 = composer13.y(permissionsViewModel);
                    Object objX12 = composer13.x();
                    if (zY2 || objX12 == obj4) {
                        objX12 = new up(permissionsViewModel, 1);
                        composer13.q(objX12);
                    }
                    Function0 function22 = (Function0) objX12;
                    boolean zY3 = composer13.y(context2);
                    Object objX13 = composer13.x();
                    if (zY3 || objX13 == obj4) {
                        objX13 = new je(context2, 5);
                        composer13.q(objX13);
                    }
                    PermissionBottomSheetContentKt.a(permissionsUiModel, function22, (Function0) objX13, composer13, 0);
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 15:
                Pair pair = (Pair) obj7;
                List list = (List) obj6;
                Function1 function23 = (Function1) obj5;
                Composer composer14 = (Composer) obj2;
                int iIntValue14 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer14.p(iIntValue14 & 1, (iIntValue14 & 17) != 16)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    DispatchComposableKt.b(pair, list.indexOf(pair), list.size(), function23, composer14, 0);
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 16:
                return b(obj, obj2, obj3);
            case 17:
                return c(obj, obj2, obj3);
            case 18:
                return d(obj, obj2, obj3);
            case 19:
                return e(obj, obj2, obj3);
            case 20:
                return f(obj, obj2, obj3);
            case 21:
                return i(obj, obj2, obj3);
            case 22:
                return j(obj, obj2, obj3);
            case 23:
                return k(obj, obj2, obj3);
            case 24:
                return m(obj, obj2, obj3);
            case 25:
                return n(obj, obj2, obj3);
            case 26:
                return p(obj, obj2, obj3);
            case 27:
                return r(obj, obj2, obj3);
            case 28:
                return s(obj, obj2, obj3);
            default:
                OsaReasonsFormViewState osaReasonsFormViewState = (OsaReasonsFormViewState) obj7;
                OsaLocationFormViewState osaLocationFormViewState = (OsaLocationFormViewState) obj6;
                Function0 function24 = (Function0) obj5;
                Composer composer15 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(tr.d("OsaLocationFormFooter$lambda$5", 1.0f), LVAppDesignKitTheme.c(composer15).f48361b.f48374a, rectangleShapeKt$RectangleShape$1));
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode4 = Long.hashCode(composer15.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer15.n();
                Modifier modifierC4 = ComposedModifierKt.c(composer15, modifierB);
                ComposeUiNode.b0.getClass();
                Function0 function25 = ComposeUiNode.Companion.f9641b;
                if (composer15.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer15.B();
                if (composer15.getS()) {
                    composer15.C(function25);
                } else {
                    composer15.o();
                }
                Updater.c(composer15, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                Updater.c(composer15, persistentCompositionLocalMapN4, ComposeUiNode.Companion.f9643e);
                Updater.c(composer15, Integer.valueOf(iHashCode4), ComposeUiNode.Companion.g);
                Updater.b(composer15, ComposeUiNode.Companion.f9645h);
                Updater.c(composer15, modifierC4, ComposeUiNode.Companion.d);
                LVButtonKt.b(0, 376, composer15, ModifierExtKt.e(PaddingKt.l(tr.d("OsaLocationFormFooter$lambda$5", 1.0f), LVAppDesignKitTheme.l(composer15).f48416e, LVAppDesignKitTheme.l(composer15).f48415c, LVAppDesignKitTheme.l(composer15).f48416e, LVAppDesignKitTheme.l(composer15).f48417f), "osa_reasonConfirm_button"), LVAppDesignKitTheme.b(composer15).f48446a, null, null, StringResources_androidKt.c(composer15, R.string.osa_creation_reason_confirm), function24, false, osaReasonsFormViewState.d != null && osaLocationFormViewState.q, false);
                composer15.r();
                return Unit.f71739a;
        }
    }

    public /* synthetic */ g1(Object obj, Object obj2, Object obj3, int i2) {
        this.f69246b = i2;
        this.f69247c = obj;
        this.d = obj2;
        this.f69248e = obj3;
    }

    public /* synthetic */ g1(int i2, Object obj, Object obj2, Function0 function0) {
        this.f69246b = i2;
        this.f69247c = obj;
        this.f69248e = function0;
        this.d = obj2;
    }
}
