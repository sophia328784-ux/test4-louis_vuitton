package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVRadioButtonBlockKt;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rj0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79539b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f79540c;
    public final /* synthetic */ OsaFormItemUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AppointmentTypeUiModel f79541e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function2 f79542f;

    public /* synthetic */ rj0(OsaFormItemUiModel osaFormItemUiModel, String str, AppointmentTypeUiModel appointmentTypeUiModel, Function2 function2) {
        this.d = osaFormItemUiModel;
        this.f79540c = str;
        this.f79541e = appointmentTypeUiModel;
        this.f79542f = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f79539b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        final Function2 function2 = this.f79542f;
        AppointmentTypeUiModel appointmentTypeUiModel = this.f79541e;
        final OsaFormItemUiModel osaFormItemUiModel = this.d;
        String str = this.f79540c;
        final int i3 = 1;
        final int i4 = 0;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierG = n00.g("StoreAppointmentItem$lambda$0$4", "osa_appointmentVirtual_radio");
                String strC = StringResources_androidKt.c(composer, R.string.osa_appointment_form_virtual_cta);
                boolean z = !osaFormItemUiModel.f60919i.isEmpty();
                boolean z2 = Intrinsics.c(str, osaFormItemUiModel.f60914b) && appointmentTypeUiModel == AppointmentTypeUiModel.DISTANT;
                boolean zK = composer.K(function2) | composer.y(osaFormItemUiModel);
                Object objX = composer.x();
                if (zK || objX == composer$Companion$Empty$1) {
                    objX = new Function1() { // from class: sj0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            int i5 = i3;
                            ((Boolean) obj4).booleanValue();
                            switch (i5) {
                                case 0:
                                    function2.invoke(osaFormItemUiModel.f60914b, AppointmentTypeUiModel.IN_STORE);
                                    break;
                                default:
                                    function2.invoke(osaFormItemUiModel.f60914b, AppointmentTypeUiModel.DISTANT);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    composer.q(objX);
                }
                LVRadioButtonBlockKt.a(modifierG, strC, null, z, z2, (Function1) objX, null, "osa_appointmentVirtual_text", composer, 12582912, 68);
                break;
            default:
                Composer composer2 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierG2 = n00.g("StoreAppointmentItem$lambda$0$3", "osa_appointmentInStore_radio");
                String strC2 = StringResources_androidKt.c(composer2, R.string.osa_appointment_form_instore_cta);
                boolean z3 = Intrinsics.c(str, osaFormItemUiModel.f60914b) && appointmentTypeUiModel == AppointmentTypeUiModel.IN_STORE;
                boolean zK2 = composer2.K(function2) | composer2.y(osaFormItemUiModel);
                Object objX2 = composer2.x();
                if (zK2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new Function1() { // from class: sj0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            int i5 = i4;
                            ((Boolean) obj4).booleanValue();
                            switch (i5) {
                                case 0:
                                    function2.invoke(osaFormItemUiModel.f60914b, AppointmentTypeUiModel.IN_STORE);
                                    break;
                                default:
                                    function2.invoke(osaFormItemUiModel.f60914b, AppointmentTypeUiModel.DISTANT);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    composer2.q(objX2);
                }
                LVRadioButtonBlockKt.a(modifierG2, strC2, null, false, z3, (Function1) objX2, null, "osa_appointmentInStore_text", composer2, 12582912, 76);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ rj0(String str, OsaFormItemUiModel osaFormItemUiModel, AppointmentTypeUiModel appointmentTypeUiModel, Function2 function2) {
        this.f79540c = str;
        this.d = osaFormItemUiModel;
        this.f79541e = appointmentTypeUiModel;
        this.f79542f = function2;
    }
}
