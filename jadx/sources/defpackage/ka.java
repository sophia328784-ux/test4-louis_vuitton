package defpackage;

import androidx.compose.foundation.gestures.DraggableAnchorsConfig;
import androidx.compose.material3.SliderKt;
import androidx.compose.material3.SliderState;
import androidx.compose.material3.SwipeToDismissBoxKt;
import androidx.compose.material3.SwipeToDismissBoxValue;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.IntSize;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldReadOnlyUiModel;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ka implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71603b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f71604c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ka(Object obj, boolean z, int i2) {
        this.f71603b = i2;
        this.d = obj;
        this.f71604c = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        FormFieldReadOnlyUiModel formFieldReadOnlyUiModel;
        int i2 = this.f71603b;
        boolean z = true;
        boolean z2 = this.f71604c;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                String str = (String) obj;
                str.getClass();
                AudioGuideViewModel.s7((AudioGuideViewModel) obj2, str, !z2, 4);
                return Unit.f71739a;
            case 1:
                String str2 = (String) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                if (z2) {
                    SemanticsPropertiesKt.i(semanticsPropertyReceiver, str2);
                    LiveRegionMode.f10281b.getClass();
                    SemanticsPropertiesKt.m(semanticsPropertyReceiver, 0);
                }
                return Unit.f71739a;
            case 2:
                MyInformationViewModelImpl myInformationViewModelImpl = (MyInformationViewModelImpl) obj2;
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
                formFieldGenericUiModel.getClass();
                if (!(formFieldGenericUiModel instanceof FormFieldUiModel)) {
                    return formFieldGenericUiModel;
                }
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) formFieldGenericUiModel;
                FormSectionTypeUiModel formSectionTypeUiModel = formFieldUiModel.d;
                FormSectionTypeUiModel formSectionTypeUiModel2 = FormSectionTypeUiModel.CIVILITY;
                boolean z3 = formSectionTypeUiModel == formSectionTypeUiModel2 || formSectionTypeUiModel == FormSectionTypeUiModel.FIRSTNAME1 || formSectionTypeUiModel == FormSectionTypeUiModel.LASTNAME1;
                if (!z2 || (formSectionTypeUiModel != FormSectionTypeUiModel.FIRSTNAME2 && formSectionTypeUiModel != FormSectionTypeUiModel.LASTNAME2)) {
                    z = false;
                }
                if (!z3 && !z) {
                    return formFieldGenericUiModel;
                }
                if (formSectionTypeUiModel == formSectionTypeUiModel2) {
                    Profile profile = (Profile) myInformationViewModelImpl.z.getValue();
                    String str3 = profile != null ? profile.f68169h : null;
                    if (str3 == null) {
                        str3 = "";
                    }
                    formFieldReadOnlyUiModel = new FormFieldReadOnlyUiModel(str3, false);
                } else {
                    formFieldReadOnlyUiModel = new FormFieldReadOnlyUiModel(formFieldUiModel.i(false), false);
                }
                return FormFieldUiModel.c(formFieldUiModel, false, null, formFieldReadOnlyUiModel, null, null, null, null, false, false, 1018);
            case 3:
                SliderState sliderState = (SliderState) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                float f2 = SliderKt.f7242a;
                if (!z2) {
                    SemanticsPropertiesKt.a(semanticsPropertyReceiver2);
                }
                SemanticsPropertiesKt.r(semanticsPropertyReceiver2, String.valueOf(MathKt.c(sliderState.d() * 100.0f) / 100.0f));
                semanticsPropertyReceiver2.a(SemanticsActions.f10308i, new AccessibilityAction(null, new q80(sliderState, 2)));
                return Unit.f71739a;
            default:
                DraggableAnchorsConfig draggableAnchorsConfig = (DraggableAnchorsConfig) obj;
                float f3 = SwipeToDismissBoxKt.f7342a;
                float f4 = (int) (((IntSize) obj2).f11021a >> 32);
                draggableAnchorsConfig.a(SwipeToDismissBoxValue.Settled, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                draggableAnchorsConfig.a(SwipeToDismissBoxValue.StartToEnd, f4);
                if (z2) {
                    draggableAnchorsConfig.a(SwipeToDismissBoxValue.EndToStart, -f4);
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ ka(boolean z, Object obj, int i2) {
        this.f71603b = i2;
        this.f71604c = z;
        this.d = obj;
    }
}
