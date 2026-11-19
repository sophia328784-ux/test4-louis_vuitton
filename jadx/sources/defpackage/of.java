package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoNavDisplayKt;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.infoform.components.BookingInfoFormComposableKt;
import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class of implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BookingPersonalInfoViewModel f76768c;
    public final /* synthetic */ PrebookSummaryViewModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f76769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f76770f;
    public final /* synthetic */ Function0 g;

    public /* synthetic */ of(BookingPersonalInfoViewModel bookingPersonalInfoViewModel, PrebookSummaryViewModel prebookSummaryViewModel, SnackbarHostState snackbarHostState, Function0 function0, Function0 function1, int i2, int i3) {
        this.f76767b = i3;
        this.f76768c = bookingPersonalInfoViewModel;
        this.d = prebookSummaryViewModel;
        this.f76769e = snackbarHostState;
        this.f76770f = function0;
        this.g = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f76767b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                BookingInfoFormComposableKt.a(this.f76768c, this.d, this.f76769e, this.f76770f, this.g, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(385);
                BookingPersonalInfoNavDisplayKt.a(this.f76768c, this.d, this.f76769e, this.f76770f, this.g, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }
}
