package defpackage;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.pdp.FindInStoreBottomSheet;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class m8 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f76206c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ m8(LVModalBottomSheetState lVModalBottomSheetState, MutableState mutableState, int i2) {
        this.f76205b = i2;
        this.f76206c = lVModalBottomSheetState;
        this.d = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76205b;
        MutableState mutableState = this.d;
        LVModalBottomSheetState lVModalBottomSheetState = this.f76206c;
        switch (i2) {
            case 0:
                lVModalBottomSheetState.b(new d0(6, mutableState));
                break;
            case 1:
                lVModalBottomSheetState.b(new d0(7, mutableState));
                break;
            case 2:
                mutableState.setValue(FindInStoreBottomSheet.SearchPlace.f61012a);
                lVModalBottomSheetState.e();
                break;
            case 3:
                mutableState.setValue(FindInStoreBottomSheet.LocationBottomSheet.f61011a);
                lVModalBottomSheetState.e();
                break;
            case 4:
                lVModalBottomSheetState.b(new u00(11, mutableState));
                break;
            case 5:
                lVModalBottomSheetState.b(new u00(12, mutableState));
                break;
            case 6:
                lVModalBottomSheetState.b(new u00(16, mutableState));
                break;
            case 7:
                lVModalBottomSheetState.b(new u00(17, mutableState));
                break;
            case 8:
                lVModalBottomSheetState.b(new k40(28));
                mutableState.setValue(null);
                break;
            case 9:
                lVModalBottomSheetState.b(new k40(28));
                Function0 function0 = (Function0) mutableState.getF10755b();
                if (function0 != null) {
                    function0.mo47invoke();
                }
                mutableState.setValue(null);
                break;
            case 10:
                lVModalBottomSheetState.b(new u00(25, mutableState));
                break;
            case 11:
                lVModalBottomSheetState.b(new u00(26, mutableState));
                break;
            case 12:
                lVModalBottomSheetState.b(new k40(28));
                mutableState.setValue(null);
                break;
            case 13:
                lVModalBottomSheetState.b(new k40(28));
                Function0 function1 = (Function0) mutableState.getF10755b();
                if (function1 != null) {
                    function1.mo47invoke();
                }
                mutableState.setValue(null);
                break;
            default:
                lVModalBottomSheetState.b(new v11(6, mutableState));
                break;
        }
        return Unit.f71739a;
    }
}
