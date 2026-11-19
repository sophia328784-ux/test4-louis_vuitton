package defpackage;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g10 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f69250c;
    public final /* synthetic */ VariationUiModel d;

    public /* synthetic */ g10(Function1 function1, VariationUiModel variationUiModel, int i2) {
        this.f69249b = i2;
        this.f69250c = function1;
        this.d = variationUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69249b;
        VariationUiModel variationUiModel = this.d;
        Function1 function1 = this.f69250c;
        switch (i2) {
            case 0:
                function1.invoke(variationUiModel);
                return Boolean.TRUE;
            case 1:
                function1.invoke(variationUiModel);
                return Unit.f71739a;
            default:
                function1.invoke(variationUiModel);
                return Unit.f71739a;
        }
    }
}
