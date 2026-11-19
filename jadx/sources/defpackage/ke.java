package defpackage;

import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ke implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModel f71628c;

    public /* synthetic */ ke(BeautyVtoViewModel beautyVtoViewModel, int i2) {
        this.f71627b = i2;
        this.f71628c = beautyVtoViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f71627b) {
            case 0:
                this.f71628c.ta(null, true);
                break;
            default:
                this.f71628c.ta(null, false);
                break;
        }
        return Unit.f71739a;
    }
}
