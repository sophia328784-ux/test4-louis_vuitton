package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import com.google.ar.core.ImageMetadata;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: renamed from: androidx.compose.material3.ComposableSingletons$ModalBottomSheet_androidKt$lambda$-1294623166$1, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public final class ComposableSingletons$ModalBottomSheet_androidKt$lambda$1294623166$1 implements Function2<Composer, Integer, Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ComposableSingletons$ModalBottomSheet_androidKt$lambda$1294623166$1 f6714b = new ComposableSingletons$ModalBottomSheet_androidKt$lambda$1294623166$1();

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int iIntValue = ((Number) obj2).intValue();
        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            BottomSheetDefaults.f6575a.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 0L, composer, ImageMetadata.EDGE_MODE);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }
}
