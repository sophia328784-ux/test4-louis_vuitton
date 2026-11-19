package defpackage;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.state.ToggleableStateKt;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternal;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternalKt;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl$loadForm$1;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldEnumUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class x4 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81014b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f81015c;

    public /* synthetic */ x4(boolean z, int i2) {
        this.f81014b = i2;
        this.f81015c = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81014b;
        boolean z = true;
        boolean z2 = this.f81015c;
        switch (i2) {
            case 0:
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj;
                if (z2) {
                    return formFieldUiModel;
                }
                FormFieldTypeUiModel formFieldTypeUiModel = formFieldUiModel.f57496e;
                if (!(formFieldTypeUiModel instanceof FormFieldEnumUiModel) || formFieldUiModel.d != FormSectionTypeUiModel.STATE) {
                    return formFieldUiModel;
                }
                FormFieldEnumUiModel formFieldEnumUiModel = (FormFieldEnumUiModel) formFieldTypeUiModel;
                List list = formFieldEnumUiModel.f57513b;
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : list) {
                    if (!Intrinsics.c(((FormEnumValueUiModel) obj2).f57525b, "PR")) {
                        arrayList.add(obj2);
                    }
                }
                return FormFieldUiModel.c(formFieldUiModel, false, null, FormFieldEnumUiModel.g(formFieldEnumUiModel, null, arrayList, 1), null, null, null, null, false, false, 1019);
            case 1:
                int i3 = BookingPersonalInfoViewModelImpl$loadForm$1.WhenMappings.f54683a[((FormFieldGenericUiModel) obj).getD().ordinal()];
                if (i3 == 1 ? z2 : i3 == 2 && z2) {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 2:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope.getClass();
                return animatedContentTransitionScope.d(((z2 || Intrinsics.d(((Character) animatedContentTransitionScope.getF4004b()).charValue(), ((Character) animatedContentTransitionScope.getF4003a()).charValue()) <= 0) && !(((Character) animatedContentTransitionScope.getF4004b()).charValue() == '0' && ((Character) animatedContentTransitionScope.getF4003a()).charValue() == '9')) ? AnimatedContentKt.e(EnterExitTransitionKt.r(new x20(20)).b(EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3)), EnterExitTransitionKt.v(1, new x20(18)).b(EnterExitTransitionKt.h(null, 3))) : AnimatedContentKt.e(EnterExitTransitionKt.r(new x20(18)).b(EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3)), EnterExitTransitionKt.v(1, new x20(19)).b(EnterExitTransitionKt.h(null, 3))), AnimatedContentKt.d(2));
            case 3:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.u(semanticsPropertyReceiver, ToggleableStateKt.a(z2));
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, Role.f10290c);
                return Unit.f71739a;
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48624a;
                semanticsPropertyReceiver2.getClass();
                if (z2) {
                    KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
                    semanticsPropertyReceiver2.a(SemanticsProperties.q, Unit.f71739a);
                }
                return Unit.f71739a;
            case 5:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                SpringSpec springSpec = LVTextFieldInternalKt.f48631a;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.k(semanticsPropertyReceiver3, z2);
                return Unit.f71739a;
            default:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver4, Role.f10290c);
                SemanticsPropertiesKt.u(semanticsPropertyReceiver4, ToggleableStateKt.a(z2));
                return Unit.f71739a;
        }
    }
}
