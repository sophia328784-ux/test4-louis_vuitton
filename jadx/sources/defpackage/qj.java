package defpackage;

import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qj implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f79098c;
    public final /* synthetic */ CarouselSItemUiModel d;

    public /* synthetic */ qj(Function1 function1, CarouselSItemUiModel carouselSItemUiModel, int i2) {
        this.f79097b = i2;
        this.f79098c = function1;
        this.d = carouselSItemUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f79097b) {
            case 0:
                this.f79098c.invoke(this.d);
                break;
            case 1:
                this.f79098c.invoke(this.d);
                break;
            default:
                this.f79098c.invoke(new SkuIdUiModel(this.d.f50796a));
                break;
        }
        return Unit.f71739a;
    }
}
