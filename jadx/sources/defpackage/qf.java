package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.booking.details.components.BookingInfoRowKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpHeaderKt;
import com.vuitton.android.presentation.screen.plp.components.composables.PLPHeaderKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qf implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f79081c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f79082e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f79083f;
    public final /* synthetic */ Function0 g;

    public /* synthetic */ qf(Modifier modifier, String str, String str2, boolean z, Function0 function0, int i2, int i3) {
        this.f79080b = i3;
        this.f79081c = modifier;
        this.d = str;
        this.f79082e = str2;
        this.f79083f = z;
        this.g = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f79080b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                BookingInfoRowKt.a(this.f79081c, this.d, this.f79082e, this.f79083f, this.g, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                PLPHeaderKt.a(this.f79081c, this.d, this.f79082e, this.f79083f, this.g, (Composer) obj, iA2);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(1);
                ThematicPlpHeaderKt.b(this.f79081c, this.d, this.f79082e, this.f79083f, this.g, (Composer) obj, iA3);
                break;
        }
        return Unit.f71739a;
    }
}
