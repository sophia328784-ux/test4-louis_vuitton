package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVNavBarKt;
import com.vuitton.android.presentation.screen.services.components.ServicesScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q60 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f79024c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79025e;

    public /* synthetic */ q60(int i2, int i3, int i4, Object obj) {
        this.f79023b = i4;
        this.f79024c = i2;
        this.f79025e = obj;
        this.d = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f79023b) {
            case 0:
                String str = (String) this.f79025e;
                ((Integer) obj2).intValue();
                int iA = RecomposeScopeImplKt.a(this.d | 1);
                LVNavBarKt.b(this.f79024c, iA, (Composer) obj, str);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(this.d | 1);
                ServicesScreenKt.b(this.f79024c, (Function0) this.f79025e, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }
}
