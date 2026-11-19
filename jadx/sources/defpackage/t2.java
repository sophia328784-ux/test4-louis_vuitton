package defpackage;

import androidx.compose.foundation.pager.PagerState;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class t2 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f79948c;
    public final /* synthetic */ PagerState d;

    public /* synthetic */ t2(Function1 function1, PagerState pagerState, int i2) {
        this.f79947b = i2;
        this.f79948c = function1;
        this.d = pagerState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79947b;
        PagerState pagerState = this.d;
        Function1 function1 = this.f79948c;
        switch (i2) {
            case 0:
                function1.invoke(Integer.valueOf(pagerState.k()));
                break;
            default:
                float f2 = SpotlightScreenKt.f64602a;
                function1.invoke(Integer.valueOf(pagerState.k()));
                break;
        }
        return Unit.f71739a;
    }
}
