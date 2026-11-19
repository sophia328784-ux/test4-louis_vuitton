package defpackage;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class i71 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f69899c;
    public final /* synthetic */ WishlistItemUiModel d;

    public /* synthetic */ i71(Function1 function1, WishlistItemUiModel wishlistItemUiModel, int i2) {
        this.f69898b = i2;
        this.f69899c = function1;
        this.d = wishlistItemUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f69898b) {
            case 0:
                this.f69899c.invoke(new SkuIdUiModel(this.d.f65740b));
                break;
            default:
                this.f69899c.invoke(new SkuIdUiModel(this.d.f65740b));
                break;
        }
        return Unit.f71739a;
    }
}
