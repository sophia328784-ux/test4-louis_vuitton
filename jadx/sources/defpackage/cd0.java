package defpackage;

import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.material3.SheetState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class cd0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SheetState f21132c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ cd0(SheetState sheetState, Function0 function0, int i2) {
        this.f21131b = i2;
        this.f21132c = sheetState;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f21131b;
        Function0 function0 = this.d;
        SheetState sheetState = this.f21132c;
        float f2 = ModalBottomSheetKt.f7058a;
        switch (i2) {
            case 0:
                if (!sheetState.e()) {
                    function0.mo47invoke();
                }
                break;
            default:
                if (!sheetState.e()) {
                    function0.mo47invoke();
                }
                break;
        }
        return Unit.f71739a;
    }
}
