package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairConfirmationComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zt implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairFormViewState f81713c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f81714e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f81715f;

    public /* synthetic */ zt(DistantRepairFormViewState distantRepairFormViewState, Function0 function0, Function0 function1, Function0 function2, int i2, int i3) {
        this.f81712b = i3;
        this.f81713c = distantRepairFormViewState;
        this.d = function0;
        this.f81714e = function1;
        this.f81715f = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f81712b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                DistantRepairConfirmationComponentKt.a(this.f81713c, this.d, this.f81714e, this.f81715f, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                DistantRepairConfirmationComponentKt.b(this.f81713c, this.d, this.f81714e, this.f81715f, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }
}
