package defpackage;

import androidx.activity.result.ActivityResult;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.SheetState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.room.RoomDatabase;
import androidx.sqlite.SQLiteConnection;
import com.vuitton.android.presentation.screen.account.addresseditor.validation.PhoneValidationRules;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.plp.components.screens.PSPStyle;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bo0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f20910c;

    public /* synthetic */ bo0(Function0 function0, PhoneValidationRules phoneValidationRules) {
        this.f20909b = 0;
        this.f20910c = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        List listP;
        int i2 = this.f20909b;
        boolean z = false;
        Function0 function0 = this.f20910c;
        switch (i2) {
            case 0:
                FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel.getClass();
                FormUiModel formUiModel = (FormUiModel) function0.mo47invoke();
                FormUiModel.Companion companion = FormUiModel.f57485b;
                String strE = formUiModel.e(formSectionTypeUiModel, true);
                int i3 = PhoneValidationRules.WhenMappings.f52274a[formSectionTypeUiModel.ordinal()];
                if (i3 == 2) {
                    listP = CollectionsKt.P(formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER_TYPE2, true), formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER_TYPE3, true));
                } else if (i3 != 3) {
                    listP = i3 != 4 ? EmptyList.f71768b : CollectionsKt.P(formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER_TYPE1, true), formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER_TYPE2, true));
                } else {
                    listP = CollectionsKt.P(formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER_TYPE1, true), formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER_TYPE3, true));
                }
                if (!StringsKt.w(strE) && !listP.contains(strE)) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 1:
                function0.mo47invoke();
                return Unit.f71739a;
            case 2:
                function0.mo47invoke();
                return Unit.f71739a;
            case 3:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                float f2 = ProgressIndicatorKt.f7152a;
                Object objMo47invoke = function0.mo47invoke();
                Float f3 = (Float) (Float.isNaN(((Number) objMo47invoke).floatValue()) ? null : objMo47invoke);
                ProgressBarRangeInfo progressBarRangeInfo = new ProgressBarRangeInfo(f3 != null ? f3.floatValue() : 0.0f, RangesKt.h(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f), 0, 4, null);
                KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10333c;
                KProperty kProperty = SemanticsPropertiesKt.f10359a[1];
                semanticsPropertyKey.getClass();
                semanticsPropertyReceiver.a(semanticsPropertyKey, progressBarRangeInfo);
                return Unit.f71739a;
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                SemanticsPropertiesKt.e(semanticsPropertyReceiver2, null, new sq0(function0, 1));
                return Unit.f71739a;
            case 5:
                int i4 = RoomDatabase.m;
                ((SQLiteConnection) obj).getClass();
                return function0.mo47invoke();
            case 6:
                PSPStyle pSPStyle = (PSPStyle) obj;
                pSPStyle.getClass();
                if (pSPStyle == PSPStyle.SEARCH) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 7:
                obj.getClass();
                return function0.mo47invoke();
            case 8:
                ((Float) obj).floatValue();
                SheetState.Companion companion2 = SheetState.f7207h;
                return Float.valueOf(((Number) function0.mo47invoke()).floatValue());
            case 9:
                ((Boolean) obj).booleanValue();
                function0.mo47invoke();
                return Unit.f71739a;
            case 10:
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                if (activityResult.f731b == -1) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            default:
                return (Offset) function0.mo47invoke();
        }
    }

    public /* synthetic */ bo0(Function0 function0, int i2) {
        this.f20909b = i2;
        this.f20910c = function0;
    }
}
