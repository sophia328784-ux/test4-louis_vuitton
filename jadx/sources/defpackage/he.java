package defpackage;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyAddToCartUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class he implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BeautyAddToCartUiModel f69687c;
    public final /* synthetic */ PermissionsViewModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f69688e;

    public /* synthetic */ he(BeautyAddToCartUiModel beautyAddToCartUiModel, PermissionsViewModel permissionsViewModel, MutableState mutableState, int i2) {
        this.f69686b = i2;
        this.f69687c = beautyAddToCartUiModel;
        this.d = permissionsViewModel;
        this.f69688e = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69686b;
        MutableState mutableState = this.f69688e;
        PermissionsViewModel permissionsViewModel = this.d;
        BeautyAddToCartUiModel beautyAddToCartUiModel = this.f69687c;
        switch (i2) {
            case 0:
                mutableState.setValue(new SkuIdUiModel(beautyAddToCartUiModel.f62125a));
                permissionsViewModel.aa((2 & 1) == 0, new ul0(8));
                break;
            default:
                mutableState.setValue(new SkuIdUiModel(beautyAddToCartUiModel.f62125a));
                permissionsViewModel.aa((2 & 1) == 0, new ul0(8));
                break;
        }
        return Unit.f71739a;
    }
}
