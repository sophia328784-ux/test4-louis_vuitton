package defpackage;

import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.text.CoreTextFieldKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SliderColors;
import androidx.compose.material3.SliderDefaults;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.SwipeToDismissBoxKt;
import androidx.compose.material3.SwipeToDismissBoxState;
import androidx.compose.material3.SwipeToDismissBoxValue;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.IntSize;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import androidx.navigation.compose.internal.NavComposeUtils_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.certificates.components.add.AddCertificateComposableKt;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldReadOnlyUiModel;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesActivity;
import com.vuitton.android.presentation.screen.options.notifications.components.NotificationsPreferencesComposableKt;
import com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt;
import com.vuitton.android.presentation.screen.orders.models.PurchasedOrderUiModel;
import com.vuitton.android.presentation.screen.privacy.PrivacyActivity;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyNavHostKt;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes;
import com.vuitton.android.presentation.screen.privacy.models.PrivacyViewState;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import defpackage.v40;
import defpackage.x60;
import defpackage.xn0;
import defpackage.yn0;
import kotlin.Function;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.CopyableThreadContextElement;
import kotlinx.coroutines.flow.MutableStateFlow;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z3 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f81520c;
    public final /* synthetic */ Object d;

    public /* synthetic */ z3(Object obj, int i2, int i3, boolean z) {
        this.f81519b = i3;
        this.d = obj;
        this.f81520c = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Object value;
        Object value2;
        Object value3;
        Object value4;
        long j2;
        int i2;
        long j3;
        int i3 = this.f81519b;
        DefaultConstructorMarker defaultConstructorMarker = null;
        boolean z = false;
        int i4 = 2;
        final boolean z2 = this.f81520c;
        Object obj3 = this.d;
        switch (i3) {
            case 0:
                ((Integer) obj2).getClass();
                AddCertificateComposableKt.h(z2, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                AddressEditorViewModelImpl addressEditorViewModelImpl = (AddressEditorViewModelImpl) obj3;
                FormUiModel formUiModel = (FormUiModel) obj;
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj2;
                MutableStateFlow mutableStateFlow = addressEditorViewModelImpl.E;
                MutableStateFlow mutableStateFlow2 = addressEditorViewModelImpl.D;
                if (!z2 || !(formFieldGenericUiModel instanceof FormFieldUiModel)) {
                    return formFieldGenericUiModel;
                }
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) formFieldGenericUiModel;
                FormSectionTypeUiModel formSectionTypeUiModel = formFieldUiModel.d;
                int i5 = AddressEditorViewModelImpl.WhenMappings.f52223b[formSectionTypeUiModel.ordinal()];
                if (i5 == 1) {
                    do {
                        value = mutableStateFlow2.getValue();
                    } while (!mutableStateFlow2.i(value, formSectionTypeUiModel));
                    do {
                        value2 = mutableStateFlow.getValue();
                    } while (!mutableStateFlow.i(value2, formSectionTypeUiModel));
                    return FormFieldUiModel.c(formFieldUiModel, false, null, new FormFieldReadOnlyUiModel(formFieldUiModel.i(false), z, i4, defaultConstructorMarker), null, null, null, null, false, false, 1019);
                }
                if (i5 == 2) {
                    FormSectionTypeUiModel formSectionTypeUiModel2 = FormSectionTypeUiModel.ADDRESS1;
                    formUiModel.getClass();
                    formSectionTypeUiModel2.getClass();
                    if (formUiModel.c(formSectionTypeUiModel2) == null) {
                        do {
                            value3 = mutableStateFlow2.getValue();
                        } while (!mutableStateFlow2.i(value3, formSectionTypeUiModel));
                        do {
                            value4 = mutableStateFlow.getValue();
                        } while (!mutableStateFlow.i(value4, formSectionTypeUiModel));
                        return FormFieldUiModel.c(formFieldUiModel, false, null, new FormFieldReadOnlyUiModel(formFieldUiModel.i(false), z, i4, defaultConstructorMarker), null, null, null, null, false, false, 1019);
                    }
                }
                return formFieldUiModel;
            case 2:
                AudioGuideUiModel.AvailableLanguageUiModel availableLanguageUiModel = (AudioGuideUiModel.AvailableLanguageUiModel) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("AudioGuideLanguageDropDown$lambda$0$0$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48421k, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                    String str = availableLanguageUiModel.f53213b;
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer).f48429j;
                    if (z2) {
                        composer.L(847070974);
                        j2 = LVAppDesignKitTheme.c(composer).f48361b.u;
                        composer.F();
                    } else {
                        composer.L(847169430);
                        j2 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
                        composer.F();
                    }
                    TextKt.c(str, modifierM, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, composer, 0, 0, 131064);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 3:
                ContactUsUiModel contactUsUiModel = (ContactUsUiModel) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    boolean z3 = contactUsUiModel.f51160i;
                    if (z3 && !z2) {
                        composer2.L(1230402467);
                        i2 = LVAppDesignKitTheme.g(composer2).v0;
                        composer2.F();
                    } else if (z3 && z2) {
                        composer2.L(1230566333);
                        i2 = LVAppDesignKitTheme.g(composer2).w0;
                        composer2.F();
                    } else if (!z3 && !z2) {
                        composer2.L(1230747497);
                        i2 = LVAppDesignKitTheme.g(composer2).u0;
                        composer2.F();
                    } else if (z3 || !z2) {
                        composer2.L(1231025257);
                        i2 = LVAppDesignKitTheme.g(composer2).u0;
                        composer2.F();
                    } else {
                        composer2.L(1230911177);
                        i2 = LVAppDesignKitTheme.g(composer2).u0;
                        composer2.F();
                    }
                    Painter painterA = PainterResources_androidKt.a(i2, composer2, 0);
                    String strC = StringResources_androidKt.c(composer2, R.string.alt_contact_us);
                    if (contactUsUiModel.f51160i || !z2) {
                        composer2.L(1231387213);
                        composer2.F();
                        Color.f8866b.getClass();
                        j3 = Color.f8871i;
                    } else {
                        composer2.L(1231299979);
                        j3 = LVAppDesignKitTheme.c(composer2).f48361b.m;
                        composer2.F();
                    }
                    IconKt.a(painterA, strC, null, j3, composer2, 8, 4);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                CoreTextFieldKt.c((TextFieldSelectionManager) obj3, z2, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj3;
                CoroutineContext coroutineContext = (CoroutineContext) obj;
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                if (!(element instanceof CopyableThreadContextElement)) {
                    return coroutineContext.plus(element);
                }
                if (((CoroutineContext) ref$ObjectRef.f71921b).get(element.getKey()) == null) {
                    return coroutineContext.plus(z2 ? ((CopyableThreadContextElement) element).n() : (CopyableThreadContextElement) element);
                }
                ref$ObjectRef.f71921b = ((CoroutineContext) ref$ObjectRef.f71921b).minusKey(element.getKey());
                return coroutineContext.plus(((CopyableThreadContextElement) element).p());
            case 6:
                String str2 = (String) obj3;
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Vertical vertical = Alignment.Companion.l;
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer3).f48414b);
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("MainNavBar$lambda$5$1$0$0$5$0$2$0");
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, vertical, composer3, 48);
                    int iHashCode = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                    Modifier modifierC = ComposedModifierKt.c(composer3, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function0);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer3, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer3, modifierC, ComposeUiNode.Companion.d);
                    if (z2) {
                        composer3.L(359301908);
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer3).f48392a, composer3, 0), null, null, 0L, composer3, 56, 12);
                        composer3.F();
                    } else {
                        composer3.L(359651712);
                        composer3.F();
                    }
                    TextKt.c(str2, null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).f48425e, composer3, 0, 0, 131070);
                    composer3.r();
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                NavComposeUtils_androidKt.a(z2, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 8:
                final NotificationsPreferencesActivity notificationsPreferencesActivity = (NotificationsPreferencesActivity) obj3;
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                NotificationsPreferencesActivity.Companion companion = NotificationsPreferencesActivity.q;
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1667063115, new Function2() { // from class: com.vuitton.android.presentation.screen.options.notifications.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer5 = (Composer) obj4;
                            int iIntValue5 = ((Integer) obj5).intValue();
                            NotificationsPreferencesActivity.Companion companion2 = NotificationsPreferencesActivity.q;
                            if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                NotificationsPreferencesActivity notificationsPreferencesActivity2 = notificationsPreferencesActivity;
                                NotificationsPreferencesViewModel notificationsPreferencesViewModel = (NotificationsPreferencesViewModel) notificationsPreferencesActivity2.p.getF71699b();
                                boolean zY = composer5.y(notificationsPreferencesActivity2);
                                Object objX = composer5.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    NotificationsPreferencesActivity$onCreate$1$1$1$1 notificationsPreferencesActivity$onCreate$1$1$1$1 = new NotificationsPreferencesActivity$onCreate$1$1$1$1(0, notificationsPreferencesActivity2, NotificationsPreferencesActivity.class, "navigateToPrivacyPolicy", "navigateToPrivacyPolicy()V", 0);
                                    composer5.q(notificationsPreferencesActivity$onCreate$1$1$1$1);
                                    objX = notificationsPreferencesActivity$onCreate$1$1$1$1;
                                }
                                KFunction kFunction = (KFunction) objX;
                                boolean zY2 = composer5.y(notificationsPreferencesActivity2);
                                Object objX2 = composer5.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    NotificationsPreferencesActivity$onCreate$1$1$2$1 notificationsPreferencesActivity$onCreate$1$1$2$1 = new NotificationsPreferencesActivity$onCreate$1$1$2$1(0, notificationsPreferencesActivity2, NotificationsPreferencesActivity.class, "finish", "finish()V", 0);
                                    composer5.q(notificationsPreferencesActivity$onCreate$1$1$2$1);
                                    objX2 = notificationsPreferencesActivity$onCreate$1$1$2$1;
                                }
                                KFunction kFunction2 = (KFunction) objX2;
                                boolean zY3 = composer5.y(notificationsPreferencesActivity2);
                                Object objX3 = composer5.x();
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    NotificationsPreferencesActivity$onCreate$1$1$3$1 notificationsPreferencesActivity$onCreate$1$1$3$1 = new NotificationsPreferencesActivity$onCreate$1$1$3$1(0, notificationsPreferencesActivity2, NotificationsPreferencesActivity.class, "navigateToLegalSettings", "navigateToLegalSettings()V", 0);
                                    composer5.q(notificationsPreferencesActivity$onCreate$1$1$3$1);
                                    objX3 = notificationsPreferencesActivity$onCreate$1$1$3$1;
                                }
                                KFunction kFunction3 = (KFunction) objX3;
                                Function0 function1 = (Function0) kFunction;
                                boolean zY4 = composer5.y(notificationsPreferencesActivity2);
                                Object objX4 = composer5.x();
                                if (zY4 || objX4 == composer$Companion$Empty$1) {
                                    objX4 = new x60(notificationsPreferencesActivity2, 16);
                                    composer5.q(objX4);
                                }
                                NotificationsPreferencesComposableKt.b(notificationsPreferencesViewModel, function1, (Function0) objX4, (Function0) kFunction2, (Function0) kFunction3, z2, composer5, 0, 0);
                            } else {
                                composer5.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer4), composer4, 48);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                OrderListScreenKt.c((PurchasedOrderUiModel) obj3, z2, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 10:
                SnackbarHostState snackbarHostState = (SnackbarHostState) obj3;
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    LVSnackbarKt.a(ModifierExtKt.b(PaddingKt.m(new DTFunctionNameModifier("PLPScreen_J1OVMuw$lambda$5$38"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer5).f48420j, 7), !z2, new aj0(11), composer5, 0), snackbarHostState, composer5, 48, 0);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 11:
                final PrivacyActivity privacyActivity = (PrivacyActivity) obj3;
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                PrivacyActivity.Companion companion2 = PrivacyActivity.s;
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-502838663, new Function2() { // from class: com.vuitton.android.presentation.screen.privacy.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            PrivacyRoutes privacyRoutes;
                            Composer composer7 = (Composer) obj4;
                            int iIntValue7 = ((Integer) obj5).intValue();
                            PrivacyActivity.Companion companion3 = PrivacyActivity.s;
                            if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                PrivacyActivity privacyActivity2 = privacyActivity;
                                MutableState mutableStateB = SnapshotStateKt.b(privacyActivity2.H().y, composer7);
                                Object objX = composer7.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (objX == composer$Companion$Empty$1) {
                                    objX = new yn0(5);
                                    composer7.q(objX);
                                }
                                LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(48, 5, composer7, (Function1) objX);
                                Unit unit = Unit.f71739a;
                                boolean zY = composer7.y(privacyActivity2);
                                Object objX2 = composer7.x();
                                if (zY || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new PrivacyActivity$onCreate$1$1$1$1(privacyActivity2, null);
                                    composer7.q(objX2);
                                }
                                EffectsKt.e(composer7, unit, (Function2) objX2);
                                if (((PrivacyViewState) mutableStateB.getF10755b()).f63412c) {
                                    composer7.L(779977519);
                                    LVLoadingOverlayKt.a(false, composer7, 0, 1);
                                    composer7.F();
                                } else {
                                    composer7.L(780097117);
                                    NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], composer7);
                                    PrivacyType privacyType = ((PrivacyViewState) mutableStateB.getF10755b()).f63410a;
                                    boolean z4 = ((PrivacyViewState) mutableStateB.getF10755b()).d;
                                    int i6 = PrivacyActivity.WhenMappings.f63340a[privacyType.ordinal()];
                                    boolean z5 = z2;
                                    if (i6 == 1) {
                                        privacyRoutes = z5 ? PrivacyRoutes.PrivacyPreCompliance.INSTANCE : PrivacyRoutes.Privacy.INSTANCE;
                                    } else if (i6 == 2) {
                                        privacyRoutes = PrivacyRoutes.PrivacyPreCompliance.INSTANCE;
                                    } else if (i6 == 3) {
                                        privacyRoutes = z4 ? PrivacyRoutes.Privacy.INSTANCE : PrivacyRoutes.PrivacyPiplCbdt.INSTANCE;
                                    } else {
                                        if (i6 != 4) {
                                            v40.g();
                                            return null;
                                        }
                                        privacyRoutes = PrivacyRoutes.Privacy.INSTANCE;
                                    }
                                    PrivacyViewModelImpl privacyViewModelImplH = privacyActivity2.H();
                                    boolean zY2 = composer7.y(privacyActivity2);
                                    Object objX3 = composer7.x();
                                    if (zY2 || objX3 == composer$Companion$Empty$1) {
                                        PrivacyActivity$onCreate$1$1$2$1 privacyActivity$onCreate$1$1$2$1 = new PrivacyActivity$onCreate$1$1$2$1(0, privacyActivity2, PrivacyActivity.class, "onCloseBottomSheet", "onCloseBottomSheet()V", 0);
                                        composer7.q(privacyActivity$onCreate$1$1$2$1);
                                        objX3 = privacyActivity$onCreate$1$1$2$1;
                                    }
                                    KFunction kFunction = (KFunction) objX3;
                                    boolean zY3 = composer7.y(privacyActivity2);
                                    Object objX4 = composer7.x();
                                    if (zY3 || objX4 == composer$Companion$Empty$1) {
                                        PrivacyActivity$onCreate$1$1$3$1 privacyActivity$onCreate$1$1$3$1 = new PrivacyActivity$onCreate$1$1$3$1(0, privacyActivity2, PrivacyActivity.class, "finish", "finish()V", 0);
                                        composer7.q(privacyActivity$onCreate$1$1$3$1);
                                        objX4 = privacyActivity$onCreate$1$1$3$1;
                                    }
                                    KFunction kFunction2 = (KFunction) objX4;
                                    boolean zY4 = composer7.y(privacyActivity2);
                                    Object objX5 = composer7.x();
                                    if (zY4 || objX5 == composer$Companion$Empty$1) {
                                        PrivacyActivity$onCreate$1$1$4$1 privacyActivity$onCreate$1$1$4$1 = new PrivacyActivity$onCreate$1$1$4$1(1, privacyActivity2, PrivacyActivity.class, "onDeeplinkClicked", "onDeeplinkClicked(Ljava/lang/String;)V", 0);
                                        composer7.q(privacyActivity$onCreate$1$1$4$1);
                                        objX5 = privacyActivity$onCreate$1$1$4$1;
                                    }
                                    KFunction kFunction3 = (KFunction) objX5;
                                    boolean zY5 = composer7.y(privacyActivity2);
                                    Object objX6 = composer7.x();
                                    if (zY5 || objX6 == composer$Companion$Empty$1) {
                                        objX6 = new xn0(privacyActivity2, 4);
                                        composer7.q(objX6);
                                    }
                                    PrivacyNavHostKt.a(navHostControllerA, lVModalBottomSheetStateF, privacyRoutes, z5, privacyViewModelImplH, (Function0) objX6, (Function0) kFunction2, (Function0) kFunction, (Function1) kFunction3, composer7, LVModalBottomSheetState.f48797e << 3);
                                    composer7.F();
                                }
                            } else {
                                composer7.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer6), composer6, 48);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 12:
                DrawScope drawScope = (DrawScope) obj;
                SliderDefaults sliderDefaults = SliderDefaults.f7235a;
                DrawScope.r0(drawScope, ((SliderColors) obj3).a(z2, true), drawScope.u1(SliderDefaults.f7236b) / 2.0f, ((Offset) obj2).f8808a, null, 120);
                return Unit.f71739a;
            default:
                float f2 = SwipeToDismissBoxKt.f7342a;
                return new Pair(AnchoredDraggableKt.a(new ka((IntSize) obj, z2, 4)), (SwipeToDismissBoxValue) ((SwipeToDismissBoxState) obj3).f7346a.f4403i.getF10755b());
        }
    }

    public /* synthetic */ z3(Object obj, boolean z, int i2) {
        this.f81519b = i2;
        this.d = obj;
        this.f81520c = z;
    }

    public /* synthetic */ z3(boolean z, Object obj, int i2) {
        this.f81519b = i2;
        this.f81520c = z;
        this.d = obj;
    }

    public /* synthetic */ z3(boolean z, Function function, int i2, int i3) {
        this.f81519b = i3;
        this.f81520c = z;
        this.d = function;
    }
}
