package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;

/* JADX INFO: loaded from: classes.dex */
public abstract class BlendModeColorFilterCompat {
    public static BlendModeColorFilter a(int i2, BlendModeCompat blendModeCompat) {
        BlendMode blendModeA = BlendModeUtils$Api29Impl.a(blendModeCompat);
        if (blendModeA != null) {
            return new BlendModeColorFilter(i2, blendModeA);
        }
        return null;
    }
}
