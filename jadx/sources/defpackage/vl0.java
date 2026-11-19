package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.booking.pass.components.PassColumnInfoKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderScanScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vl0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80602b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f80603c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f80604e;

    public /* synthetic */ vl0(String str, String str2, boolean z, int i2) {
        this.d = str;
        this.f80604e = str2;
        this.f80603c = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80602b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                PassColumnInfoKt.a(RecomposeScopeImplKt.a(1), composer, this.d, this.f80604e, this.f80603c);
                break;
            default:
                ShadeFinderScanScreenKt.a(RecomposeScopeImplKt.a(1), composer, this.d, this.f80604e, this.f80603c);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ vl0(boolean z, String str, String str2, int i2) {
        this.f80603c = z;
        this.d = str;
        this.f80604e = str2;
    }
}
