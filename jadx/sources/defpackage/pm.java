package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.compose.components.CollapsingDetailListKt;
import com.vuitton.android.presentation.screen.booking.summary.components.SummaryStickyBottomViewKt;
import com.vuitton.android.presentation.screen.portal.components.PortalSliderComponentKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pm implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f78885c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f78886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f78887f;
    public final /* synthetic */ int g;

    public /* synthetic */ pm(Modifier modifier, boolean z, int i2, String str, Function0 function0, int i3) {
        this.f78884b = 2;
        this.f78885c = modifier;
        this.f78886e = z;
        this.g = i2;
        this.d = str;
        this.f78887f = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f78884b;
        int i3 = this.g;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                CollapsingDetailListKt.a(this.f78885c, this.d, this.f78886e, this.f78887f, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 1:
                ((Integer) obj2).intValue();
                PortalSliderComponentKt.d(this.f78885c, this.d, this.f78886e, this.f78887f, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                SummaryStickyBottomViewKt.a(this.g, iA, (Composer) obj, this.f78885c, this.d, this.f78887f, this.f78886e);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ pm(Modifier modifier, String str, boolean z, Function0 function0, int i2, int i3) {
        this.f78884b = i3;
        this.f78885c = modifier;
        this.d = str;
        this.f78886e = z;
        this.f78887f = function0;
        this.g = i2;
    }
}
