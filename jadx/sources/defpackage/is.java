package defpackage;

import com.vuitton.android.presentation.screen.spotlight.components.SpotlightBottomStepperKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightSkuPagerKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class is implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f71197c;
    public final /* synthetic */ int d;

    public /* synthetic */ is(int i2, Function1 function1) {
        this.f71196b = 9;
        this.d = i2;
        this.f71197c = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71196b;
        int i3 = this.d;
        Function1 function1 = this.f71197c;
        switch (i2) {
            case 0:
                function1.invoke(Integer.valueOf(i3));
                break;
            case 1:
                function1.invoke(Integer.valueOf(i3));
                break;
            case 2:
                function1.invoke(Integer.valueOf(i3));
                break;
            case 3:
                function1.invoke(Integer.valueOf(i3));
                break;
            case 4:
                function1.invoke(Integer.valueOf(i3));
                break;
            case 5:
                function1.invoke(Integer.valueOf(i3));
                break;
            case 6:
                function1.invoke(Integer.valueOf(i3 - 1));
                break;
            case 7:
                function1.invoke(Integer.valueOf(i3 + 1));
                break;
            case 8:
                function1.invoke(Integer.valueOf(i3));
                break;
            case 9:
                float f2 = SpotlightBottomStepperKt.f64585a;
                if (i3 > 0) {
                    function1.invoke(Integer.valueOf(i3 - 1));
                }
                break;
            case 10:
                float f3 = SpotlightBottomStepperKt.f64585a;
                function1.invoke(Integer.valueOf(i3));
                break;
            case 11:
                float f4 = SpotlightSkuPagerKt.f64617a;
                function1.invoke(Integer.valueOf(i3));
                break;
            default:
                function1.invoke(Integer.valueOf(i3));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ is(int i2, int i3, Function1 function1) {
        this.f71196b = i3;
        this.f71197c = function1;
        this.d = i2;
    }
}
