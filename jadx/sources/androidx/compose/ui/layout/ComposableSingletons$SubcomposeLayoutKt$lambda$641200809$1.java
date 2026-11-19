package androidx.compose.ui.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "(Landroidx/compose/runtime/Composer;I)V"}, k = 3, mv = {2, 1, 0}, xi = 48)
public final class ComposableSingletons$SubcomposeLayoutKt$lambda$641200809$1 extends Lambda implements Function2<Composer, Integer, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ComposableSingletons$SubcomposeLayoutKt$lambda$641200809$1 f9446c = new ComposableSingletons$SubcomposeLayoutKt$lambda$641200809$1(2);

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int iIntValue = ((Number) obj2).intValue();
        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }
}
