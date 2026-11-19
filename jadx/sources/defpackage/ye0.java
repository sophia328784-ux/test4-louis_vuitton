package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.authentication.register.Step;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.FormTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ye0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function3 f81353c;

    public /* synthetic */ ye0(Function3 function3, int i2) {
        this.f81352b = i2;
        this.f81353c = function3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81352b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Function3 function3 = this.f81353c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                composer.L(785689769);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NativeCartMainView$lambda$2$0$0$0$0");
                boolean zK = composer.K(function3);
                Object objX = composer.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new x60(function3, 10);
                    composer.q(objX);
                }
                Modifier modifierC = ModifierExtKt.c(dTFunctionNameModifier, false, null, null, (Function0) objX, 31);
                composer.F();
                return modifierC;
            case 1:
                FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel.getClass();
                obj2.getClass();
                function3.A(Step.BIRTH_INFO, formSectionTypeUiModel, obj2);
                return Unit.f71739a;
            case 2:
                FormSectionTypeUiModel formSectionTypeUiModel2 = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel2.getClass();
                obj2.getClass();
                function3.A(Step.CREDENTIALS, formSectionTypeUiModel2, obj2);
                return Unit.f71739a;
            case 3:
                FormSectionTypeUiModel formSectionTypeUiModel3 = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel3.getClass();
                obj2.getClass();
                function3.A(Step.PERSONAL_INFO, formSectionTypeUiModel3, obj2);
                return Unit.f71739a;
            case 4:
                FormSectionTypeUiModel formSectionTypeUiModel4 = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel4.getClass();
                obj2.getClass();
                function3.A(Step.REGISTRATION_ADDRESS, formSectionTypeUiModel4, obj2);
                return Unit.f71739a;
            case 5:
                FormSectionTypeUiModel formSectionTypeUiModel5 = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel5.getClass();
                obj2.getClass();
                function3.A(FormTypeUiModel.GUEST_USER_MAIN, formSectionTypeUiModel5, obj2);
                return Unit.f71739a;
            case 6:
                FormSectionTypeUiModel formSectionTypeUiModel6 = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel6.getClass();
                obj2.getClass();
                function3.A(FormTypeUiModel.GUEST_USER_EMAIL, formSectionTypeUiModel6, obj2);
                return Unit.f71739a;
            case 7:
                FormSectionTypeUiModel formSectionTypeUiModel7 = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel7.getClass();
                obj2.getClass();
                function3.A(FormTypeUiModel.LOGGED_USER, formSectionTypeUiModel7, obj2);
                return Unit.f71739a;
            case 8:
                String str = (String) obj;
                Boolean bool = (Boolean) obj2;
                bool.booleanValue();
                str.getClass();
                function3.A(str, bool, CustomizationType.MONOGRAM);
                return Unit.f71739a;
            case 9:
                String str2 = (String) obj;
                Boolean bool2 = (Boolean) obj2;
                bool2.booleanValue();
                str2.getClass();
                function3.A(str2, bool2, CustomizationType.HOTSTAMPING);
                return Unit.f71739a;
            case 10:
                String str3 = (String) obj;
                Boolean bool3 = (Boolean) obj2;
                bool3.booleanValue();
                str3.getClass();
                function3.A(str3, bool3, CustomizationType.PERFUME_ENGRAVING);
                return Unit.f71739a;
            case 11:
                String str4 = (String) obj;
                Boolean bool4 = (Boolean) obj2;
                bool4.booleanValue();
                str4.getClass();
                function3.A(str4, bool4, CustomizationType.BEAUTY_ENGRAVING);
                return Unit.f71739a;
            case 12:
                Composer composer2 = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    function3.A(WindowInsetsPadding_androidKt.d(BackgroundKt.b(new DTFunctionNameModifier("RepairListBffScreen$lambda$0"), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, rectangleShapeKt$RectangleShape$1)), composer2, 0);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            default:
                Composer composer3 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    function3.A(WindowInsetsPadding_androidKt.d(BackgroundKt.b(new DTFunctionNameModifier("RepairListScreen$lambda$0"), LVAppDesignKitTheme.c(composer3).f48361b.f48374a, rectangleShapeKt$RectangleShape$1)), composer3, 0);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
        }
    }
}
