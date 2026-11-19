package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.presentation.screen.booking.details.components.BookingCarouselBackgroundKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ye implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81349b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f81350c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f81351e;

    public /* synthetic */ ye(Modifier modifier, int i2, String str, int i3) {
        this.f81350c = modifier;
        this.d = i2;
        this.f81351e = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81349b;
        String str = this.f81351e;
        int i3 = this.d;
        Modifier modifier = this.f81350c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                BookingCarouselBackgroundKt.a(RecomposeScopeImplKt.a(i3 | 1), composer, modifier, str);
                break;
            default:
                LVEmptyViewKt.b(i3, RecomposeScopeImplKt.a(1), composer, modifier, str);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ye(Modifier modifier, String str, int i2) {
        this.f81350c = modifier;
        this.f81351e = str;
        this.d = i2;
    }
}
