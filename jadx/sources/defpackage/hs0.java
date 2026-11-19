package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailFollowUpBffKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailFollowUpKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hs0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f69774c;
    public final /* synthetic */ float d;

    public /* synthetic */ hs0(String str, float f2, int i2, int i3) {
        this.f69773b = i3;
        this.f69774c = str;
        this.d = f2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69773b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                RepairDetailFollowUpBffKt.a(this.d, RecomposeScopeImplKt.a(1), composer, this.f69774c);
                break;
            case 1:
                RepairDetailFollowUpBffKt.b(this.d, RecomposeScopeImplKt.a(1), composer, this.f69774c);
                break;
            case 2:
                RepairDetailFollowUpBffKt.c(this.d, RecomposeScopeImplKt.a(1), composer, this.f69774c);
                break;
            case 3:
                RepairDetailFollowUpKt.a(this.d, RecomposeScopeImplKt.a(1), composer, this.f69774c);
                break;
            case 4:
                RepairDetailFollowUpKt.c(this.d, RecomposeScopeImplKt.a(1), composer, this.f69774c);
                break;
            default:
                RepairDetailFollowUpKt.b(this.d, RecomposeScopeImplKt.a(1), composer, this.f69774c);
                break;
        }
        return Unit.f71739a;
    }
}
