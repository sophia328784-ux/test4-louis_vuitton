package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public final class ComposableSingletons$BottomSheetScaffoldKt$lambda$1768941633$1 implements Function3<SnackbarHostState, Composer, Integer, Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ComposableSingletons$BottomSheetScaffoldKt$lambda$1768941633$1 f6711b = new ComposableSingletons$BottomSheetScaffoldKt$lambda$1768941633$1();

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        SnackbarHostState snackbarHostState = (SnackbarHostState) obj;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Number) obj3).intValue();
        if ((iIntValue & 6) == 0) {
            iIntValue |= composer.K(snackbarHostState) ? 4 : 2;
        }
        if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SnackbarHostKt.b(snackbarHostState, null, null, composer, iIntValue & 14, 6);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }
}
