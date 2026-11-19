package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5152b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ComposableLambdaImpl f5153c;
    public final /* synthetic */ Object d;

    public /* synthetic */ c(ComposableLambdaImpl composableLambdaImpl, BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl) {
        this.f5153c = composableLambdaImpl;
        this.d = boxWithConstraintsScopeImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f5152b;
        Object obj3 = this.d;
        ComposableLambdaImpl composableLambdaImpl = this.f5153c;
        switch (i2) {
            case 0:
                SubcomposeMeasureScope subcomposeMeasureScope = (SubcomposeMeasureScope) obj;
                Constraints constraints = (Constraints) obj2;
                return ((MeasurePolicy) obj3).mo1measure3p2s80s(subcomposeMeasureScope, subcomposeMeasureScope.N(Unit.f71739a, new ComposableLambdaImpl(-431986394, true, new c(composableLambdaImpl, new BoxWithConstraintsScopeImpl(subcomposeMeasureScope, constraints.f10999a, null)))), constraints.f10999a);
            default:
                BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl = (BoxWithConstraintsScopeImpl) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    composableLambdaImpl.A(boxWithConstraintsScopeImpl, composer, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ c(MeasurePolicy measurePolicy, ComposableLambdaImpl composableLambdaImpl) {
        this.d = measurePolicy;
        this.f5153c = composableLambdaImpl;
    }
}
