package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldFreeformUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yz implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FormFieldFreeformUiModel f81469c;

    public /* synthetic */ yz(FormFieldFreeformUiModel formFieldFreeformUiModel, int i2) {
        this.f81468b = i2;
        this.f81469c = formFieldFreeformUiModel;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81468b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        final FormFieldFreeformUiModel formFieldFreeformUiModel = this.f81469c;
        final int i3 = 0;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                composer.L(1948040284);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("FormFieldFreeform$lambda$3");
                boolean zY = composer.y(formFieldFreeformUiModel);
                Object objX = composer.x();
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new Function1() { // from class: zz
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj3) {
                            int i4 = i3;
                            FormFieldFreeformUiModel formFieldFreeformUiModel2 = formFieldFreeformUiModel;
                            SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj3;
                            switch (i4) {
                                case 0:
                                    semanticsPropertyReceiver.getClass();
                                    ContentType contentType = formFieldFreeformUiModel2.d;
                                    contentType.getClass();
                                    SemanticsPropertiesKt.j(semanticsPropertyReceiver, contentType);
                                    break;
                                default:
                                    semanticsPropertyReceiver.getClass();
                                    ContentType contentType2 = formFieldFreeformUiModel2.d;
                                    contentType2.getClass();
                                    SemanticsPropertiesKt.j(semanticsPropertyReceiver, contentType2);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    composer.q(objX);
                }
                Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX);
                composer.F();
                return modifierB;
            default:
                composer.L(-693678980);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("FormFieldPassword$lambda$3");
                boolean zY2 = composer.y(formFieldFreeformUiModel);
                Object objX2 = composer.x();
                if (zY2 || objX2 == composer$Companion$Empty$1) {
                    final int i4 = 1;
                    objX2 = new Function1() { // from class: zz
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj3) {
                            int i5 = i4;
                            FormFieldFreeformUiModel formFieldFreeformUiModel2 = formFieldFreeformUiModel;
                            SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj3;
                            switch (i5) {
                                case 0:
                                    semanticsPropertyReceiver.getClass();
                                    ContentType contentType = formFieldFreeformUiModel2.d;
                                    contentType.getClass();
                                    SemanticsPropertiesKt.j(semanticsPropertyReceiver, contentType);
                                    break;
                                default:
                                    semanticsPropertyReceiver.getClass();
                                    ContentType contentType2 = formFieldFreeformUiModel2.d;
                                    contentType2.getClass();
                                    SemanticsPropertiesKt.j(semanticsPropertyReceiver, contentType2);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    composer.q(objX2);
                }
                Modifier modifierB2 = SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) objX2);
                composer.F();
                return modifierB2;
        }
    }
}
