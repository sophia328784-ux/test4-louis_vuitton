package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
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
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt;
import androidx.navigation3.runtime.NavBackStack;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.networkbench.agent.impl.util.r;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ScreenDimensionsKt;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderStyle;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVBottomRoundOverlayKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.compose.components.LVTagFilterKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.compose.components.TagFilterType;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.compose.ContactUsModalBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.mapper.FeatureThemeMapperKt;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionRoutes;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatComposableKt;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionButtonKt;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionButtonVariant;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionTooltipKt;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideCardKt;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideMiniPlayerKt;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideTrackListKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState;
import com.vuitton.android.presentation.screen.audioguide.models.TrackDetailUiModel;
import com.vuitton.android.presentation.screen.authentication.common.components.a;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterBottomSheetScreen;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.catalog.components.CatalogCategoryScreenKt;
import com.vuitton.android.presentation.screen.catalog.components.CatalogSubcategoryScreenKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentPreliminaryComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentReceiveComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.b;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DistantRepairBottomSheetDatePickerKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairInitiateComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairProductComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.CalendarAvailabilitiesUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step1StateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpSliderKt;
import com.vuitton.android.presentation.screen.pdp.models.PdpFeatureFlags;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.VirtualTryOnUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBooleanFilterUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductSortUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeRoute;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouViewState;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.time.LocalDate;
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
import kotlin.ranges.RangesKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80714c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80716f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f80717h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f80718i;

    public /* synthetic */ w0(ContactUsUiModel contactUsUiModel, ContactUsTracker contactUsTracker, LVModalBottomSheetState lVModalBottomSheetState, Function1 function1, Context context, LVModalBottomSheetState lVModalBottomSheetState2, Function0 function0) {
        this.f80713b = 9;
        this.f80714c = contactUsUiModel;
        this.d = contactUsTracker;
        this.f80715e = lVModalBottomSheetState;
        this.f80717h = function1;
        this.g = context;
        this.f80718i = lVModalBottomSheetState2;
        this.f80716f = function0;
    }

    private final Object a(Object obj, Object obj2, Object obj3) {
        CategoryUiModel categoryUiModel = (CategoryUiModel) this.f80714c;
        CatalogViewState catalogViewState = (CatalogViewState) this.d;
        Function0 function0 = (Function0) this.f80716f;
        LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) this.f80715e;
        Function1 function1 = (Function1) this.f80717h;
        LVModalBottomSheetState lVModalBottomSheetState2 = (LVModalBottomSheetState) this.f80718i;
        Function0 function2 = (Function0) this.g;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((PaddingValues) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CatalogSubcategoryScreen$lambda$14$1");
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierD = SizeKt.d(SizeKt.f(dTFunctionNameModifier, 160.0f), 1.0f);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
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
            Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
            Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(composer, ComposeUiNode.Companion.f9645h);
            Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
            CatalogCategoryScreenKt.b(ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("CatalogSubcategoryScreen$lambda$14$1"), 1.0f), "subcategory_backgroundAsset_view"), categoryUiModel.f55365c, catalogViewState.g.f51775a, composer, 0);
            BoxKt.a(BackgroundKt.b(new DTFunctionNameModifier("CatalogSubcategoryScreen$lambda$14$1").o(SizeKt.f5052c), Color.b(LVAppDesignKitTheme.h(composer).f48404e, LVAppDesignKitTheme.c(composer).f48361b.f48378f), RectangleShapeKt.f8913a), composer, 0);
            Modifier modifierK = PaddingKt.k(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("CatalogSubcategoryScreen$lambda$14$1"), Alignment.Companion.f8589i), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, 1);
            String str = categoryUiModel.f55364b;
            boolean zY = composer.y(lVModalBottomSheetState);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new t8(lVModalBottomSheetState, 3);
                composer.q(objX);
            }
            Function0 function4 = (Function0) objX;
            boolean zK = composer.K(function1);
            Object objX2 = composer.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new u8(function1, 9);
                composer.q(objX2);
            }
            CatalogSubcategoryScreenKt.b(modifierK, str, catalogViewState, function0, function4, (Function0) objX2, composer, 0);
            ContactUsUiModel contactUsUiModel = catalogViewState.f55358f;
            int i2 = LVModalBottomSheetState.f48797e;
            ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetState, lVModalBottomSheetState2, function1, function2, composer, (i2 << 3) | (i2 << 6));
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object b(Object obj, Object obj2, Object obj3) {
        ContactUsUiModel contactUsUiModel;
        ContactUsUiModel contactUsUiModel2 = (ContactUsUiModel) this.f80714c;
        ContactUsTracker contactUsTracker = (ContactUsTracker) this.d;
        LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) this.f80715e;
        Function1 function1 = (Function1) this.f80717h;
        Context context = (Context) this.g;
        LVModalBottomSheetState lVModalBottomSheetState2 = (LVModalBottomSheetState) this.f80718i;
        Function0 function0 = (Function0) this.f80716f;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((ColumnScope) obj).getClass();
        int i2 = 0;
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zY = composer.y(contactUsTracker) | composer.y(lVModalBottomSheetState) | composer.K(function1);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new pp(contactUsTracker, lVModalBottomSheetState, function1, i2);
                composer.q(objX);
            }
            Function0 function2 = (Function0) objX;
            boolean zY2 = composer.y(contactUsTracker) | composer.K(function1) | composer.y(contactUsUiModel2);
            Object objX2 = composer.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new qp(contactUsTracker, function1, contactUsUiModel2, 0);
                composer.q(objX2);
            }
            Function0 function3 = (Function0) objX2;
            boolean zY3 = composer.y(contactUsTracker) | composer.K(function1) | composer.y(contactUsUiModel2);
            Object objX3 = composer.x();
            if (zY3 || objX3 == composer$Companion$Empty$1) {
                objX3 = new qp(contactUsTracker, function1, contactUsUiModel2, 1);
                composer.q(objX3);
            }
            Function0 function4 = (Function0) objX3;
            boolean zY4 = composer.y(contactUsTracker) | composer.y(contactUsUiModel2) | composer.y(context) | composer.K(function1);
            Object objX4 = composer.x();
            if (zY4 || objX4 == composer$Companion$Empty$1) {
                contactUsUiModel = contactUsUiModel2;
                r0 r0Var = new r0(contactUsTracker, contactUsUiModel, context, function1, 8);
                composer.q(r0Var);
                objX4 = r0Var;
            } else {
                contactUsUiModel = contactUsUiModel2;
            }
            Function0 function5 = (Function0) objX4;
            boolean zY5 = composer.y(contactUsTracker) | composer.K(function1) | composer.y(contactUsUiModel);
            Object objX5 = composer.x();
            if (zY5 || objX5 == composer$Companion$Empty$1) {
                objX5 = new qp(contactUsTracker, function1, contactUsUiModel, 2);
                composer.q(objX5);
            }
            Function0 function6 = (Function0) objX5;
            boolean zY6 = composer.y(contactUsTracker) | composer.K(function1) | composer.y(contactUsUiModel);
            Object objX6 = composer.x();
            if (zY6 || objX6 == composer$Companion$Empty$1) {
                objX6 = new qp(contactUsTracker, function1, contactUsUiModel, 3);
                composer.q(objX6);
            }
            Function0 function7 = (Function0) objX6;
            boolean zY7 = composer.y(contactUsTracker) | composer.y(lVModalBottomSheetState) | composer.y(lVModalBottomSheetState2);
            Object objX7 = composer.x();
            if (zY7 || objX7 == composer$Companion$Empty$1) {
                objX7 = new q(contactUsTracker, lVModalBottomSheetState, lVModalBottomSheetState2, 29);
                composer.q(objX7);
            }
            Function0 function8 = (Function0) objX7;
            boolean zK = composer.K(function0) | composer.y(contactUsTracker);
            Object objX8 = composer.x();
            if (zK || objX8 == composer$Companion$Empty$1) {
                objX8 = new tf(function0, contactUsTracker, 27);
                composer.q(objX8);
            }
            ContactUsModalBottomSheetKt.a(contactUsUiModel, function2, function3, function4, function5, function6, function7, function8, (Function0) objX8, composer, 0);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:78:0x0395  */
    /* JADX WARN: Code duplicated, block: B:80:0x039e  */
    /* JADX WARN: Code duplicated, block: B:82:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:85:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:87:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:91:0x03fe  */
    /* JADX WARN: Code duplicated, block: B:93:0x0425  */
    private final Object c(Object obj, Object obj2, Object obj3) {
        MutableState mutableState;
        Function2 function2;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableState mutableState2;
        Function1 function1;
        Function0 function0;
        String str;
        Function2 function3;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        Function1 function4;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapN;
        Modifier modifierC;
        boolean z;
        boolean zK;
        Object objX;
        DistantRepairCalendarViewState distantRepairCalendarViewState = (DistantRepairCalendarViewState) this.f80714c;
        Function2 function5 = (Function2) this.d;
        String str2 = (String) this.f80715e;
        Function0 function6 = (Function0) this.f80716f;
        MutableState mutableState3 = (MutableState) this.g;
        String str3 = (String) this.f80718i;
        Function1 function7 = (Function1) this.f80717h;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        float f2 = DistantRepairBottomSheetDatePickerKt.f57325a;
        ((PaddingValues) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z2 = distantRepairCalendarViewState.f57376c;
            CalendarAvailabilitiesUiModel calendarAvailabilitiesUiModel = distantRepairCalendarViewState.f57375b;
            boolean z3 = distantRepairCalendarViewState.d;
            boolean z4 = distantRepairCalendarViewState.g;
            if (z2) {
                Modifier modifierO = pq0.j(-1682001166, composer, "DistantRepairBottomSheetDatePicker$lambda$4$1").o(SizeKt.f5052c);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8587f, false);
                int iHashCode2 = Long.hashCode(composer.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
                Modifier modifierC2 = ComposedModifierKt.c(composer, modifierO);
                ComposeUiNode.b0.getClass();
                Function0 function8 = ComposeUiNode.Companion.f9641b;
                if (composer.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer.B();
                if (composer.getS()) {
                    composer.C(function8);
                } else {
                    composer.o();
                }
                Updater.c(composer, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                Updater.c(composer, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                Updater.c(composer, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(composer, ComposeUiNode.Companion.f9645h);
                Updater.c(composer, modifierC2, ComposeUiNode.Companion.d);
                ProgressViewKt.a(null, 0L, false, composer, 0, 7);
                composer.r();
                composer.F();
            } else {
                composer.L(-1681599685);
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("DistantRepairBottomSheetDatePicker$lambda$4$1");
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
                int iHashCode3 = Long.hashCode(composer.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer.n();
                Modifier modifierC3 = ComposedModifierKt.c(composer, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                Function0 function9 = ComposeUiNode.Companion.f9641b;
                if (composer.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer.B();
                if (composer.getS()) {
                    composer.C(function9);
                } else {
                    composer.o();
                }
                Function2 function10 = ComposeUiNode.Companion.f9644f;
                Updater.c(composer, columnMeasurePolicyA, function10);
                Function2 function11 = ComposeUiNode.Companion.f9643e;
                Updater.c(composer, persistentCompositionLocalMapN3, function11);
                Integer numValueOf = Integer.valueOf(iHashCode3);
                Function2 function12 = ComposeUiNode.Companion.g;
                Updater.c(composer, numValueOf, function12);
                Function1 function13 = ComposeUiNode.Companion.f9645h;
                Updater.b(composer, function13);
                Function2 function14 = ComposeUiNode.Companion.d;
                Modifier modifierD = ScrollKt.d(a.f(composer, modifierC3, function14, "DistantRepairBottomSheetDatePicker$lambda$4$1"), ScrollKt.b(composer), false, 14);
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
                int iHashCode4 = Long.hashCode(composer.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer.n();
                Modifier modifierC4 = ComposedModifierKt.c(composer, modifierD);
                if (composer.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer.B();
                if (composer.getS()) {
                    composer.C(function9);
                } else {
                    composer.o();
                }
                Updater.c(composer, columnMeasurePolicyA2, function10);
                Updater.c(composer, persistentCompositionLocalMapN4, function11);
                cj.s(iHashCode4, composer, function12, composer, function13);
                DTFunctionNameModifier dTFunctionNameModifierF = a.f(composer, modifierC4, function14, "DistantRepairBottomSheetDatePicker$lambda$4$1");
                List list = (z4 || z3) ? null : calendarAvailabilitiesUiModel.f57367a;
                LocalDate localDate = distantRepairCalendarViewState.f57377e;
                Locale locale = ((Boolean) composer.k(InspectionModeKt.f10102a)).booleanValue() ? Locale.getDefault() : distantRepairCalendarViewState.f57374a.m;
                locale.getClass();
                boolean zK2 = composer.K(function5) | composer.K(str2);
                List list2 = list;
                Object objX2 = composer.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                if (zK2 || objX2 == composer$Companion$Empty$3) {
                    mutableState = mutableState3;
                    objX2 = new n0(function5, str2, mutableState, 22);
                    composer.q(objX2);
                } else {
                    mutableState = mutableState3;
                }
                LVCalendarKt.d(dTFunctionNameModifierF, list2, localDate, locale, false, false, (Function1) objX2, composer, 6, 48);
                if (z4) {
                    str = "DistantRepairBottomSheetDatePicker$lambda$4$1";
                    function2 = function11;
                    composer$Companion$Empty$1 = composer$Companion$Empty$3;
                    function0 = function9;
                    function4 = function13;
                    mutableState2 = mutableState;
                    ProgressViewKt.a(PaddingKt.m(pq0.h(1.0f, 1864903416, composer, "DistantRepairBottomSheetDatePicker$lambda$4$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 0L, false, composer, 0, 6);
                    composer.F();
                } else {
                    function2 = function11;
                    composer$Companion$Empty$1 = composer$Companion$Empty$3;
                    mutableState2 = mutableState;
                    function1 = function13;
                    function0 = function9;
                    str = "DistantRepairBottomSheetDatePicker$lambda$4$1";
                    if (z3) {
                        Modifier modifierF = SizeKt.f(pq0.h(1.0f, 1865243362, composer, str), DistantRepairBottomSheetDatePickerKt.f57325a);
                        MeasurePolicy measurePolicyD3 = BoxKt.d(Alignment.Companion.f8587f, false);
                        int iHashCode5 = Long.hashCode(composer.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer.n();
                        Modifier modifierC5 = ComposedModifierKt.c(composer, modifierF);
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
                        Updater.c(composer, measurePolicyD3, function10);
                        Updater.c(composer, persistentCompositionLocalMapN5, function2);
                        cj.s(iHashCode5, composer, function12, composer, function1);
                        Updater.c(composer, modifierC5, function14);
                        function4 = function1;
                        ProgressViewKt.a(null, 0L, false, composer, 0, 7);
                        composer.r();
                        composer.F();
                    } else if (calendarAvailabilitiesUiModel.f57368b.isEmpty()) {
                        composer.L(1865781212);
                        function3 = function2;
                        TextKt.c(StringResources_androidKt.c(composer, R.string.dr_no_appointment_available), PaddingKt.l(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48415c), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).m, composer, 0, 0, 131064);
                        composer.F();
                        composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    } else {
                        function3 = function2;
                        Modifier modifierK = PaddingKt.k(pq0.j(1866575990, composer, str), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, 1);
                        Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer).f48415c);
                        boolean zY = composer.y(distantRepairCalendarViewState) | composer.K(function6);
                        Object objX3 = composer.x();
                        if (zY) {
                            composer$Companion$Empty$2 = composer$Companion$Empty$1;
                        } else {
                            composer$Companion$Empty$2 = composer$Companion$Empty$1;
                            if (objX3 == composer$Companion$Empty$2) {
                            }
                            LazyDslKt.b(modifierK, null, null, spacedAlignedF, null, null, false, null, (Function1) objX3, composer, 0, 494);
                            composer.F();
                        }
                        objX3 = new n0(distantRepairCalendarViewState, function6, mutableState2);
                        composer.q(objX3);
                        LazyDslKt.b(modifierK, null, null, spacedAlignedF, null, null, false, null, (Function1) objX3, composer, 0, 494);
                        composer.F();
                    }
                    composer.r();
                    Modifier modifierD2 = SizeKt.d(BackgroundKt.b(new DTFunctionNameModifier(str), LVAppDesignKitTheme.c(composer).f48361b.f48374a, RectangleShapeKt.f8913a), 1.0f);
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                    iHashCode = Long.hashCode(composer.getT());
                    persistentCompositionLocalMapN = composer.n();
                    modifierC = ComposedModifierKt.c(composer, modifierD2);
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
                    Updater.c(composer, measurePolicyD, function10);
                    Updater.c(composer, persistentCompositionLocalMapN, function3);
                    cj.s(iHashCode, composer, function12, composer, function1);
                    Updater.c(composer, modifierC, function14);
                    ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer).f48446a;
                    Modifier modifierE = ModifierExtKt.e(PaddingKt.m(tr.d(str, 1.0f), LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48415c, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), "careservicesCalendar_select_button");
                    if (((TimeSlotUiModel) mutableState2.getF10755b()) != null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    zK = composer.K(function7);
                    objX = composer.x();
                    if (zK || objX == composer$Companion$Empty$2) {
                        objX = new o8(mutableState2, function7, 6);
                        composer.q(objX);
                    }
                    LVButtonKt.b(0, 376, composer, modifierE, configurationButton, null, null, str3, (Function0) objX, false, z, false);
                    composer.r();
                    composer.r();
                    composer.F();
                }
                function1 = function4;
                function3 = function2;
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                composer.r();
                Modifier modifierD3 = SizeKt.d(BackgroundKt.b(new DTFunctionNameModifier(str), LVAppDesignKitTheme.c(composer).f48361b.f48374a, RectangleShapeKt.f8913a), 1.0f);
                measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                iHashCode = Long.hashCode(composer.getT());
                persistentCompositionLocalMapN = composer.n();
                modifierC = ComposedModifierKt.c(composer, modifierD3);
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
                Updater.c(composer, measurePolicyD, function10);
                Updater.c(composer, persistentCompositionLocalMapN, function3);
                cj.s(iHashCode, composer, function12, composer, function1);
                Updater.c(composer, modifierC, function14);
                ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(composer).f48446a;
                Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(tr.d(str, 1.0f), LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48415c, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), "careservicesCalendar_select_button");
                if (((TimeSlotUiModel) mutableState2.getF10755b()) != null) {
                    z = true;
                } else {
                    z = false;
                }
                zK = composer.K(function7);
                objX = composer.x();
                if (zK) {
                    objX = new o8(mutableState2, function7, 6);
                    composer.q(objX);
                } else {
                    objX = new o8(mutableState2, function7, 6);
                    composer.q(objX);
                }
                LVButtonKt.b(0, 376, composer, modifierE2, configurationButton2, null, null, str3, (Function0) objX, false, z, false);
                composer.r();
                composer.r();
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object d(Object obj, Object obj2, Object obj3) {
        DistantRepairFormViewState distantRepairFormViewState = (DistantRepairFormViewState) this.f80714c;
        Function1 function1 = (Function1) this.f80717h;
        Function1 function2 = (Function1) this.d;
        Function1 function3 = (Function1) this.f80715e;
        Function1 function4 = (Function1) this.g;
        Function1 function5 = (Function1) this.f80718i;
        Function0 function0 = (Function0) this.f80716f;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((LazyItemScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DistantRepairProductComponentKt.a(distantRepairFormViewState.f57380b.f57391c, distantRepairFormViewState.f57381c.f57401a, distantRepairFormViewState.f57382e, distantRepairFormViewState.f57383f.f57395a, function1, function2, function3, function4, function5, function0, composer, 0);
            SpacerKt.a(composer, SizeKt.f(new DTFunctionNameModifier("DistantRepairFormComponent$lambda$0$0$3"), LVAppDesignKitTheme.l(composer).f48417f));
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object e(Object obj, Object obj2, Object obj3) {
        String str;
        boolean z;
        Object syVar;
        Function1 function1;
        Function1 function2;
        Object obj4;
        Function0 function0;
        TagFilterType tagFilterType;
        List list = (List) this.f80714c;
        Alignment.Horizontal horizontal = (Alignment.Horizontal) this.d;
        Context context = (Context) this.f80715e;
        Function1 function3 = (Function1) this.f80717h;
        Function1 function4 = (Function1) this.f80716f;
        Function1 function5 = (Function1) this.g;
        Function1 function6 = (Function1) this.f80718i;
        Composer composer = (Composer) obj2;
        ((Integer) obj3).getClass();
        ((AnimatedVisibilityScope) obj).getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        String str2 = "AnimatedFiltersList$lambda$1$1";
        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AnimatedFiltersList$lambda$1$1");
        boolean zY = composer.y(list);
        Object objX = composer.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (zY || objX == composer$Companion$Empty$1) {
            objX = new ud(list, 5);
            composer.q(objX);
        }
        Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX);
        Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(composer).f48415c), horizontal, composer, 0);
        int iHashCode = Long.hashCode(composer.getT());
        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
        Modifier modifierC = ComposedModifierKt.c(composer, modifierB);
        ComposeUiNode.b0.getClass();
        Function0 function7 = ComposeUiNode.Companion.f9641b;
        if (composer.getF7976a() == null) {
            ComposablesKt.b();
            throw null;
        }
        composer.B();
        if (composer.getS()) {
            composer.C(function7);
        } else {
            composer.o();
        }
        Updater.c(composer, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
        Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
        Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
        Updater.b(composer, ComposeUiNode.Companion.f9645h);
        Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
        composer.L(683836348);
        Iterator it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            Object objX2 = composer.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(function5.invoke(next));
                composer.q(objX2);
            }
            MutableState mutableState = (MutableState) objX2;
            boolean zY2 = composer.y(context) | composer.K(function3) | composer.y(next);
            Object objX3 = composer.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                r0 r0Var = new r0(context, function3, next, mutableState, 10);
                composer.q(r0Var);
                objX3 = r0Var;
            }
            Function0 function8 = (Function0) objX3;
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier(str2);
            boolean z2 = next instanceof ProductBooleanFilterUiModel;
            String str3 = "";
            if (z2) {
                str = "QAF_BooleanFilter_button";
            } else {
                str = next instanceof ProductSortUiModel ? "QAF_SortByFilter_button" : "";
            }
            boolean zY3 = composer.y(next) | composer.y(context) | composer.K(function4) | composer.K(function5) | composer.d(i2) | composer.K(function8);
            Iterator it2 = it;
            Object objX4 = composer.x();
            if (zY3 || objX4 == composer$Companion$Empty$1) {
                z = z2;
                function1 = function5;
                Context context2 = context;
                function2 = function4;
                syVar = new sy(next, context2, function2, function1, i2, function8);
                obj4 = next;
                context = context2;
                function0 = function8;
                composer.q(syVar);
            } else {
                syVar = objX4;
                z = z2;
                function2 = function4;
                obj4 = next;
                function0 = function8;
                function1 = function5;
            }
            Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(dTFunctionNameModifier2, str, (Function1) syVar, 2);
            String str4 = (String) function2.invoke(obj4);
            if (z) {
                str3 = "QAF_BooleanFilterNameItem_text";
            } else if (obj4 instanceof ProductSortUiModel) {
                str3 = "QAF_SortFilterName_text";
            }
            LVColorScheme lVColorScheme = LVColorScheme.INVERT;
            if ((obj4 instanceof ProductSortUiModel) && ((Boolean) mutableState.getF10755b()).booleanValue()) {
                tagFilterType = TagFilterType.ACTIVE;
            } else if (((Boolean) function1.invoke(obj4)).booleanValue()) {
                tagFilterType = TagFilterType.ACTIVE_DELETABLE;
            } else {
                tagFilterType = ((Boolean) function6.invoke(obj4)).booleanValue() ? TagFilterType.ENABLED : TagFilterType.DISABLED;
            }
            Composer composer2 = composer;
            LVTagFilterKt.a(modifierA, str4, str3, tagFilterType, null, false, lVColorScheme, false, function0, composer2, 1572864, 176);
            composer$Companion$Empty$1 = composer$Companion$Empty$1;
            str2 = str2;
            function4 = function2;
            function5 = function1;
            composer = composer2;
            i2 = i3;
            function3 = function3;
            it = it2;
        }
        Composer composer3 = composer;
        composer3.F();
        composer3.r();
        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        return Unit.f71739a;
    }

    private final Object f(Object obj, Object obj2, Object obj3) {
        NativeRegisterBottomSheetScreen nativeRegisterBottomSheetScreen = (NativeRegisterBottomSheetScreen) this.f80714c;
        String str = (String) this.d;
        Function0 function0 = (Function0) this.f80716f;
        CoroutineScope coroutineScope = (CoroutineScope) this.f80715e;
        LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) this.f80717h;
        Function0 function1 = (Function0) this.g;
        Function0 function2 = (Function0) this.f80718i;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((ColumnScope) obj).getClass();
        int i2 = 0;
        int i3 = 1;
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (nativeRegisterBottomSheetScreen == null) {
                composer.L(1748517316);
                composer.F();
            } else {
                composer.L(1748517317);
                if (str == null) {
                    str = "";
                }
                boolean zK = composer.K(function0) | composer.y(coroutineScope) | composer.y(lVModalBottomSheetState);
                Object objX = composer.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (zK || objX == composer$Companion$Empty$1) {
                    objX = new a(function0, coroutineScope, lVModalBottomSheetState, i2);
                    composer.q(objX);
                }
                Function0 function3 = (Function0) objX;
                boolean zK2 = composer.K(function1) | composer.y(coroutineScope) | composer.y(lVModalBottomSheetState);
                Object objX2 = composer.x();
                if (zK2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new a(function1, coroutineScope, lVModalBottomSheetState, i3);
                    composer.q(objX2);
                }
                Function0 function4 = (Function0) objX2;
                boolean zK3 = composer.K(function2);
                Object objX3 = composer.x();
                if (zK3 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new ee0(function2, 1);
                    composer.q(objX3);
                }
                NativeRegisterBottomSheetScreenKt.c(nativeRegisterBottomSheetScreen, str, function3, function4, (Function0) objX3, composer, 0);
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object i(Object obj, Object obj2, Object obj3) {
        OsaLocationFormBottomSheetScreen osaLocationFormBottomSheetScreen = (OsaLocationFormBottomSheetScreen) this.f80714c;
        OsaLocationFormViewState osaLocationFormViewState = (OsaLocationFormViewState) this.d;
        Function0 function0 = (Function0) this.f80716f;
        Function1 function1 = (Function1) this.f80717h;
        Function0 function2 = (Function0) this.g;
        Function0 function3 = (Function0) this.f80715e;
        Function0 function4 = (Function0) this.f80718i;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((ColumnScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (osaLocationFormBottomSheetScreen == null) {
                composer.L(-725172566);
                composer.F();
            } else {
                composer.L(-725172565);
                OsaLocationFormBottomSheetScreenKt.b(osaLocationFormViewState.f60836a, osaLocationFormBottomSheetScreen, osaLocationFormViewState.f60837b, osaLocationFormViewState.d, osaLocationFormViewState.f60842i, function0, function1, function2, function3, function4, composer, 0);
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x006f  */
    /* JADX WARN: Code duplicated, block: B:25:0x007d  */
    private final Object j(Object obj, Object obj2, Object obj3) {
        boolean z;
        boolean z2;
        VirtualTryOnUiModel virtualTryOnUiModel;
        PdpViewState pdpViewState = (PdpViewState) this.f80714c;
        ImmutableList immutableList = (ImmutableList) this.d;
        Function0 function0 = (Function0) this.f80716f;
        PdpTracker pdpTracker = (PdpTracker) this.f80715e;
        ProductUiModel productUiModel = (ProductUiModel) this.f80718i;
        Function0 function1 = (Function0) this.g;
        Function1 function2 = (Function1) this.f80717h;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((LazyItemScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierE = ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("PdpMainView$lambda$3$0$0"), 1.0f), "pdp_mainAsset_image");
            PdpFeatureFlags pdpFeatureFlags = pdpViewState.f61571i;
            ProductUiModel productUiModel2 = pdpViewState.f61566b;
            if (pdpFeatureFlags.d) {
                if (((productUiModel2 == null || (virtualTryOnUiModel = productUiModel2.r) == null) ? null : virtualTryOnUiModel.f62208b) != null) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            if (pdpFeatureFlags.f61556c) {
                z2 = productUiModel2 != null ? productUiModel2.K : false;
            }
            boolean z3 = pdpViewState.z;
            boolean z4 = pdpViewState.A;
            boolean zY = composer.y(pdpTracker) | composer.y(productUiModel) | composer.K(function1);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new mm0(pdpTracker, productUiModel, function1, 0);
                composer.q(objX);
            }
            Function0 function3 = (Function0) objX;
            boolean zY2 = composer.y(pdpViewState) | composer.y(pdpTracker);
            Object objX2 = composer.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new xg0(pdpViewState, pdpTracker, 14);
                composer.q(objX2);
            }
            Function1 function4 = (Function1) objX2;
            boolean zK = composer.K(function2);
            Object objX3 = composer.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new k0(function2, 25);
                composer.q(objX3);
            }
            PdpSliderKt.a(modifierE, z4, z2, z3, z, immutableList, function0, function3, function4, (Function1) objX3, composer, 0);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        final MutableIntState mutableIntState;
        Composer composer;
        final float f2;
        final int i2;
        Function0 function0;
        AssetImageUiModel assetImageUiModel;
        NavHostController navHostController;
        final PaddingValues paddingValues;
        String strK;
        int i3 = this.f80713b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj4 = this.f80717h;
        Object obj5 = this.f80718i;
        Object obj6 = this.g;
        Object obj7 = this.f80716f;
        Object obj8 = this.f80715e;
        Object obj9 = this.d;
        Object obj10 = this.f80714c;
        switch (i3) {
            case 0:
                boolean z = false;
                AICompanionViewModel aICompanionViewModel = (AICompanionViewModel) obj10;
                ContributionLinkNavigator contributionLinkNavigator = (ContributionLinkNavigator) obj9;
                NavBackStack navBackStack = (NavBackStack) obj8;
                Function0 function1 = (Function0) obj7;
                Function1 function2 = (Function1) obj4;
                Function3 function3 = (Function3) obj5;
                Function0 function4 = (Function0) obj6;
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((AICompanionRoutes.Chat) obj).getClass();
                if ((iIntValue & 17) != 16) {
                    z = true;
                }
                if (composer2.p(iIntValue & 1, z)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    boolean zY = composer2.y(aICompanionViewModel) | composer2.y(navBackStack);
                    Object objX = composer2.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new u0(aICompanionViewModel, navBackStack);
                        composer2.q(objX);
                    }
                    AICompanionChatComposableKt.a(aICompanionViewModel, contributionLinkNavigator, (Function0) objX, function1, function2, function3, function4, composer2, 0);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 1:
                final Density density = (Density) obj10;
                FocusRequester focusRequester = (FocusRequester) obj9;
                Rect rect = (Rect) obj8;
                float f3 = rect.f8811a;
                MutableIntState mutableIntState2 = (MutableIntState) obj7;
                LayoutDirection layoutDirection = (LayoutDirection) obj6;
                MutableState mutableState = (MutableState) obj4;
                MutableState mutableState2 = (MutableState) obj5;
                Composer composer3 = (Composer) obj2;
                ((Integer) obj3).getClass();
                float f4 = AICompanionTooltipKt.f52836a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AICompanionTooltip$lambda$16$1$0");
                FillElement fillElement = SizeKt.f5052c;
                Modifier modifierO = dTFunctionNameModifier.o(fillElement);
                Alignment.f8582a.getClass();
                BiasAlignment biasAlignment = Alignment.Companion.f8584b;
                MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
                int iHashCode = Long.hashCode(composer3.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                Modifier modifierC = ComposedModifierKt.c(composer3, modifierO);
                ComposeUiNode.b0.getClass();
                Function0 function5 = ComposeUiNode.Companion.f9641b;
                if (composer3.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer3.B();
                if (composer3.getS()) {
                    composer3.C(function5);
                } else {
                    composer3.o();
                }
                Function2 function6 = ComposeUiNode.Companion.f9644f;
                Updater.c(composer3, measurePolicyD, function6);
                Function2 function7 = ComposeUiNode.Companion.f9643e;
                Updater.c(composer3, persistentCompositionLocalMapN, function7);
                Integer numValueOf = Integer.valueOf(iHashCode);
                Function2 function8 = ComposeUiNode.Companion.g;
                Updater.c(composer3, numValueOf, function8);
                Function1 function9 = ComposeUiNode.Companion.f9645h;
                Updater.b(composer3, function9);
                Function2 function10 = ComposeUiNode.Companion.d;
                Updater.c(composer3, modifierC, function10);
                Modifier modifierO2 = new DTFunctionNameModifier("AICompanionTooltip$lambda$16$1$0").o(fillElement);
                Color.f8866b.getClass();
                Modifier modifierB = BackgroundKt.b(modifierO2, Color.b(0.5f, Color.f8867c), rectangleShapeKt$RectangleShape$1);
                Object objX2 = composer3.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new p(7);
                    composer3.q(objX2);
                }
                BoxKt.a(SemanticsModifierKt.b(modifierB, false, (Function1) objX2), composer3, 0);
                final float fL1 = density.l1(f3);
                float fL2 = density.l1(rect.f8812b);
                final float fL3 = density.l1(rect.f8813c - f3);
                final float f5 = ((Configuration) composer3.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
                Dp.Companion companion = Dp.f11004c;
                final float f6 = LVAppDesignKitTheme.d(composer3).f48388h;
                final float f7 = LVAppDesignKitTheme.d(composer3).m;
                final float f8 = LVAppDesignKitTheme.l(composer3).f48415c;
                final float f9 = LVAppDesignKitTheme.l(composer3).f48416e;
                boolean zC = composer3.c(fL1) | composer3.c(fL2) | composer3.c(fL3) | composer3.c(f5) | composer3.c(f6) | composer3.c(f8) | composer3.c(f9);
                Object objX3 = composer3.x();
                if (zC || objX3 == composer$Companion$Empty$1) {
                    mutableIntState = mutableIntState2;
                    composer = composer3;
                    f2 = fL2;
                    objX3 = SnapshotStateKt.e(new Function0() { // from class: com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.b
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            float f10 = AICompanionTooltipKt.f52836a;
                            float fK1 = density.k1(mutableIntState.f());
                            float f11 = fL3 / 2.0f;
                            Dp.Companion companion2 = Dp.f11004c;
                            float f12 = fL1 + f11;
                            float f13 = AICompanionTooltipKt.f52836a;
                            Dp dp = new Dp(f12 - (f13 / 2.0f));
                            float f14 = f9;
                            Comparable comparableA = RangesKt.a(dp, new Dp(f14));
                            Dp dp2 = new Dp((f5 - f13) - f14);
                            if (((Dp) comparableA).compareTo(dp2) > 0) {
                                comparableA = dp2;
                            }
                            float f15 = ((Dp) comparableA).f11006b;
                            float f16 = ((f2 - fK1) - f6) - f8;
                            return new TooltipOffsets(f15, f16, f12 - (f7 / 2.0f), f16 + fK1, null);
                        }
                    });
                    composer.q(objX3);
                } else {
                    f2 = fL2;
                    mutableIntState = mutableIntState2;
                    composer = composer3;
                }
                final State state = (State) objX3;
                Modifier modifierG = n00.g(r59, "aiCompanion_tooltip_view");
                boolean zK = composer.K(state);
                Object objX4 = composer.x();
                if (zK || objX4 == composer$Companion$Empty$1) {
                    i2 = 0;
                    objX4 = new Function1() { // from class: com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.a
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj11) {
                            int i4 = i2;
                            State state2 = state;
                            Density density2 = (Density) obj11;
                            switch (i4) {
                                case 0:
                                    float f10 = AICompanionTooltipKt.f52836a;
                                    density2.getClass();
                                    int iB0 = density2.B0(((TooltipOffsets) state2.getF10755b()).f52846a);
                                    return new IntOffset((((long) density2.B0(((TooltipOffsets) state2.getF10755b()).f52847b)) & BodyPartID.bodyIdMax) | (((long) iB0) << 32));
                                default:
                                    float f11 = AICompanionTooltipKt.f52836a;
                                    density2.getClass();
                                    int iB1 = density2.B0(((TooltipOffsets) state2.getF10755b()).f52848c);
                                    return new IntOffset((((long) density2.B0(((TooltipOffsets) state2.getF10755b()).d)) & BodyPartID.bodyIdMax) | (((long) iB1) << 32));
                            }
                        }
                    };
                    composer.q(objX4);
                } else {
                    i2 = 0;
                }
                Modifier modifierV = SizeKt.v(SizeKt.u(OffsetKt.a(modifierG, (Function1) objX4), Call.Parameters.DEFAULT_CAMERA_ZOOM, AICompanionTooltipKt.f52836a, 1), null, 3);
                Object objX5 = composer.x();
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = new q1(mutableIntState, i2);
                    composer.q(objX5);
                }
                Modifier modifierI = PaddingKt.i(BackgroundKt.b(com.vuitton.android.designkit.components.ModifierExtKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.d(composer).f48389i, LVAppDesignKitTheme.d(composer).f48388h, 6, LVAppDesignKitTheme.c(composer).f48361b.y, FocusableKt.c(FocusRequesterModifierKt.a(OnRemeasuredModifierKt.a(modifierV, (Function1) objX5), focusRequester), null, 3)), LVAppDesignKitTheme.c(composer).f48361b.y, LVAppDesignKitTheme.j(composer).f48411c), LVAppDesignKitTheme.l(composer).f48416e);
                MeasurePolicy measurePolicyD2 = BoxKt.d(r58, false);
                int iHashCode2 = Long.hashCode(composer.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
                Modifier modifierC2 = ComposedModifierKt.c(composer, modifierI);
                if (composer.getF7976a() == null) {
                    ComposablesKt.b();
                    throw null;
                }
                composer.B();
                if (composer.getS()) {
                    function0 = function5;
                    composer.C(function0);
                } else {
                    function0 = function5;
                    composer.o();
                }
                Updater.c(composer, measurePolicyD2, function6);
                Updater.c(composer, persistentCompositionLocalMapN2, function7);
                cj.s(iHashCode2, composer, function8, composer, function9);
                Updater.c(composer, modifierC2, function10);
                CompositionLocalKt.a(CompositionLocalsKt.n.c(layoutDirection), ComposableLambdaKt.b(842695829, new r1(0, mutableState), composer), composer, 56);
                composer.r();
                Object objX6 = composer.x();
                if (objX6 == composer$Companion$Empty$1) {
                    objX6 = AndroidPath_androidKt.a();
                    composer.q(objX6);
                }
                Path path = (Path) objX6;
                long j2 = LVAppDesignKitTheme.c(composer).f48361b.y;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier(r59);
                boolean zK2 = composer.K(state);
                Object objX7 = composer.x();
                if (zK2 || objX7 == composer$Companion$Empty$1) {
                    final int i4 = 1;
                    objX7 = new Function1() { // from class: com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.a
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj11) {
                            int i5 = i4;
                            State state2 = state;
                            Density density2 = (Density) obj11;
                            switch (i5) {
                                case 0:
                                    float f10 = AICompanionTooltipKt.f52836a;
                                    density2.getClass();
                                    int iB0 = density2.B0(((TooltipOffsets) state2.getF10755b()).f52846a);
                                    return new IntOffset((((long) density2.B0(((TooltipOffsets) state2.getF10755b()).f52847b)) & BodyPartID.bodyIdMax) | (((long) iB0) << 32));
                                default:
                                    float f11 = AICompanionTooltipKt.f52836a;
                                    density2.getClass();
                                    int iB1 = density2.B0(((TooltipOffsets) state2.getF10755b()).f52848c);
                                    return new IntOffset((((long) density2.B0(((TooltipOffsets) state2.getF10755b()).d)) & BodyPartID.bodyIdMax) | (((long) iB1) << 32));
                            }
                        }
                    };
                    composer.q(objX7);
                }
                Modifier modifierP = SizeKt.p(OffsetKt.a(dTFunctionNameModifier2, (Function1) objX7), f7, f6);
                Object objX8 = composer.x();
                if (objX8 == composer$Companion$Empty$1) {
                    objX8 = new p(6);
                    composer.q(objX8);
                }
                int i5 = 0;
                Modifier modifierB2 = SemanticsModifierKt.b(modifierP, false, (Function1) objX8);
                boolean zY2 = composer.y(path) | composer.e(j2);
                Object objX9 = composer.x();
                if (zY2 || objX9 == composer$Companion$Empty$1) {
                    objX9 = new s1(path, j2, i5);
                    composer.q(objX9);
                }
                CanvasKt.a(modifierB2, (Function1) objX9, composer, 0);
                Modifier modifierB3 = OffsetKt.b(new DTFunctionNameModifier("AICompanionTooltip$lambda$16$1$0"), fL1, f2);
                MeasurePolicy measurePolicyD3 = BoxKt.d(biasAlignment, false);
                int iHashCode3 = Long.hashCode(composer.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer.n();
                Modifier modifierC3 = ComposedModifierKt.c(composer, modifierB3);
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
                Updater.c(composer, measurePolicyD3, function6);
                Updater.c(composer, persistentCompositionLocalMapN3, function7);
                cj.s(iHashCode3, composer, function8, composer, function9);
                Updater.c(composer, modifierC3, function10);
                AICompanionButtonVariant aICompanionButtonVariant = AICompanionButtonVariant.INVERT;
                Object objX10 = composer.x();
                if (objX10 == composer$Companion$Empty$1) {
                    objX10 = new t1(mutableState2, mutableState, 0);
                    composer.q(objX10);
                }
                Composer composer4 = composer;
                AICompanionButtonKt.a(null, aICompanionButtonVariant, (Function0) objX10, composer4, 432, 1);
                composer4.r();
                composer4.r();
                return Unit.f71739a;
            case 2:
                AssessmentBffViewState assessmentBffViewState = (AssessmentBffViewState) obj10;
                Function1 function11 = (Function1) obj4;
                Function1 function12 = (Function1) obj9;
                Function1 function13 = (Function1) obj8;
                Function1 function14 = (Function1) obj7;
                CoroutineScope coroutineScope = (CoroutineScope) obj6;
                LazyListState lazyListState = (LazyListState) obj5;
                Composer composer5 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer5.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    InAppDispatch inAppDispatch = assessmentBffViewState.f57344a;
                    StepState stepState = assessmentBffViewState.f57346c.f57343c;
                    List list = assessmentBffViewState.f57347e;
                    AddressUiModel addressUiModel = assessmentBffViewState.f57348f;
                    boolean zK3 = composer5.K(function12);
                    Object objX11 = composer5.x();
                    if (zK3 || objX11 == composer$Companion$Empty$1) {
                        objX11 = new k0(function12, 1);
                        composer5.q(objX11);
                    }
                    Function1 function15 = (Function1) objX11;
                    boolean zK4 = composer5.K(function14) | composer5.y(coroutineScope) | composer5.K(lazyListState);
                    Object objX12 = composer5.x();
                    if (zK4 || objX12 == composer$Companion$Empty$1) {
                        objX12 = new com.vuitton.android.presentation.screen.distantrepairs.assessment.components.a(function14, coroutineScope, lazyListState, 2);
                        composer5.q(objX12);
                    }
                    AssessmentReceiveComponentKt.b(inAppDispatch, stepState, list, addressUiModel, function11, function15, function13, (Function1) objX12, composer5, 0);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 3:
                AssessmentViewState assessmentViewState = (AssessmentViewState) obj10;
                Function1 function16 = (Function1) obj4;
                Function1 function17 = (Function1) obj9;
                Function1 function18 = (Function1) obj8;
                Function1 function19 = (Function1) obj7;
                CoroutineScope coroutineScope2 = (CoroutineScope) obj6;
                LazyListState lazyListState2 = (LazyListState) obj5;
                Composer composer6 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer6.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    InAppDispatch inAppDispatch2 = assessmentViewState.f57356a;
                    StepState stepState2 = assessmentViewState.f57358c.f57355c;
                    List list2 = assessmentViewState.f57360f;
                    AddressUiModel addressUiModel2 = assessmentViewState.g;
                    boolean zK5 = composer6.K(function17);
                    Object objX13 = composer6.x();
                    if (zK5 || objX13 == composer$Companion$Empty$1) {
                        objX13 = new k0(function17, 2);
                        composer6.q(objX13);
                    }
                    Function1 function20 = (Function1) objX13;
                    boolean zK6 = composer6.K(function19) | composer6.y(coroutineScope2) | composer6.K(lazyListState2);
                    Object objX14 = composer6.x();
                    if (zK6 || objX14 == composer$Companion$Empty$1) {
                        objX14 = new com.vuitton.android.presentation.screen.distantrepairs.assessment.components.a(function19, coroutineScope2, lazyListState2, 3);
                        composer6.q(objX14);
                    }
                    AssessmentReceiveComponentKt.b(inAppDispatch2, stepState2, list2, addressUiModel2, function16, function20, function18, (Function1) objX14, composer6, 0);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 4:
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                AssessmentPreliminaryComponentKt.b((InAppDispatch) obj10, (CareServiceDetailUiModel) obj9, (String) obj8, (Function0) obj7, (Function0) obj6, (Function0) obj5, (Function1) obj4, (Composer) obj2, 0);
                return Unit.f71739a;
            case 5:
                AudioGuideUiModel audioGuideUiModel = (AudioGuideUiModel) obj10;
                AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel = (AudioGuideUiModel.AudioGuideColorsUiModel) obj9;
                AudioGuideViewState.Success success = (AudioGuideViewState.Success) obj8;
                TrackDetailUiModel trackDetailUiModel = success.f53226b;
                AudioGuideTracker audioGuideTracker = (AudioGuideTracker) obj5;
                Function1 function21 = (Function1) obj4;
                Function0 function22 = (Function0) obj7;
                Function0 function23 = (Function0) obj6;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer7 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((iIntValue4 & 6) == 0) {
                    iIntValue4 |= composer7.K(paddingValues2) ? 4 : 2;
                }
                if (composer7.p(iIntValue4 & 1, (iIntValue4 & 19) != 18)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    Modifier modifierD = tr.d("AudioGuideScreen$lambda$0$2$1", 1.0f);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.n;
                    float fG = PaddingKt.g(paddingValues2, (LayoutDirection) composer7.k(staticProvidableCompositionLocal));
                    float f10 = PaddingKt.f(paddingValues2, (LayoutDirection) composer7.k(staticProvidableCompositionLocal));
                    float d = paddingValues2.getD();
                    Dp.Companion companion2 = Dp.f11004c;
                    Modifier modifierD2 = ScrollKt.d(WindowInsetsPadding_androidKt.b(PaddingKt.l(modifierD, fG, Call.Parameters.DEFAULT_CAMERA_ZOOM, f10, d)), ScrollKt.b(composer7), false, 14);
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer7, 48);
                    int iHashCode4 = Long.hashCode(composer7.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer7.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer7, modifierD2);
                    ComposeUiNode.b0.getClass();
                    Function0 function24 = ComposeUiNode.Companion.f9641b;
                    if (composer7.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer7.B();
                    if (composer7.getS()) {
                        composer7.C(function24);
                    } else {
                        composer7.o();
                    }
                    Updater.c(composer7, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer7, persistentCompositionLocalMapN4, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer7, Integer.valueOf(iHashCode4), ComposeUiNode.Companion.g);
                    Updater.b(composer7, ComposeUiNode.Companion.f9645h);
                    SpacerKt.a(composer7, SizeKt.f(a.f(composer7, modifierC4, ComposeUiNode.Companion.d, "AudioGuideScreen$lambda$0$2$1"), LVAppDesignKitTheme.d(composer7).C));
                    float f11 = LVAppDesignKitTheme.l(composer7).f48416e;
                    float f12 = LVAppDesignKitTheme.l(composer7).f48421k;
                    float f13 = LVAppDesignKitTheme.l(composer7).f48421k;
                    Modifier.Companion companion3 = Modifier.Companion.f8607b;
                    Modifier modifierE = ModifierExtKt.e(ClipKt.a(AspectRatioKt.a(PaddingKt.m(companion3, f12, f11, f13, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), 1.0f, false), LVAppDesignKitTheme.j(composer7).f48411c), "audioGuide_cover_image");
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
                    AssetImageUiModel assetImageUiModel2 = audioGuideUiModel.d;
                    AudioGuideUiModel.CreditsUiModel creditsUiModel = audioGuideUiModel.n;
                    String str = assetImageUiModel2.f51778b;
                    str.getClass();
                    ImageLoaderKt.b(modifierE, str, contentScale$Companion$Crop$1, null, null, 0, false, null, null, null, composer7, KyberEngine.KyberPolyBytes, 2040);
                    Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(companion3, LVAppDesignKitTheme.l(composer7).f48417f, LVAppDesignKitTheme.l(composer7).f48417f, LVAppDesignKitTheme.l(composer7).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), "audioGuide_title_text");
                    Object objX15 = composer7.x();
                    if (objX15 == composer$Companion$Empty$1) {
                        objX15 = new u5(9);
                        composer7.q(objX15);
                    }
                    TextKt.c(audioGuideUiModel.f53196b, SemanticsModifierKt.b(modifierE2, false, (Function1) objX15), audioGuideColorsUiModel.f53207a, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer7).f48425e, composer7, 0, 0, 131064);
                    String str2 = audioGuideUiModel.f53197c;
                    if (str2 == null) {
                        composer7.L(1569031983);
                        composer7.F();
                    } else {
                        composer7.L(1569031984);
                        TextKt.c(str2, ModifierExtKt.e(PaddingKt.m(companion3, LVAppDesignKitTheme.l(composer7).f48417f, LVAppDesignKitTheme.l(composer7).f48414b, LVAppDesignKitTheme.l(composer7).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), "audioGuide_subtitle_text"), audioGuideColorsUiModel.f53207a, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer7).f48426f, composer7, 0, 0, 131064);
                        composer7.F();
                    }
                    AudioGuideUiModel.AudioGuideCardUiModel audioGuideCardUiModel = audioGuideUiModel.f53203k;
                    if (audioGuideCardUiModel == null) {
                        composer7.L(1569769442);
                        composer7.F();
                    } else {
                        composer7.L(1569769443);
                        long j3 = audioGuideColorsUiModel.f53207a;
                        long j4 = audioGuideColorsUiModel.f53211f;
                        boolean zY3 = composer7.y(audioGuideTracker) | composer7.K(function23);
                        Object objX16 = composer7.x();
                        if (zY3 || objX16 == composer$Companion$Empty$1) {
                            objX16 = new ga(audioGuideTracker, function23, 3);
                            composer7.q(objX16);
                        }
                        AudioGuideCardKt.a(audioGuideCardUiModel, j3, j4, (Function0) objX16, composer7, 0);
                        composer7.F();
                    }
                    String str3 = trackDetailUiModel != null ? trackDetailUiModel.f53230a : null;
                    boolean z2 = success.f53227c == PlayerState.PLAYING;
                    boolean zY4 = composer7.y(audioGuideTracker) | composer7.K(function21);
                    Object objX17 = composer7.x();
                    if (zY4 || objX17 == composer$Companion$Empty$1) {
                        objX17 = new f0(audioGuideTracker, function21);
                        composer7.q(objX17);
                    }
                    AudioGuideTrackListKt.b(audioGuideUiModel, str3, z2, (Function2) objX17, composer7, 0);
                    if (creditsUiModel != null) {
                        LVLinkKt.a(ModifierExtKt.e(PaddingKt.m(pq0.j(1570766341, composer7, "AudioGuideScreen$lambda$0$2$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer7).f48418h, 7), "audioGuide_credits_button"), creditsUiModel.f53215b, false, FeatureThemeMapperKt.a(audioGuideUiModel.f53199f), false, function22, composer7, 0, 20);
                        composer7.F();
                    } else {
                        composer7.L(1571276632);
                        composer7.F();
                    }
                    if (trackDetailUiModel != null) {
                        SpacerKt.a(composer7, SizeKt.f(pq0.j(1571336958, composer7, "AudioGuideScreen$lambda$0$2$1"), LVAppDesignKitTheme.l(composer7).n));
                        composer7.F();
                    } else {
                        composer7.L(1571454200);
                        composer7.F();
                    }
                    composer7.r();
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 6:
                TrackDetailUiModel trackDetailUiModel2 = (TrackDetailUiModel) obj10;
                AudioGuideUiModel.TrackUiModel trackUiModel = (AudioGuideUiModel.TrackUiModel) obj9;
                AudioGuideViewState.Success success2 = (AudioGuideViewState.Success) obj8;
                AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel2 = (AudioGuideUiModel.AudioGuideColorsUiModel) obj4;
                AudioGuideTracker audioGuideTracker2 = (AudioGuideTracker) obj5;
                Function0 function25 = (Function0) obj7;
                Function0 function26 = (Function0) obj6;
                Composer composer8 = (Composer) obj2;
                ((Integer) obj3).getClass();
                float f14 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("AudioGuideTrackDetailBottomSheet$lambda$0$27$13");
                String str4 = (trackUiModel == null || (assetImageUiModel = trackUiModel.d) == null) ? null : assetImageUiModel.f51778b;
                if (str4 == null) {
                    str4 = "";
                }
                boolean z3 = success2.f53227c == PlayerState.PLAYING;
                long j5 = audioGuideColorsUiModel2.f53207a;
                long j6 = audioGuideColorsUiModel2.g;
                boolean zY5 = composer8.y(success2) | composer8.y(audioGuideTracker2) | composer8.K(function25);
                Object objX18 = composer8.x();
                if (zY5 || objX18 == composer$Companion$Empty$1) {
                    objX18 = new ra(success2, audioGuideTracker2, function25, 2);
                    composer8.q(objX18);
                }
                Function0 function27 = (Function0) objX18;
                boolean zY6 = composer8.y(audioGuideTracker2) | composer8.K(function26);
                Object objX19 = composer8.x();
                if (zY6 || objX19 == composer$Companion$Empty$1) {
                    objX19 = new ga(audioGuideTracker2, function26, 7);
                    composer8.q(objX19);
                }
                AudioGuideMiniPlayerKt.a(dTFunctionNameModifier3, trackDetailUiModel2, str4, z3, j5, j6, function27, (Function0) objX19, composer8, 6);
                return Unit.f71739a;
            case 7:
                NavHostController navHostController2 = (NavHostController) obj10;
                StoreModeViewModel storeModeViewModel = (StoreModeViewModel) obj9;
                StoreModeViewState storeModeViewState = (StoreModeViewState) obj8;
                Function0 function28 = (Function0) obj7;
                Function1 function29 = (Function1) obj4;
                PSPStoreModeViewModel pSPStoreModeViewModel = (PSPStoreModeViewModel) obj6;
                MutableState mutableState3 = (MutableState) obj5;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer9 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                float f15 = CatalogStoreModeKt.f64850a;
                paddingValues3.getClass();
                if ((iIntValue5 & 6) == 0) {
                    iIntValue5 |= composer9.K(paddingValues3) ? 4 : 2;
                }
                if (composer9.p(iIntValue5 & 1, (iIntValue5 & 19) != 18)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    Modifier modifierH = PaddingKt.h(new DTFunctionNameModifier("CatalogStoreMode$lambda$9").o(SizeKt.f5052c), paddingValues3);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD4 = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode5 = Long.hashCode(composer9.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer9.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer9, modifierH);
                    ComposeUiNode.b0.getClass();
                    Function0 function30 = ComposeUiNode.Companion.f9641b;
                    if (composer9.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer9.B();
                    if (composer9.getS()) {
                        composer9.C(function30);
                    } else {
                        composer9.o();
                    }
                    Updater.c(composer9, measurePolicyD4, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer9, persistentCompositionLocalMapN5, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer9, Integer.valueOf(iHashCode5), ComposeUiNode.Companion.g);
                    Updater.b(composer9, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer9, modifierC5, ComposeUiNode.Companion.d);
                    StoreModeRoute.Level1 level1 = StoreModeRoute.Level1.INSTANCE;
                    boolean zY7 = composer9.y(storeModeViewModel) | composer9.y(storeModeViewState) | composer9.K(function28) | composer9.y(navHostController2) | composer9.K(function29) | composer9.y(pSPStoreModeViewModel);
                    Object objX20 = composer9.x();
                    if (zY7 || objX20 == composer$Companion$Empty$1) {
                        navHostController = navHostController2;
                        nk nkVar = new nk(storeModeViewModel, storeModeViewState, function28, navHostController, function29, mutableState3, pSPStoreModeViewModel, 0);
                        composer9.q(nkVar);
                        objX20 = nkVar;
                    } else {
                        navHostController = navHostController2;
                    }
                    NavHostKt.b(navHostController, level1, null, null, null, null, null, null, null, (Function1) objX20, composer9, 48, 2044);
                    LVBottomRoundOverlayKt.a(0, 2, 0L, composer9, BoxScopeInstance.f4938a.g(tr.d("CatalogStoreMode$lambda$9", 1.0f), Alignment.Companion.f8589i));
                    composer9.r();
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 8:
                return a(obj, obj2, obj3);
            case 9:
                return b(obj, obj2, obj3);
            case 10:
                return c(obj, obj2, obj3);
            case 11:
                DistantRepairFormViewState distantRepairFormViewState = (DistantRepairFormViewState) obj10;
                Function0 function31 = (Function0) obj7;
                Function1 function32 = (Function1) obj4;
                Function1 function33 = (Function1) obj9;
                Function1 function34 = (Function1) obj8;
                CoroutineScope coroutineScope3 = (CoroutineScope) obj6;
                LazyListState lazyListState3 = (LazyListState) obj5;
                Composer composer10 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer10.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    StepState stepState3 = distantRepairFormViewState.f57380b.f57389a;
                    Step1StateUIModel step1StateUIModel = distantRepairFormViewState.f57381c;
                    boolean zK7 = composer10.K(function34) | composer10.y(coroutineScope3) | composer10.K(lazyListState3);
                    Object objX21 = composer10.x();
                    if (zK7 || objX21 == composer$Companion$Empty$1) {
                        objX21 = new b(function34, coroutineScope3, lazyListState3, 1);
                        composer10.q(objX21);
                    }
                    DistantRepairInitiateComponentKt.a(distantRepairFormViewState, stepState3, step1StateUIModel, function31, function32, function33, (Function1) objX21, composer10, 0);
                    SpacerKt.a(composer10, SizeKt.f(new DTFunctionNameModifier("DistantRepairFormComponent$lambda$0$0$1"), LVAppDesignKitTheme.l(composer10).f48417f));
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
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
            default:
                ScrollState scrollState = (ScrollState) obj10;
                final MutableState mutableState4 = (MutableState) obj9;
                ThankYouViewState thankYouViewState = (ThankYouViewState) obj8;
                MutableState mutableState5 = (MutableState) obj7;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj6;
                MutableState mutableState6 = (MutableState) obj5;
                Function1 function35 = (Function1) obj4;
                PaddingValues paddingValues4 = (PaddingValues) obj;
                Composer composer11 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                float f16 = ThankYouScreenKt.f65243a;
                paddingValues4.getClass();
                if ((iIntValue7 & 6) == 0) {
                    iIntValue7 |= composer11.K(paddingValues4) ? 4 : 2;
                }
                if (composer11.p(iIntValue7 & 1, (iIntValue7 & 19) != 18)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    final float fA = ScreenDimensionsKt.a(composer11, 0);
                    final Density density2 = (Density) composer11.k(CompositionLocalsKt.f10031h);
                    Object objX22 = composer11.x();
                    if (objX22 == composer$Companion$Empty$1) {
                        objX22 = SnapshotIntStateKt.a(0);
                        composer11.q(objX22);
                    }
                    final MutableIntState mutableIntState3 = (MutableIntState) objX22;
                    boolean zB = composer11.b(((Boolean) mutableState4.getF10755b()).booleanValue()) | composer11.d(mutableIntState3.f());
                    Object objX23 = composer11.x();
                    if (zB || objX23 == composer$Companion$Empty$1) {
                        paddingValues = paddingValues4;
                        objX23 = SnapshotStateKt.e(new Function0() { // from class: m31
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                float f17 = ThankYouScreenKt.f65243a;
                                boolean zBooleanValue = ((Boolean) mutableState4.getF10755b()).booleanValue();
                                float f18 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                if (zBooleanValue) {
                                    Dp.Companion companion4 = Dp.f11004c;
                                } else {
                                    float fK1 = fA - density2.k1(mutableIntState3.f());
                                    Dp.Companion companion5 = Dp.f11004c;
                                    f18 = ((Dp) RangesKt.a(new Dp(((fK1 - paddingValues.getF5031b()) / 2.0f) - 32.0f), new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM))).f11006b;
                                }
                                return new Dp(f18);
                            }
                        });
                        composer11.q(objX23);
                    } else {
                        paddingValues = paddingValues4;
                    }
                    State stateA = AnimateAsStateKt.a(((Dp) ((State) objX23).getF10755b()).f11006b, AnimationSpecKt.c(((Boolean) mutableState4.getF10755b()).booleanValue() ? 1000 : 0, 0, null, 6), "thankyou_centered_spacer", null, composer11, KyberEngine.KyberPolyBytes, 8);
                    Modifier modifierD3 = ScrollKt.d(BackgroundKt.b(PaddingKt.m(new DTFunctionNameModifier("ThankYouScreen$lambda$13").o(SizeKt.f5052c), Call.Parameters.DEFAULT_CAMERA_ZOOM, paddingValues.getF5031b(), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer11).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), scrollState, ((Boolean) mutableState4.getF10755b()).booleanValue(), 12);
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f4920c, horizontal, composer11, 48);
                    int iHashCode6 = Long.hashCode(composer11.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN6 = composer11.n();
                    Modifier modifierC6 = ComposedModifierKt.c(composer11, modifierD3);
                    ComposeUiNode.b0.getClass();
                    Function0 function36 = ComposeUiNode.Companion.f9641b;
                    if (composer11.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer11.B();
                    if (composer11.getS()) {
                        composer11.C(function36);
                    } else {
                        composer11.o();
                    }
                    Function2 function37 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer11, columnMeasurePolicyA2, function37);
                    Function2 function38 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer11, persistentCompositionLocalMapN6, function38);
                    Integer numValueOf2 = Integer.valueOf(iHashCode6);
                    Function2 function39 = ComposeUiNode.Companion.g;
                    Updater.c(composer11, numValueOf2, function39);
                    Function1 function40 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer11, function40);
                    Function2 function41 = ComposeUiNode.Companion.d;
                    Updater.c(composer11, modifierC6, function41);
                    SpacerKt.a(composer11, SizeKt.f(new DTFunctionNameModifier("ThankYouScreen$lambda$13"), ((Dp) stateA.getF10755b()).f11006b));
                    Modifier modifierD4 = SizeKt.d(new DTFunctionNameModifier("ThankYouScreen$lambda$13"), 1.0f);
                    Object objX24 = composer11.x();
                    if (objX24 == composer$Companion$Empty$1) {
                        objX24 = new q1(mutableIntState3, 14);
                        composer11.q(objX24);
                    }
                    Modifier modifierA = OnGloballyPositionedModifierKt.a(modifierD4, (Function1) objX24);
                    ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(Arrangement.f4921e, horizontal, composer11, 54);
                    int iHashCode7 = Long.hashCode(composer11.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN7 = composer11.n();
                    Modifier modifierC7 = ComposedModifierKt.c(composer11, modifierA);
                    if (composer11.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer11.B();
                    if (composer11.getS()) {
                        composer11.C(function36);
                    } else {
                        composer11.o();
                    }
                    Updater.c(composer11, columnMeasurePolicyA3, function37);
                    Updater.c(composer11, persistentCompositionLocalMapN7, function38);
                    cj.s(iHashCode7, composer11, function39, composer11, function40);
                    Updater.c(composer11, modifierC7, function41);
                    LVFlowerLoaderKt.a(PaddingKt.k(ModifierExtKt.e(new DTFunctionNameModifier("ThankYouScreen$lambda$13"), "thankYou_lvFlower_icon"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer11).f48421k, 1), LVFlowerLoaderStyle.BRAND, ((Boolean) mutableState4.getF10755b()).booleanValue(), composer11, 48, 0);
                    if (thankYouViewState instanceof ThankYouViewState.Success) {
                        composer11.L(-1006379375);
                        strK = StringResources_androidKt.b(R.string.checkout_confirmation_title, new Object[]{((ThankYouViewState.Success) thankYouViewState).f65302b}, composer11);
                        composer11.F();
                    } else {
                        strK = o60.k(composer11, -1006373568, R.string.checkout_confirmation_title_without_name, composer11);
                    }
                    State stateB = AnimateAsStateKt.b(((Boolean) mutableState5.getF10755b()).booleanValue() ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM, AnimationSpecKt.c(1000, 0, null, 6), "title_alpha_animation", composer11, 3120, 20);
                    Modifier modifierM = PaddingKt.m(PaddingKt.k(n00.g("ThankYouScreen$lambda$13", "thankYou_thankYouTitle_text"), LVAppDesignKitTheme.l(composer11).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer11).f48417f, 7);
                    boolean zK8 = composer11.K(stateB);
                    Object objX25 = composer11.x();
                    if (zK8 || objX25 == composer$Companion$Empty$1) {
                        objX25 = new ya(stateB, 6);
                        composer11.q(objX25);
                    }
                    Modifier modifierA2 = GraphicsLayerModifierKt.a(modifierM, (Function1) objX25);
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer11).d;
                    long j7 = LVAppDesignKitTheme.c(composer11).f48361b.f48382k;
                    TextAlign.f10959b.getClass();
                    TextKt.c(strK, modifierA2, j7, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, composer11, 0, 0, 130040);
                    composer11.r();
                    boolean zBooleanValue = ((Boolean) mutableState4.getF10755b()).booleanValue();
                    TweenSpec tweenSpecC = AnimationSpecKt.c(1000, 0, null, 6);
                    Object objX26 = composer11.x();
                    if (objX26 == composer$Companion$Empty$1) {
                        objX26 = new z21(13);
                        composer11.q(objX26);
                    }
                    AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, zBooleanValue, null, EnterExitTransitionKt.q((Function1) objX26, tweenSpecC).b(EnterExitTransitionKt.f(AnimationSpecKt.c(r.E, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2)), null, null, ComposableLambdaKt.b(16247348, new r((Object) thankYouViewState, (Object) lVModalBottomSheetState, (Object) mutableState6, (Function) function35, 28), composer11), composer11, 1575942, 26);
                    SpacerKt.a(composer11, WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("ThankYouScreen$lambda$13")));
                    composer11.r();
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ w0(NavHostController navHostController, StoreModeViewModel storeModeViewModel, StoreModeViewState storeModeViewState, Function0 function0, Function1 function1, PSPStoreModeViewModel pSPStoreModeViewModel, MutableState mutableState) {
        this.f80713b = 7;
        this.f80714c = navHostController;
        this.d = storeModeViewModel;
        this.f80715e = storeModeViewState;
        this.f80716f = function0;
        this.f80717h = function1;
        this.g = pSPStoreModeViewModel;
        this.f80718i = mutableState;
    }

    public /* synthetic */ w0(MutableIntState mutableIntState, MutableState mutableState, MutableState mutableState2, FocusRequester focusRequester, Rect rect, Density density, LayoutDirection layoutDirection) {
        this.f80713b = 1;
        this.f80714c = density;
        this.d = focusRequester;
        this.f80715e = rect;
        this.f80716f = mutableIntState;
        this.g = layoutDirection;
        this.f80717h = mutableState;
        this.f80718i = mutableState2;
    }

    public /* synthetic */ w0(AICompanionViewModel aICompanionViewModel, ContributionLinkNavigator contributionLinkNavigator, NavBackStack navBackStack, Function0 function0, Function1 function1, Function3 function3, Function0 function2) {
        this.f80713b = 0;
        this.f80714c = aICompanionViewModel;
        this.d = contributionLinkNavigator;
        this.f80715e = navBackStack;
        this.f80716f = function0;
        this.f80717h = function1;
        this.f80718i = function3;
        this.g = function2;
    }

    public /* synthetic */ w0(AudioGuideUiModel audioGuideUiModel, AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, AudioGuideViewState.Success success, AudioGuideTracker audioGuideTracker, Function1 function1, Function0 function0, Function0 function2) {
        this.f80713b = 5;
        this.f80714c = audioGuideUiModel;
        this.d = audioGuideColorsUiModel;
        this.f80715e = success;
        this.f80718i = audioGuideTracker;
        this.f80717h = function1;
        this.f80716f = function0;
        this.g = function2;
    }

    public /* synthetic */ w0(TrackDetailUiModel trackDetailUiModel, AudioGuideUiModel.TrackUiModel trackUiModel, AudioGuideViewState.Success success, AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, AudioGuideTracker audioGuideTracker, Function0 function0, Function0 function1) {
        this.f80713b = 6;
        this.f80714c = trackDetailUiModel;
        this.d = trackUiModel;
        this.f80715e = success;
        this.f80717h = audioGuideColorsUiModel;
        this.f80718i = audioGuideTracker;
        this.f80716f = function0;
        this.g = function1;
    }

    public /* synthetic */ w0(NativeRegisterBottomSheetScreen nativeRegisterBottomSheetScreen, String str, Function0 function0, CoroutineScope coroutineScope, LVModalBottomSheetState lVModalBottomSheetState, Function0 function1, Function0 function2) {
        this.f80713b = 14;
        this.f80714c = nativeRegisterBottomSheetScreen;
        this.d = str;
        this.f80716f = function0;
        this.f80715e = coroutineScope;
        this.f80717h = lVModalBottomSheetState;
        this.g = function1;
        this.f80718i = function2;
    }

    public /* synthetic */ w0(CategoryUiModel categoryUiModel, CatalogViewState catalogViewState, Function0 function0, LVModalBottomSheetState lVModalBottomSheetState, Function1 function1, LVModalBottomSheetState lVModalBottomSheetState2, Function0 function2) {
        this.f80713b = 8;
        this.f80714c = categoryUiModel;
        this.d = catalogViewState;
        this.f80716f = function0;
        this.f80715e = lVModalBottomSheetState;
        this.f80717h = function1;
        this.f80718i = lVModalBottomSheetState2;
        this.g = function2;
    }

    public /* synthetic */ w0(DistantRepairFormViewState distantRepairFormViewState, Function0 function0, Function1 function1, Function1 function2, Function1 function3, CoroutineScope coroutineScope, LazyListState lazyListState) {
        this.f80713b = 11;
        this.f80714c = distantRepairFormViewState;
        this.f80716f = function0;
        this.f80717h = function1;
        this.d = function2;
        this.f80715e = function3;
        this.g = coroutineScope;
        this.f80718i = lazyListState;
    }

    public /* synthetic */ w0(DistantRepairFormViewState distantRepairFormViewState, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Function0 function0) {
        this.f80713b = 12;
        this.f80714c = distantRepairFormViewState;
        this.f80717h = function1;
        this.d = function2;
        this.f80715e = function3;
        this.g = function4;
        this.f80718i = function5;
        this.f80716f = function0;
    }

    public /* synthetic */ w0(OsaLocationFormBottomSheetScreen osaLocationFormBottomSheetScreen, OsaLocationFormViewState osaLocationFormViewState, Function0 function0, Function1 function1, Function0 function2, Function0 function3, Function0 function4) {
        this.f80713b = 15;
        this.f80714c = osaLocationFormBottomSheetScreen;
        this.d = osaLocationFormViewState;
        this.f80716f = function0;
        this.f80717h = function1;
        this.g = function2;
        this.f80715e = function3;
        this.f80718i = function4;
    }

    public /* synthetic */ w0(PdpViewState pdpViewState, ImmutableList immutableList, Function0 function0, PdpTracker pdpTracker, ProductUiModel productUiModel, Function0 function1, Function1 function2) {
        this.f80713b = 16;
        this.f80714c = pdpViewState;
        this.d = immutableList;
        this.f80716f = function0;
        this.f80715e = pdpTracker;
        this.f80718i = productUiModel;
        this.g = function1;
        this.f80717h = function2;
    }

    public /* synthetic */ w0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Function1 function1, int i2) {
        this.f80713b = i2;
        this.f80714c = obj;
        this.d = obj2;
        this.f80715e = obj3;
        this.f80716f = obj4;
        this.g = obj5;
        this.f80718i = obj6;
        this.f80717h = function1;
    }

    public /* synthetic */ w0(Object obj, Function1 function1, Function1 function2, Function1 function3, Function1 function4, CoroutineScope coroutineScope, LazyListState lazyListState, int i2) {
        this.f80713b = i2;
        this.f80714c = obj;
        this.f80717h = function1;
        this.d = function2;
        this.f80715e = function3;
        this.f80716f = function4;
        this.g = coroutineScope;
        this.f80718i = lazyListState;
    }

    public /* synthetic */ w0(List list, Alignment.Horizontal horizontal, Context context, Function1 function1, Function1 function2, Function1 function3, Function1 function4) {
        this.f80713b = 13;
        this.f80714c = list;
        this.d = horizontal;
        this.f80715e = context;
        this.f80717h = function1;
        this.f80716f = function2;
        this.g = function3;
        this.f80718i = function4;
    }
}
