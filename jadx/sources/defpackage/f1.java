package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.contextmenu.ComposableSingletons$ContextMenuUiKt;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
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
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SnackbarData;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Html_androidKt;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Dp;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableKt;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.NavEntry;
import androidx.navigation3.runtime.NavEntryDecorator;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.components.components.LVRadioButtonBlockKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonGroupKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.common.editorial.models.LiveInfoUiModel;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.LVSoundButtonKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.compose.components.ComposableSingletons$LVNotificationKt;
import com.vuitton.android.presentation.compose.components.LVClickableImageCardKt;
import com.vuitton.android.presentation.compose.components.LVNotificationKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel;
import com.vuitton.android.presentation.screen.account.addresseditor.components.DeleteAddressBottomSheetKt;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionOnboardingUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationViewState;
import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordViewState;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginViewState;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import com.vuitton.android.presentation.screen.booking.BookingRoutes;
import com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsScreenKt;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleMultipleTextKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModel;
import com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModelImpl;
import com.vuitton.android.presentation.screen.booking.pass.components.BookingPassComposableKt;
import com.vuitton.android.presentation.screen.booking.pass.components.PassViewKt;
import com.vuitton.android.presentation.screen.booking.pass.models.BookingPassViewState;
import com.vuitton.android.presentation.screen.cart.CommercialNotification;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetsKt;
import com.vuitton.android.presentation.screen.certificates.components.capucine.CertificateCapucineScreenKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateCapucineUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentPreliminaryComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentReceiveComponentKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.exclusivesales.models.ExclusiveSalesViewState;
import com.vuitton.android.presentation.screen.feed.components.card.LiveTagKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleFashionShowSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTitlesUiModel;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoStatusUiModel;
import com.vuitton.android.presentation.screen.options.appinfo.models.AppInfoViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationInformationUiModel;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewState;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.utils.ShareUtilsKt;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import dagger.hilt.android.lifecycle.HiltViewModelExtensions;
import java.util.List;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f1 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69000c;
    public final /* synthetic */ Object d;

    public /* synthetic */ f1(Object obj, Object obj2, int i2) {
        this.f68999b = i2;
        this.f69000c = obj;
        this.d = obj2;
    }

    private final Object a(Object obj, Object obj2, Object obj3) {
        int i2;
        CertificateCapucineUiModel certificateCapucineUiModel = (CertificateCapucineUiModel) this.f69000c;
        Context context = (Context) this.d;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CertificateCapucineScreen$lambda$1");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierD = ScrollKt.d(PaddingKt.h(BackgroundKt.b(dTFunctionNameModifier.o(fillElement), LVAppDesignKitTheme.c(composer).f48361b.f48374a, RectangleShapeKt.f8913a), paddingValues), ScrollKt.b(composer), false, 14);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(composer, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(composer, persistentCompositionLocalMapN, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(composer, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(composer, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(composer, modifierC, function5);
            String str = certificateCapucineUiModel.f55819e;
            str.getClass();
            Modifier modifierA = AspectRatioKt.a(ClipKt.a(SizeKt.d(new DTFunctionNameModifier("CertificateCapucineScreen$lambda$1"), 1.0f), RoundedCornerShapeKt.c(LVAppDesignKitTheme.d(composer).m, LVAppDesignKitTheme.d(composer).m, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12)), 0.8f, true);
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierA, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer, KyberEngine.KyberPolyBytes, 2040);
            CertificateCapucineScreenKt.a(certificateCapucineUiModel, composer, 0);
            String str2 = certificateCapucineUiModel.m;
            if (str2.length() <= 0) {
                str2 = null;
            }
            if (str2 == null) {
                composer.L(866215030);
                composer.F();
                i2 = 0;
            } else {
                composer.L(866215031);
                Object objX = composer.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new LvExoPlayer(context);
                    composer.q(objX);
                }
                LvExoPlayer lvExoPlayer = (LvExoPlayer) objX;
                Modifier modifierI = pq0.i("CertificateCapucineScreen$lambda$1", fillElement);
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
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
                Updater.c(composer, measurePolicyD, function2);
                Updater.c(composer, persistentCompositionLocalMapN2, function3);
                cj.s(iHashCode2, composer, function4, composer, function1);
                Updater.c(composer, modifierC2, function5);
                LvVideoPlayerKt.b(GradientKt.c(AspectRatioKt.a(SizeKt.d(new DTFunctionNameModifier("CertificateCapucineScreen$lambda$1"), 1.0f), 0.5625f, false)), lvExoPlayer.f50900a, certificateCapucineUiModel.m, null, null, false, null, null, false, true, false, false, null, false, 4, null, null, null, null, null, null, composer, 805306368, 24576, 0, 2080248);
                composer = composer;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("CertificateCapucineScreen$lambda$1");
                BiasAlignment biasAlignment = Alignment.Companion.f8588h;
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                Modifier modifierG = boxScopeInstance.g(dTFunctionNameModifier2, biasAlignment);
                boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer.f50901b).getF10755b()).booleanValue();
                boolean zY = composer.y(lvExoPlayer);
                Object objX2 = composer.x();
                if (zY || objX2 == composer$Companion$Empty$1) {
                    objX2 = new gj(lvExoPlayer, 1);
                    composer.q(objX2);
                }
                LVPlayPauseButtonKt.a(0, composer, modifierG, (Function0) objX2, zBooleanValue);
                Modifier modifierG2 = boxScopeInstance.g(new DTFunctionNameModifier("CertificateCapucineScreen$lambda$1"), Alignment.Companion.f8590j);
                boolean zBooleanValue2 = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer.f50902c).getF10755b()).booleanValue();
                boolean zY2 = composer.y(lvExoPlayer);
                Object objX3 = composer.x();
                if (zY2 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new gj(lvExoPlayer, 2);
                    composer.q(objX3);
                }
                i2 = 0;
                LVSoundButtonKt.a(0, composer, modifierG2, (Function0) objX3, zBooleanValue2);
                composer.r();
                composer.F();
                certificateCapucineUiModel = certificateCapucineUiModel;
            }
            CertificateCapucineScreenKt.c(certificateCapucineUiModel, composer, i2);
            if (certificateCapucineUiModel.l.isEmpty()) {
                composer.L(868042016);
                composer.F();
            } else {
                composer.L(867968980);
                CertificateCapucineScreenKt.b(certificateCapucineUiModel, composer, i2);
                composer.F();
            }
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object b(Object obj, Object obj2, Object obj3) {
        Function1 function1 = (Function1) this.f69000c;
        ContextMenuColors contextMenuColors = (ContextMenuColors) this.d;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ContextMenuColors contextMenuColors2 = ContextMenuUiKt.f4333a;
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = composer.x();
            if (objX == Composer.Companion.f7939a) {
                ComposableSingletons$ContextMenuUiKt.f4313a.getClass();
                objX = new ContextMenuScope(ComposableSingletons$ContextMenuUiKt.f4314b);
                composer.q(objX);
            }
            ContextMenuScope contextMenuScope = (ContextMenuScope) objX;
            contextMenuScope.f4323b.clear();
            function1.invoke(contextMenuScope);
            contextMenuScope.a(contextMenuColors, composer, 0);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object c(Object obj, Object obj2, Object obj3) {
        final CustomizationConfigurationUiModel customizationConfigurationUiModel = (CustomizationConfigurationUiModel) this.f69000c;
        String str = (String) this.d;
        Composer composer = (Composer) obj2;
        ((Integer) obj3).getClass();
        ((AnimatedVisibilityScope) obj).getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CustomizationConfigurationCard$lambda$6$0$1");
        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
        Alignment.f8582a.getClass();
        final int i2 = 0;
        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer, 0);
        int iHashCode = Long.hashCode(composer.getT());
        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
        Modifier modifierC = ComposedModifierKt.c(composer, dTFunctionNameModifier);
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
        SpacerKt.a(composer, SizeKt.f(a.f(composer, modifierC, ComposeUiNode.Companion.d, "CustomizationConfigurationCard$lambda$6$0$1"), LVAppDesignKitTheme.l(composer).f48416e));
        Modifier modifierD = SizeKt.d(new DTFunctionNameModifier("CustomizationConfigurationCard$lambda$6$0$1"), 1.0f);
        boolean zY = composer.y(customizationConfigurationUiModel);
        Object objX = composer.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (zY || objX == composer$Companion$Empty$1) {
            objX = new Function1() { // from class: rr
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    int i3 = i2;
                    CustomizationConfigurationUiModel customizationConfigurationUiModel2 = customizationConfigurationUiModel;
                    switch (i3) {
                        case 0:
                            SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj4;
                            semanticsPropertyReceiver.getClass();
                            SemanticsPropertiesKt.f(semanticsPropertyReceiver, new CollectionInfo(1, customizationConfigurationUiModel2.f61670e.size()));
                            break;
                        default:
                            LazyListScope lazyListScope = (LazyListScope) obj4;
                            lazyListScope.getClass();
                            final List list = customizationConfigurationUiModel2.f61670e;
                            lazyListScope.h(list.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.pdp.components.subcomponents.CustomizationConfigurationCardKt$CustomizationConfigurationCard$lambda$6$0$1$0$1$0$$inlined$itemsIndexed$default$2
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj5) {
                                    list.get(((Number) obj5).intValue());
                                    return null;
                                }
                            }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.components.subcomponents.CustomizationConfigurationCardKt$CustomizationConfigurationCard$lambda$6$0$1$0$1$0$$inlined$itemsIndexed$default$3
                                @Override // kotlin.jvm.functions.Function4
                                public final Object g(Object obj5, Object obj6, Object obj7, Object obj8) {
                                    int i4;
                                    LazyItemScope lazyItemScope = (LazyItemScope) obj5;
                                    final int iIntValue = ((Number) obj6).intValue();
                                    Composer composer2 = (Composer) obj7;
                                    int iIntValue2 = ((Number) obj8).intValue();
                                    if ((iIntValue2 & 6) == 0) {
                                        i4 = (composer2.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                                    } else {
                                        i4 = iIntValue2;
                                    }
                                    if ((iIntValue2 & 48) == 0) {
                                        i4 |= composer2.d(iIntValue) ? 32 : 16;
                                    }
                                    boolean z = true;
                                    if (composer2.p(i4 & 1, (i4 & 147) != 146)) {
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        final CustomizationInformationUiModel customizationInformationUiModel = (CustomizationInformationUiModel) list.get(iIntValue);
                                        composer2.L(1837406036);
                                        if ((((i4 & 112) ^ 48) <= 32 || !composer2.d(iIntValue)) && (i4 & 48) != 32) {
                                            z = false;
                                        }
                                        boolean zK = composer2.K(customizationInformationUiModel) | z;
                                        Object objX2 = composer2.x();
                                        if (zK || objX2 == Composer.Companion.f7939a) {
                                            objX2 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.components.subcomponents.CustomizationConfigurationCardKt$CustomizationConfigurationCard$4$1$2$1$2$1$1$1$1
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj9) {
                                                    SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj9;
                                                    semanticsPropertyReceiver2.getClass();
                                                    SemanticsPropertiesKt.g(semanticsPropertyReceiver2, new CollectionItemInfo(0, 1, iIntValue, 1));
                                                    CustomizationInformationUiModel customizationInformationUiModel2 = customizationInformationUiModel;
                                                    String str2 = customizationInformationUiModel2.f61674c;
                                                    if (str2 == null) {
                                                        str2 = "";
                                                    }
                                                    SemanticsPropertiesKt.i(semanticsPropertyReceiver2, str2 + " : " + customizationInformationUiModel2.f61673b);
                                                    return Unit.f71739a;
                                                }
                                            };
                                            composer2.q(objX2);
                                        }
                                        CustomizationConfigurationCardKt.b(SemanticsModifierKt.b(Modifier.Companion.f8607b, false, (Function1) objX2), customizationInformationUiModel, composer2, 0);
                                        composer2.F();
                                    } else {
                                        composer2.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }));
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            composer.q(objX);
        }
        Modifier modifierB = SemanticsModifierKt.b(modifierD, false, (Function1) objX);
        Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer).f48415c);
        boolean zY2 = composer.y(customizationConfigurationUiModel);
        Object objX2 = composer.x();
        if (zY2 || objX2 == composer$Companion$Empty$1) {
            final int i3 = 1;
            objX2 = new Function1() { // from class: rr
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    int i4 = i3;
                    CustomizationConfigurationUiModel customizationConfigurationUiModel2 = customizationConfigurationUiModel;
                    switch (i4) {
                        case 0:
                            SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj4;
                            semanticsPropertyReceiver.getClass();
                            SemanticsPropertiesKt.f(semanticsPropertyReceiver, new CollectionInfo(1, customizationConfigurationUiModel2.f61670e.size()));
                            break;
                        default:
                            LazyListScope lazyListScope = (LazyListScope) obj4;
                            lazyListScope.getClass();
                            final List list = customizationConfigurationUiModel2.f61670e;
                            lazyListScope.h(list.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.pdp.components.subcomponents.CustomizationConfigurationCardKt$CustomizationConfigurationCard$lambda$6$0$1$0$1$0$$inlined$itemsIndexed$default$2
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj5) {
                                    list.get(((Number) obj5).intValue());
                                    return null;
                                }
                            }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.components.subcomponents.CustomizationConfigurationCardKt$CustomizationConfigurationCard$lambda$6$0$1$0$1$0$$inlined$itemsIndexed$default$3
                                @Override // kotlin.jvm.functions.Function4
                                public final Object g(Object obj5, Object obj6, Object obj7, Object obj8) {
                                    int i5;
                                    LazyItemScope lazyItemScope = (LazyItemScope) obj5;
                                    final int iIntValue = ((Number) obj6).intValue();
                                    Composer composer2 = (Composer) obj7;
                                    int iIntValue2 = ((Number) obj8).intValue();
                                    if ((iIntValue2 & 6) == 0) {
                                        i5 = (composer2.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                                    } else {
                                        i5 = iIntValue2;
                                    }
                                    if ((iIntValue2 & 48) == 0) {
                                        i5 |= composer2.d(iIntValue) ? 32 : 16;
                                    }
                                    boolean z = true;
                                    if (composer2.p(i5 & 1, (i5 & 147) != 146)) {
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        final CustomizationInformationUiModel customizationInformationUiModel = (CustomizationInformationUiModel) list.get(iIntValue);
                                        composer2.L(1837406036);
                                        if ((((i5 & 112) ^ 48) <= 32 || !composer2.d(iIntValue)) && (i5 & 48) != 32) {
                                            z = false;
                                        }
                                        boolean zK = composer2.K(customizationInformationUiModel) | z;
                                        Object objX3 = composer2.x();
                                        if (zK || objX3 == Composer.Companion.f7939a) {
                                            objX3 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.components.subcomponents.CustomizationConfigurationCardKt$CustomizationConfigurationCard$4$1$2$1$2$1$1$1$1
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj9) {
                                                    SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj9;
                                                    semanticsPropertyReceiver2.getClass();
                                                    SemanticsPropertiesKt.g(semanticsPropertyReceiver2, new CollectionItemInfo(0, 1, iIntValue, 1));
                                                    CustomizationInformationUiModel customizationInformationUiModel2 = customizationInformationUiModel;
                                                    String str2 = customizationInformationUiModel2.f61674c;
                                                    if (str2 == null) {
                                                        str2 = "";
                                                    }
                                                    SemanticsPropertiesKt.i(semanticsPropertyReceiver2, str2 + " : " + customizationInformationUiModel2.f61673b);
                                                    return Unit.f71739a;
                                                }
                                            };
                                            composer2.q(objX3);
                                        }
                                        CustomizationConfigurationCardKt.b(SemanticsModifierKt.b(Modifier.Companion.f8607b, false, (Function1) objX3), customizationInformationUiModel, composer2, 0);
                                        composer2.F();
                                    } else {
                                        composer2.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }));
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            composer.q(objX2);
        }
        LazyDslKt.b(modifierB, null, null, spacedAlignedF, null, null, false, null, (Function1) objX2, composer, 0, 494);
        if (str == null) {
            composer.L(-2058022941);
            composer.F();
        } else {
            SpacerKt.a(composer, SizeKt.f(pq0.j(-2058022940, composer, "CustomizationConfigurationCard$lambda$6$0$1"), LVAppDesignKitTheme.l(composer).f48416e));
            TextKt.c(str, SizeKt.d(new DTFunctionNameModifier("CustomizationConfigurationCard$lambda$6$0$1"), 1.0f), LVAppDesignKitTheme.c(composer).f48361b.d, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).m, composer, 48, 0, 131064);
            composer = composer;
            composer.F();
        }
        composer.r();
        return Unit.f71739a;
    }

    private final Object d(Object obj, Object obj2, Object obj3) {
        ExclusiveSalesViewState exclusiveSalesViewState = (ExclusiveSalesViewState) this.f69000c;
        Function1 function1 = (Function1) this.d;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(WindowInsetsPaddingKt.a(PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("ExclusiveSalesScreen$lambda$2").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer).f48361b.f48375b, RectangleShapeKt.f8913a), paddingValues), paddingValues), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            boolean zY = composer.y(exclusiveSalesViewState) | composer.K(function1);
            Object objX = composer.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new gv((Object) exclusiveSalesViewState, function1, 3);
                composer.q(objX);
            }
            LazyDslKt.a(modifierK, null, null, null, null, null, false, null, (Function1) objX, composer, 0, 510);
            if (exclusiveSalesViewState.f57571a) {
                composer.L(2110347858);
                LVLoadingOverlayKt.a(false, composer, 0, 1);
                composer.F();
            } else {
                composer.L(2110388220);
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object e(Object obj, Object obj2, Object obj3) {
        ColumnScope columnScope = (ColumnScope) this.f69000c;
        ForgetPasswordViewState forgetPasswordViewState = (ForgetPasswordViewState) this.d;
        FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        formFieldGenericUiModel.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(formFieldGenericUiModel) ? 4 : 2;
        }
        boolean z = false;
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (formFieldGenericUiModel.getD() == FormSectionTypeUiModel.NEW_PASSWORD) {
                composer.L(-1392619914);
                PasswordUiModel passwordUiModel = forgetPasswordViewState.f53590f;
                if (StringKtExtKt.g((String) ((SnapshotMutableStateImpl) passwordUiModel.f53493b).getF10755b()) && !passwordUiModel.b()) {
                    z = true;
                }
                AnimatedVisibilityKt.c(columnScope, z, null, null, null, null, ComposableLambdaKt.b(1898080757, new d3(forgetPasswordViewState, 21), composer), composer, 1572864, 30);
                composer.F();
            } else {
                composer.L(-1392093286);
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object f(Object obj, Object obj2, Object obj3) {
        LiveInfoUiModel liveInfoUiModel;
        String str;
        Composer composer;
        ImmersiveArticleTitlesUiModel immersiveArticleTitlesUiModel;
        BiasAlignment.Horizontal horizontal;
        ImmersiveArticleFashionShowSectionUiModel immersiveArticleFashionShowSectionUiModel = (ImmersiveArticleFashionShowSectionUiModel) this.f69000c;
        Function2 function2 = (Function2) this.d;
        BoxScope boxScope = (BoxScope) obj;
        Composer composer2 = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        boxScope.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer2.K(boxScope) ? 4 : 2;
        }
        if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = immersiveArticleFashionShowSectionUiModel.f58678i;
            LiveInfoUiModel liveInfoUiModel2 = immersiveArticleFashionShowSectionUiModel.f58677h;
            if (z) {
                boxScope = boxScope;
                liveInfoUiModel = liveInfoUiModel2;
                str = "ImmersiveArticleFashionShowView$lambda$2$0";
                composer2.L(1240274105);
                composer2.F();
            } else {
                DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(1238077259, composer2, "ImmersiveArticleFashionShowView$lambda$2$0");
                Alignment.f8582a.getClass();
                Modifier modifierM = PaddingKt.m(boxScope.g(dTFunctionNameModifierJ, Alignment.Companion.f8587f), LVAppDesignKitTheme.l(composer2).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48418h, LVAppDesignKitTheme.l(composer2).g, 2);
                BiasAlignment.Horizontal horizontal2 = Alignment.Companion.o;
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal2, composer2, 48);
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
                Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                ImmersiveArticleTitlesUiModel immersiveArticleTitlesUiModel2 = liveInfoUiModel2.f50863b == LiveVideoStatusUiModel.LIVE ? immersiveArticleFashionShowSectionUiModel.f58674c : immersiveArticleFashionShowSectionUiModel.d;
                String str2 = immersiveArticleTitlesUiModel2.f58719b;
                if (str2 == null) {
                    composer2.L(-996092878);
                    composer2.F();
                    immersiveArticleTitlesUiModel = immersiveArticleTitlesUiModel2;
                    liveInfoUiModel = liveInfoUiModel2;
                    str = "ImmersiveArticleFashionShowView$lambda$2$0";
                    horizontal = horizontal2;
                    composer = composer2;
                } else {
                    composer2.L(-996092877);
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer2).g;
                    long j2 = LVAppDesignKitTheme.c(composer2).f48361b.m;
                    TextAlign.f10959b.getClass();
                    composer = composer2;
                    liveInfoUiModel = liveInfoUiModel2;
                    str = "ImmersiveArticleFashionShowView$lambda$2$0";
                    immersiveArticleTitlesUiModel = immersiveArticleTitlesUiModel2;
                    horizontal = horizontal2;
                    TextKt.c(str2, null, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, composer, 0, 0, 130042);
                    composer.F();
                }
                Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier(str), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                String str3 = immersiveArticleTitlesUiModel.f58718a;
                TextStyle textStyle2 = LVAppDesignKitTheme.n(composer).d;
                long j3 = LVAppDesignKitTheme.c(composer).f48361b.m;
                TextAlign.f10959b.getClass();
                TextKt.c(str3, modifierM2, j3, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle2, composer, 0, 0, 130040);
                composer2 = composer;
                Modifier modifierB = ColumnScopeInstance.f4944a.b(PaddingKt.m(new DTFunctionNameModifier(str), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), horizontal);
                ConfigurationIconButton configurationIconButton = LVAppDesignKitTheme.f(composer2).d;
                int i2 = LVAppDesignKitTheme.g(composer2).I;
                String strC = StringResources_androidKt.c(composer2, R.string.alt_play);
                boolean zK = composer2.K(function2) | composer2.y(immersiveArticleFashionShowSectionUiModel);
                Object objX = composer2.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new dt(function2, immersiveArticleFashionShowSectionUiModel, 28);
                    composer2.q(objX);
                }
                LVIconButtonKt.b(modifierB, configurationIconButton, i2, null, strC, false, 0, false, false, (Function0) objX, composer2, 0, 0, 1000);
                composer2.r();
                composer2.F();
            }
            if (liveInfoUiModel.f50863b == LiveVideoStatusUiModel.LIVE) {
                DTFunctionNameModifier dTFunctionNameModifierJ2 = pq0.j(1240357867, composer2, str);
                Alignment.f8582a.getClass();
                LiveTagKt.a(PaddingKt.m(boxScope.g(dTFunctionNameModifierJ2, Alignment.Companion.f8588h), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, 6), composer2, 0);
                composer2.F();
            } else {
                composer2.L(1240709593);
                composer2.F();
            }
        } else {
            composer2.D();
        }
        return Unit.f71739a;
    }

    private final Object i(Object obj, Object obj2, Object obj3) {
        Modifier modifierE = (Modifier) this.f69000c;
        Function3 function3 = (Function3) this.d;
        SnackbarData snackbarData = (SnackbarData) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSnackbarKt.f48665a;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "LVSnackbarHost$lambda$1");
        }
        Modifier modifier = modifierE;
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(snackbarData) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (snackbarData == null) {
                composer.L(-2014208479);
                composer.F();
            } else {
                composer.L(-2014208478);
                Dp.Companion companion = Dp.f11004c;
                Modifier modifierM = PaddingKt.m(modifier, Call.Parameters.DEFAULT_CAMERA_ZOOM, 24.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode = Long.hashCode(composer.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                Modifier modifierC = ComposedModifierKt.c(composer, modifierM);
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
                Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(composer, ComposeUiNode.Companion.f9645h);
                Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                function3.A(snackbarData, composer, 0);
                composer.r();
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object j(Object obj, Object obj2, Object obj3) {
        CommercialNotification commercialNotification = (CommercialNotification) this.f69000c;
        Function1 function1 = (Function1) this.d;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        float f2 = NativeCartBottomSheetsKt.f55062a;
        ((ColumnScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(SizeKt.g(new DTFunctionNameModifier("NativeCartBottomSheetCommercial$lambda$0"), LVAppDesignKitTheme.d(composer).f48383a, NativeCartBottomSheetsKt.f55062a), ScrollKt.b(composer), false, 14);
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
            int i2 = AnnotatedString.f10418f;
            String str = commercialNotification != null ? commercialNotification.f54838c : null;
            if (str == null) {
                str = "";
            }
            TextDecoration.f10965b.getClass();
            TextLinkStyles textLinkStyles = new TextLinkStyles(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), null, null, null, 14, null);
            boolean zK = composer.K(function1);
            Object objX = composer.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new rm(function1, 3);
                composer.q(objX);
            }
            TextKt.d(Html_androidKt.a(str, textLinkStyles, (LinkInteractionListener) objX), null, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(composer).f48427h, composer, 0, 0, 262138);
            SpacerKt.a(composer, SizeKt.f(new DTFunctionNameModifier("NativeCartBottomSheetCommercial$lambda$0"), LVAppDesignKitTheme.d(composer).t));
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object k(Object obj, Object obj2, Object obj3) {
        Function1 function1 = (Function1) this.f69000c;
        NativeLoginViewState nativeLoginViewState = (NativeLoginViewState) this.d;
        FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        formFieldGenericUiModel.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(formFieldGenericUiModel) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (formFieldGenericUiModel.getD() == FormSectionTypeUiModel.PASSWORD) {
                Modifier modifierM = PaddingKt.m(pq0.j(-480650374, composer, "NativeLoginScreen$lambda$2$0$1$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                Alignment.f8582a.getClass();
                Modifier modifierE = ModifierExtKt.e(ColumnScopeInstance.f4944a.b(modifierM, Alignment.Companion.p), "nativeLogin_forgetpassword_button");
                String strC = StringResources_androidKt.c(composer, R.string.mylv_authent_native_forgot_password);
                LVColorScheme lVColorScheme = LVColorScheme.INVERT;
                boolean zK = composer.K(function1) | composer.y(nativeLoginViewState);
                Object objX = composer.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new t30(function1, nativeLoginViewState, 20);
                    composer.q(objX);
                }
                LVLinkKt.a(modifierE, strC, false, lVColorScheme, false, (Function0) objX, composer, 3072, 20);
                composer.F();
            } else {
                composer.L(-479925780);
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        long j2;
        String str;
        Composer composer;
        int i2;
        int i3;
        int i4 = this.f68999b;
        int i5 = 7;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Object obj4 = Composer.Companion.f7939a;
        int i6 = 4;
        int i7 = 2;
        int i8 = 1;
        Object obj5 = this.d;
        Object obj6 = this.f69000c;
        switch (i4) {
            case 0:
                AICompanionViewState aICompanionViewState = (AICompanionViewState) obj6;
                State state = (State) obj5;
                LazyItemScope lazyItemScope = (LazyItemScope) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                int i9 = AICompanionOnboardingScreenKt.f52870b;
                lazyItemScope.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer2.K(lazyItemScope) ? 4 : 2;
                }
                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    float fFloatValue = ((Number) state.getF10755b()).floatValue();
                    AICompanionOnboardingUiModel aICompanionOnboardingUiModel = aICompanionViewState.f52893b;
                    FeatureThemeUiModel featureThemeUiModel = aICompanionOnboardingUiModel != null ? aICompanionOnboardingUiModel.f52891c : null;
                    int i10 = featureThemeUiModel == null ? -1 : AICompanionOnboardingScreenKt.WhenMappings.f52886a[featureThemeUiModel.ordinal()];
                    if (i10 == -1) {
                        composer2.L(578876574);
                        j2 = LVAppDesignKitTheme.c(composer2).f48361b.f48382k;
                        composer2.F();
                    } else if (i10 == 1) {
                        composer2.L(578870724);
                        j2 = LVAppDesignKitTheme.c(composer2).f48361b.m;
                        composer2.F();
                    } else {
                        if (i10 != 2) {
                            throw o60.v(composer2, 578867203);
                        }
                        composer2.L(578874078);
                        j2 = LVAppDesignKitTheme.c(composer2).f48361b.f48382k;
                        composer2.F();
                    }
                    Color color = new Color(j2);
                    AICompanionOnboardingUiModel aICompanionOnboardingUiModel2 = aICompanionViewState.f52893b;
                    AICompanionOnboardingScreenKt.b(lazyItemScope, fFloatValue, color, (aICompanionOnboardingUiModel2 == null || (str = aICompanionOnboardingUiModel2.f52890b) == null) ? null : new Color(ColorKt.b(android.graphics.Color.parseColor(str))), composer2, iIntValue & 14);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 1:
                ColumnScope columnScope = (ColumnScope) obj6;
                AccountActivationViewState accountActivationViewState = (AccountActivationViewState) obj5;
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
                Composer composer3 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                formFieldGenericUiModel.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer3.K(formFieldGenericUiModel) ? 4 : 2;
                }
                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    if (formFieldGenericUiModel.getD() == FormSectionTypeUiModel.NEW_PASSWORD) {
                        composer3.L(-1466456810);
                        PasswordUiModel passwordUiModel = accountActivationViewState.f53394b;
                        AnimatedVisibilityKt.c(columnScope, StringKtExtKt.g((String) ((SnapshotMutableStateImpl) passwordUiModel.f53493b).getF10755b()) && !passwordUiModel.b(), null, null, null, null, ComposableLambdaKt.b(-1999313328, new d3(accountActivationViewState, 0), composer3), composer3, 1572864, 30);
                        composer3.F();
                    } else {
                        composer3.L(-1466048385);
                        composer3.F();
                    }
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 2:
                final LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj6;
                final AddressEditorViewModel addressEditorViewModel = (AddressEditorViewModel) obj5;
                Composer composer4 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer4.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    if (lVModalBottomSheetState.a()) {
                        composer4.L(804445684);
                        LVModalBottomSheetKt.b(null, StringResources_androidKt.c(composer4, R.string.alt_close), null, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(1967617434, new Function3() { // from class: com.vuitton.android.presentation.screen.account.addressautocomplete.components.a
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj7, Object obj8, Object obj9) {
                                Composer composer5 = (Composer) obj8;
                                int iIntValue4 = ((Integer) obj9).intValue();
                                ((ColumnScope) obj7).getClass();
                                if (composer5.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                    AddressEditorViewModel addressEditorViewModel2 = addressEditorViewModel;
                                    boolean zY = composer5.y(addressEditorViewModel2);
                                    Object objX = composer5.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                    if (zY || objX == composer$Companion$Empty$1) {
                                        AddressEditorComposableKt$AddressEditorComposable$7$6$1$1$1 addressEditorComposableKt$AddressEditorComposable$7$6$1$1$1 = new AddressEditorComposableKt$AddressEditorComposable$7$6$1$1$1(0, addressEditorViewModel2, AddressEditorViewModel.class, "deleteAddress", "deleteAddress()V", 0);
                                        composer5.q(addressEditorComposableKt$AddressEditorComposable$7$6$1$1$1);
                                        objX = addressEditorComposableKt$AddressEditorComposable$7$6$1$1$1;
                                    }
                                    Function0 function0 = (Function0) ((KFunction) objX);
                                    LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetState;
                                    boolean zY2 = composer5.y(lVModalBottomSheetState2);
                                    Object objX2 = composer5.x();
                                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                                        AddressEditorComposableKt$AddressEditorComposable$7$6$1$2$1 addressEditorComposableKt$AddressEditorComposable$7$6$1$2$1 = new AddressEditorComposableKt$AddressEditorComposable$7$6$1$2$1(0, lVModalBottomSheetState2, LVModalBottomSheetState.class, "hide", "hide(Lkotlin/jvm/functions/Function0;)V", 0);
                                        composer5.q(addressEditorComposableKt$AddressEditorComposable$7$6$1$2$1);
                                        objX2 = addressEditorComposableKt$AddressEditorComposable$7$6$1$2$1;
                                    }
                                    DeleteAddressBottomSheetKt.a(function0, (Function0) objX2, composer5, 0);
                                } else {
                                    composer5.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer4), composer4, (LVModalBottomSheetState.f48797e << 9) | 100663296, 245);
                        composer4.F();
                    } else {
                        composer4.L(804964345);
                        composer4.F();
                    }
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 3:
                AppInfoViewState appInfoViewState = (AppInfoViewState) obj6;
                Function1 function1 = (Function1) obj5;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer5 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue4 & 6) == 0) {
                    iIntValue4 |= composer5.K(paddingValues) ? 4 : 2;
                }
                if (composer5.p(iIntValue4 & 1, (iIntValue4 & 19) != 18)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(PaddingKt.h(new DTFunctionNameModifier("AppInfoScreen$lambda$1").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.c(composer5).f48361b.f48375b, rectangleShapeKt$RectangleShape$1));
                    boolean zY = composer5.y(appInfoViewState) | composer5.K(function1);
                    Object objX = composer5.x();
                    if (zY || objX == obj4) {
                        objX = new k(appInfoViewState, function1, i6);
                        composer5.q(objX);
                    }
                    LazyDslKt.a(modifierB, null, null, null, null, null, false, null, (Function1) objX, composer5, 0, 510);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 4:
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                AssessmentPreliminaryComponentKt.c((CareServiceDetailUiModel) obj6, (String) obj5, (Composer) obj2, 0);
                return Unit.f71739a;
            case 5:
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                AssessmentReceiveComponentKt.d((InAppDispatch) obj6, (AddressUiModel) obj5, (Composer) obj2, 0);
                return Unit.f71739a;
            case 6:
                AudioGuideTracker audioGuideTracker = (AudioGuideTracker) obj6;
                Function0 function0 = (Function0) obj5;
                Composer composer6 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer6.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    Modifier modifierD = tr.d("AudioGuideBeforeStartBottomSheet$lambda$0$1", 1.0f);
                    Object objX2 = composer6.x();
                    if (objX2 == obj4) {
                        objX2 = new u5(5);
                        composer6.q(objX2);
                    }
                    Modifier modifierB2 = SemanticsModifierKt.b(modifierD, true, (Function1) objX2);
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, composer6, 0);
                    int iHashCode = Long.hashCode(composer6.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer6.n();
                    Modifier modifierC = ComposedModifierKt.c(composer6, modifierB2);
                    ComposeUiNode.b0.getClass();
                    Function0 function2 = ComposeUiNode.Companion.f9641b;
                    if (composer6.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer6.B();
                    if (composer6.getS()) {
                        composer6.C(function2);
                    } else {
                        composer6.o();
                    }
                    Function2 function3 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer6, rowMeasurePolicyA, function3);
                    Function2 function4 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer6, persistentCompositionLocalMapN, function4);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function5 = ComposeUiNode.Companion.g;
                    Updater.c(composer6, numValueOf, function5);
                    Function1 function6 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer6, function6);
                    Function2 function7 = ComposeUiNode.Companion.d;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer6).K1, composer6, 0), null, SizeKt.o(a.f(composer6, modifierC, function7, "AudioGuideBeforeStartBottomSheet$lambda$0$1"), LVAppDesignKitTheme.d(composer6).o), 0L, composer6, 56, 8);
                    TextKt.c(StringResources_androidKt.c(composer6, R.string.description_wifi_bottomsheet_starting), PaddingKt.m(new DTFunctionNameModifier("AudioGuideBeforeStartBottomSheet$lambda$0$1"), LVAppDesignKitTheme.l(composer6).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.c(composer6).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer6).g, composer6, 0, 0, 131064);
                    composer6.r();
                    Modifier modifierM = PaddingKt.m(SizeKt.d(new DTFunctionNameModifier("AudioGuideBeforeStartBottomSheet$lambda$0$1"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    Object objX3 = composer6.x();
                    if (objX3 == obj4) {
                        objX3 = new u5(6);
                        composer6.q(objX3);
                    }
                    Modifier modifierB3 = SemanticsModifierKt.b(modifierM, true, (Function1) objX3);
                    RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, composer6, 0);
                    int iHashCode2 = Long.hashCode(composer6.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer6.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer6, modifierB3);
                    if (composer6.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer6.B();
                    if (composer6.getS()) {
                        composer6.C(function2);
                    } else {
                        composer6.o();
                    }
                    Updater.c(composer6, rowMeasurePolicyA2, function3);
                    Updater.c(composer6, persistentCompositionLocalMapN2, function4);
                    cj.s(iHashCode2, composer6, function5, composer6, function6);
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer6).J1, composer6, 0), null, SizeKt.o(a.f(composer6, modifierC2, function7, "AudioGuideBeforeStartBottomSheet$lambda$0$1"), LVAppDesignKitTheme.d(composer6).o), 0L, composer6, 56, 8);
                    TextKt.c(StringResources_androidKt.c(composer6, R.string.description_headphones_bottomsheet_starting), PaddingKt.m(new DTFunctionNameModifier("AudioGuideBeforeStartBottomSheet$lambda$0$1"), LVAppDesignKitTheme.l(composer6).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.c(composer6).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer6).g, composer6, 0, 0, 131064);
                    composer6.r();
                    Modifier modifierM2 = PaddingKt.m(SizeKt.d(new DTFunctionNameModifier("AudioGuideBeforeStartBottomSheet$lambda$0$1"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    Object objX4 = composer6.x();
                    if (objX4 == obj4) {
                        objX4 = new u5(7);
                        composer6.q(objX4);
                    }
                    Modifier modifierB4 = SemanticsModifierKt.b(modifierM2, true, (Function1) objX4);
                    RowMeasurePolicy rowMeasurePolicyA3 = RowKt.a(arrangement$Start$1, vertical, composer6, 0);
                    int iHashCode3 = Long.hashCode(composer6.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer6.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer6, modifierB4);
                    if (composer6.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer6.B();
                    if (composer6.getS()) {
                        composer6.C(function2);
                    } else {
                        composer6.o();
                    }
                    Updater.c(composer6, rowMeasurePolicyA3, function3);
                    Updater.c(composer6, persistentCompositionLocalMapN3, function4);
                    cj.s(iHashCode3, composer6, function5, composer6, function6);
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer6).L1, composer6, 0), null, SizeKt.o(a.f(composer6, modifierC3, function7, "AudioGuideBeforeStartBottomSheet$lambda$0$1"), LVAppDesignKitTheme.d(composer6).o), 0L, composer6, 56, 8);
                    TextKt.c(StringResources_androidKt.c(composer6, R.string.screenshot_prevention_title), PaddingKt.m(new DTFunctionNameModifier("AudioGuideBeforeStartBottomSheet$lambda$0$1"), LVAppDesignKitTheme.l(composer6).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.c(composer6).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer6).g, composer6, 0, 0, 131064);
                    composer6.r();
                    Modifier modifierE = ModifierExtKt.e(PaddingKt.k(SizeKt.d(new DTFunctionNameModifier("AudioGuideBeforeStartBottomSheet$lambda$0$1"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).f48417f, 1), "audioGuide_beforeStartStart_button");
                    ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer6).f48446a;
                    String strC = StringResources_androidKt.c(composer6, R.string.home_start);
                    boolean zY2 = composer6.y(audioGuideTracker) | composer6.K(function0);
                    Object objX5 = composer6.x();
                    if (zY2 || objX5 == obj4) {
                        objX5 = new ga(audioGuideTracker, function0, 0);
                        composer6.q(objX5);
                    }
                    LVButtonKt.b(0, 504, composer6, modifierE, configurationButton, null, null, strC, (Function0) objX5, false, false, false);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 7:
                BookingUiModel bookingUiModel = (BookingUiModel) obj;
                int iIntValue6 = ((Integer) obj3).intValue();
                bookingUiModel.getClass();
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                BookingDetailsScreenKt.c(bookingUiModel, (Function1) obj6, (Function1) obj5, (Composer) obj2, iIntValue6 & 14);
                return Unit.f71739a;
            case 8:
                BookingFormModuleDataUiModel.SingleChoice singleChoice = (BookingFormModuleDataUiModel.SingleChoice) obj6;
                Function1 function8 = (Function1) obj5;
                BookingFormModuleDataUiModel.ChoiceValue choiceValue = (BookingFormModuleDataUiModel.ChoiceValue) obj;
                Composer composer7 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                choiceValue.getClass();
                if ((iIntValue7 & 6) == 0) {
                    iIntValue7 |= composer7.K(choiceValue) ? 4 : 2;
                }
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 19) != 18)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    Modifier modifierD2 = tr.d("BookingModuleChoiceChips$lambda$0", 1.0f);
                    String str2 = choiceValue.f54510b;
                    boolean zC = Intrinsics.c(choiceValue.f54509a, singleChoice.f54526c);
                    boolean z = !choiceValue.f54512e;
                    int i11 = (composer7.K(function8) ? 1 : 0) | ((iIntValue7 & 14) != 4 ? 0 : 1);
                    Object objX6 = composer7.x();
                    if (i11 != 0 || objX6 == obj4) {
                        objX6 = new tf(function8, choiceValue, i7);
                        composer7.q(objX6);
                    }
                    LVButtonGroupKt.a(modifierD2, str2, zC, z, null, (Function0) objX6, composer7, 6, 16);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 9:
                String str3 = (String) obj6;
                Function1 function9 = (Function1) obj5;
                BookingFormModuleDataUiModel.TimeSlot timeSlot = (BookingFormModuleDataUiModel.TimeSlot) obj;
                Composer composer8 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                timeSlot.getClass();
                if ((iIntValue8 & 6) == 0) {
                    iIntValue8 |= composer8.K(timeSlot) ? 4 : 2;
                }
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 19) != 18)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    Modifier modifierD3 = tr.d("BookingModuleSlotPeriod$lambda$0$0", 1.0f);
                    String str4 = timeSlot.f54534b;
                    boolean zC2 = Intrinsics.c(timeSlot.f54533a, str3);
                    boolean z2 = !timeSlot.d;
                    int i12 = (composer8.K(function9) ? 1 : 0) | ((iIntValue8 & 14) != 4 ? 0 : 1);
                    Object objX7 = composer8.x();
                    if (i12 != 0 || objX7 == obj4) {
                        objX7 = new tf(function9, timeSlot, i5);
                        composer8.q(objX7);
                    }
                    LVButtonGroupKt.a(modifierD3, str4, zC2, z2, null, (Function0) objX7, composer8, 6, 16);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 10:
                NavBackStack navBackStack = (NavBackStack) obj6;
                Function0 function10 = (Function0) obj5;
                BookingRoutes.Pass pass = (BookingRoutes.Pass) obj;
                Composer composer9 = (Composer) obj2;
                int iIntValue9 = ((Integer) obj3).intValue();
                pass.getClass();
                if ((iIntValue9 & 6) == 0) {
                    iIntValue9 |= composer9.K(pass) ? 4 : 2;
                }
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 19) != 18)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    i8 = (iIntValue9 & 14) != 4 ? 0 : 1;
                    Object objX8 = composer9.x();
                    if (i8 != 0 || objX8 == obj4) {
                        objX8 = new c1(pass, 23);
                        composer9.q(objX8);
                    }
                    Function1 function11 = (Function1) objX8;
                    ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer9);
                    if (viewModelStoreOwnerA == null) {
                        md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                        return null;
                    }
                    BookingPassViewModel bookingPassViewModel = (BookingPassViewModel) ViewModelKt.a(Reflection.f71922a.b(BookingPassViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer9), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? HiltViewModelExtensions.a(((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras(), function11) : HiltViewModelExtensions.a(CreationExtras.Empty.f13578c, function11), composer9);
                    boolean zY3 = composer9.y(navBackStack) | composer9.K(function10);
                    Object objX9 = composer9.x();
                    if (zY3 || objX9 == obj4) {
                        objX9 = new y0(navBackStack, function10, 4);
                        composer9.q(objX9);
                    }
                    BookingPassComposableKt.a(bookingPassViewModel, (Function0) objX9, composer9, 0);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 11:
                BookingPassViewState bookingPassViewState = (BookingPassViewState) obj6;
                Function0 function12 = (Function0) obj5;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer10 = (Composer) obj2;
                int iIntValue10 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((iIntValue10 & 6) == 0) {
                    iIntValue10 |= composer10.K(paddingValues2) ? 4 : 2;
                }
                if (composer10.p(iIntValue10 & 1, (iIntValue10 & 19) != 18)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BookingPassScreen$lambda$2");
                    FillElement fillElement = SizeKt.f5052c;
                    Modifier modifierH = PaddingKt.h(dTFunctionNameModifier.o(fillElement), paddingValues2);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                    int iHashCode4 = Long.hashCode(composer10.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer10.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer10, modifierH);
                    ComposeUiNode.b0.getClass();
                    Function0 function13 = ComposeUiNode.Companion.f9641b;
                    if (composer10.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer10.B();
                    if (composer10.getS()) {
                        composer10.C(function13);
                    } else {
                        composer10.o();
                    }
                    Updater.c(composer10, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer10, persistentCompositionLocalMapN4, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer10, Integer.valueOf(iHashCode4), ComposeUiNode.Companion.g);
                    Updater.b(composer10, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer10, modifierC4, ComposeUiNode.Companion.d);
                    if (bookingPassViewState instanceof BookingPassViewState.Loading) {
                        composer10.L(-1230834597);
                        LVFlowerLoaderKt.a(new DTFunctionNameModifier("BookingPassScreen$lambda$2").o(fillElement), null, false, composer10, 6, 6);
                        composer = composer10;
                        composer.F();
                    } else {
                        composer = composer10;
                        if (bookingPassViewState instanceof BookingPassViewState.Success) {
                            PassViewKt.a(PaddingKt.k(pq0.j(-1230689331, composer, "BookingPassScreen$lambda$2"), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), ((BookingPassViewState.Success) bookingPassViewState).f54651a, composer, 0);
                            composer.F();
                        } else {
                            if (!(bookingPassViewState instanceof BookingPassViewState.Error)) {
                                throw o60.v(composer, 930125512);
                            }
                            composer.L(-1230405898);
                            LVEmptyViewKt.e(new DTFunctionNameModifier("BookingPassScreen$lambda$2").o(fillElement), null, StringResources_androidKt.c(composer, R.string.error_generic), null, null, StringResources_androidKt.c(composer, R.string.button_try_again), function12, composer, 6, 122);
                            composer.F();
                        }
                    }
                    composer.r();
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 12:
                BookingFormModuleDataUiModel.MultipleTextCategory multipleTextCategory = (BookingFormModuleDataUiModel.MultipleTextCategory) obj6;
                Function1 function14 = (Function1) obj5;
                Composer composer11 = (Composer) obj2;
                int iIntValue11 = ((Integer) obj3).intValue();
                int i13 = BookingReservationScreenKt.f54457b;
                ((ColumnScope) obj).getClass();
                if (composer11.p(iIntValue11 & 1, (iIntValue11 & 17) != 16)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    if (multipleTextCategory == null) {
                        composer11.L(1231677666);
                        composer11.F();
                    } else {
                        composer11.L(1231677667);
                        BookingModuleMultipleTextKt.b(multipleTextCategory, function14, composer11, 0);
                        composer11.F();
                    }
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 13:
                AtomicLongFieldUpdater atomicLongFieldUpdater = BufferedChannel.f74728e;
                OnUndeliveredElementKt.a((Function1) obj6, obj5, (CoroutineContext) obj3);
                return Unit.f71739a;
            case 14:
                CancellationReasonsBffViewState cancellationReasonsBffViewState = (CancellationReasonsBffViewState) obj6;
                Object obj7 = (Function1) obj5;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer12 = (Composer) obj2;
                int iIntValue12 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((iIntValue12 & 6) == 0) {
                    iIntValue12 |= composer12.K(paddingValues3) ? 4 : 2;
                }
                if (composer12.p(iIntValue12 & 1, (iIntValue12 & 19) != 18)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    Modifier modifierK = PaddingKt.k(PaddingKt.m(PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("CancellationReasonsBffScreen$lambda$1").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer12).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), paddingValues3), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer12).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(composer12).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer12, 6);
                    int iHashCode5 = Long.hashCode(composer12.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer12.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer12, modifierK);
                    ComposeUiNode.b0.getClass();
                    Function0 function15 = ComposeUiNode.Companion.f9641b;
                    if (composer12.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer12.B();
                    if (composer12.getS()) {
                        composer12.C(function15);
                    } else {
                        composer12.o();
                    }
                    Updater.c(composer12, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer12, persistentCompositionLocalMapN5, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer12, Integer.valueOf(iHashCode5), ComposeUiNode.Companion.g);
                    Updater.b(composer12, ComposeUiNode.Companion.f9645h);
                    Modifier modifierM3 = PaddingKt.m(PaddingKt.m(n00.c(composer12, modifierC5, ComposeUiNode.Companion.d, "CancellationReasonsBffScreen$lambda$1", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer12).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer12).f48416e, 7);
                    if (cancellationReasonsBffViewState.f63614c) {
                        i2 = 1273332113;
                        i3 = R.string.dr_decline_subtitle;
                    } else {
                        i2 = 1273430662;
                        i3 = R.string.dr_cancel_appointment_subtitle;
                    }
                    TextKt.c(o60.k(composer12, i2, i3, composer12), modifierM3, LVAppDesignKitTheme.c(composer12).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer12).g, composer12, 0, 0, 131064);
                    composer12.L(-374553610);
                    for (com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel.CancellationReason cancellationReason : cancellationReasonsBffViewState.d) {
                        Modifier modifierD4 = tr.d("CancellationReasonsBffScreen$lambda$1", 1.0f);
                        String str5 = cancellationReason.f64052c;
                        com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel.CancellationReason cancellationReason2 = cancellationReasonsBffViewState.f63615e;
                        boolean zC3 = Intrinsics.c(cancellationReason2 != null ? cancellationReason2.f64051b : null, cancellationReason.f64051b);
                        boolean zK = composer12.K(obj7) | composer12.K(cancellationReason);
                        Object objX10 = composer12.x();
                        if (zK || objX10 == obj4) {
                            objX10 = new vg(obj7, cancellationReason, i7);
                            composer12.q(objX10);
                        }
                        LVRadioButtonBlockKt.a(modifierD4, str5, null, false, zC3, (Function1) objX10, null, null, composer12, 6, 204);
                    }
                    composer12.F();
                    composer12.r();
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 15:
                Context context = (Context) obj5;
                Bitmap bitmap = (Bitmap) obj;
                String str6 = (String) obj2;
                String str7 = (String) obj3;
                bitmap.getClass();
                str6.getClass();
                str7.getClass();
                String string = context.getString(R.string.Native_share_pdp_text, str6, ((PassAppLinkBuilder) obj6).a(CollectionsKt.P(DeepLink.CATALOG.getHost(), DeepLink.CATEGORY.getHost(), str7)));
                string.getClass();
                ShareUtilsKt.a(context, bitmap, str6, string, str6, 32);
                return Unit.f71739a;
            case 16:
                Modifier modifierE2 = (Modifier) obj6;
                Function0 function16 = (Function0) obj5;
                LazyItemScope lazyItemScope2 = (LazyItemScope) obj;
                Composer composer13 = (Composer) obj2;
                int iIntValue13 = ((Integer) obj3).intValue();
                float f2 = CatalogStoreModeKt.f64850a;
                if (modifierE2 != null) {
                    modifierE2 = a.e(modifierE2, "StoreModeExploreScreen$lambda$1$0$0");
                }
                lazyItemScope2.getClass();
                if (composer13.p(iIntValue13 & 1, (iIntValue13 & 17) != 16)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    LVClickableImageCardKt.a(PaddingKt.m(PaddingKt.k(modifierE2, LVAppDesignKitTheme.l(composer13).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer13).f48417f, 7), GradientKt.a(new DTFunctionNameModifier("StoreModeExploreScreen$lambda$1$0$0"), GradientKt.f48343b), CatalogStoreModeKt.f64850a, StringResources_androidKt.c(composer13, R.string.store_mode_home_catalog_image), function16, composer13, KyberEngine.KyberPolyBytes);
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 17:
                return a(obj, obj2, obj3);
            case 18:
                Context context2 = (Context) obj6;
                MutableState mutableState = (MutableState) obj5;
                Composer composer14 = (Composer) obj2;
                int iIntValue14 = ((Integer) obj3).intValue();
                ComposableSingletons$LVNotificationKt composableSingletons$LVNotificationKt = ComposableSingletons$LVNotificationKt.f50950a;
                ((RowScope) obj).getClass();
                if (composer14.p(iIntValue14 & 1, (iIntValue14 & 17) != 16)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    Object objX11 = composer14.x();
                    if (objX11 == obj4) {
                        objX11 = new d0(21, mutableState);
                        composer14.q(objX11);
                    }
                    Function0 function17 = (Function0) objX11;
                    Drawable drawable = ContextCompat.getDrawable(context2, 2131231380);
                    drawable.getClass();
                    LVNotificationKt.b("Texte", "Button", function17, DrawableKt.a(drawable), composer14, 438);
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 19:
                return b(obj, obj2, obj3);
            case 20:
                return c(obj, obj2, obj3);
            case 21:
                NavEntryDecorator navEntryDecorator = (NavEntryDecorator) obj6;
                NavEntry navEntry = (NavEntry) obj5;
                Composer composer15 = (Composer) obj2;
                int iIntValue15 = ((Integer) obj3).intValue();
                if (composer15.p(iIntValue15 & 1, (iIntValue15 & 17) != 16)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    navEntryDecorator.f18401b.A(navEntry, composer15, 0);
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 22:
                return d(obj, obj2, obj3);
            case 23:
                return e(obj, obj2, obj3);
            case 24:
                return f(obj, obj2, obj3);
            case 25:
                return i(obj, obj2, obj3);
            case 26:
                return j(obj, obj2, obj3);
            case 27:
                return k(obj, obj2, obj3);
            default:
                ColumnScope columnScope2 = (ColumnScope) obj6;
                NativeRegisterViewState nativeRegisterViewState = (NativeRegisterViewState) obj5;
                FormFieldGenericUiModel formFieldGenericUiModel2 = (FormFieldGenericUiModel) obj;
                Composer composer16 = (Composer) obj2;
                int iIntValue16 = ((Integer) obj3).intValue();
                formFieldGenericUiModel2.getClass();
                if ((iIntValue16 & 6) == 0) {
                    iIntValue16 |= composer16.K(formFieldGenericUiModel2) ? 4 : 2;
                }
                if (composer16.p(iIntValue16 & 1, (iIntValue16 & 19) != 18)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    if (formFieldGenericUiModel2.getD() == FormSectionTypeUiModel.NEW_PASSWORD) {
                        composer16.L(983312935);
                        PasswordUiModel passwordUiModel2 = nativeRegisterViewState.f54029a.f53952b;
                        AnimatedVisibilityKt.c(columnScope2, StringKtExtKt.g((String) ((SnapshotMutableStateImpl) passwordUiModel2.f53493b).getF10755b()) && !passwordUiModel2.b(), null, null, null, null, ComposableLambdaKt.b(-1117401095, new xe0(nativeRegisterViewState, i8), composer16), composer16, 1572864, 30);
                        composer16.F();
                    } else {
                        composer16.L(983757878);
                        composer16.F();
                    }
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
        }
    }
}
