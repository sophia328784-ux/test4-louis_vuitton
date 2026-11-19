package defpackage;

import android.content.Context;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.chat.ChatContactUsUiModel;
import com.vuitton.android.presentation.compose.components.LVCardWithIconKt;
import com.vuitton.android.presentation.compose.components.TermsAndConditionsCardKt;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.compose.ContactUsModalBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.b;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairContactComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step2StateUIModel;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpServicesKt;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ExtensionsKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sp implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79846b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f79847c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function f79848e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function f79849f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f79850h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f79851i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f79852j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f79853k;

    public /* synthetic */ sp(ContactUsUiModel contactUsUiModel, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function0 function7) {
        this.d = contactUsUiModel;
        this.f79847c = function0;
        this.f79848e = function1;
        this.f79849f = function2;
        this.g = function3;
        this.f79850h = function4;
        this.f79851i = function5;
        this.f79852j = function6;
        this.f79853k = function7;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Composer composer;
        int i2 = this.f79846b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj4 = this.f79853k;
        Object obj5 = this.f79852j;
        Object obj6 = this.f79851i;
        Function function = this.f79849f;
        Function function2 = this.f79848e;
        Object obj7 = this.f79850h;
        Object obj8 = this.g;
        Object obj9 = this.d;
        switch (i2) {
            case 0:
                ContactUsUiModel contactUsUiModel = (ContactUsUiModel) obj9;
                Function0 function0 = (Function0) function2;
                Function0 function1 = (Function0) function;
                Function0 function3 = (Function0) obj8;
                Function0 function4 = (Function0) obj7;
                Function0 function5 = (Function0) obj6;
                Function0 function6 = (Function0) obj5;
                Function0 function7 = (Function0) obj4;
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ChatContactUsUiModel chatContactUsUiModel = contactUsUiModel.f51159h;
                    ContactUsMode contactUsMode = contactUsUiModel.l;
                    boolean zC = Intrinsics.c(chatContactUsUiModel, ChatContactUsUiModel.Available.f50674a);
                    int i3 = R.string.csc_contact_bottomsheet_chat_title;
                    if (zC) {
                        composer2.L(738094429);
                        Modifier modifierE = ModifierExtKt.e(new DTFunctionNameModifier("ContactUsModalBottomSheet$lambda$0"), "bottomSheet_contact_view");
                        int i4 = LVAppDesignKitTheme.g(composer2).u0;
                        int[] iArr = ContactUsModalBottomSheetKt.WhenMappings.f51139a;
                        if (iArr[contactUsMode.ordinal()] == 1) {
                            i3 = R.string.care_contact_bottomsheet_chat_title;
                        }
                        LVCardWithIconKt.a(modifierE, i4, StringResources_androidKt.c(composer2, i3), StringResources_androidKt.c(composer2, iArr[contactUsMode.ordinal()] == 1 ? R.string.care_contact_bottomsheet_chat_subtitle : R.string.csc_contact_bottomsheet_chat_subtitle), 0, this.f79847c, true, true, composer2, 113246208, 36);
                        composer = composer2;
                        composer.F();
                    } else {
                        composer = composer2;
                        if (Intrinsics.c(chatContactUsUiModel, ChatContactUsUiModel.AdvisorNotAvailable.f50673a)) {
                            composer.L(738126557);
                            Modifier modifierE2 = ModifierExtKt.e(new DTFunctionNameModifier("ContactUsModalBottomSheet$lambda$0"), "bottomSheet_contact_view");
                            int i5 = LVAppDesignKitTheme.g(composer).u0;
                            int[] iArr2 = ContactUsModalBottomSheetKt.WhenMappings.f51139a;
                            if (iArr2[contactUsMode.ordinal()] == 1) {
                                i3 = R.string.care_contact_bottomsheet_chat_title;
                            }
                            String strC = StringResources_androidKt.c(composer, i3);
                            String strC2 = StringResources_androidKt.c(composer, iArr2[contactUsMode.ordinal()] == 1 ? R.string.care_contact_bottomsheet_chat_subtitle_unavailable : R.string.csc_contact_bottomsheet_chat_subtitle_unavailable);
                            Object objX = composer.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new lp(23);
                                composer.q(objX);
                            }
                            LVCardWithIconKt.a(modifierE2, i5, strC, strC2, 0, (Function0) objX, false, false, composer, 14155776, 292);
                            composer.F();
                        } else if (Intrinsics.c(chatContactUsUiModel, ChatContactUsUiModel.UserOptOut.f50676a)) {
                            composer.L(738157658);
                            TermsAndConditionsCardKt.a(null, function0, function1, composer, 0);
                            composer.F();
                        } else {
                            composer.L(738164783);
                            composer.F();
                        }
                    }
                    if (StringKtExtKt.g(contactUsUiModel.f51158f)) {
                        composer.L(1408383364);
                        Modifier modifierE3 = ModifierExtKt.e(new DTFunctionNameModifier("ContactUsModalBottomSheet$lambda$0"), "bottomSheet_contact_view");
                        int i6 = LVAppDesignKitTheme.g(composer).x0;
                        int[] iArr3 = ContactUsModalBottomSheetKt.WhenMappings.f51139a;
                        LVCardWithIconKt.a(modifierE3, i6, StringResources_androidKt.c(composer, iArr3[contactUsMode.ordinal()] == 1 ? R.string.care_contact_bottomsheet_whatsapp_title : R.string.csc_contact_bottomsheet_whatsapp_title), StringResources_androidKt.c(composer, iArr3[contactUsMode.ordinal()] == 1 ? R.string.care_contact_bottomsheet_whatsapp_subtitle : R.string.csc_contact_bottomsheet_whatsapp_subtitle), 0, function3, false, false, composer, 0, 420);
                        composer.F();
                    } else {
                        composer.L(1409262679);
                        composer.F();
                    }
                    if (StringKtExtKt.g(contactUsUiModel.g)) {
                        composer.L(1409343031);
                        LVCardWithIconKt.a(ModifierExtKt.e(new DTFunctionNameModifier("ContactUsModalBottomSheet$lambda$0"), "bottomSheet_contact_view"), LVAppDesignKitTheme.g(composer).y0, StringResources_androidKt.c(composer, R.string.csc_contact_bottomsheet_kakaotalk_title), StringResources_androidKt.c(composer, R.string.csc_contact_bottomsheet_kakaotalk_subtitle), 0, function4, false, false, composer, 0, 420);
                        composer.F();
                    } else {
                        composer.L(1409773559);
                        composer.F();
                    }
                    if (StringKtExtKt.g(contactUsUiModel.d)) {
                        composer.L(1409859739);
                        Modifier modifierE4 = ModifierExtKt.e(new DTFunctionNameModifier("ContactUsModalBottomSheet$lambda$0"), "bottomSheet_contact_view");
                        int i7 = LVAppDesignKitTheme.g(composer).U0;
                        int[] iArr4 = ContactUsModalBottomSheetKt.WhenMappings.f51139a;
                        LVCardWithIconKt.a(modifierE4, i7, StringResources_androidKt.c(composer, iArr4[contactUsMode.ordinal()] == 1 ? R.string.care_contact_bottomsheet_sms_title : R.string.csc_contact_bottomsheet_sms_title), StringResources_androidKt.c(composer, iArr4[contactUsMode.ordinal()] == 1 ? R.string.care_contact_bottomsheet_sms_subtitle : R.string.csc_contact_bottomsheet_sms_subtitle), 0, function5, false, false, composer, 0, 420);
                        composer.F();
                    } else {
                        composer.L(1410716951);
                        composer.F();
                    }
                    if (StringKtExtKt.g(contactUsUiModel.f51157e)) {
                        composer.L(1410811346);
                        Modifier modifierE5 = ModifierExtKt.e(new DTFunctionNameModifier("ContactUsModalBottomSheet$lambda$0"), "bottomSheet_contact_view");
                        int i8 = LVAppDesignKitTheme.g(composer).T0;
                        int[] iArr5 = ContactUsModalBottomSheetKt.WhenMappings.f51139a;
                        LVCardWithIconKt.a(modifierE5, i8, StringResources_androidKt.c(composer, iArr5[contactUsMode.ordinal()] == 1 ? R.string.care_contact_bottomsheet_phone_title : R.string.csc_contact_bottomsheet_phone_title), StringResources_androidKt.c(composer, iArr5[contactUsMode.ordinal()] == 1 ? R.string.care_contact_bottomsheet_phone_subtitle : R.string.csc_contact_bottomsheet_phone_subtitle), 0, function6, false, false, composer, 0, 420);
                        composer.F();
                    } else {
                        composer.L(1411677207);
                        composer.F();
                    }
                    if (StringKtExtKt.g(contactUsUiModel.f51155b)) {
                        composer.L(1411765526);
                        Modifier modifierE6 = ModifierExtKt.e(new DTFunctionNameModifier("ContactUsModalBottomSheet$lambda$0"), "bottomSheet_contact_view");
                        int i9 = LVAppDesignKitTheme.g(composer).S0;
                        int[] iArr6 = ContactUsModalBottomSheetKt.WhenMappings.f51139a;
                        LVCardWithIconKt.a(modifierE6, i9, StringResources_androidKt.c(composer, iArr6[contactUsMode.ordinal()] == 1 ? R.string.care_contact_bottomsheet_email_title : R.string.csc_contact_bottomsheet_email_title), StringResources_androidKt.c(composer, iArr6[contactUsMode.ordinal()] == 1 ? R.string.care_contact_bottomsheet_email_subtitle : R.string.csc_contact_bottomsheet_email_subtitle), 0, function7, false, false, composer, 0, 420);
                        composer.F();
                    } else {
                        composer.L(1412627543);
                        composer.F();
                    }
                } else {
                    composer2.D();
                }
                break;
            case 1:
                DistantRepairFormViewState distantRepairFormViewState = (DistantRepairFormViewState) obj9;
                Function3 function8 = (Function3) function2;
                Function1 function9 = (Function1) function;
                Function1 function10 = (Function1) obj8;
                CoroutineScope coroutineScope = (CoroutineScope) obj7;
                LazyListState lazyListState = (LazyListState) obj6;
                Function1 function11 = (Function1) obj5;
                Function2 function12 = (Function2) obj4;
                Composer composer3 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    StepState stepState = distantRepairFormViewState.f57380b.f57390b;
                    Step2StateUIModel step2StateUIModel = distantRepairFormViewState.d;
                    String str = distantRepairFormViewState.f57379a.f67483j;
                    boolean z = distantRepairFormViewState.f57385i.d;
                    String str2 = distantRepairFormViewState.f57386j.f64007h;
                    FormUiModel formUiModel = distantRepairFormViewState.f57387k;
                    boolean zK = composer3.K(function10) | composer3.y(coroutineScope) | composer3.K(lazyListState);
                    Object objX2 = composer3.x();
                    if (zK || objX2 == composer$Companion$Empty$1) {
                        objX2 = new b(function10, coroutineScope, lazyListState, 0);
                        composer3.q(objX2);
                    }
                    DistantRepairContactComponentKt.e(stepState, step2StateUIModel, str, z, str2, formUiModel, function8, function9, (Function1) objX2, this.f79847c, function11, function12, composer3, 0);
                    SpacerKt.a(composer3, SizeKt.f(new DTFunctionNameModifier("DistantRepairFormComponent$lambda$0$0$2"), LVAppDesignKitTheme.l(composer3).f48417f));
                } else {
                    composer3.D();
                }
                break;
            case 2:
                String str3 = (String) obj9;
                String str4 = (String) obj7;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj6;
                PermissionsUiModel permissionsUiModel = (PermissionsUiModel) obj5;
                Function0 function13 = (Function0) function2;
                Context context = (Context) obj4;
                Function0 function14 = (Function0) function;
                Function0 function15 = (Function0) obj8;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer4 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer4.K(paddingValues) ? 4 : 2;
                }
                if (composer4.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    LVEmptyViewKt.d(o60.e("InboxEmptyNotificationListScreen$lambda$1", paddingValues), LVAppDesignKitTheme.g(composer4).Q, null, StringResources_androidKt.c(composer4, R.string.my_notifications_activation_page_title), str3, null, false, null, str4, this.f79847c, null, null, composer4, 0, 0, 3300);
                    if (lVModalBottomSheetState.a()) {
                        composer4.L(-1444236767);
                        if (Intrinsics.c(permissionsUiModel.f62372a, PermissionsBottomSheet.None.f62367f)) {
                            composer4.L(-1443056969);
                            composer4.F();
                        } else {
                            composer4.L(-1444135645);
                            String strC3 = StringResources_androidKt.c(composer4, R.string.alt_close);
                            boolean zK2 = composer4.K(function13);
                            Object objX3 = composer4.x();
                            if (zK2 || objX3 == composer$Companion$Empty$1) {
                                objX3 = new py(function13, 12);
                                composer4.q(objX3);
                            }
                            LVModalBottomSheetKt.b(null, strC3, (Function0) objX3, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(1670015511, new f30(permissionsUiModel, context, function14, function15, 1), composer4), composer4, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                            composer4.F();
                        }
                        composer4.F();
                    } else {
                        composer4.L(-1443047049);
                        composer4.F();
                    }
                } else {
                    composer4.D();
                }
                break;
            default:
                PdpViewState pdpViewState = (PdpViewState) obj9;
                ProductUiModel productUiModel = (ProductUiModel) obj8;
                ReinsuranceUiModel reinsuranceUiModel = (ReinsuranceUiModel) obj7;
                Function0 function16 = (Function0) function2;
                Function0 function17 = (Function0) function;
                Function1 function18 = (Function1) obj6;
                Function1 function19 = (Function1) obj5;
                PdpTracker pdpTracker = (PdpTracker) obj4;
                Composer composer5 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer5.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("PdpMainView$lambda$3$0$10"), LVAppDesignKitTheme.l(composer5).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    ImmutableList immutableListA = ExtensionsKt.a(pdpViewState.w);
                    boolean z2 = pdpViewState.m;
                    List list = productUiModel.X;
                    boolean zK3 = composer5.K(function19) | composer5.y(pdpTracker) | composer5.y(productUiModel);
                    Object objX4 = composer5.x();
                    if (zK3 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new lm0(function19, pdpTracker, productUiModel, 0);
                        composer5.q(objX4);
                    }
                    PdpServicesKt.a(modifierK, z2, reinsuranceUiModel, immutableListA, list, this.f79847c, function16, function17, function18, (Function2) objX4, composer5, 0);
                } else {
                    composer5.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ sp(DistantRepairFormViewState distantRepairFormViewState, Function3 function3, Function1 function1, Function1 function2, CoroutineScope coroutineScope, LazyListState lazyListState, Function0 function0, Function1 function4, Function2 function5) {
        this.d = distantRepairFormViewState;
        this.f79848e = function3;
        this.f79849f = function1;
        this.g = function2;
        this.f79850h = coroutineScope;
        this.f79851i = lazyListState;
        this.f79847c = function0;
        this.f79852j = function4;
        this.f79853k = function5;
    }

    public /* synthetic */ sp(PdpViewState pdpViewState, ProductUiModel productUiModel, ReinsuranceUiModel reinsuranceUiModel, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function1 function4, PdpTracker pdpTracker) {
        this.d = pdpViewState;
        this.g = productUiModel;
        this.f79850h = reinsuranceUiModel;
        this.f79847c = function0;
        this.f79848e = function1;
        this.f79849f = function2;
        this.f79851i = function3;
        this.f79852j = function4;
        this.f79853k = pdpTracker;
    }

    public /* synthetic */ sp(String str, String str2, Function0 function0, LVModalBottomSheetState lVModalBottomSheetState, PermissionsUiModel permissionsUiModel, Function0 function1, Context context, Function0 function2, Function0 function3) {
        this.d = str;
        this.f79850h = str2;
        this.f79847c = function0;
        this.f79851i = lVModalBottomSheetState;
        this.f79852j = permissionsUiModel;
        this.f79848e = function1;
        this.f79853k = context;
        this.f79849f = function2;
        this.g = function3;
    }
}
