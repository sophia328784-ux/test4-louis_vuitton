package defpackage;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.material3.SheetValue;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.navigation3.scene.Scene;
import com.vuitton.android.presentation.compose.animation.Nav3TransitionsKt;
import com.vuitton.android.presentation.extensions.SemanticsPropertyReceiverExtKt;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationScreenKt;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldReadOnlyUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class re implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79323b;

    public /* synthetic */ re(BookingPersonalInfoViewModelImpl bookingPersonalInfoViewModelImpl) {
        this.f79323b = 22;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = 2;
        char c2 = 1;
        switch (this.f79323b) {
            case 0:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                float f2 = BeautyVtoScreenKt.f62031a;
                animatedContentTransitionScope.getClass();
                return animatedContentTransitionScope.d(AnimatedContentKt.e(EnterExitTransitionKt.r(new re(c2 == true ? 1 : 0)), EnterExitTransitionKt.v(1, new re(i2))), AnimatedContentKt.d(2));
            case 1:
                int iIntValue = ((Integer) obj).intValue();
                float f3 = BeautyVtoScreenKt.f62031a;
                return Integer.valueOf(iIntValue * 2);
            case 2:
                int iIntValue2 = ((Integer) obj).intValue();
                float f4 = BeautyVtoScreenKt.f62031a;
                return Integer.valueOf(iIntValue2 * 2);
            case 3:
                return ((TryOnProductUiModel) obj).f62183a;
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver);
                return Unit.f71739a;
            case 5:
                float f5 = BookingConfirmationScreenKt.f54386a;
                ((BookingUiModel) obj).getClass();
                return Unit.f71739a;
            case 6:
                float f6 = BookingConfirmationScreenKt.f54386a;
                ((String) obj).getClass();
                return Unit.f71739a;
            case 7:
                float f7 = BookingConfirmationScreenKt.f54386a;
                ((BookingUiModel) obj).getClass();
                return Unit.f71739a;
            case 8:
                int iIntValue3 = ((Integer) obj).intValue();
                float f8 = BookingConfirmationScreenKt.f54386a;
                return Integer.valueOf(iIntValue3 / 4);
            case 9:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                return Unit.f71739a;
            case 10:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 11:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver3, 0);
                return Unit.f71739a;
            case 12:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver4);
                return Unit.f71739a;
            case 13:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver5, 0);
                return Unit.f71739a;
            case 14:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver6.getClass();
                SemanticsPropertiesKt.v(semanticsPropertyReceiver6, true);
                return Unit.f71739a;
            case 15:
                SemanticsPropertyReceiver semanticsPropertyReceiver7 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver7.getClass();
                SemanticsPropertiesKt.v(semanticsPropertyReceiver7, true);
                return Unit.f71739a;
            case 16:
                SemanticsPropertyReceiver semanticsPropertyReceiver8 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver8.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver8);
                return Unit.f71739a;
            case 17:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope2.getClass();
                return Intrinsics.c(((Scene) animatedContentTransitionScope2.getF4004b()).getMetadata().get("scale_transition"), Boolean.TRUE) ? AnimatedContentKt.e(EnterExitTransitionKt.f(AnimationSpecKt.c(300, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2).b(EnterExitTransitionKt.i(AnimationSpecKt.c(300, 0, null, 6), 0.9f, 4)), EnterExitTransitionKt.h(AnimationSpecKt.c(300, 0, null, 6), 2).b(EnterExitTransitionKt.j(AnimationSpecKt.c(300, 0, null, 6), 1.05f, 4))) : Nav3TransitionsKt.a(animatedContentTransitionScope2);
            case 18:
                AnimatedContentTransitionScope animatedContentTransitionScope3 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope3.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope3);
            case 19:
                SemanticsPropertyReceiver semanticsPropertyReceiver9 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver9.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver9);
                return Unit.f71739a;
            case 20:
                AnimatedContentTransitionScope animatedContentTransitionScope4 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope4.getClass();
                return Nav3TransitionsKt.a(animatedContentTransitionScope4);
            case 21:
                AnimatedContentTransitionScope animatedContentTransitionScope5 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope5.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope5);
            case 22:
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj;
                String str = BookingPersonalInfoViewModelImpl.w;
                formFieldUiModel.getClass();
                FormFieldUiModel formFieldUiModelH = FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, null, false, false, 511).h(true);
                Set set = BookingPersonalInfoViewModelImpl.x;
                FormSectionTypeUiModel formSectionTypeUiModel = formFieldUiModelH.d;
                if (!set.contains(formSectionTypeUiModel) || formFieldUiModelH.l) {
                    return formFieldUiModelH;
                }
                return FormFieldUiModel.c(formFieldUiModelH, false, null, new FormFieldReadOnlyUiModel(formFieldUiModelH.i(formSectionTypeUiModel == FormSectionTypeUiModel.CIVILITY), false), null, null, null, null, false, false, 1019);
            case 23:
                SemanticsPropertyReceiver semanticsPropertyReceiver10 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver10.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver10);
                return Unit.f71739a;
            case 24:
                Integer num = (Integer) obj;
                num.intValue();
                int i3 = BookingReservationScreenKt.f54457b;
                return num;
            case 25:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 26:
                SemanticsPropertyReceiver semanticsPropertyReceiver11 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver11.getClass();
                SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver11);
                return Unit.f71739a;
            case 27:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 28:
                SheetValue sheetValue = (SheetValue) obj;
                sheetValue.getClass();
                return Boolean.valueOf(sheetValue != SheetValue.PartiallyExpanded);
            default:
                ((ContentDrawScope) obj).R1();
                return Unit.f71739a;
        }
    }

    public /* synthetic */ re(int i2) {
        this.f79323b = i2;
    }
}
