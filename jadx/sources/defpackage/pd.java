package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyColorSelectorKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pd implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78828b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f78829c;
    public final /* synthetic */ Modifier d;

    public /* synthetic */ pd(Modifier modifier, boolean z, int i2) {
        this.d = modifier;
        this.f78829c = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f78828b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                BeautyColorSelectorKt.b(RecomposeScopeImplKt.a(1), composer, this.d, this.f78829c);
                break;
            default:
                BookingConfirmationScreenKt.b(RecomposeScopeImplKt.a(1), composer, this.d, this.f78829c);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ pd(boolean z, Modifier modifier, int i2) {
        this.f78829c = z;
        this.d = modifier;
    }
}
