package defpackage;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.account.myinformation.components.MyInformationBottomSheetScreen;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterBottomSheetScreen;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentBottomSheetScreen;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListBottomSheetScreen;
import com.vuitton.android.presentation.screen.repairs.detail.components.BottomSheetScreen;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class n8 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f76464c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ n8(LVModalBottomSheetState lVModalBottomSheetState, MutableState mutableState, int i2) {
        this.f76463b = i2;
        this.f76464c = lVModalBottomSheetState;
        this.d = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76463b;
        MutableState mutableState = this.d;
        LVModalBottomSheetState lVModalBottomSheetState = this.f76464c;
        switch (i2) {
            case 0:
                AssessmentBottomSheetScreen assessmentBottomSheetScreen = (AssessmentBottomSheetScreen) obj;
                assessmentBottomSheetScreen.getClass();
                mutableState.setValue(assessmentBottomSheetScreen);
                lVModalBottomSheetState.e();
                break;
            case 1:
                AssessmentBottomSheetScreen assessmentBottomSheetScreen2 = (AssessmentBottomSheetScreen) obj;
                assessmentBottomSheetScreen2.getClass();
                mutableState.setValue(assessmentBottomSheetScreen2);
                lVModalBottomSheetState.e();
                break;
            case 2:
                DistantRepairFormBottomSheetScreen distantRepairFormBottomSheetScreen = (DistantRepairFormBottomSheetScreen) obj;
                distantRepairFormBottomSheetScreen.getClass();
                mutableState.setValue(distantRepairFormBottomSheetScreen);
                lVModalBottomSheetState.e();
                break;
            case 3:
                DistantRepairFormBottomSheetScreen distantRepairFormBottomSheetScreen2 = (DistantRepairFormBottomSheetScreen) obj;
                distantRepairFormBottomSheetScreen2.getClass();
                mutableState.setValue(distantRepairFormBottomSheetScreen2);
                lVModalBottomSheetState.e();
                break;
            case 4:
                NativeRegisterBottomSheetScreen nativeRegisterBottomSheetScreen = (NativeRegisterBottomSheetScreen) obj;
                nativeRegisterBottomSheetScreen.getClass();
                mutableState.setValue(nativeRegisterBottomSheetScreen);
                lVModalBottomSheetState.e();
                break;
            case 5:
                OsaListBottomSheetScreen osaListBottomSheetScreen = (OsaListBottomSheetScreen) obj;
                osaListBottomSheetScreen.getClass();
                mutableState.setValue(osaListBottomSheetScreen);
                lVModalBottomSheetState.e();
                break;
            case 6:
                BottomSheetScreen bottomSheetScreen = (BottomSheetScreen) obj;
                bottomSheetScreen.getClass();
                mutableState.setValue(bottomSheetScreen);
                lVModalBottomSheetState.e();
                break;
            case 7:
                BottomSheetScreen bottomSheetScreen2 = (BottomSheetScreen) obj;
                bottomSheetScreen2.getClass();
                mutableState.setValue(bottomSheetScreen2);
                lVModalBottomSheetState.e();
                break;
            default:
                MyInformationBottomSheetScreen myInformationBottomSheetScreen = (MyInformationBottomSheetScreen) obj;
                myInformationBottomSheetScreen.getClass();
                mutableState.setValue(myInformationBottomSheetScreen);
                lVModalBottomSheetState.e();
                break;
        }
        return Unit.f71739a;
    }
}
