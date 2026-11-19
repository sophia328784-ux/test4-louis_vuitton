package defpackage;

import com.vuitton.android.presentation.screen.spotlight.components.SpotlightBottomStepperKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class s01 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f79669c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f79670e;

    public /* synthetic */ s01(int i2, int i3, Function1 function1, int i4) {
        this.f79668b = i4;
        this.f79669c = i2;
        this.d = i3;
        this.f79670e = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79668b;
        Function1 function1 = this.f79670e;
        int i3 = this.d;
        int i4 = this.f79669c;
        switch (i2) {
            case 0:
                float f2 = SpotlightBottomStepperKt.f64585a;
                if (i4 < i3) {
                    function1.invoke(Integer.valueOf(i4 + 1));
                }
                break;
            case 1:
                int i5 = i4 - 1;
                if (i5 >= 0 && i5 < i3) {
                    function1.invoke(Integer.valueOf(i5));
                }
                break;
            default:
                int i6 = i4 + 1;
                if (i6 >= 0 && i6 < i3) {
                    function1.invoke(Integer.valueOf(i6));
                }
                break;
        }
        return Unit.f71739a;
    }
}
