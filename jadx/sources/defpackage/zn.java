package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.github.druk.dnssd.NSType;
import com.linkplay.medialib.ContentTree;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.register.components.ComposableSingletons$NativeRegisterBirthInfoComposableKt;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterBirthInfoComposableKt;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import com.vuitton.android.presentation.screen.cart.components.ComposableSingletons$NativeCartFilledScreenKt;
import com.vuitton.android.presentation.screen.cart.components.ComposableSingletons$NativeCartLoadingScreenKt;
import com.vuitton.android.presentation.screen.cart.components.NativeCartLoadingScreenKt;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.ComposableSingletons$NativeCartBottomSheetsKt;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetsKt;
import com.vuitton.android.presentation.screen.cart.mocks.NativeCartMockKt;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.mylv.components.ComposableSingletons$MyLvComposableKt;
import com.vuitton.android.presentation.screen.onboarding.components.ComposableSingletons$OnboardingIconComposableKt;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingIconComposableKt;
import com.vuitton.android.presentation.screen.onboarding.models.MocksKt;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingViewState;
import com.vuitton.android.presentation.screen.options.dispatch.models.InAppDispatchMockKt;
import com.vuitton.android.presentation.screen.options.notifications.components.ComposableSingletons$NotificationPreferencesKt;
import com.vuitton.android.presentation.screen.options.notifications.components.NotificationPreferencesKt;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreference;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesViewState;
import com.vuitton.android.presentation.screen.orders.components.exchange.ComposableSingletons$OrderExchangeVariantSelectionScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.ComposableSingletons$OrderReturnOrExchangeSelectionScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeSelectionScreenKt;
import com.vuitton.android.presentation.screen.orders.components.list.ComposableSingletons$OrderListScreenKt;
import com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt;
import com.vuitton.android.presentation.screen.orders.models.OrderPageUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.ComposableSingletons$OsaContactFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.ComposableSingletons$OsaLocationFormScreenKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormScreenKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.list.components.ComposableSingletons$OsaListDataScreenKt;
import com.vuitton.android.presentation.screen.osa.list.components.ComposableSingletons$OsaListLoadingScreenKt;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListDataScreenKt;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListLoadingScreenKt;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaFormMockKt;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.StoreInformationItemUiModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.time.LocalDateTime;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zn implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81680b;

    public /* synthetic */ zn(int i2) {
        this.f81680b = i2;
    }

    private final Object a(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        ComposableSingletons$OsaLocationFormScreenKt composableSingletons$OsaLocationFormScreenKt = ComposableSingletons$OsaLocationFormScreenKt.f60801a;
        int i2 = 0;
        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            OsaLocationFormViewState osaLocationFormViewStateA = OsaLocationFormViewState.a(OsaFormMockKt.f60923a);
            int i3 = 7;
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, composer, null);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new eo(4);
                composer.q(objX);
            }
            Function1 function1 = (Function1) objX;
            Object objX2 = composer.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new co(19);
                composer.q(objX2);
            }
            Function0 function0 = (Function0) objX2;
            Object objX3 = composer.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new co(20);
                composer.q(objX3);
            }
            Function0 function2 = (Function0) objX3;
            OsaReasonsFormViewState osaReasonsFormViewState = new OsaReasonsFormViewState(false, false, EmptyList.f71768b, new OsaReasonUiModel("1", "Appointment reason 1", null, null, 12, null), false, false, 34, null);
            SnackbarHostState snackbarHostState = new SnackbarHostState();
            Object objX4 = composer.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new co(21);
                composer.q(objX4);
            }
            Function0 function3 = (Function0) objX4;
            Object objX5 = composer.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new co(22);
                composer.q(objX5);
            }
            Function0 function4 = (Function0) objX5;
            Object objX6 = composer.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = new zn(29);
                composer.q(objX6);
            }
            Function2 function5 = (Function2) objX6;
            Object objX7 = composer.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = new fo(i2);
                composer.q(objX7);
            }
            Function2 function6 = (Function2) objX7;
            Object objX8 = composer.x();
            if (objX8 == composer$Companion$Empty$1) {
                objX8 = new co(23);
                composer.q(objX8);
            }
            Function0 function7 = (Function0) objX8;
            Object objX9 = composer.x();
            if (objX9 == composer$Companion$Empty$1) {
                objX9 = new eo(i3);
                composer.q(objX9);
            }
            Function1 function8 = (Function1) objX9;
            Object objX10 = composer.x();
            if (objX10 == composer$Companion$Empty$1) {
                objX10 = new co(24);
                composer.q(objX10);
            }
            Function0 function9 = (Function0) objX10;
            Object objX11 = composer.x();
            if (objX11 == composer$Companion$Empty$1) {
                objX11 = new co(14);
                composer.q(objX11);
            }
            Function0 function10 = (Function0) objX11;
            Object objX12 = composer.x();
            if (objX12 == composer$Companion$Empty$1) {
                objX12 = new co(15);
                composer.q(objX12);
            }
            Function0 function11 = (Function0) objX12;
            Object objX13 = composer.x();
            if (objX13 == composer$Companion$Empty$1) {
                objX13 = new eo(5);
                composer.q(objX13);
            }
            Function1 function12 = (Function1) objX13;
            Object objX14 = composer.x();
            if (objX14 == composer$Companion$Empty$1) {
                objX14 = new co(16);
                composer.q(objX14);
            }
            Function0 function13 = (Function0) objX14;
            Object objX15 = composer.x();
            if (objX15 == composer$Companion$Empty$1) {
                objX15 = new co(17);
                composer.q(objX15);
            }
            Function0 function14 = (Function0) objX15;
            Object objX16 = composer.x();
            if (objX16 == composer$Companion$Empty$1) {
                objX16 = new co(18);
                composer.q(objX16);
            }
            Function0 function15 = (Function0) objX16;
            Object objX17 = composer.x();
            if (objX17 == composer$Companion$Empty$1) {
                objX17 = new eo(6);
                composer.q(objX17);
            }
            OsaLocationFormScreenKt.c(osaLocationFormViewStateA, lVModalBottomSheetStateF, null, function1, function0, function2, osaReasonsFormViewState, snackbarHostState, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, (Function1) objX17, composer, (LVModalBottomSheetState.f48797e << 3) | 906194304, 920350134, 54);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    private final Object b(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        ComposableSingletons$OsaLocationFormScreenKt composableSingletons$OsaLocationFormScreenKt = ComposableSingletons$OsaLocationFormScreenKt.f60801a;
        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            OsaLocationFormViewState osaLocationFormViewStateA = OsaLocationFormViewState.a(OsaFormMockKt.f60923a);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, composer, null);
            Object objX = composer.x();
            int i2 = 8;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new eo(i2);
                composer.q(objX);
            }
            Function1 function1 = (Function1) objX;
            Object objX2 = composer.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new co(i2);
                composer.q(objX2);
            }
            Function0 function0 = (Function0) objX2;
            Object objX3 = composer.x();
            int i3 = 9;
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new co(i3);
                composer.q(objX3);
            }
            Function0 function2 = (Function0) objX3;
            OsaReasonsFormViewState osaReasonsFormViewState = new OsaReasonsFormViewState(false, false, CollectionsKt.P(new OsaReasonUiModel("1", "Appointment reason 1", null, null, 12, null), new OsaReasonUiModel(ContentTree.AUDIO_ID, "Appointment reason 2", null, null, 12, null)), new OsaReasonUiModel("1", "Appointment reason 1", null, null, 12, null), true, false, 34, null);
            SnackbarHostState snackbarHostState = new SnackbarHostState();
            Object objX4 = composer.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new co(10);
                composer.q(objX4);
            }
            Function0 function3 = (Function0) objX4;
            Object objX5 = composer.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new co(11);
                composer.q(objX5);
            }
            Function0 function4 = (Function0) objX5;
            Object objX6 = composer.x();
            int i4 = 25;
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = new zn(i4);
                composer.q(objX6);
            }
            Function2 function5 = (Function2) objX6;
            Object objX7 = composer.x();
            int i5 = 26;
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = new zn(i5);
                composer.q(objX7);
            }
            Function2 function6 = (Function2) objX7;
            Object objX8 = composer.x();
            if (objX8 == composer$Companion$Empty$1) {
                objX8 = new co(12);
                composer.q(objX8);
            }
            Function0 function7 = (Function0) objX8;
            Object objX9 = composer.x();
            int i6 = 3;
            if (objX9 == composer$Companion$Empty$1) {
                objX9 = new eo(i6);
                composer.q(objX9);
            }
            Function1 function8 = (Function1) objX9;
            Object objX10 = composer.x();
            if (objX10 == composer$Companion$Empty$1) {
                objX10 = new co(13);
                composer.q(objX10);
            }
            Function0 function9 = (Function0) objX10;
            Object objX11 = composer.x();
            if (objX11 == composer$Companion$Empty$1) {
                objX11 = new co(25);
                composer.q(objX11);
            }
            Function0 function10 = (Function0) objX11;
            Object objX12 = composer.x();
            if (objX12 == composer$Companion$Empty$1) {
                objX12 = new co(26);
                composer.q(objX12);
            }
            Function0 function11 = (Function0) objX12;
            Object objX13 = composer.x();
            if (objX13 == composer$Companion$Empty$1) {
                objX13 = new eo(9);
                composer.q(objX13);
            }
            Function1 function12 = (Function1) objX13;
            Object objX14 = composer.x();
            if (objX14 == composer$Companion$Empty$1) {
                objX14 = new co(27);
                composer.q(objX14);
            }
            Function0 function13 = (Function0) objX14;
            Object objX15 = composer.x();
            if (objX15 == composer$Companion$Empty$1) {
                objX15 = new co(28);
                composer.q(objX15);
            }
            Function0 function14 = (Function0) objX15;
            Object objX16 = composer.x();
            if (objX16 == composer$Companion$Empty$1) {
                objX16 = new co(29);
                composer.q(objX16);
            }
            Function0 function15 = (Function0) objX16;
            Object objX17 = composer.x();
            if (objX17 == composer$Companion$Empty$1) {
                objX17 = new eo(2);
                composer.q(objX17);
            }
            OsaLocationFormScreenKt.c(osaLocationFormViewStateA, lVModalBottomSheetStateF, null, function1, function0, function2, osaReasonsFormViewState, snackbarHostState, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, (Function1) objX17, composer, (LVModalBottomSheetState.f48797e << 3) | 906194304, 920350134, 54);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Object obj3;
        int i2 = this.f81680b;
        final int i3 = 9;
        final int i4 = 8;
        final int i5 = 4;
        final int i6 = 7;
        final int i7 = 27;
        final int i8 = 6;
        final int i9 = 5;
        final int i10 = 22;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        final int i11 = 3;
        boolean z = false;
        final int i12 = 2;
        final int i13 = 1;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                ComposableSingletons$MyLvComposableKt composableSingletons$MyLvComposableKt = ComposableSingletons$MyLvComposableKt.f59385a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    String strC = StringResources_androidKt.c(composer, R.string.content_description_my_lv);
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("lambda__2093144840$lambda$0");
                    boolean zK = composer.K(strC);
                    Object objX = composer.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        obj3 = objX;
                        a4 a4Var = new a4(strC, 21);
                        composer.q(a4Var);
                        obj3 = a4Var;
                    }
                    TextKt.c(StringResources_androidKt.c(composer, R.string.mylv_tab_bar), SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) obj3), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48429j, composer, 0, 0, 131064);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                ComposableSingletons$MyLvComposableKt composableSingletons$MyLvComposableKt2 = ComposableSingletons$MyLvComposableKt.f59385a;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_close), null, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, composer2, 8, 4);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                ComposableSingletons$NativeCartBottomSheetsKt composableSingletons$NativeCartBottomSheetsKt = ComposableSingletons$NativeCartBottomSheetsKt.f55056a;
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Object objX2 = composer3.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new yn(i9);
                        composer3.q(objX2);
                    }
                    Function0 function0 = (Function0) objX2;
                    Object objX3 = composer3.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new yn(i8);
                        composer3.q(objX3);
                    }
                    NativeCartBottomSheetsKt.d(function0, (Function0) objX3, composer3, 54);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                ComposableSingletons$NativeCartBottomSheetsKt composableSingletons$NativeCartBottomSheetsKt2 = ComposableSingletons$NativeCartBottomSheetsKt.f55056a;
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    NativeCartBottomSheetsKt.b(NativeCartMockKt.f55128a, composer4, 0);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 4:
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                ComposableSingletons$NativeCartBottomSheetsKt composableSingletons$NativeCartBottomSheetsKt3 = ComposableSingletons$NativeCartBottomSheetsKt.f55056a;
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    Object objX4 = composer5.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new wn(15);
                        composer5.q(objX4);
                    }
                    NativeCartBottomSheetsKt.a(null, (Function1) objX4, composer5, 54);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 5:
                ((Integer) obj2).intValue();
                ComposableSingletons$NativeCartFilledScreenKt composableSingletons$NativeCartFilledScreenKt = ComposableSingletons$NativeCartFilledScreenKt.f54991a;
                ((CartItemUiModel) obj).getClass();
                return Unit.f71739a;
            case 6:
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                ComposableSingletons$NativeCartLoadingScreenKt composableSingletons$NativeCartLoadingScreenKt = ComposableSingletons$NativeCartLoadingScreenKt.f54995a;
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 7:
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                ComposableSingletons$NativeCartLoadingScreenKt composableSingletons$NativeCartLoadingScreenKt2 = ComposableSingletons$NativeCartLoadingScreenKt.f54995a;
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    Object objX5 = composer7.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new SnackbarHostState();
                        composer7.q(objX5);
                    }
                    NativeCartLoadingScreenKt.a((SnackbarHostState) objX5, ComposableSingletons$NativeCartLoadingScreenKt.f54997c, composer7, 54);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 8:
                Composer composer8 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                ComposableSingletons$NativeRegisterBirthInfoComposableKt composableSingletons$NativeRegisterBirthInfoComposableKt = ComposableSingletons$NativeRegisterBirthInfoComposableKt.f53798a;
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("lambda__965753785$lambda$0");
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer8, 0);
                    int iHashCode = Long.hashCode(composer8.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer8.n();
                    Modifier modifierC = ComposedModifierKt.c(composer8, dTFunctionNameModifier2);
                    ComposeUiNode.b0.getClass();
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (composer8.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer8.B();
                    if (composer8.getS()) {
                        composer8.C(function1);
                    } else {
                        composer8.o();
                    }
                    Updater.c(composer8, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer8, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer8, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer8, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer8, modifierC, ComposeUiNode.Companion.d);
                    NativeRegisterViewState nativeRegisterViewState = new NativeRegisterViewState(null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, 65535, null);
                    Object objX6 = composer8.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new wn(i10);
                        composer8.q(objX6);
                    }
                    Function1 function2 = (Function1) objX6;
                    Object objX7 = composer8.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = new yn(12);
                        composer8.q(objX7);
                    }
                    Function0 function3 = (Function0) objX7;
                    Object objX8 = composer8.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        objX8 = new yn(13);
                        composer8.q(objX8);
                    }
                    Function0 function4 = (Function0) objX8;
                    Object objX9 = composer8.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new zn(i3);
                        composer8.q(objX9);
                    }
                    Function2 function5 = (Function2) objX9;
                    Object objX10 = composer8.x();
                    if (objX10 == composer$Companion$Empty$1) {
                        objX10 = new wn(23);
                        composer8.q(objX10);
                    }
                    Function1 function6 = (Function1) objX10;
                    Object objX11 = composer8.x();
                    if (objX11 == composer$Companion$Empty$1) {
                        objX11 = new yn(14);
                        composer8.q(objX11);
                    }
                    Function0 function7 = (Function0) objX11;
                    Object objX12 = composer8.x();
                    if (objX12 == composer$Companion$Empty$1) {
                        objX12 = new yn(15);
                        composer8.q(objX12);
                    }
                    Function0 function8 = (Function0) objX12;
                    Object objX13 = composer8.x();
                    if (objX13 == composer$Companion$Empty$1) {
                        objX13 = new wn(24);
                        composer8.q(objX13);
                    }
                    NativeRegisterBirthInfoComposableKt.a(ColumnScopeInstance.f4944a, nativeRegisterViewState, function2, function3, function4, function5, function6, function7, function8, (Function1) objX13, false, composer8, 920350086, 512);
                    composer8.r();
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 9:
                ComposableSingletons$NativeRegisterBirthInfoComposableKt composableSingletons$NativeRegisterBirthInfoComposableKt2 = ComposableSingletons$NativeRegisterBirthInfoComposableKt.f53798a;
                ((FormSectionTypeUiModel) obj).getClass();
                obj2.getClass();
                return Unit.f71739a;
            case 10:
                ((Boolean) obj2).booleanValue();
                ComposableSingletons$NotificationPreferencesKt composableSingletons$NotificationPreferencesKt = ComposableSingletons$NotificationPreferencesKt.f59903a;
                ((NotificationPreferenceType) obj).getClass();
                return Unit.f71739a;
            case 11:
                Composer composer9 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                ComposableSingletons$NotificationPreferencesKt composableSingletons$NotificationPreferencesKt2 = ComposableSingletons$NotificationPreferencesKt.f59903a;
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    NotificationsPreferencesViewState notificationsPreferencesViewState = new NotificationsPreferencesViewState(MapsKt.h(new Pair(NotificationPreferenceType.NOTIFY_ME, new NotificationsPreference(R.string.notif_notify_me_title, Integer.valueOf(R.string.notif_notify_me_description), false, false))), false, false, false, false, 24, null);
                    Object objX14 = composer9.x();
                    if (objX14 == composer$Companion$Empty$1) {
                        objX14 = new zn(10);
                        composer9.q(objX14);
                    }
                    Function2 function9 = (Function2) objX14;
                    Object objX15 = composer9.x();
                    if (objX15 == composer$Companion$Empty$1) {
                        objX15 = new yn(16);
                        composer9.q(objX15);
                    }
                    NotificationPreferencesKt.a(null, notificationsPreferencesViewState, function9, (Function0) objX15, composer9, 3456, 1);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 12:
                Composer composer10 = (Composer) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                ComposableSingletons$OnboardingIconComposableKt composableSingletons$OnboardingIconComposableKt = ComposableSingletons$OnboardingIconComposableKt.f59549a;
                if (composer10.p(iIntValue10 & 1, (iIntValue10 & 3) != 2)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    OnboardingViewState onboardingViewState = (OnboardingViewState) MocksKt.f59578a.getF71699b();
                    Object objX16 = composer10.x();
                    if (objX16 == composer$Companion$Empty$1) {
                        objX16 = new yn(17);
                        composer10.q(objX16);
                    }
                    Function0 function10 = (Function0) objX16;
                    Object objX17 = composer10.x();
                    if (objX17 == composer$Companion$Empty$1) {
                        objX17 = new yn(18);
                        composer10.q(objX17);
                    }
                    Function0 function11 = (Function0) objX17;
                    Object objX18 = composer10.x();
                    if (objX18 == composer$Companion$Empty$1) {
                        objX18 = new wn(25);
                        composer10.q(objX18);
                    }
                    Function1 function12 = (Function1) objX18;
                    Object objX19 = composer10.x();
                    if (objX19 == composer$Companion$Empty$1) {
                        objX19 = new wn(26);
                        composer10.q(objX19);
                    }
                    Function1 function13 = (Function1) objX19;
                    Object objX20 = composer10.x();
                    if (objX20 == composer$Companion$Empty$1) {
                        objX20 = new wn(i7);
                        composer10.q(objX20);
                    }
                    Function1 function14 = (Function1) objX20;
                    Object objX21 = composer10.x();
                    if (objX21 == composer$Companion$Empty$1) {
                        objX21 = new yn(19);
                        composer10.q(objX21);
                    }
                    OnboardingIconComposableKt.a(onboardingViewState, function10, function11, function12, function13, function14, (Function0) objX21, composer10, 1797552);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 13:
                Composer composer11 = (Composer) obj;
                int iIntValue11 = ((Integer) obj2).intValue();
                ComposableSingletons$OrderExchangeVariantSelectionScreenKt composableSingletons$OrderExchangeVariantSelectionScreenKt = ComposableSingletons$OrderExchangeVariantSelectionScreenKt.f60105a;
                if (composer11.p(iIntValue11 & 1, (iIntValue11 & 3) != 2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    OrderReturnOrExchangeViewState orderReturnOrExchangeViewState = (OrderReturnOrExchangeViewState) com.vuitton.android.presentation.screen.orders.models.MocksKt.f60269b.getF71699b();
                    Object objX22 = composer11.x();
                    if (objX22 == composer$Companion$Empty$1) {
                        objX22 = new SnackbarHostState();
                        composer11.q(objX22);
                    }
                    SnackbarHostState snackbarHostState = (SnackbarHostState) objX22;
                    Object objX23 = composer11.x();
                    if (objX23 == composer$Companion$Empty$1) {
                        objX23 = new wn(28);
                        composer11.q(objX23);
                    }
                    Function1 function15 = (Function1) objX23;
                    Object objX24 = composer11.x();
                    if (objX24 == composer$Companion$Empty$1) {
                        objX24 = new ao(i12);
                        composer11.q(objX24);
                    }
                    Function3 function16 = (Function3) objX24;
                    Object objX25 = composer11.x();
                    if (objX25 == composer$Companion$Empty$1) {
                        objX25 = new yn(20);
                        composer11.q(objX25);
                    }
                    Function0 function17 = (Function0) objX25;
                    Object objX26 = composer11.x();
                    if (objX26 == composer$Companion$Empty$1) {
                        objX26 = new wn(29);
                        composer11.q(objX26);
                    }
                    Function1 function18 = (Function1) objX26;
                    Object objX27 = composer11.x();
                    if (objX27 == composer$Companion$Empty$1) {
                        objX27 = new yn(21);
                        composer11.q(objX27);
                    }
                    OrderExchangeVariantSelectionScreenKt.b(orderReturnOrExchangeViewState, snackbarHostState, function15, function16, function17, function18, (Function0) objX27, composer11, 1797552);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 14:
                Composer composer12 = (Composer) obj;
                int iIntValue12 = ((Integer) obj2).intValue();
                ComposableSingletons$OrderListScreenKt composableSingletons$OrderListScreenKt = ComposableSingletons$OrderListScreenKt.f60194a;
                if (composer12.p(iIntValue12 & 1, (iIntValue12 & 3) != 2)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    OrderPageUiModel orderPageUiModel = ((OrderViewState) com.vuitton.android.presentation.screen.orders.models.MocksKt.f60268a.getF71699b()).f60374a;
                    orderPageUiModel.getClass();
                    Object objX28 = composer12.x();
                    if (objX28 == composer$Companion$Empty$1) {
                        objX28 = new ao(i4);
                        composer12.q(objX28);
                    }
                    OrderListScreenKt.a(null, orderPageUiModel, true, true, (Function3) objX28, composer12, 28032, 1);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 15:
                Composer composer13 = (Composer) obj;
                int iIntValue13 = ((Integer) obj2).intValue();
                ComposableSingletons$OrderReturnOrExchangeSelectionScreenKt composableSingletons$OrderReturnOrExchangeSelectionScreenKt = ComposableSingletons$OrderReturnOrExchangeSelectionScreenKt.f60108a;
                if (composer13.p(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    OrderReturnOrExchangeViewState orderReturnOrExchangeViewState2 = (OrderReturnOrExchangeViewState) com.vuitton.android.presentation.screen.orders.models.MocksKt.f60269b.getF71699b();
                    Object objX29 = composer13.x();
                    if (objX29 == composer$Companion$Empty$1) {
                        objX29 = new SnackbarHostState();
                        composer13.q(objX29);
                    }
                    SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX29;
                    Object objX30 = composer13.x();
                    if (objX30 == composer$Companion$Empty$1) {
                        objX30 = new yn(i10);
                        composer13.q(objX30);
                    }
                    Function0 function19 = (Function0) objX30;
                    Object objX31 = composer13.x();
                    if (objX31 == composer$Companion$Empty$1) {
                        objX31 = new yn(23);
                        composer13.q(objX31);
                    }
                    Function0 function20 = (Function0) objX31;
                    Object objX32 = composer13.x();
                    if (objX32 == composer$Companion$Empty$1) {
                        objX32 = new yn(24);
                        composer13.q(objX32);
                    }
                    Function0 function21 = (Function0) objX32;
                    Object objX33 = composer13.x();
                    if (objX33 == composer$Companion$Empty$1) {
                        objX33 = new yn(25);
                        composer13.q(objX33);
                    }
                    Function0 function22 = (Function0) objX33;
                    Object objX34 = composer13.x();
                    if (objX34 == composer$Companion$Empty$1) {
                        objX34 = new yn(26);
                        composer13.q(objX34);
                    }
                    OrderReturnOrExchangeSelectionScreenKt.b(orderReturnOrExchangeViewState2, snackbarHostState2, function19, function20, function21, function22, (Function0) objX34, composer13, 1797552);
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 16:
                Composer composer14 = (Composer) obj;
                int iIntValue14 = ((Integer) obj2).intValue();
                ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                if (composer14.p(iIntValue14 & 1, (iIntValue14 & 3) != 2)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    InAppDispatch inAppDispatch = InAppDispatchMockKt.f59833a;
                    OsaContactFormBottomSheetScreen.LoadingBottomSheet loadingBottomSheet = OsaContactFormBottomSheetScreen.LoadingBottomSheet.f60716a;
                    Object objX35 = composer14.x();
                    if (objX35 == composer$Companion$Empty$1) {
                        final int i14 = 18;
                        objX35 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i14) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt2 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt3 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer14.q(objX35);
                    }
                    Function0 function23 = (Function0) objX35;
                    Object objX36 = composer14.x();
                    if (objX36 == composer$Companion$Empty$1) {
                        final int i15 = 19;
                        objX36 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i15) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt2 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt3 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer14.q(objX36);
                    }
                    Function0 function24 = (Function0) objX36;
                    Object objX37 = composer14.x();
                    if (objX37 == composer$Companion$Empty$1) {
                        final int i16 = 20;
                        objX37 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i16) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt2 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt3 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer14.q(objX37);
                    }
                    Function0 function25 = (Function0) objX37;
                    Object objX38 = composer14.x();
                    if (objX38 == composer$Companion$Empty$1) {
                        final int i17 = 21;
                        objX38 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i17) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt2 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt3 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer14.q(objX38);
                    }
                    Function0 function26 = (Function0) objX38;
                    Object objX39 = composer14.x();
                    if (objX39 == composer$Companion$Empty$1) {
                        objX39 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i10) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt2 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt3 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer14.q(objX39);
                    }
                    Function0 function27 = (Function0) objX39;
                    Object objX40 = composer14.x();
                    if (objX40 == composer$Companion$Empty$1) {
                        final int i18 = 23;
                        objX40 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i18) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt2 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt3 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer14.q(objX40);
                    }
                    Function0 function28 = (Function0) objX40;
                    Object objX41 = composer14.x();
                    if (objX41 == composer$Companion$Empty$1) {
                        final int i19 = 24;
                        objX41 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i19) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt2 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt3 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer14.q(objX41);
                    }
                    Function0 function29 = (Function0) objX41;
                    Object objX42 = composer14.x();
                    if (objX42 == composer$Companion$Empty$1) {
                        final int i20 = 25;
                        objX42 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i20) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt2 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt3 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer14.q(objX42);
                    }
                    OsaContactFormBottomSheetScreenKt.e(null, inAppDispatch, loadingBottomSheet, null, null, false, null, null, function23, function24, function25, function26, function27, function28, function29, (Function0) objX42, composer14, 905970048, 224694, NSType.TKEY);
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 17:
                Composer composer15 = (Composer) obj;
                int iIntValue15 = ((Integer) obj2).intValue();
                ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt2 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                if (composer15.p(iIntValue15 & 1, (iIntValue15 & 3) != 2)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    InAppDispatch inAppDispatch2 = InAppDispatchMockKt.f59833a;
                    OsaContactFormBottomSheetScreen.AlreadyExistAccountBottomSheet alreadyExistAccountBottomSheet = OsaContactFormBottomSheetScreen.AlreadyExistAccountBottomSheet.f60713a;
                    Object objX43 = composer15.x();
                    if (objX43 == composer$Companion$Empty$1) {
                        final int i21 = 26;
                        objX43 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i21) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt3 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer15.q(objX43);
                    }
                    Function0 function30 = (Function0) objX43;
                    Object objX44 = composer15.x();
                    if (objX44 == composer$Companion$Empty$1) {
                        objX44 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i7) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt3 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer15.q(objX44);
                    }
                    Function0 function31 = (Function0) objX44;
                    Object objX45 = composer15.x();
                    if (objX45 == composer$Companion$Empty$1) {
                        final int i22 = 28;
                        objX45 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i22) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt3 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer15.q(objX45);
                    }
                    Function0 function32 = (Function0) objX45;
                    Object objX46 = composer15.x();
                    if (objX46 == composer$Companion$Empty$1) {
                        final int i23 = 29;
                        objX46 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i23) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt3 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer15.q(objX46);
                    }
                    Function0 function33 = (Function0) objX46;
                    Object objX47 = composer15.x();
                    if (objX47 == composer$Companion$Empty$1) {
                        objX47 = new co(z ? 1 : 0);
                        composer15.q(objX47);
                    }
                    Function0 function34 = (Function0) objX47;
                    Object objX48 = composer15.x();
                    if (objX48 == composer$Companion$Empty$1) {
                        objX48 = new co(i13);
                        composer15.q(objX48);
                    }
                    Function0 function35 = (Function0) objX48;
                    Object objX49 = composer15.x();
                    if (objX49 == composer$Companion$Empty$1) {
                        objX49 = new co(i12);
                        composer15.q(objX49);
                    }
                    Function0 function36 = (Function0) objX49;
                    Object objX50 = composer15.x();
                    if (objX50 == composer$Companion$Empty$1) {
                        objX50 = new co(i11);
                        composer15.q(objX50);
                    }
                    OsaContactFormBottomSheetScreenKt.e(null, inAppDispatch2, alreadyExistAccountBottomSheet, null, null, false, null, null, function30, function31, function32, function33, function34, function35, function36, (Function0) objX50, composer15, 905970048, 224694, NSType.TKEY);
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 18:
                Composer composer16 = (Composer) obj;
                int iIntValue16 = ((Integer) obj2).intValue();
                ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt3 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                if (composer16.p(iIntValue16 & 1, (iIntValue16 & 3) != 2)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    InAppDispatch inAppDispatch3 = InAppDispatchMockKt.f59833a;
                    OsaContactFormBottomSheetScreen.AppointmentConfirmBottomSheet appointmentConfirmBottomSheet = OsaContactFormBottomSheetScreen.AppointmentConfirmBottomSheet.f60714a;
                    Object objX51 = composer16.x();
                    if (objX51 == composer$Companion$Empty$1) {
                        final int i24 = 10;
                        objX51 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i24) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer16.q(objX51);
                    }
                    Function0 function37 = (Function0) objX51;
                    Object objX52 = composer16.x();
                    if (objX52 == composer$Companion$Empty$1) {
                        final int i25 = 11;
                        objX52 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i25) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer16.q(objX52);
                    }
                    Function0 function38 = (Function0) objX52;
                    Object objX53 = composer16.x();
                    if (objX53 == composer$Companion$Empty$1) {
                        final int i26 = 12;
                        objX53 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i26) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer16.q(objX53);
                    }
                    Function0 function39 = (Function0) objX53;
                    Object objX54 = composer16.x();
                    if (objX54 == composer$Companion$Empty$1) {
                        final int i27 = 13;
                        objX54 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i27) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer16.q(objX54);
                    }
                    Function0 function40 = (Function0) objX54;
                    Object objX55 = composer16.x();
                    if (objX55 == composer$Companion$Empty$1) {
                        final int i28 = 14;
                        objX55 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i28) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer16.q(objX55);
                    }
                    Function0 function41 = (Function0) objX55;
                    Object objX56 = composer16.x();
                    if (objX56 == composer$Companion$Empty$1) {
                        final int i29 = 15;
                        objX56 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i29) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer16.q(objX56);
                    }
                    Function0 function42 = (Function0) objX56;
                    Object objX57 = composer16.x();
                    if (objX57 == composer$Companion$Empty$1) {
                        final int i30 = 16;
                        objX57 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i30) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer16.q(objX57);
                    }
                    Function0 function43 = (Function0) objX57;
                    Object objX58 = composer16.x();
                    if (objX58 == composer$Companion$Empty$1) {
                        final int i31 = 17;
                        objX58 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i31) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer16.q(objX58);
                    }
                    OsaContactFormBottomSheetScreenKt.e(null, inAppDispatch3, appointmentConfirmBottomSheet, null, null, false, null, null, function37, function38, function39, function40, function41, function42, function43, (Function0) objX58, composer16, 905970048, 224694, NSType.TKEY);
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 19:
                Composer composer17 = (Composer) obj;
                int iIntValue17 = ((Integer) obj2).intValue();
                ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt4 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                if (composer17.p(iIntValue17 & 1, (iIntValue17 & 3) != 2)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    InAppDispatch inAppDispatch4 = InAppDispatchMockKt.f59833a;
                    OsaContactFormBottomSheetScreen.GuestWithAppointmentConfirmBottomSheet guestWithAppointmentConfirmBottomSheet = OsaContactFormBottomSheetScreen.GuestWithAppointmentConfirmBottomSheet.f60715a;
                    Object objX59 = composer17.x();
                    if (objX59 == composer$Companion$Empty$1) {
                        objX59 = new co(i5);
                        composer17.q(objX59);
                    }
                    Function0 function44 = (Function0) objX59;
                    Object objX60 = composer17.x();
                    if (objX60 == composer$Companion$Empty$1) {
                        objX60 = new co(i9);
                        composer17.q(objX60);
                    }
                    Function0 function45 = (Function0) objX60;
                    Object objX61 = composer17.x();
                    if (objX61 == composer$Companion$Empty$1) {
                        objX61 = new co(i8);
                        composer17.q(objX61);
                    }
                    Function0 function46 = (Function0) objX61;
                    Object objX62 = composer17.x();
                    if (objX62 == composer$Companion$Empty$1) {
                        objX62 = new yn(i7);
                        composer17.q(objX62);
                    }
                    Function0 function47 = (Function0) objX62;
                    Object objX63 = composer17.x();
                    if (objX63 == composer$Companion$Empty$1) {
                        objX63 = new yn(28);
                        composer17.q(objX63);
                    }
                    Function0 function48 = (Function0) objX63;
                    Object objX64 = composer17.x();
                    if (objX64 == composer$Companion$Empty$1) {
                        objX64 = new yn(29);
                        composer17.q(objX64);
                    }
                    Function0 function49 = (Function0) objX64;
                    Object objX65 = composer17.x();
                    if (objX65 == composer$Companion$Empty$1) {
                        final int i32 = z ? 1 : 0;
                        objX65 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i32) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt112 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer17.q(objX65);
                    }
                    Function0 function50 = (Function0) objX65;
                    Object objX66 = composer17.x();
                    if (objX66 == composer$Companion$Empty$1) {
                        objX66 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i13) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt112 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer17.q(objX66);
                    }
                    OsaContactFormBottomSheetScreenKt.e(null, inAppDispatch4, guestWithAppointmentConfirmBottomSheet, null, null, false, null, null, function44, function45, function46, function47, function48, function49, function50, (Function0) objX66, composer17, 905970048, 224694, NSType.TKEY);
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            case 20:
                Composer composer18 = (Composer) obj;
                int iIntValue18 = ((Integer) obj2).intValue();
                ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt5 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                if (composer18.p(iIntValue18 & 1, (iIntValue18 & 3) != 2)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    InAppDispatch inAppDispatch5 = InAppDispatchMockKt.f59833a;
                    OsaContactFormBottomSheetScreen.ReplaceAppointmentBottomSheet replaceAppointmentBottomSheet = OsaContactFormBottomSheetScreen.ReplaceAppointmentBottomSheet.f60717a;
                    LocalDateTime localDateTimeNow = LocalDateTime.now();
                    Object objX67 = composer18.x();
                    if (objX67 == composer$Companion$Empty$1) {
                        objX67 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i12) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt112 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt113 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer18.q(objX67);
                    }
                    Function0 function51 = (Function0) objX67;
                    Object objX68 = composer18.x();
                    if (objX68 == composer$Companion$Empty$1) {
                        objX68 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i11) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt112 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt113 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer18.q(objX68);
                    }
                    Function0 function52 = (Function0) objX68;
                    Object objX69 = composer18.x();
                    if (objX69 == composer$Companion$Empty$1) {
                        objX69 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i5) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt112 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt113 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer18.q(objX69);
                    }
                    Function0 function53 = (Function0) objX69;
                    Object objX70 = composer18.x();
                    if (objX70 == composer$Companion$Empty$1) {
                        objX70 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i9) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt112 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt113 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer18.q(objX70);
                    }
                    Function0 function54 = (Function0) objX70;
                    Object objX71 = composer18.x();
                    if (objX71 == composer$Companion$Empty$1) {
                        objX71 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i8) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt112 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt113 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer18.q(objX71);
                    }
                    Function0 function55 = (Function0) objX71;
                    Object objX72 = composer18.x();
                    if (objX72 == composer$Companion$Empty$1) {
                        objX72 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i6) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt112 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt113 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer18.q(objX72);
                    }
                    Function0 function56 = (Function0) objX72;
                    Object objX73 = composer18.x();
                    if (objX73 == composer$Companion$Empty$1) {
                        objX73 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i4) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt112 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt113 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer18.q(objX73);
                    }
                    Function0 function57 = (Function0) objX73;
                    Object objX74 = composer18.x();
                    if (objX74 == composer$Companion$Empty$1) {
                        objX74 = new Function0() { // from class: bo
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                switch (i3) {
                                    case 0:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt6 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 1:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt7 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 2:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt8 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 3:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt9 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 4:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt10 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 5:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt11 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 6:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt12 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 7:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt13 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 8:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt14 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 9:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt15 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 10:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt16 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 11:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt17 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 12:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt18 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 13:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt19 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 14:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt110 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 15:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt111 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 16:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt112 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 17:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt113 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 18:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt20 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 19:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt21 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 20:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt22 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 21:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt23 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 22:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt24 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 23:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt25 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 24:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt26 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 25:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt27 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 26:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt28 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 27:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt29 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    case 28:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt30 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                    default:
                                        ComposableSingletons$OsaContactFormBottomSheetScreenKt composableSingletons$OsaContactFormBottomSheetScreenKt31 = ComposableSingletons$OsaContactFormBottomSheetScreenKt.f60710a;
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer18.q(objX74);
                    }
                    OsaContactFormBottomSheetScreenKt.e(null, inAppDispatch5, replaceAppointmentBottomSheet, "Paris", localDateTimeNow, false, null, null, function51, function52, function53, function54, function55, function56, function57, (Function0) objX74, composer18, 905973120, 224694, 225);
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 21:
                Composer composer19 = (Composer) obj;
                int iIntValue19 = ((Integer) obj2).intValue();
                ComposableSingletons$OsaListDataScreenKt composableSingletons$OsaListDataScreenKt = ComposableSingletons$OsaListDataScreenKt.f60877a;
                if (composer19.p(iIntValue19 & 1, (iIntValue19 & 3) != 2)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    InAppDispatch inAppDispatch6 = InAppDispatchMockKt.f59833a;
                    AppointmentTypeUiModel appointmentTypeUiModel = AppointmentTypeUiModel.DISTANT;
                    LocalDateTime localDateTimeNow2 = LocalDateTime.now();
                    localDateTimeNow2.getClass();
                    LocalDateTime localDateTimeNow3 = LocalDateTime.now();
                    localDateTimeNow3.getClass();
                    LocalDateTime localDateTimeNow4 = LocalDateTime.now();
                    localDateTimeNow4.getClass();
                    LocalDateTime localDateTimeNow5 = LocalDateTime.now();
                    localDateTimeNow5.getClass();
                    OsaItemUiModel osaItemUiModel = new OsaItemUiModel(ContentTree.ROOT_ID, appointmentTypeUiModel, localDateTimeNow2, localDateTimeNow3, localDateTimeNow4, localDateTimeNow5, "2023-01-01T10:12:12.000", new StoreInformationItemUiModel(ContentTree.ROOT_ID, "name", "102, rue de la republique", "Paris - France", "+33 6 06 06 09 00 00", ""), new OsaReasonUiModel(ContentTree.ROOT_ID, "Discover a collection", null, null, 12, null), ContentTree.ROOT_ID, false);
                    Object objX75 = composer19.x();
                    if (objX75 == composer$Companion$Empty$1) {
                        objX75 = new co(i6);
                        composer19.q(objX75);
                    }
                    Function0 function58 = (Function0) objX75;
                    Object objX76 = composer19.x();
                    if (objX76 == composer$Companion$Empty$1) {
                        objX76 = new zn(i10);
                        composer19.q(objX76);
                    }
                    Function2 function59 = (Function2) objX76;
                    Object objX77 = composer19.x();
                    if (objX77 == composer$Companion$Empty$1) {
                        objX77 = new eo(z ? 1 : 0);
                        composer19.q(objX77);
                    }
                    Function1 function60 = (Function1) objX77;
                    Object objX78 = composer19.x();
                    if (objX78 == composer$Companion$Empty$1) {
                        objX78 = new eo(i13);
                        composer19.q(objX78);
                    }
                    OsaListDataScreenKt.a(null, inAppDispatch6, osaItemUiModel, true, true, true, function58, function59, function60, (Function1) objX78, composer19, 920349696, 1);
                } else {
                    composer19.D();
                }
                return Unit.f71739a;
            case 22:
                ComposableSingletons$OsaListDataScreenKt composableSingletons$OsaListDataScreenKt2 = ComposableSingletons$OsaListDataScreenKt.f60877a;
                ((InAppDispatch) obj).getClass();
                ((OsaItemUiModel) obj2).getClass();
                return Unit.f71739a;
            case 23:
                Composer composer20 = (Composer) obj;
                int iIntValue20 = ((Integer) obj2).intValue();
                ComposableSingletons$OsaListLoadingScreenKt composableSingletons$OsaListLoadingScreenKt = ComposableSingletons$OsaListLoadingScreenKt.f60880a;
                if (composer20.p(iIntValue20 & 1, (iIntValue20 & 3) != 2)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
            case 24:
                Composer composer21 = (Composer) obj;
                int iIntValue21 = ((Integer) obj2).intValue();
                ComposableSingletons$OsaListLoadingScreenKt composableSingletons$OsaListLoadingScreenKt2 = ComposableSingletons$OsaListLoadingScreenKt.f60880a;
                if (composer21.p(iIntValue21 & 1, (iIntValue21 & 3) != 2)) {
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                    Object objX79 = composer21.x();
                    if (objX79 == composer$Companion$Empty$1) {
                        objX79 = new SnackbarHostState();
                        composer21.q(objX79);
                    }
                    OsaListLoadingScreenKt.a((SnackbarHostState) objX79, ComposableSingletons$OsaListLoadingScreenKt.f60882c, composer21, 54);
                } else {
                    composer21.D();
                }
                return Unit.f71739a;
            case 25:
                ComposableSingletons$OsaLocationFormScreenKt composableSingletons$OsaLocationFormScreenKt = ComposableSingletons$OsaLocationFormScreenKt.f60801a;
                ((String) obj).getClass();
                ((AppointmentTypeUiModel) obj2).getClass();
                return Unit.f71739a;
            case 26:
                ComposableSingletons$OsaLocationFormScreenKt composableSingletons$OsaLocationFormScreenKt2 = ComposableSingletons$OsaLocationFormScreenKt.f60801a;
                ((TimeSlotUiModel) obj).getClass();
                ((OsaFormItemUiModel) obj2).getClass();
                return Unit.f71739a;
            case 27:
                return a(obj, obj2);
            case 28:
                return b(obj, obj2);
            default:
                ComposableSingletons$OsaLocationFormScreenKt composableSingletons$OsaLocationFormScreenKt3 = ComposableSingletons$OsaLocationFormScreenKt.f60801a;
                ((String) obj).getClass();
                ((AppointmentTypeUiModel) obj2).getClass();
                return Unit.f71739a;
        }
    }
}
