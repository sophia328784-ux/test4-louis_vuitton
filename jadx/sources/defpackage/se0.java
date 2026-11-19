package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.AccessibilityExtKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScope;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.compose.ContactUsIconKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.components.TopBarAvatarKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class se0 implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContactUsUiModel f79781c;
    public final /* synthetic */ LVModalBottomSheetState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f79782e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f79783f;

    public /* synthetic */ se0(int i2, LVModalBottomSheetState lVModalBottomSheetState, ContactUsUiModel contactUsUiModel, Function0 function0, Function1 function1) {
        this.f79780b = i2;
        this.f79781c = contactUsUiModel;
        this.d = lVModalBottomSheetState;
        this.f79782e = function1;
        this.f79783f = function0;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        int i2 = this.f79780b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Function1 function1 = this.f79782e;
        LVModalBottomSheetState lVModalBottomSheetState = this.d;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((TopBarActionScope) obj).getClass();
                ((LVColorScheme) obj2).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                ContactUsUiModel contactUsUiModel = this.f79781c;
                if (contactUsUiModel.f51154a) {
                    composer.L(-2088911619);
                    boolean zY = composer.y(lVModalBottomSheetState);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new t8(lVModalBottomSheetState, 11);
                        composer.q(objX);
                    }
                    Function0 function0 = (Function0) objX;
                    boolean zK = composer.K(function1);
                    Object objX2 = composer.x();
                    if (zK || objX2 == composer$Companion$Empty$1) {
                        objX2 = new u8(function1, 29);
                        composer.q(objX2);
                    }
                    ContactUsIconKt.a(null, contactUsUiModel, function0, (Function0) objX2, false, null, composer, 0, 49);
                    composer.F();
                } else {
                    composer.L(-2088598333);
                    composer.F();
                }
                TopBarAvatarKt.a(null, null, this.f79783f, composer, 0, 3);
                break;
            default:
                TopBarActionScope topBarActionScope = (TopBarActionScope) obj;
                LVColorScheme lVColorScheme = (LVColorScheme) obj2;
                Composer composer2 = (Composer) obj3;
                int iIntValue = ((Integer) obj4).intValue();
                topBarActionScope.getClass();
                lVColorScheme.getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                ContactUsUiModel contactUsUiModel2 = this.f79781c;
                if (contactUsUiModel2.f51154a) {
                    composer2.L(421740557);
                    Modifier modifierE = ModifierExtKt.e(new DTFunctionNameModifier("PLPScreen_J1OVMuw$lambda$5$36$1"), "plp_contact_us_button");
                    boolean zY2 = composer2.y(lVModalBottomSheetState);
                    Object objX3 = composer2.x();
                    if (zY2 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new t8(lVModalBottomSheetState, 12);
                        composer2.q(objX3);
                    }
                    Function0 function2 = (Function0) objX3;
                    boolean zK2 = composer2.K(function1);
                    Object objX4 = composer2.x();
                    if (zK2 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new tf0(function1, 5);
                        composer2.q(objX4);
                    }
                    ContactUsIconKt.a(modifierE, contactUsUiModel2, function2, (Function0) objX4, false, null, composer2, 0, 48);
                    composer2 = composer2;
                    composer2.F();
                } else {
                    composer2.L(422300820);
                    composer2.F();
                }
                if (AccessibilityExtKt.a(composer2)) {
                    composer2.L(422365610);
                    TopBarActionScope.ComposeDefaultImpls.a(null, LVAppDesignKitTheme.g(composer2).m, StringResources_androidKt.c(composer2, R.string.alt_search_product), this.f79783f, lVColorScheme, null, null, false, topBarActionScope, composer2, ((iIntValue << 9) & 57344) | ((iIntValue << 24) & 234881024), 225);
                    composer2.F();
                } else {
                    composer2.L(422744244);
                    composer2.F();
                }
                break;
        }
        return Unit.f71739a;
    }
}
