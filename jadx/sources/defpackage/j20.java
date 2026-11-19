package defpackage;

import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import coil3.compose.AsyncImagePainter;
import coil3.compose.SubcomposeAsyncImageScope;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j20 implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function3 f71265c;

    public /* synthetic */ j20(Function3 function3, int i2) {
        this.f71264b = i2;
        this.f71265c = function3;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        int i2 = this.f71264b;
        Function3 function3 = this.f71265c;
        switch (i2) {
            case 0:
                SubcomposeAsyncImageScope subcomposeAsyncImageScope = (SubcomposeAsyncImageScope) obj;
                Composer composer = (Composer) obj3;
                int iIntValue = ((Integer) obj4).intValue();
                subcomposeAsyncImageScope.getClass();
                ((AsyncImagePainter.State.Loading) obj2).getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(subcomposeAsyncImageScope) ? 4 : 2;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 131) != 130)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    function3.A(subcomposeAsyncImageScope, composer, Integer.valueOf(iIntValue & 14));
                } else {
                    composer.D();
                }
                break;
            case 1:
                LazyGridItemScope lazyGridItemScope = (LazyGridItemScope) obj;
                ((Integer) obj2).intValue();
                Composer composer2 = (Composer) obj3;
                int iIntValue2 = ((Integer) obj4).intValue();
                n50 n50Var = LazyGridIntervalContent.d;
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer2.K(lazyGridItemScope) ? 4 : 2;
                }
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 131) != 130)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    function3.A(lazyGridItemScope, composer2, Integer.valueOf(iIntValue2 & 14));
                } else {
                    composer2.D();
                }
                break;
            default:
                LazyItemScope lazyItemScope = (LazyItemScope) obj;
                ((Integer) obj2).intValue();
                Composer composer3 = (Composer) obj3;
                int iIntValue3 = ((Integer) obj4).intValue();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer3.K(lazyItemScope) ? 4 : 2;
                }
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 131) != 130)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    function3.A(lazyItemScope, composer3, Integer.valueOf(iIntValue3 & 14));
                } else {
                    composer3.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
