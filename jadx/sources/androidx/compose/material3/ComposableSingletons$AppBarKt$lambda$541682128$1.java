package androidx.compose.material3;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;

/* JADX INFO: renamed from: androidx.compose.material3.ComposableSingletons$AppBarKt$lambda$-541682128$1, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public final class ComposableSingletons$AppBarKt$lambda$541682128$1 implements Function3<RowScope, Composer, Integer, Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ComposableSingletons$AppBarKt$lambda$541682128$1 f6689b = new ComposableSingletons$AppBarKt$lambda$541682128$1();

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Composer composer = (Composer) obj2;
        int iIntValue = ((Number) obj3).intValue();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }
}
