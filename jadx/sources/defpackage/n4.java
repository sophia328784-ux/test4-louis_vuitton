package defpackage;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TooltipDefaults;
import androidx.compose.material3.TooltipDefaults$rememberPlainTooltipPositionProvider$1$1;
import androidx.compose.material3.TooltipKt;
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
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.navigation3.runtime.NavBackStack;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.core.platform.serialization.JsonProviderKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVNavBarKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVNavBarScope;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVPasswordTextFieldKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.common.editorial.components.carousels.CarouselSKt;
import com.vuitton.android.presentation.compose.components.PreferenceSwitchKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBuilder;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookContentKt;
import com.vuitton.android.presentation.screen.account.addressbook.models.AccountAddressUiModel;
import com.vuitton.android.presentation.screen.account.addressbook.models.AddressBookViewState;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionButtonKt;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionButtonVariant;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.base.WebViewAuthChromeClient;
import com.vuitton.android.presentation.screen.authentication.base.WebViewAuthClient;
import com.vuitton.android.presentation.screen.authentication.base.WebViewAuthContentKt;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginViewState;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationScreenKt;
import com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsScreenKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingActionTypeUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.a;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentPreliminaryBffComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentSendComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairInitiateComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusTranslationUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step1StateUIModel;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.components.MainNavBarKt;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.mylv.MyLvViewModel;
import com.vuitton.android.presentation.screen.mylv.components.MyLvScreenKt;
import com.vuitton.android.presentation.screen.mylv.models.MyLvViewState;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreference;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesViewState;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaGuestContactFormCardKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.models.OsaContactFormViewState;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaReasonItemComposableKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import com.vuitton.android.presentation.screen.pdp.FindInStoreBottomSheet;
import com.vuitton.android.presentation.screen.pdp.FindInStoreViewModel;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.FindInStoreSearchBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.models.FindInStoreViewState;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductDisclaimerUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SellableStatusUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderScanComposableKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorLookScreenKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorLookViewState;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.SearchBottomBarKt;
import com.vuitton.android.presentation.screen.plp.models.CatalogMode;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListItemKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.webview.AnalyticsWebInterface;
import com.vuitton.android.presentation.security.AkamaiSecurityHelper;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.q61;
import defpackage.qn;
import defpackage.t3;
import java.time.format.FormatStyle;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import kotlin.Function;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class n4 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76441c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76442e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76443f;
    public final /* synthetic */ Object g;

    public /* synthetic */ n4(PdpViewState pdpViewState, String str, ProductUiModel productUiModel, Context context, Function1 function1) {
        this.f76440b = 19;
        this.d = pdpViewState;
        this.f76443f = str;
        this.f76441c = productUiModel;
        this.f76442e = context;
        this.g = function1;
    }

    private final Object a(Object obj, Object obj2, Object obj3) {
        FindInStoreViewModel findInStoreViewModel = (FindInStoreViewModel) this.d;
        LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) this.f76442e;
        Function0 function0 = (Function0) this.f76441c;
        MutableState mutableState = (MutableState) this.f76443f;
        MutableState mutableState2 = (MutableState) this.g;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((ColumnScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            FindInStoreBottomSheet findInStoreBottomSheet = (FindInStoreBottomSheet) mutableState.getF10755b();
            if (Intrinsics.c(findInStoreBottomSheet, FindInStoreBottomSheet.SearchPlace.f61012a)) {
                composer.L(1979529913);
                Modifier modifierC = SizeKt.c(new DTFunctionNameModifier("FindInStoreBottomSheet_79N4jBc$lambda$18"), 0.9f);
                FindInStoreViewState findInStoreViewState = (FindInStoreViewState) mutableState2.getF10755b();
                boolean zY = composer.y(findInStoreViewModel);
                Object objX = composer.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new ty(findInStoreViewModel, 1);
                    composer.q(objX);
                }
                Function1 function1 = (Function1) objX;
                boolean zY2 = composer.y(findInStoreViewModel) | composer.y(lVModalBottomSheetState);
                Object objX2 = composer.x();
                if (zY2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new gv(findInStoreViewModel, lVModalBottomSheetState, 14);
                    composer.q(objX2);
                }
                Function1 function2 = (Function1) objX2;
                boolean zY3 = composer.y(lVModalBottomSheetState);
                Object objX3 = composer.x();
                if (zY3 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new t8(lVModalBottomSheetState, 8);
                    composer.q(objX3);
                }
                FindInStoreSearchBottomSheetKt.a(modifierC, findInStoreViewState, function1, function2, (Function0) objX3, composer, 6);
                composer.F();
            } else if (Intrinsics.c(findInStoreBottomSheet, FindInStoreBottomSheet.LocationBottomSheet.f61011a)) {
                composer.L(1980400982);
                LVModalBottomSheetKt.a(null, null, StringResources_androidKt.c(composer, R.string.inapp_notification_title), null, null, StringResources_androidKt.c(composer, R.string.Find_in_store_access_required), null, StringResources_androidKt.c(composer, R.string.cta_open_settings), null, false, null, function0, null, false, null, null, null, false, null, composer, 0, 0, 1046363);
                composer.F();
            } else {
                composer.L(1980885047);
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object b(Object obj, Object obj2, Object obj3) {
        MyLvViewModel myLvViewModel = (MyLvViewModel) this.d;
        Context context = (Context) this.f76442e;
        State state = (State) this.f76443f;
        ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) this.f76441c;
        ManagedActivityResultLauncher managedActivityResultLauncher2 = (ManagedActivityResultLauncher) this.g;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierH = PaddingKt.h(new DTFunctionNameModifier("MyLvComposable$lambda$10").o(SizeKt.f5052c), paddingValues);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
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
            Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
            Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(composer, ComposeUiNode.Companion.f9645h);
            Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
            MyLvViewState myLvViewState = (MyLvViewState) state.getF10755b();
            boolean zY = composer.y(myLvViewModel) | composer.y(context);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new zd0(myLvViewModel, context, 10);
                composer.q(objX);
            }
            Function0 function1 = (Function0) objX;
            boolean zY2 = composer.y(myLvViewModel) | composer.y(context);
            Object objX2 = composer.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new zd0(myLvViewModel, context, 2);
                composer.q(objX2);
            }
            Function0 function2 = (Function0) objX2;
            boolean zY3 = composer.y(myLvViewModel) | composer.y(context);
            Object objX3 = composer.x();
            if (zY3 || objX3 == composer$Companion$Empty$1) {
                objX3 = new zd0(myLvViewModel, context, 3);
                composer.q(objX3);
            }
            Function0 function3 = (Function0) objX3;
            boolean zY4 = composer.y(myLvViewModel) | composer.y(context);
            Object objX4 = composer.x();
            if (zY4 || objX4 == composer$Companion$Empty$1) {
                objX4 = new zd0(myLvViewModel, context, 4);
                composer.q(objX4);
            }
            Function0 function4 = (Function0) objX4;
            boolean zY5 = composer.y(context);
            Object objX5 = composer.x();
            if (zY5 || objX5 == composer$Companion$Empty$1) {
                objX5 = new je(context, 14);
                composer.q(objX5);
            }
            Function0 function5 = (Function0) objX5;
            boolean zY6 = composer.y(myLvViewModel) | composer.K(state) | composer.y(context);
            Object objX6 = composer.x();
            if (zY6 || objX6 == composer$Companion$Empty$1) {
                objX6 = new pp(myLvViewModel, context, state, 23);
                composer.q(objX6);
            }
            Function0 function6 = (Function0) objX6;
            boolean zY7 = composer.y(myLvViewModel) | composer.y(context);
            Object objX7 = composer.x();
            if (zY7 || objX7 == composer$Companion$Empty$1) {
                objX7 = new zd0(myLvViewModel, context, 5);
                composer.q(objX7);
            }
            Function0 function7 = (Function0) objX7;
            boolean zY8 = composer.y(myLvViewModel) | composer.y(context) | composer.y(managedActivityResultLauncher);
            Object objX8 = composer.x();
            if (zY8 || objX8 == composer$Companion$Empty$1) {
                objX8 = new rv(myLvViewModel, context, managedActivityResultLauncher, 24);
                composer.q(objX8);
            }
            Function2 function8 = (Function2) objX8;
            boolean zY9 = composer.y(myLvViewModel) | composer.y(context);
            Object objX9 = composer.x();
            if (zY9 || objX9 == composer$Companion$Empty$1) {
                objX9 = new zd0(myLvViewModel, context, 6);
                composer.q(objX9);
            }
            Function0 function9 = (Function0) objX9;
            boolean zY10 = composer.y(myLvViewModel) | composer.y(context);
            Object objX10 = composer.x();
            if (zY10 || objX10 == composer$Companion$Empty$1) {
                objX10 = new zd0(myLvViewModel, context, 7);
                composer.q(objX10);
            }
            Function0 function10 = (Function0) objX10;
            boolean zY11 = composer.y(myLvViewModel) | composer.y(context);
            Object objX11 = composer.x();
            if (zY11 || objX11 == composer$Companion$Empty$1) {
                objX11 = new zd0(myLvViewModel, context, 11);
                composer.q(objX11);
            }
            Function0 function11 = (Function0) objX11;
            boolean zY12 = composer.y(myLvViewModel) | composer.y(context);
            Object objX12 = composer.x();
            if (zY12 || objX12 == composer$Companion$Empty$1) {
                objX12 = new zd0(myLvViewModel, context, 0);
                composer.q(objX12);
            }
            Function0 function12 = (Function0) objX12;
            boolean zY13 = composer.y(myLvViewModel) | composer.y(context);
            Object objX13 = composer.x();
            if (zY13 || objX13 == composer$Companion$Empty$1) {
                objX13 = new zd0(myLvViewModel, context, 1);
                composer.q(objX13);
            }
            Function0 function13 = (Function0) objX13;
            boolean zY14 = composer.y(context);
            Object objX14 = composer.x();
            if (zY14 || objX14 == composer$Companion$Empty$1) {
                objX14 = new ef(context, 8);
                composer.q(objX14);
            }
            Function1 function14 = (Function1) objX14;
            boolean zY15 = composer.y(myLvViewModel);
            Object objX15 = composer.x();
            if (zY15 || objX15 == composer$Companion$Empty$1) {
                objX15 = new x60(myLvViewModel, 9);
                composer.q(objX15);
            }
            Function0 function15 = (Function0) objX15;
            boolean zY16 = composer.y(myLvViewModel) | composer.y(managedActivityResultLauncher2) | composer.y(context);
            Object objX16 = composer.x();
            if (zY16 || objX16 == composer$Companion$Empty$1) {
                objX16 = new pp(myLvViewModel, managedActivityResultLauncher2, context, 22);
                composer.q(objX16);
            }
            MyLvScreenKt.b(myLvViewState, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, (Function0) objX16, composer, 0);
            if (((MyLvViewState) state.getF10755b()).f59449c || ((MyLvViewState) state.getF10755b()).d) {
                ProgressViewKt.a(PaddingKt.m(BoxScopeInstance.f4938a.g(pq0.j(1914049173, composer, "MyLvComposable$lambda$10"), Alignment.Companion.f8589i), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).g, 7), 0L, false, composer, 0, 6);
                composer.F();
            } else {
                composer.L(1914280774);
                composer.F();
            }
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object c(Object obj, Object obj2, Object obj3) {
        NativeLoginViewState nativeLoginViewState = (NativeLoginViewState) this.d;
        Function0 function0 = (Function0) this.f76441c;
        Function0 function1 = (Function0) this.f76442e;
        Function2 function2 = (Function2) this.f76443f;
        Function1 function3 = (Function1) this.g;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NativeLoginScreen$lambda$2");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = dTFunctionNameModifier.o(fillElement);
            Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, composer, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierH = PaddingKt.h(PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), paddingValues);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
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
            Updater.c(composer, measurePolicyD, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(composer, persistentCompositionLocalMapN, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(composer, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(composer, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(composer, modifierC, function9);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("NativeLoginScreen$lambda$2");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            Modifier modifierI = PaddingKt.i(boxScopeInstance.g(dTFunctionNameModifier2, biasAlignment), LVAppDesignKitTheme.l(composer).f48417f);
            boolean zK = composer.K(function0);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new ee0(function0, 4);
                composer.q(objX);
            }
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer).H, composer, 0), StringResources_androidKt.c(composer, R.string.alt_back), ModifierExtKt.c(modifierI, false, null, null, (Function0) objX, 31), LVAppDesignKitTheme.c(composer).f48361b.m, composer, 8, 0);
            Modifier modifierK = PaddingKt.k(boxScopeInstance.g(new DTFunctionNameModifier("NativeLoginScreen$lambda$2"), Alignment.Companion.f8587f), LVAppDesignKitTheme.l(composer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer, 48);
            int iHashCode2 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
            Modifier modifierC2 = ComposedModifierKt.c(composer, modifierK);
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
            Updater.c(composer, columnMeasurePolicyA, function5);
            Updater.c(composer, persistentCompositionLocalMapN2, function6);
            cj.s(iHashCode2, composer, function7, composer, function8);
            Updater.c(composer, modifierC2, function9);
            Modifier modifierE = ModifierExtKt.e(new DTFunctionNameModifier("NativeLoginScreen$lambda$2"), "nativeLogin_title_text");
            String strC = StringResources_androidKt.c(composer, R.string.mylv_authent_native_login_title);
            TextStyle textStyle = LVAppDesignKitTheme.n(composer).f48425e;
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.m;
            TextAlign.f10959b.getClass();
            int i2 = TextAlign.f10961e;
            TextKt.c(strC, modifierE, j2, 0L, null, 0L, null, new TextAlign(i2), 0L, 0, false, 0, 0, null, textStyle, composer, 0, 0, 130040);
            TextKt.c(StringResources_androidKt.c(composer, R.string.mylv_authent_native_login_description), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("NativeLoginScreen$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "nativeLogin_description_text"), LVAppDesignKitTheme.c(composer).f48361b.n, 0L, null, 0L, null, new TextAlign(i2), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).l, composer, 0, 0, 130040);
            DynamicFormComposableKt.a(PaddingKt.m(new DTFunctionNameModifier("NativeLoginScreen$lambda$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVColorScheme.INVERT, nativeLoginViewState.f53693b, false, LVAppDesignKitTheme.l(composer).f48416e, function2, null, function1, null, null, false, false, false, null, null, null, ComposableLambdaKt.b(740584950, new f1(function3, nativeLoginViewState, 27), composer), null, false, composer, 48, 102236160, 196424);
            composer.r();
            LVButtonKt.b(0, 376, composer, ModifierExtKt.e(PaddingKt.j(boxScopeInstance.g(tr.d("NativeLoginScreen$lambda$2", 1.0f), Alignment.Companion.f8589i), LVAppDesignKitTheme.l(composer).f48417f, LVAppDesignKitTheme.l(composer).g), "nativeLogin_logIn_button"), LVAppDesignKitTheme.b(composer).f48447b, null, null, StringResources_androidKt.c(composer, R.string.onboarding_connexion_login_cta), function1, false, nativeLoginViewState.f53692a.f53691c, false);
            composer.r();
            if (nativeLoginViewState.f53694c) {
                DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(295529067, composer, "NativeLoginScreen$lambda$2");
                Object objX2 = composer.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new be0(14);
                    composer.q(objX2);
                }
                ProgressViewKt.a(BackgroundKt.b(SemanticsModifierKt.b(dTFunctionNameModifierJ, false, (Function1) objX2).o(fillElement), Color.b(LVAppDesignKitTheme.h(composer).d, LVAppDesignKitTheme.c(composer).f48361b.f48374a), RectangleShapeKt.f8913a), 0L, false, composer, 0, 6);
                composer.F();
            } else {
                composer.L(295985542);
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object d(Object obj, Object obj2, Object obj3) {
        OsaContactFormViewState osaContactFormViewState = (OsaContactFormViewState) this.d;
        Function3 function3 = (Function3) this.f76442e;
        Function1 function1 = (Function1) this.f76443f;
        OsaReasonsFormViewState osaReasonsFormViewState = (OsaReasonsFormViewState) this.g;
        Function0 function0 = (Function0) this.f76441c;
        Composer composer = (Composer) obj2;
        ((Integer) obj3).getClass();
        ((AnimatedVisibilityScope) obj).getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zK = composer.K(function3);
        Object objX = composer.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (zK || objX == composer$Companion$Empty$1) {
            objX = new ye0(function3, 5);
            composer.q(objX);
        }
        Function2 function2 = (Function2) objX;
        boolean zK2 = composer.K(function1) | composer.y(osaReasonsFormViewState);
        Object objX2 = composer.x();
        if (zK2 || objX2 == composer$Companion$Empty$1) {
            objX2 = new gj0(function1, osaReasonsFormViewState, 1);
            composer.q(objX2);
        }
        OsaGuestContactFormCardKt.a(osaContactFormViewState, function2, (Function0) objX2, function0, composer, 0);
        return Unit.f71739a;
    }

    private final Object e(Object obj, Object obj2, Object obj3) {
        OsaReasonsFormViewState osaReasonsFormViewState = (OsaReasonsFormViewState) this.d;
        Function1 function1 = (Function1) this.f76442e;
        Function0 function0 = (Function0) this.f76441c;
        OsaLocationFormViewState osaLocationFormViewState = (OsaLocationFormViewState) this.f76443f;
        Function0 function2 = (Function0) this.g;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((LazyItemScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            OsaReasonItemComposableKt.a(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48417f, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), osaReasonsFormViewState, function1, function0, !osaLocationFormViewState.w, function2, composer, 0);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object f(Object obj, Object obj2, Object obj3) {
        Function0 function0 = (Function0) this.f76441c;
        PLPViewState pLPViewState = (PLPViewState) this.d;
        AICompanionTracker aICompanionTracker = (AICompanionTracker) this.f76442e;
        MutableState mutableState = (MutableState) this.f76443f;
        MutableState mutableState2 = (MutableState) this.g;
        Composer composer = (Composer) obj2;
        ((Integer) obj3).getClass();
        ((AnimatedVisibilityScope) obj).getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Alignment.f8582a.getClass();
        BiasAlignment.Vertical vertical = Alignment.Companion.l;
        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PLPScreen_J1OVMuw$lambda$5$37$0$2");
        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, composer, 48);
        int iHashCode = Long.hashCode(composer.getT());
        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
        Modifier modifierC = ComposedModifierKt.c(composer, dTFunctionNameModifier);
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
        Updater.c(composer, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
        Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
        Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
        Updater.b(composer, ComposeUiNode.Companion.f9645h);
        Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
        SearchBottomBarKt.a(432, 0, composer, cj.b("PLPScreen_J1OVMuw$lambda$5$37$0$2", RowScopeInstance.f5040a, 1.0f, true), "", function0, true);
        if (pLPViewState.f63008e) {
            Modifier modifierM = PaddingKt.m(pq0.j(-763098291, composer, "PLPScreen_J1OVMuw$lambda$5$37$0$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new c30(18, mutableState);
                composer.q(objX);
            }
            Modifier modifierA = OnGloballyPositionedModifierKt.a(modifierM, (Function1) objX);
            AICompanionButtonVariant aICompanionButtonVariant = AICompanionButtonVariant.INVERT;
            boolean zY = composer.y(aICompanionTracker);
            Object objX2 = composer.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new rh0(aICompanionTracker, mutableState2, 20);
                composer.q(objX2);
            }
            AICompanionButtonKt.a(modifierA, aICompanionButtonVariant, (Function0) objX2, composer, 48, 0);
            composer.F();
        } else {
            composer.L(-762260299);
            composer.F();
        }
        composer.r();
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x013a  */
    private final Object i(Object obj, Object obj2, Object obj3) {
        PdpViewState pdpViewState = (PdpViewState) this.d;
        String str = (String) this.f76443f;
        ProductUiModel productUiModel = (ProductUiModel) this.f76441c;
        Context context = (Context) this.f76442e;
        Function1 function1 = (Function1) this.g;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((LazyItemScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (pdpViewState.m && pdpViewState.v == CatalogMode.IN_STORE) {
                LVDisclaimerKt.a(ModifierExtKt.e(PaddingKt.m(pq0.h(1.0f, -1103417518, composer, "PdpMainView$lambda$3$0$7"), LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48417f, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), "pdp_disclaimer_view"), StringResources_androidKt.c(composer, R.string.store_mode_pdp_disclaimer), null, 0L, null, null, composer, 0, 60);
                composer.F();
            } else {
                composer.L(-1102822473);
                if (str != null) {
                    productUiModel.getClass();
                    if (productUiModel.T instanceof SellableStatusUiModel.SellableUiModel) {
                        composer.L(1626996445);
                        ProductDisclaimerUiModel productDisclaimerUiModel = productUiModel.S;
                        if (productDisclaimerUiModel == null) {
                            composer.L(-1102717756);
                            composer.F();
                        } else {
                            Modifier modifierE = ModifierExtKt.e(PaddingKt.m(pq0.h(1.0f, -1102717755, composer, "PdpMainView$lambda$3$0$7"), LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48417f, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), "pdp_disclaimer_view");
                            String strA = StringResourceUiModelKt.a(productDisclaimerUiModel.f61729b, context);
                            Function0 function0 = null;
                            if (StringResourceUiModelKt.b(productDisclaimerUiModel.f61730c) && StringResourceUiModelKt.b(productDisclaimerUiModel.d)) {
                                productDisclaimerUiModel = null;
                            }
                            if (productDisclaimerUiModel == null) {
                                composer.L(1021860935);
                                composer.F();
                            } else {
                                composer.L(1021860936);
                                boolean zK = composer.K(function1) | composer.K(productDisclaimerUiModel);
                                Object objX = composer.x();
                                if (zK || objX == Composer.Companion.f7939a) {
                                    objX = new jm0(function1, productDisclaimerUiModel, 2);
                                    composer.q(objX);
                                }
                                function0 = (Function0) objX;
                                composer.F();
                            }
                            LVDisclaimerKt.a(modifierE, strA, null, 0L, null, function0, composer, 0, 28);
                            composer.F();
                        }
                        composer.F();
                    } else {
                        composer.L(-1101793676);
                        composer.F();
                    }
                } else {
                    composer.L(-1101793676);
                    composer.F();
                }
                composer.F();
            }
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object j(Object obj, Object obj2, Object obj3) {
        PersonalSelectionsCurationAdvisorLookViewState personalSelectionsCurationAdvisorLookViewState = (PersonalSelectionsCurationAdvisorLookViewState) this.d;
        PersonalSelectionsCurationAdvisorViewState personalSelectionsCurationAdvisorViewState = (PersonalSelectionsCurationAdvisorViewState) this.f76442e;
        Function1 function1 = (Function1) this.f76443f;
        Function1 function2 = (Function1) this.f76441c;
        Function1 function3 = (Function1) this.g;
        PaddingValues paddingValues = (PaddingValues) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        paddingValues.getClass();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(paddingValues) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = o60.e("PersonalSelectionsCurationAdvisorLookComposable$lambda$2", paddingValues).o(SizeKt.f5052c);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
            Modifier modifierC = ComposedModifierKt.c(composer, modifierO);
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
            boolean z = personalSelectionsCurationAdvisorLookViewState instanceof PersonalSelectionsCurationAdvisorLookViewState.Loading;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            if (z) {
                ProgressViewKt.a(boxScopeInstance.g(pq0.j(294238190, composer, "PersonalSelectionsCurationAdvisorLookComposable$lambda$2"), Alignment.Companion.f8587f), 0L, false, composer, 0, 6);
                composer.F();
            } else if (personalSelectionsCurationAdvisorLookViewState instanceof PersonalSelectionsCurationAdvisorLookViewState.Success) {
                composer.L(294432312);
                PersonalSelectionsCurationAdvisorLookViewState.Success success = (PersonalSelectionsCurationAdvisorLookViewState.Success) personalSelectionsCurationAdvisorLookViewState;
                PersonalSelectionsCurationAdvisorLookScreenKt.a(personalSelectionsCurationAdvisorViewState instanceof PersonalSelectionsCurationAdvisorViewState.Success ? ((PersonalSelectionsCurationAdvisorViewState.Success) personalSelectionsCurationAdvisorViewState).f62507a.g.f62587a : null, success.f62497a, success.f62498b, success.f62499c, function1, function2, function3, composer, 0);
                composer.F();
            } else {
                if (!(personalSelectionsCurationAdvisorLookViewState instanceof PersonalSelectionsCurationAdvisorLookViewState.Error)) {
                    throw o60.v(composer, 1672057672);
                }
                TextKt.c(StringResources_androidKt.c(composer, R.string.error_generic), boxScopeInstance.g(pq0.j(295234468, composer, "PersonalSelectionsCurationAdvisorLookComposable$lambda$2"), Alignment.Companion.f8587f), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer, 0, 0, 262140);
                composer = composer;
                composer.F();
            }
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object k(Object obj, Object obj2, Object obj3) {
        Function2 function2;
        Function0 function0;
        Function2 function3;
        Function1 function1;
        float f2;
        String str;
        String strConcat;
        String strK;
        RepairsViewState repairsViewState;
        int i2;
        int i3;
        String strD;
        RepairsViewState repairsViewState2;
        Object failure;
        Object next;
        Object next2;
        String strName;
        CareServiceUiModel careServiceUiModel = (CareServiceUiModel) this.d;
        Function1 function4 = (Function1) this.f76442e;
        Function1 function5 = (Function1) this.f76443f;
        Function1 function6 = (Function1) this.f76441c;
        RepairsViewState repairsViewState3 = (RepairsViewState) this.g;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((ColumnScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(tr.d("RepairListItem$lambda$1", 1.0f), LVAppDesignKitTheme.c(composer).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(composer).f48416e);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer, 0);
            int iHashCode = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
            Modifier modifierC = ComposedModifierKt.c(composer, modifierI);
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
            Function2 function8 = ComposeUiNode.Companion.f9644f;
            Updater.c(composer, columnMeasurePolicyA, function8);
            Function2 function9 = ComposeUiNode.Companion.f9643e;
            Updater.c(composer, persistentCompositionLocalMapN, function9);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function10 = ComposeUiNode.Companion.g;
            Updater.c(composer, numValueOf, function10);
            Function1 function11 = ComposeUiNode.Companion.f9645h;
            Updater.b(composer, function11);
            Function2 function12 = ComposeUiNode.Companion.d;
            DTFunctionNameModifier dTFunctionNameModifierF = a.f(composer, modifierC, function12, "RepairListItem$lambda$1");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = dTFunctionNameModifierF.o(fillElement);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, composer, 0);
            int iHashCode2 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
            Modifier modifierC2 = ComposedModifierKt.c(composer, modifierO);
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
            Updater.c(composer, rowMeasurePolicyA, function8);
            Updater.c(composer, persistentCompositionLocalMapN2, function9);
            cj.s(iHashCode2, composer, function10, composer, function11);
            Modifier modifierA = ClipKt.a(SizeKt.o(a.f(composer, modifierC2, function12, "RepairListItem$lambda$1"), LVAppDesignKitTheme.d(composer).D), LVAppDesignKitTheme.j(composer).f48410b);
            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, composer, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierE = ModifierExtKt.e(PainterModifierKt.a(modifierA, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), "careservicesList_repairsItemImage_Image");
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode3 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer.n();
            Modifier modifierC3 = ComposedModifierKt.c(composer, modifierE);
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
            Updater.c(composer, measurePolicyD, function8);
            Updater.c(composer, persistentCompositionLocalMapN3, function9);
            cj.s(iHashCode3, composer, function10, composer, function11);
            Updater.c(composer, modifierC3, function12);
            String str2 = careServiceUiModel.n;
            boolean z = careServiceUiModel.q;
            RepairStatusUiModel repairStatusUiModel = careServiceUiModel.f63996e;
            if (StringExtKt.a(str2)) {
                composer.L(1308215310);
                Modifier modifierA2 = AspectRatioKt.a(new DTFunctionNameModifier("RepairListItem$lambda$1").o(fillElement), 1.0f, false);
                String str3 = careServiceUiModel.n;
                str3.getClass();
                str = "RepairListItem$lambda$1";
                function2 = function12;
                f2 = 1.0f;
                function0 = function7;
                function3 = function8;
                function1 = function11;
                ImageLoaderKt.b(modifierA2, str3, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer, 390, 2040);
                composer = composer;
                composer.F();
            } else {
                function2 = function12;
                function0 = function7;
                function3 = function8;
                function1 = function11;
                f2 = 1.0f;
                str = "RepairListItem$lambda$1";
                ImageKt.a(PainterResources_androidKt.a(2131230926, composer, 0), null, AspectRatioKt.a(pq0.h(1.0f, 1308625626, composer, str), 1.0f, false), null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, composer, 25016, 104);
                composer.F();
            }
            composer.r();
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier(str);
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            Modifier modifierK = PaddingKt.k(rowScopeInstance.a(dTFunctionNameModifier, f2, true), LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
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
            Updater.c(composer, columnMeasurePolicyA2, function3);
            Updater.c(composer, persistentCompositionLocalMapN4, function9);
            cj.s(iHashCode4, composer, function10, composer, function1);
            Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(a.f(composer, modifierC4, function2, str), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "careservicesList_repairsItemTitle_text");
            TextStyle textStyle = LVAppDesignKitTheme.n(composer).m;
            String str4 = careServiceUiModel.f64001k;
            String str5 = careServiceUiModel.f64000j;
            String str6 = careServiceUiModel.f63995c;
            repairStatusUiModel.getClass();
            if (ArraysKt.f(repairStatusUiModel, new RepairStatusUiModel[]{RepairStatusUiModel.PRELIMINARY_ASSESSMENT, RepairStatusUiModel.REQUEST_SUBMITTED})) {
                strK = o60.k(composer, -513815489, R.string.dr_repair, composer);
            } else {
                composer.L(-513751412);
                if (str6.length() == 0) {
                    strK = o60.k(composer, -513721993, R.string.dr_repair, composer);
                } else {
                    composer.L(-513653452);
                    if (str5.length() > 0) {
                        strConcat = str5.concat("\n");
                    } else {
                        strConcat = str4.length() > 0 ? str4.concat("\n") : "";
                    }
                    strK = strConcat + StringResources_androidKt.c(composer, R.string.dr_care_prefix) + str6;
                    composer.F();
                }
                composer.F();
            }
            Composer composer2 = composer;
            TextKt.c(strK, modifierE2, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, composer2, 0, 0, 131064);
            Composer composer3 = composer2;
            if (z != 0) {
                composer3.L(1811625679);
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                ref$ObjectRef.f71921b = "";
                try {
                    Result.Companion companion = Result.INSTANCE;
                    repairsViewState2 = repairsViewState3;
                    try {
                        List list = repairsViewState2.f64017f;
                        Iterator it = list.iterator();
                        do {
                            if (!it.hasNext()) {
                                throw new NoSuchElementException("Collection contains no element matching the predicate.");
                            }
                            next = it.next();
                        } while (((RepairStatusTranslationUiModel) next).f57396a != repairStatusUiModel);
                        if (((RepairStatusTranslationUiModel) next).f57398c.length() != 0) {
                            list = null;
                        }
                        if (list == null || (strName = repairStatusUiModel.name()) == null) {
                            Iterator it2 = repairsViewState2.f64017f.iterator();
                            do {
                                if (!it2.hasNext()) {
                                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                                }
                                next2 = it2.next();
                            } while (((RepairStatusTranslationUiModel) next2).f57396a != repairStatusUiModel);
                            strName = ((RepairStatusTranslationUiModel) next2).f57397b;
                        }
                        ref$ObjectRef.f71921b = strName;
                        failure = Unit.f71739a;
                    } catch (Throwable th) {
                        th = th;
                        Result.Companion companion2 = Result.INSTANCE;
                        failure = new Result.Failure(th);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    repairsViewState2 = repairsViewState3;
                }
                if (Result.a(failure) != null) {
                    ref$ObjectRef.f71921b = repairStatusUiModel.name();
                }
                Modifier modifierG = n00.g(str, "careservicesList_repairsItemStatus_text");
                long j2 = LVAppDesignKitTheme.c(composer3).f48361b.l;
                TextStyle textStyle2 = LVAppDesignKitTheme.n(composer3).n;
                RepairStatusUiModel.Companion companion3 = RepairStatusUiModel.INSTANCE;
                String strD2 = (String) ref$ObjectRef.f71921b;
                companion3.getClass();
                strD2.getClass();
                if (strD2.length() > 0) {
                    String lowerCase = strD2.toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                    strD2 = StringKtExtKt.d(StringsKt.J(lowerCase, "_", " "));
                }
                repairsViewState = repairsViewState2;
                TextKt.c(strD2, modifierG, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle2, composer3, 0, 0, 131064);
                composer3 = composer3;
                composer3.F();
            } else {
                repairsViewState = repairsViewState3;
                composer3.L(1812836539);
                composer3.F();
            }
            composer3.r();
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier(str);
            Alignment.f8582a.getClass();
            Composer composer4 = composer3;
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer3).I, composer3, 0), null, SizeKt.o(rowScopeInstance.b(dTFunctionNameModifier2, Alignment.Companion.f8591k), LVAppDesignKitTheme.d(composer3).m), 0L, composer4, 56, 8);
            composer4.r();
            Modifier modifierM = PaddingKt.m(SizeKt.d(new DTFunctionNameModifier(str), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, composer4, 48);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode5 = Long.hashCode(composer4.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer4.n();
            Modifier modifierC5 = ComposedModifierKt.c(composer4, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function13 = ComposeUiNode.Companion.f9641b;
            if (composer4.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer4.B();
            if (composer4.getS()) {
                composer4.C(function13);
            } else {
                composer4.o();
            }
            Updater.c(composer4, rowMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
            Updater.c(composer4, persistentCompositionLocalMapN5, ComposeUiNode.Companion.f9643e);
            Updater.c(composer4, Integer.valueOf(iHashCode5), ComposeUiNode.Companion.g);
            Updater.b(composer4, ComposeUiNode.Companion.f9645h);
            Modifier modifierE3 = ModifierExtKt.e(rowScopeInstance.a(a.f(composer4, modifierC5, ComposeUiNode.Companion.d, str), 1.0f, true), "careservicesList_repairsItemDateTitle_text");
            if (z != 0) {
                i2 = -1608086500;
                i3 = R.string.dr_repair_date;
            } else {
                i2 = -1607983580;
                i3 = R.string.dr_delivered_on;
            }
            TextKt.c(o60.k(composer4, i2, i3, composer4), modifierE3, LVAppDesignKitTheme.c(composer4).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer4).m, composer4, 0, 0, 131064);
            Modifier modifierG2 = n00.g(str, "careservicesList_repairsItemDate_text");
            if (z) {
                strD = DateTimeUtils.e(repairsViewState.f64013a, careServiceUiModel.f63997f, FormatStyle.LONG);
            } else {
                RepairsViewState repairsViewState4 = repairsViewState;
                String str7 = careServiceUiModel.f63999i;
                if (str7 == null && (str7 = careServiceUiModel.f63998h) == null) {
                    str7 = careServiceUiModel.g;
                }
                if (str7 == null || (strD = DateTimeUtils.d(repairsViewState4.f64013a.m, str7, "yyyy-MM-dd", FormatStyle.LONG)) == null) {
                    strD = " ";
                }
            }
            TextKt.c(strD, modifierG2, LVAppDesignKitTheme.c(composer4).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer4).m, composer4, 0, 0, 131064);
            composer4.r();
            RepairListItemKt.a(careServiceUiModel, function4, function5, function6, composer4, 0);
            composer4.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) throws Throwable {
        int i2;
        String str;
        String str2;
        String str3;
        int i3 = this.f76440b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj4 = this.g;
        Object obj5 = this.f76441c;
        Object obj6 = this.f76443f;
        Object obj7 = this.f76442e;
        Object obj8 = this.d;
        switch (i3) {
            case 0:
                AccountAddressUiModel accountAddressUiModel = (AccountAddressUiModel) obj8;
                Context context = (Context) obj7;
                String str4 = (String) obj6;
                Function0 function0 = (Function0) obj5;
                InAppDispatch inAppDispatch = (InAppDispatch) obj4;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierB = BackgroundKt.b(tr.d("AddressCard$lambda$0", 1.0f), LVAppDesignKitTheme.c(composer).f48361b.f48374a, rectangleShapeKt$RectangleShape$1);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer, 0);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierB);
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
                    Function2 function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer, columnMeasurePolicyA, function2);
                    Function2 function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer, persistentCompositionLocalMapN, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function4 = ComposeUiNode.Companion.g;
                    Updater.c(composer, numValueOf, function4);
                    Function1 function5 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer, function5);
                    Function2 function6 = ComposeUiNode.Companion.d;
                    Modifier modifierI = PaddingKt.i(SizeKt.d(BackgroundKt.b(a.f(composer, modifierC, function6, "AddressCard$lambda$0"), LVAppDesignKitTheme.c(composer).f48361b.u, rectangleShapeKt$RectangleShape$1), 1.0f), LVAppDesignKitTheme.l(composer).f48416e);
                    BiasAlignment.Vertical vertical = Alignment.Companion.l;
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, composer, 48);
                    int iHashCode2 = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer, modifierI);
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
                    Updater.c(composer, rowMeasurePolicyA, function2);
                    Updater.c(composer, persistentCompositionLocalMapN2, function3);
                    cj.s(iHashCode2, composer, function4, composer, function5);
                    Updater.c(composer, modifierC2, function6);
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AddressCard$lambda$0");
                    RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
                    TextKt.c(StringResourceUiModelKt.a(accountAddressUiModel.q, context), ModifierExtKt.e(rowScopeInstance.a(dTFunctionNameModifier, 1.0f, true), "addressBook_addressTitle_text"), LVAppDesignKitTheme.c(composer).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48429j, composer, 0, 0, 131064);
                    String str5 = accountAddressUiModel.n;
                    Locale locale = Locale.getDefault();
                    locale.getClass();
                    String upperCase = str5.toUpperCase(locale);
                    upperCase.getClass();
                    if (upperCase.equals(str4)) {
                        Modifier modifierO = SizeKt.o(pq0.j(-210897814, composer, "AddressCard$lambda$0"), LVAppDesignKitTheme.d(composer).l);
                        boolean zK = composer.K(function0);
                        Object objX = composer.x();
                        if (zK || objX == composer$Companion$Empty$1) {
                            objX = new h1(function0, 3);
                            composer.q(objX);
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer).w, composer, 0), StringResources_androidKt.c(composer, R.string.alt_edit), ModifierExtKt.e(ModifierExtKt.c(modifierO, false, null, null, (Function0) objX, 31), "addressBook_addressEdit_button"), LVAppDesignKitTheme.c(composer).f48361b.m, composer, 8, 0);
                        composer.F();
                    } else {
                        composer.L(-210359096);
                        composer.F();
                    }
                    composer.r();
                    Modifier modifierM = PaddingKt.m(SizeKt.d(new DTFunctionNameModifier("AddressCard$lambda$0"), 1.0f), LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, composer, 48);
                    int iHashCode3 = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer, modifierM);
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
                    Updater.c(composer, rowMeasurePolicyA2, function2);
                    Updater.c(composer, persistentCompositionLocalMapN3, function3);
                    cj.s(iHashCode3, composer, function4, composer, function5);
                    TextKt.c(StringResources_androidKt.c(composer, R.string.mylv_name_myaddress), ModifierExtKt.e(rowScopeInstance.a(a.f(composer, modifierC3, function6, "AddressCard$lambda$0"), 1.0f, true), "addressBook_addressName_text"), LVAppDesignKitTheme.c(composer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).m, composer, 0, 0, 131064);
                    TextKt.c(tr.h(accountAddressUiModel.f52187e, " ", accountAddressUiModel.f52188f), n00.g("AddressCard$lambda$0", "addressBook_addressNameValue_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).m, composer, 0, 0, 131068);
                    composer.r();
                    Modifier modifierM2 = PaddingKt.m(SizeKt.d(new DTFunctionNameModifier("AddressCard$lambda$0"), 1.0f), LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    RowMeasurePolicy rowMeasurePolicyA3 = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, composer, 48);
                    int iHashCode4 = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer, modifierM2);
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
                    Updater.c(composer, rowMeasurePolicyA3, function2);
                    Updater.c(composer, persistentCompositionLocalMapN4, function3);
                    cj.s(iHashCode4, composer, function4, composer, function5);
                    TextKt.c(StringResources_androidKt.c(composer, R.string.mylv_myprofile_myinfos_address_address1), ModifierExtKt.e(rowScopeInstance.a(a.f(composer, modifierC4, function6, "AddressCard$lambda$0"), 1.0f, true), "addressBook_address_text"), LVAppDesignKitTheme.c(composer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).m, composer, 0, 0, 131064);
                    Modifier modifierB2 = cj.b("AddressCard$lambda$0", rowScopeInstance, 1.0f, true);
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, Alignment.Companion.p, composer, 48);
                    int iHashCode5 = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer, modifierB2);
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
                    Updater.c(composer, columnMeasurePolicyA2, function2);
                    Updater.c(composer, persistentCompositionLocalMapN5, function3);
                    cj.s(iHashCode5, composer, function4, composer, function5);
                    Updater.c(composer, modifierC5, function6);
                    String strA = AddressBuilder.a((Context) composer.k(AndroidCompositionLocals_androidKt.f9936b), JsonProviderKt.f43520a, inAppDispatch, accountAddressUiModel);
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer).m;
                    TextAlign.f10959b.getClass();
                    TextKt.c(strA, n00.g("AddressCard$lambda$0", "addressBook_addressValue_text"), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(TextAlign.f10963h), 0L, 0, false, 0, 0, null, textStyle, composer, 0, 0, 130040);
                    composer.r();
                    composer.r();
                    Modifier modifierI2 = PaddingKt.i(SizeKt.d(new DTFunctionNameModifier("AddressCard$lambda$0"), 1.0f), LVAppDesignKitTheme.l(composer).f48416e);
                    RowMeasurePolicy rowMeasurePolicyA4 = RowKt.a(arrangement$Start$1, vertical, composer, 48);
                    int iHashCode6 = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN6 = composer.n();
                    Modifier modifierC6 = ComposedModifierKt.c(composer, modifierI2);
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
                    Updater.c(composer, rowMeasurePolicyA4, function2);
                    Updater.c(composer, persistentCompositionLocalMapN6, function3);
                    cj.s(iHashCode6, composer, function4, composer, function5);
                    TextKt.c(StringResources_androidKt.c(composer, R.string.profile_phone_number), ModifierExtKt.e(rowScopeInstance.a(a.f(composer, modifierC6, function6, "AddressCard$lambda$0"), 1.0f, true), "addressBook_addressPhoneNum_text"), LVAppDesignKitTheme.c(composer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).m, composer, 0, 0, 131064);
                    TextKt.c(accountAddressUiModel.p, n00.g("AddressCard$lambda$0", "addressBook_addressPhoneNumValue_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).m, composer, 0, 0, 131068);
                    composer.r();
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                AddressBookViewState addressBookViewState = (AddressBookViewState) obj8;
                Function2 function7 = (Function2) obj7;
                Function1 function8 = (Function1) obj6;
                final LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj4;
                final Function0 function9 = (Function0) obj5;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer2.K(paddingValues) ? 4 : 2;
                }
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierB3 = BackgroundKt.b(PaddingKt.h(new DTFunctionNameModifier("AddressBookScreen$lambda$1").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.c(composer2).f48361b.f48375b, rectangleShapeKt$RectangleShape$1);
                    InAppDispatch inAppDispatch2 = addressBookViewState.f52196a;
                    AccountAddressUiModel accountAddressUiModel2 = addressBookViewState.d;
                    List list = addressBookViewState.f52199e;
                    boolean zK2 = composer2.K(function8) | composer2.y(lVModalBottomSheetState);
                    Object objX2 = composer2.x();
                    if (zK2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new q4(function8, lVModalBottomSheetState, 0);
                        composer2.q(objX2);
                    }
                    AddressBookContentKt.a(modifierB3, inAppDispatch2, accountAddressUiModel2, list, function7, (Function1) objX2, composer2, 0);
                    if (lVModalBottomSheetState.a()) {
                        composer2.L(857231818);
                        LVModalBottomSheetKt.b(null, StringResources_androidKt.c(composer2, R.string.alt_close), null, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(-820007188, new Function3() { // from class: com.vuitton.android.presentation.screen.account.addressbook.components.a
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj9, Object obj10, Object obj11) {
                                Composer composer3 = (Composer) obj10;
                                int iIntValue3 = ((Integer) obj11).intValue();
                                ((ColumnScope) obj9).getClass();
                                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    Function0 function10 = function9;
                                    boolean zK3 = composer3.K(function10);
                                    LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetState;
                                    boolean zY = composer3.y(lVModalBottomSheetState2) | zK3;
                                    Object objX3 = composer3.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                    if (zY || objX3 == composer$Companion$Empty$2) {
                                        objX3 = new t3(function10, lVModalBottomSheetState2, 2);
                                        composer3.q(objX3);
                                    }
                                    Function0 function11 = (Function0) objX3;
                                    boolean zY2 = composer3.y(lVModalBottomSheetState2);
                                    Object objX4 = composer3.x();
                                    if (zY2 || objX4 == composer$Companion$Empty$2) {
                                        AddressBookScreenKt$AddressBookScreen$2$2$2$1 addressBookScreenKt$AddressBookScreen$2$2$2$1 = new AddressBookScreenKt$AddressBookScreen$2$2$2$1(0, lVModalBottomSheetState2, LVModalBottomSheetState.class, "hide", "hide(Lkotlin/jvm/functions/Function0;)V", 0);
                                        composer3.q(addressBookScreenKt$AddressBookScreen$2$2$2$1);
                                        objX4 = addressBookScreenKt$AddressBookScreen$2$2$2$1;
                                    }
                                    AddressBottomSheetDeleteKt.a(function11, (Function0) objX4, composer3, 0);
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663296, 245);
                        composer2.F();
                    } else {
                        composer2.L(857730887);
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                AssessmentBffViewState assessmentBffViewState = (AssessmentBffViewState) obj8;
                Function1 function10 = (Function1) obj7;
                Function1 function11 = (Function1) obj6;
                CoroutineScope coroutineScope = (CoroutineScope) obj5;
                LazyListState lazyListState = (LazyListState) obj4;
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    StepState stepState = assessmentBffViewState.f57346c.f57342b;
                    boolean zK3 = composer3.K(function11) | composer3.y(coroutineScope) | composer3.K(lazyListState);
                    Object objX3 = composer3.x();
                    if (zK3 || objX3 == composer$Companion$Empty$1) {
                        i2 = 0;
                        objX3 = new a(function11, coroutineScope, lazyListState, i2);
                        composer3.q(objX3);
                    } else {
                        i2 = 0;
                    }
                    AssessmentSendComponentKt.a(stepState, function10, (Function1) objX3, composer3, i2);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                AssessmentViewState assessmentViewState = (AssessmentViewState) obj8;
                Function1 function12 = (Function1) obj7;
                Function1 function13 = (Function1) obj6;
                CoroutineScope coroutineScope2 = (CoroutineScope) obj5;
                LazyListState lazyListState2 = (LazyListState) obj4;
                Composer composer4 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    StepState stepState2 = assessmentViewState.f57358c.f57354b;
                    boolean zK4 = composer4.K(function13) | composer4.y(coroutineScope2) | composer4.K(lazyListState2);
                    Object objX4 = composer4.x();
                    if (zK4 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new a(function13, coroutineScope2, lazyListState2, 4);
                        composer4.q(objX4);
                    }
                    AssessmentSendComponentKt.a(stepState2, function12, (Function1) objX4, composer4, 0);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 4:
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                AssessmentPreliminaryBffComponentKt.c((CareServiceDetailUiModel.Assessment) obj8, (Function0) obj5, (Function0) obj7, (Function0) obj6, (Function1) obj4, (Composer) obj2, 0);
                return Unit.f71739a;
            case 5:
                BeautyVtoViewModel beautyVtoViewModel = (BeautyVtoViewModel) obj8;
                Function0 function14 = (Function0) obj5;
                Function0 function15 = (Function0) obj7;
                NavBackStack navBackStack = (NavBackStack) obj6;
                Function0 function16 = (Function0) obj4;
                Composer composer5 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ((BeautyVtoRoutes.ShadeFinderScan) obj).getClass();
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    boolean zY = composer5.y(navBackStack) | composer5.K(function16);
                    Object objX5 = composer5.x();
                    if (zY || objX5 == composer$Companion$Empty$1) {
                        objX5 = new y0(navBackStack, function16, 1);
                        composer5.q(objX5);
                    }
                    Function0 function17 = (Function0) objX5;
                    boolean zY2 = composer5.y(navBackStack) | composer5.K(function16);
                    Object objX6 = composer5.x();
                    if (zY2 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new y0(navBackStack, function16, 2);
                        composer5.q(objX6);
                    }
                    ShadeFinderScanComposableKt.a(beautyVtoViewModel, function14, function15, function17, (Function0) objX6, composer5, 0);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 6:
                ((Integer) obj3).intValue();
                float f2 = BookingConfirmationScreenKt.f54386a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                BookingConfirmationScreenKt.c((List) obj8, (Function1) obj7, (Function1) obj6, (Function2) obj5, (Function1) obj4, (Composer) obj2, 0);
                return Unit.f71739a;
            case 7:
                Function0 function18 = (Function0) obj5;
                Function0 function19 = (Function0) obj7;
                Function0 function20 = (Function0) obj6;
                Function0 function21 = (Function0) obj4;
                Composer composer6 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                int i4 = BookingDetailsScreenKt.WhenMappings.f54422a[((BookingActionTypeUiModel) obj8).ordinal()];
                if (i4 == 1) {
                    composer6.L(-1442440191);
                    BookingDetailsScreenKt.a(StringResources_androidKt.c(composer6, R.string.booking_my_experiences_view_pass_button), LVAppDesignKitTheme.g(composer6).G0, function18, composer6, 0);
                    composer6.F();
                } else if (i4 == 2) {
                    composer6.L(-1442429679);
                    BookingDetailsScreenKt.a(StringResources_androidKt.c(composer6, R.string.booking_my_experiences_add_to_calendar_button), LVAppDesignKitTheme.g(composer6).C1, function19, composer6, 0);
                    composer6.F();
                } else if (i4 == 3) {
                    composer6.L(-1442418983);
                    BookingDetailsScreenKt.a(StringResources_androidKt.c(composer6, R.string.booking_my_experiences_modify_button), LVAppDesignKitTheme.g(composer6).w, function20, composer6, 0);
                    composer6.F();
                } else {
                    if (i4 != 4) {
                        throw o60.v(composer6, -1442441375);
                    }
                    composer6.L(-1442409029);
                    BookingDetailsScreenKt.a(StringResources_androidKt.c(composer6, R.string.booking_my_experiences_cancel_button), LVAppDesignKitTheme.g(composer6).q, function21, composer6, 0);
                    composer6.F();
                }
                return Unit.f71739a;
            case 8:
                String str6 = (String) obj6;
                ImmutableList immutableList = (ImmutableList) obj8;
                Function2 function22 = (Function2) obj7;
                Function1 function23 = (Function1) obj4;
                Function0 function24 = (Function0) obj5;
                Composer composer7 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer7.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    Modifier modifierM3 = PaddingKt.m(new DTFunctionNameModifier("CrossSellAddToCartBottomSheet$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer7).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer7).f48417f);
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, composer7, 0);
                    int iHashCode7 = Long.hashCode(composer7.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN7 = composer7.n();
                    Modifier modifierC7 = ComposedModifierKt.c(composer7, modifierM3);
                    ComposeUiNode.b0.getClass();
                    Function0 function25 = ComposeUiNode.Companion.f9641b;
                    if (composer7.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer7.B();
                    if (composer7.getS()) {
                        composer7.C(function25);
                    } else {
                        composer7.o();
                    }
                    Updater.c(composer7, columnMeasurePolicyA3, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer7, persistentCompositionLocalMapN7, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer7, Integer.valueOf(iHashCode7), ComposeUiNode.Companion.g);
                    Updater.b(composer7, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer7, modifierC7, ComposeUiNode.Companion.d);
                    LVDisclaimerKt.a(PaddingKt.k(SizeKt.d(ModifierExtKt.e(new DTFunctionNameModifier("CrossSellAddToCartBottomSheet$lambda$1"), "addToCartReport_disclaimer_view"), 1.0f), LVAppDesignKitTheme.l(composer7).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), str6, PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer7).r0, composer7, 0), LVAppDesignKitTheme.c(composer7).f48361b.w, null, null, composer7, 512, 48);
                    CarouselSKt.a(null, StringResources_androidKt.c(composer7, R.string.Pdp_YMAL), null, null, immutableList, true, false, LVColorScheme.DEFAULT, LVAppDesignKitTheme.l(composer7).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, true, function22, null, null, function23, composer7, 14352384, 48, 26125);
                    LVButtonKt.b(0, 504, composer7, ModifierExtKt.e(PaddingKt.m(PaddingKt.k(tr.d("CrossSellAddToCartBottomSheet$lambda$1", 1.0f), LVAppDesignKitTheme.l(composer7).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer7).f48417f, 7), "bottomSheet_mainAction_button"), LVAppDesignKitTheme.b(composer7).f48446a, null, null, StringResources_androidKt.c(composer7, R.string.see_cart), function24, false, false, false);
                    composer7.r();
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 9:
                Step1StateUIModel step1StateUIModel = (Step1StateUIModel) obj7;
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                DistantRepairInitiateComponentKt.b((DistantRepairFormViewState) obj8, step1StateUIModel.f57401a, step1StateUIModel.f57403c, (Function0) obj5, (Function1) obj6, (Function1) obj4, (Composer) obj2, 0);
                return Unit.f71739a;
            case 10:
                MyInformationViewState myInformationViewState = (MyInformationViewState) obj8;
                MutableState mutableState = (MutableState) obj7;
                MutableState mutableState2 = (MutableState) obj6;
                MutableState mutableState3 = (MutableState) obj5;
                MutableState mutableState4 = (MutableState) obj4;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer8 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((iIntValue7 & 6) == 0) {
                    iIntValue7 |= composer8.K(paddingValues2) ? 4 : 2;
                }
                if (composer8.p(iIntValue7 & 1, (iIntValue7 & 19) != 18)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) composer8.k(CompositionLocalsKt.r);
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("EditPasswordScreen$lambda$16");
                    FillElement fillElement = SizeKt.f5052c;
                    Modifier modifierK = PaddingKt.k(PaddingKt.h(BackgroundKt.b(dTFunctionNameModifier2.o(fillElement), LVAppDesignKitTheme.c(composer8).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), paddingValues2), LVAppDesignKitTheme.l(composer8).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA4 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, composer8, 0);
                    int iHashCode8 = Long.hashCode(composer8.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN8 = composer8.n();
                    Modifier modifierC8 = ComposedModifierKt.c(composer8, modifierK);
                    ComposeUiNode.b0.getClass();
                    Function0 function26 = ComposeUiNode.Companion.f9641b;
                    if (composer8.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer8.B();
                    if (composer8.getS()) {
                        composer8.C(function26);
                    } else {
                        composer8.o();
                    }
                    Updater.c(composer8, columnMeasurePolicyA4, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer8, persistentCompositionLocalMapN8, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer8, Integer.valueOf(iHashCode8), ComposeUiNode.Companion.g);
                    Updater.b(composer8, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer8, modifierC8, ComposeUiNode.Companion.d);
                    TextKt.c(StringResources_androidKt.c(composer8, R.string.all_fields_mandatory_label), PaddingKt.m(new DTFunctionNameModifier("EditPasswordScreen$lambda$16"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer8).f48416e, 7), LVAppDesignKitTheme.c(composer8).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer8).m, composer8, 0, 0, 131064);
                    Modifier modifierD = tr.d("EditPasswordScreen$lambda$16", 1.0f);
                    String str7 = (String) mutableState.getF10755b();
                    String str8 = str7 == null ? "" : str7;
                    String strC = StringResources_androidKt.c(composer8, R.string.mylv_myprofile_myinfos_logininformation_editpassword_currentpassword);
                    Integer num = (Integer) mutableState2.getF10755b();
                    if (num == null) {
                        composer8.L(-56675512);
                        composer8.F();
                        str = null;
                    } else {
                        composer8.L(-56675511);
                        String strC2 = StringResources_androidKt.c(composer8, num.intValue());
                        composer8.F();
                        str = strC2;
                    }
                    boolean z = ((Integer) mutableState2.getF10755b()) != null;
                    ImeAction.f10785b.getClass();
                    int i5 = ImeAction.f10790i;
                    Object objX7 = composer8.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = new ej(mutableState, mutableState2, 1);
                        composer8.q(objX7);
                    }
                    LVPasswordTextFieldKt.a(str8, (Function1) objX7, modifierD, null, false, strC, z, str, i5, null, null, null, null, false, composer8, 805306800, 0, 31800);
                    Modifier modifierB4 = BackgroundKt.b(PaddingKt.m(tr.d("EditPasswordScreen$lambda$16", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer8).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer8).f48361b.f48374a, rectangleShapeKt$RectangleShape$1);
                    String str9 = (String) mutableState3.getF10755b();
                    String str10 = str9 == null ? "" : str9;
                    String strC3 = StringResources_androidKt.c(composer8, R.string.mylv_myprofile_myinfos_logininformation_editpassword_newpassword);
                    Integer num2 = (Integer) mutableState4.getF10755b();
                    if (num2 == null) {
                        composer8.L(-55862072);
                        composer8.F();
                        str2 = null;
                    } else {
                        composer8.L(-55862071);
                        String strC4 = StringResources_androidKt.c(composer8, num2.intValue());
                        composer8.F();
                        str2 = strC4;
                    }
                    boolean z2 = ((Integer) mutableState4.getF10755b()) != null;
                    int i6 = ImeAction.f10791j;
                    boolean zK5 = composer8.K(softwareKeyboardController);
                    Object objX8 = composer8.x();
                    if (zK5 || objX8 == composer$Companion$Empty$1) {
                        objX8 = new eu(softwareKeyboardController, 2);
                        composer8.q(objX8);
                    }
                    KeyboardActions keyboardActions = new KeyboardActions((Function1) objX8, null, null, null, null, null, 62, null);
                    Object objX9 = composer8.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new ej(mutableState3, mutableState4, 2);
                        composer8.q(objX9);
                    }
                    LVPasswordTextFieldKt.a(str10, (Function1) objX9, modifierB4, null, false, strC3, z2, str2, i6, keyboardActions, null, null, null, false, composer8, 805306416, 0, 30776);
                    composer8.r();
                    if (myInformationViewState.f52666b) {
                        composer8.L(2102172902);
                        ProgressViewKt.a(new DTFunctionNameModifier("EditPasswordScreen$lambda$16").o(fillElement), 0L, false, composer8, 6, 6);
                        composer8.F();
                    } else {
                        composer8.L(2102270924);
                        composer8.F();
                    }
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 11:
                return a(obj, obj2, obj3);
            case 12:
                final MainNavigationState mainNavigationState = (MainNavigationState) obj8;
                final Context context2 = (Context) obj7;
                final Function1 function27 = (Function1) obj6;
                final State state = (State) obj5;
                final Density density = (Density) obj4;
                Composer composer9 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                LVNavBarKt.a(PaddingKt.k(BackgroundKt.b(new DTFunctionNameModifier("MainNavBar$lambda$5$1$0$0$5"), LVAppDesignKitTheme.c(composer9).f48361b.u, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(composer9).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), mainNavigationState.d, ComposableLambdaKt.b(-173495291, new Function5() { // from class: vb0
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override // kotlin.jvm.functions.Function5
                    public final Object D(Object obj9, Object obj10, Object obj11, Object obj12, Object obj13) {
                        String str11;
                        LVNavBarScope lVNavBarScope = (LVNavBarScope) obj9;
                        ((Integer) obj10).getClass();
                        MainTopLevelDestination mainTopLevelDestination = (MainTopLevelDestination) obj11;
                        Composer composer10 = (Composer) obj12;
                        int iIntValue8 = ((Integer) obj13).intValue();
                        lVNavBarScope.getClass();
                        mainTopLevelDestination.getClass();
                        OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                        StringResourceUiModel title = mainTopLevelDestination.getTitle();
                        Context context3 = context2;
                        String strA2 = StringResourceUiModelKt.a(title, context3);
                        MainNavigationState mainNavigationState2 = mainNavigationState;
                        boolean zD = MainNavBarKt.d(mainNavigationState2.a(composer10), mainTopLevelDestination.getRoute());
                        DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("MainNavBar$lambda$5$1$0$0$5$0");
                        Function1 function28 = function27;
                        boolean zK6 = composer10.K(function28);
                        int i7 = (iIntValue8 & 896) ^ KyberEngine.KyberPolyBytes;
                        boolean zK7 = zK6 | ((i7 > 256 && composer10.d(mainTopLevelDestination.ordinal())) || (iIntValue8 & KyberEngine.KyberPolyBytes) == 256) | composer10.K(mainNavigationState2);
                        Object objX10 = composer10.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zK7 || objX10 == composer$Companion$Empty$2) {
                            objX10 = new pp(function28, (Object) mainTopLevelDestination, (Object) mainNavigationState2, 21);
                            composer10.q(objX10);
                        }
                        Modifier modifierC9 = ModifierExtKt.c(dTFunctionNameModifier3, false, null, null, (Function0) objX10, 27);
                        String automationTag = mainTopLevelDestination.getAutomationTag();
                        boolean zB = composer10.b(zD) | composer10.K(strA2) | ((i7 > 256 && composer10.d(mainTopLevelDestination.ordinal())) || (iIntValue8 & KyberEngine.KyberPolyBytes) == 256) | composer10.y(context3);
                        Object objX11 = composer10.x();
                        if (zB || objX11 == composer$Companion$Empty$2) {
                            str11 = strA2;
                            Object s0Var = new s0(zD, str11, mainTopLevelDestination, context3, 8);
                            composer10.q(s0Var);
                            objX11 = s0Var;
                        } else {
                            str11 = strA2;
                        }
                        int i8 = 2;
                        Modifier modifierD2 = SizeKt.d(com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierC9, automationTag, (Function1) objX11, 2), 1.0f);
                        float f3 = TooltipDefaults.f7400b;
                        final int iB0 = ((Density) composer10.k(CompositionLocalsKt.f10031h)).B0(LVAppDesignKitTheme.l(composer10).f48417f);
                        boolean zD2 = composer10.d(iB0);
                        Object objX12 = composer10.x();
                        if (zD2 || objX12 == composer$Companion$Empty$2) {
                            objX12 = new PopupPositionProvider() { // from class: androidx.compose.material3.TooltipDefaults$rememberPlainTooltipPositionProvider$1$1
                                @Override // androidx.compose.ui.window.PopupPositionProvider
                                public final long a(IntRect intRect, long j2, LayoutDirection layoutDirection, long j3) {
                                    int iA = defpackage.a.a(intRect.d(), (int) (j3 >> 32), 2, intRect.f11017a);
                                    int i9 = intRect.f11018b - ((int) (j3 & BodyPartID.bodyIdMax));
                                    int i10 = iB0;
                                    int i11 = i9 - i10;
                                    if (i11 < 0) {
                                        i11 = intRect.d + i10;
                                    }
                                    long j4 = (((long) iA) << 32) | (((long) i11) & BodyPartID.bodyIdMax);
                                    IntOffset.Companion companion = IntOffset.f11012b;
                                    return j4;
                                }
                            };
                            composer10.q(objX12);
                        }
                        TooltipKt.b((TooltipDefaults$rememberPlainTooltipPositionProvider$1$1) objX12, ComposableLambdaKt.b(179273008, new pf(zD, str11, i8), composer10), TooltipKt.c(composer10), modifierD2, false, ComposableLambdaKt.b(-26333880, new hg(state, density, mainTopLevelDestination, zD, lVNavBarScope, str11), composer10), composer10, 100663344, 240);
                        return Unit.f71739a;
                    }
                }, composer9), composer9, KyberEngine.KyberPolyBytes);
                return Unit.f71739a;
            case 13:
                return b(obj, obj2, obj3);
            case 14:
                return c(obj, obj2, obj3);
            case 15:
                NotificationsPreference notificationsPreference = (NotificationsPreference) obj8;
                NotificationsPreferencesViewState notificationsPreferencesViewState = (NotificationsPreferencesViewState) obj7;
                Function2 function28 = (Function2) obj6;
                NotificationPreferenceType notificationPreferenceType = (NotificationPreferenceType) obj4;
                Function0 function29 = (Function0) obj5;
                Composer composer10 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer10.p(iIntValue8 & 1, (iIntValue8 & 17) != 16)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    String strC5 = StringResources_androidKt.c(composer10, notificationsPreference.f59941a);
                    Integer num3 = notificationsPreference.f59942b;
                    if (num3 == null) {
                        composer10.L(-1675359103);
                        composer10.F();
                        str3 = null;
                    } else {
                        composer10.L(-1675359102);
                        String strC6 = StringResources_androidKt.c(composer10, num3.intValue());
                        composer10.F();
                        str3 = strC6;
                    }
                    boolean z3 = notificationsPreference.f59943c;
                    boolean z4 = notificationsPreference.d;
                    boolean zY3 = composer10.y(notificationsPreferencesViewState) | composer10.K(function28) | composer10.d(notificationPreferenceType.ordinal()) | composer10.K(function29);
                    Object objX10 = composer10.x();
                    if (zY3 || objX10 == composer$Companion$Empty$1) {
                        objX10 = new k3(notificationsPreferencesViewState, function28, notificationPreferenceType, function29, 22);
                        composer10.q(objX10);
                    }
                    PreferenceSwitchKt.a(null, strC5, str3, false, z3, z4, null, (Function1) objX10, composer10, 0, 73);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 16:
                return d(obj, obj2, obj3);
            case 17:
                return e(obj, obj2, obj3);
            case 18:
                return f(obj, obj2, obj3);
            case 19:
                return i(obj, obj2, obj3);
            case 20:
                return j(obj, obj2, obj3);
            case 21:
                return k(obj, obj2, obj3);
            default:
                final AuthenticationViewModel authenticationViewModel = (AuthenticationViewModel) obj8;
                AkamaiSecurityHelper akamaiSecurityHelper = (AkamaiSecurityHelper) obj7;
                AnalyticsWebInterface analyticsWebInterface = (AnalyticsWebInterface) obj6;
                final Logger logger = (Logger) obj5;
                final Function1 function30 = (Function1) obj4;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer11 = (Composer) obj2;
                int iIntValue9 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((iIntValue9 & 6) == 0) {
                    iIntValue9 |= composer11.K(paddingValues3) ? 4 : 2;
                }
                if (composer11.p(iIntValue9 & 1, (iIntValue9 & 19) != 18)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    boolean zY4 = composer11.y(logger) | composer11.y(authenticationViewModel) | composer11.K(function30);
                    Object objX11 = composer11.x();
                    if (zY4 || objX11 == composer$Companion$Empty$1) {
                        objX11 = new Function0() { // from class: com.vuitton.android.presentation.screen.authentication.register.legacy.b
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                AuthenticationViewModel authenticationViewModel2 = authenticationViewModel;
                                return new WebViewAuthClient(logger, new WebViewRegisterScreenKt$WebViewRegisterScreen$7$1$1$1(0, authenticationViewModel2, AuthenticationViewModel.class, "onWebViewPageStarted", "onWebViewPageStarted()V", 0), function30, new q61(authenticationViewModel2, 1), new qn(27));
                            }
                        };
                        composer11.q(objX11);
                    }
                    Function0 function31 = (Function0) objX11;
                    boolean zY5 = composer11.y(logger) | composer11.y(authenticationViewModel);
                    Object objX12 = composer11.x();
                    if (zY5 || objX12 == composer$Companion$Empty$1) {
                        objX12 = new Function0() { // from class: com.vuitton.android.presentation.screen.authentication.register.legacy.c
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                AuthenticationViewModel authenticationViewModel2 = authenticationViewModel;
                                return new WebViewAuthChromeClient(logger, authenticationViewModel2.getD() && authenticationViewModel2.getC(), new WebViewRegisterScreenKt$WebViewRegisterScreen$7$2$1$1(0, authenticationViewModel2, AuthenticationViewModel.class, "onWebViewPageStarted", "onWebViewPageStarted()V", 0), new WebViewRegisterScreenKt$WebViewRegisterScreen$7$2$1$2(1, authenticationViewModel2, AuthenticationViewModel.class, "extractAndProcessKisaPayload", "extractAndProcessKisaPayload(Ljava/lang/String;)V", 0));
                            }
                        };
                        composer11.q(objX12);
                    }
                    WebViewAuthContentKt.a(authenticationViewModel, akamaiSecurityHelper, analyticsWebInterface, function31, (Function0) objX12, o60.e("WebViewRegisterScreen$lambda$8", paddingValues3), composer11, 0);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ n4(int i2, Object obj, Object obj2, Object obj3, Function function, Function0 function0) {
        this.f76440b = i2;
        this.d = obj;
        this.f76442e = obj2;
        this.f76443f = function;
        this.g = obj3;
        this.f76441c = function0;
    }

    public /* synthetic */ n4(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i2) {
        this.f76440b = i2;
        this.d = obj;
        this.f76442e = obj2;
        this.f76443f = obj3;
        this.f76441c = obj4;
        this.g = obj5;
    }

    public /* synthetic */ n4(Object obj, Object obj2, Function0 function0, Object obj3, Object obj4, int i2) {
        this.f76440b = i2;
        this.d = obj;
        this.f76442e = obj2;
        this.f76441c = function0;
        this.f76443f = obj3;
        this.g = obj4;
    }

    public /* synthetic */ n4(Object obj, Function0 function0, Function0 function1, Object obj2, Function function, int i2) {
        this.f76440b = i2;
        this.d = obj;
        this.f76441c = function0;
        this.f76442e = function1;
        this.f76443f = obj2;
        this.g = function;
    }

    public /* synthetic */ n4(String str, ImmutableList immutableList, Function2 function2, Function1 function1, Function0 function0) {
        this.f76440b = 8;
        this.f76443f = str;
        this.d = immutableList;
        this.f76442e = function2;
        this.g = function1;
        this.f76441c = function0;
    }

    public /* synthetic */ n4(Function0 function0, PLPViewState pLPViewState, AICompanionTracker aICompanionTracker, MutableState mutableState, MutableState mutableState2) {
        this.f76440b = 18;
        this.f76441c = function0;
        this.d = pLPViewState;
        this.f76442e = aICompanionTracker;
        this.f76443f = mutableState;
        this.g = mutableState2;
    }
}
