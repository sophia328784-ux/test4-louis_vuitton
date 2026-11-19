package defpackage;

import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.models.CartTrackingUiModel;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class te0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModel f80052c;

    public /* synthetic */ te0(NativeCartViewModel nativeCartViewModel, int i2) {
        this.f80051b = i2;
        this.f80052c = nativeCartViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80051b;
        NativeCartViewModel nativeCartViewModel = this.f80052c;
        switch (i2) {
            case 0:
                nativeCartViewModel.fa(GiftOption.None.f66980a);
                break;
            default:
                nativeCartViewModel.W9(CartTrackingUiModel.OpenMyLV.f55171a);
                break;
        }
        return Unit.f71739a;
    }
}
