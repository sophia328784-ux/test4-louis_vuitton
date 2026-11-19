package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5573c;
    public final /* synthetic */ Object d;

    public /* synthetic */ b(Object obj, Object obj2, int i2) {
        this.f5572b = i2;
        this.f5573c = obj;
        this.d = obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f5572b;
        Object obj3 = this.d;
        Object obj4 = this.f5573c;
        int i3 = 0;
        switch (i2) {
            case 0:
                LazyLayoutItemContentFactory lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) obj4;
                LazyLayoutItemContentFactory.CachedItemContent cachedItemContent = (LazyLayoutItemContentFactory.CachedItemContent) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) lazyLayoutItemContentFactory.f5476b.mo47invoke();
                    int iC = cachedItemContent.f5480c;
                    Object obj5 = cachedItemContent.f5478a;
                    if ((iC >= lazyLayoutItemProvider.b() || !lazyLayoutItemProvider.d(iC).equals(obj5)) && (iC = lazyLayoutItemProvider.c(obj5)) != -1) {
                        cachedItemContent.f5480c = iC;
                    }
                    int i4 = iC;
                    if (i4 != -1) {
                        composer.L(-1664741271);
                        LazyLayoutItemContentFactoryKt.a(lazyLayoutItemProvider, lazyLayoutItemContentFactory.f5475a, i4, cachedItemContent.f5478a, composer, 0);
                        composer.F();
                    } else {
                        composer.L(-1664505826);
                        composer.F();
                    }
                    boolean zY = composer.y(cachedItemContent);
                    Object objX = composer.x();
                    if (zY || objX == Composer.Companion.f7939a) {
                        objX = new a(cachedItemContent, i3);
                        composer.q(objX);
                    }
                    EffectsKt.c(obj5, (Function1) objX, composer);
                } else {
                    composer.D();
                }
                break;
            default:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                LazySaveableStateHolder lazySaveableStateHolder = (LazySaveableStateHolder) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    composableLambdaImpl.A(lazySaveableStateHolder, composer2, 0);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
