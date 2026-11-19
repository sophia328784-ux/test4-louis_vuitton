package defpackage;

import androidx.compose.foundation.text.input.internal.LegacyPlatformTextInputServiceAdapter;
import androidx.compose.material3.ExposedDropdownMenuKt;
import androidx.compose.ui.focus.FocusRequester;
import com.airbnb.lottie.compose.LottieAnimationState;
import com.dynatrace.android.compose.ToggleableComposeCallback_1_7;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hf implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f69692c;
    public final /* synthetic */ Object d;

    public /* synthetic */ hf(ToggleableComposeCallback_1_7 toggleableComposeCallback_1_7, boolean z) {
        this.f69691b = 4;
        this.d = toggleableComposeCallback_1_7;
        this.f69692c = z;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69691b;
        boolean z = this.f69692c;
        Object obj = this.d;
        switch (i2) {
            case 0:
                BookingListViewModelImpl bookingListViewModelImpl = (BookingListViewModelImpl) obj;
                if (!z) {
                    bookingListViewModelImpl.Ac(null);
                }
                return Unit.f71739a;
            case 1:
                LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) obj;
                if (z) {
                    legacyPlatformTextInputServiceAdapter.i();
                }
                return Unit.f71739a;
            case 2:
                FocusRequester focusRequester = (FocusRequester) obj;
                int i3 = ExposedDropdownMenuKt.f6925a;
                if (z) {
                    FocusRequester.a(focusRequester);
                }
                return Unit.f71739a;
            case 3:
                return Float.valueOf(z ? 1.0f : ((Number) ((LottieAnimationState) obj).getF10755b()).floatValue());
            default:
                ((ToggleableComposeCallback_1_7) obj).f27635b.invoke(Boolean.valueOf(z));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ hf(boolean z, Object obj, int i2) {
        this.f69691b = i2;
        this.f69692c = z;
        this.d = obj;
    }
}
