package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;

/* JADX INFO: renamed from: androidx.compose.material3.ComposableSingletons$SnackbarHostKt$lambda$-1548712596$1, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public final class ComposableSingletons$SnackbarHostKt$lambda$1548712596$1 implements Function3<SnackbarData, Composer, Integer, Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ComposableSingletons$SnackbarHostKt$lambda$1548712596$1 f6726b = new ComposableSingletons$SnackbarHostKt$lambda$1548712596$1();

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        SnackbarData snackbarData = (SnackbarData) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Number) obj3).intValue();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(snackbarData) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SnackbarKt.c(snackbarData, null, null, 0L, 0L, 0L, 0L, 0L, composer, iIntValue & 14);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }
}
