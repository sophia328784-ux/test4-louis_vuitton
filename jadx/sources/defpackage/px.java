package defpackage;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Alignment;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class px implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f78943c;

    public /* synthetic */ px(int i2, int i3) {
        this.f78942b = i3;
        this.f78943c = i2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f78942b;
        int i3 = this.f78943c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (i3 != 0) {
                        SpacerKt.a(composer, SizeKt.f(pq0.j(-460650520, composer, "FeedDiscoverSuccessScreen$lambda$4$0$1$0"), LVAppDesignKitTheme.l(composer).m));
                        composer.F();
                    } else {
                        composer.L(-460540966);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                break;
            default:
                BoxScope boxScope = (BoxScope) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                boxScope.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer2.K(boxScope) ? 4 : 2;
                }
                if (composer2.p(1 & iIntValue2, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    String strK = pq0.k(i3, "+");
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PdpVarianceMoreIndicator__orJrPs$lambda$3");
                    Alignment.f8582a.getClass();
                    TextKt.c(strK, boxScope.g(dTFunctionNameModifier, Alignment.Companion.f8587f), LVAppDesignKitTheme.c(composer2).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).l, composer2, 0, 0, 131064);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
