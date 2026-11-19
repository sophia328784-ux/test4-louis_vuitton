package androidx.compose.ui.graphics;

import android.graphics.Shader;
import android.os.Build;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidTileMode_androidKt {
    public static final Shader.TileMode a(int i2) {
        TileMode.f8938a.getClass();
        if (i2 == 0) {
            return Shader.TileMode.CLAMP;
        }
        if (i2 == TileMode.f8939b) {
            return Shader.TileMode.REPEAT;
        }
        if (i2 == TileMode.f8940c) {
            return Shader.TileMode.MIRROR;
        }
        if (i2 == TileMode.d && Build.VERSION.SDK_INT >= 31) {
            return TileModeVerificationHelper.a();
        }
        return Shader.TileMode.CLAMP;
    }
}
