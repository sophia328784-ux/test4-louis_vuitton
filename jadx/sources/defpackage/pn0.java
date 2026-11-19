package defpackage;

import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pn0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f78898c;
    public final /* synthetic */ SelectionAssetUiModel d;

    public /* synthetic */ pn0(int i2, SelectionAssetUiModel selectionAssetUiModel, Function1 function1) {
        this.f78897b = i2;
        this.f78898c = function1;
        this.d = selectionAssetUiModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f78897b;
        ((Long) obj).longValue();
        switch (i2) {
            case 0:
                this.f78898c.invoke(this.d);
                break;
            default:
                this.f78898c.invoke(this.d);
                break;
        }
        return Unit.f71739a;
    }
}
