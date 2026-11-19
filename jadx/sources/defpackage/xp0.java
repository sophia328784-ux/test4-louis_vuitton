package defpackage;

import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xp0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f81176c;
    public final /* synthetic */ PlpProductUiModel d;

    public /* synthetic */ xp0(Function1 function1, PlpProductUiModel plpProductUiModel, int i2) {
        this.f81175b = i2;
        this.f81176c = function1;
        this.d = plpProductUiModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f81175b) {
            case 0:
                this.f81176c.invoke(this.d);
                break;
            default:
                this.f81176c.invoke(this.d);
                break;
        }
        return Unit.f71739a;
    }
}
