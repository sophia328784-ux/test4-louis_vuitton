package defpackage;

import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wm0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80899b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f80900c;
    public final /* synthetic */ ReinsuranceUiModel d;

    public /* synthetic */ wm0(Function1 function1, ReinsuranceUiModel reinsuranceUiModel, int i2) {
        this.f80899b = i2;
        this.f80900c = function1;
        this.d = reinsuranceUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f80899b) {
            case 0:
                this.f80900c.invoke(this.d);
                break;
            default:
                this.f80900c.invoke(this.d);
                break;
        }
        return Unit.f71739a;
    }
}
