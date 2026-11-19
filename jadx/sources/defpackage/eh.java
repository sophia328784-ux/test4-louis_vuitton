package defpackage;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.material3.SheetState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class eh implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SheetState f68857c;
    public final /* synthetic */ FiniteAnimationSpec d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ FiniteAnimationSpec f68858e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ FiniteAnimationSpec f68859f;

    public /* synthetic */ eh(SheetState sheetState, FiniteAnimationSpec finiteAnimationSpec, FiniteAnimationSpec finiteAnimationSpec2, FiniteAnimationSpec finiteAnimationSpec3, int i2) {
        this.f68856b = i2;
        this.f68857c = sheetState;
        this.d = finiteAnimationSpec;
        this.f68858e = finiteAnimationSpec2;
        this.f68859f = finiteAnimationSpec3;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68856b;
        FiniteAnimationSpec finiteAnimationSpec = this.f68859f;
        FiniteAnimationSpec finiteAnimationSpec2 = this.f68858e;
        FiniteAnimationSpec finiteAnimationSpec3 = this.d;
        SheetState sheetState = this.f68857c;
        switch (i2) {
            case 0:
                sheetState.f7212f = finiteAnimationSpec3;
                sheetState.g = finiteAnimationSpec2;
                sheetState.d = finiteAnimationSpec;
                break;
            default:
                float f2 = ModalBottomSheetKt.f7058a;
                sheetState.f7212f = finiteAnimationSpec3;
                sheetState.g = finiteAnimationSpec2;
                sheetState.d = finiteAnimationSpec;
                break;
        }
        return Unit.f71739a;
    }
}
