package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.booking.personalinfo.infoform.components.BookingLegalSectionKt;
import com.vuitton.android.presentation.screen.cart.components.NativeCartComponentsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rf implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79516b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f79517c;
    public final /* synthetic */ Function1 d;

    public /* synthetic */ rf(int i2, int i3, Function1 function1) {
        this.f79517c = i2;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (this.f79516b) {
            case 0:
                num.intValue();
                BookingLegalSectionKt.b(this.d, composer, RecomposeScopeImplKt.a(this.f79517c | 1));
                break;
            default:
                num.getClass();
                NativeCartComponentsKt.c(this.f79517c, RecomposeScopeImplKt.a(1), composer, this.d);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ rf(Function1 function1, int i2) {
        this.d = function1;
        this.f79517c = i2;
    }
}
