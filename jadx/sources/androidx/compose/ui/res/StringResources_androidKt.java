package androidx.compose.ui.res;

import android.content.res.Resources;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class StringResources_androidKt {
    public static final String a(int i2, int i3, Object[] objArr, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return ((Resources) composer.k(AndroidCompositionLocals_androidKt.f9937c)).getQuantityString(i2, i3, Arrays.copyOf(objArr, objArr.length));
    }

    public static final String b(int i2, Object[] objArr, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return ((Resources) composer.k(AndroidCompositionLocals_androidKt.f9937c)).getString(i2, Arrays.copyOf(objArr, objArr.length));
    }

    public static final String c(Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return ((Resources) composer.k(AndroidCompositionLocals_androidKt.f9937c)).getString(i2);
    }
}
