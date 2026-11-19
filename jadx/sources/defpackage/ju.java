package defpackage;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBottomSheetScreen;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ju implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f71468c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f71469e;

    public /* synthetic */ ju(LVModalBottomSheetState lVModalBottomSheetState, Function0 function0, MutableState mutableState, int i2) {
        this.f71467b = i2;
        this.f71468c = lVModalBottomSheetState;
        this.d = function0;
        this.f71469e = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71467b;
        MutableState mutableState = this.f71469e;
        Function0 function0 = this.d;
        LVModalBottomSheetState lVModalBottomSheetState = this.f71468c;
        switch (i2) {
            case 0:
                if (Intrinsics.c((DistantRepairFormBottomSheetScreen) mutableState.getF10755b(), DistantRepairFormBottomSheetScreen.BottomSheetExcludedRegion.f57245a) || Intrinsics.c((DistantRepairFormBottomSheetScreen) mutableState.getF10755b(), DistantRepairFormBottomSheetScreen.BottomSheetLegal.f57246a)) {
                    lVModalBottomSheetState.d();
                    function0.mo47invoke();
                } else {
                    lVModalBottomSheetState.b(new d0(25, mutableState));
                }
                break;
            case 1:
                if (Intrinsics.c((DistantRepairFormBottomSheetScreen) mutableState.getF10755b(), DistantRepairFormBottomSheetScreen.BottomSheetExcludedRegion.f57245a) || Intrinsics.c((DistantRepairFormBottomSheetScreen) mutableState.getF10755b(), DistantRepairFormBottomSheetScreen.BottomSheetLegal.f57246a)) {
                    lVModalBottomSheetState.d();
                    function0.mo47invoke();
                } else {
                    lVModalBottomSheetState.b(new d0(26, mutableState));
                }
                break;
            case 2:
                lVModalBottomSheetState.b(new na(function0, mutableState, 11));
                break;
            case 3:
                mutableState.setValue(new sq0(function0, 18));
                lVModalBottomSheetState.e();
                break;
            default:
                mutableState.setValue(new sq0(function0, 17));
                lVModalBottomSheetState.e();
                break;
        }
        return Unit.f71739a;
    }
}
