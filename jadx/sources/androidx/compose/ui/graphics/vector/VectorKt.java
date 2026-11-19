package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.PathFillType;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import kotlin.Metadata;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class VectorKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EmptyList f9173a = EmptyList.f71768b;

    static {
        StrokeCap.f8932a.getClass();
        StrokeJoin.f8935a.getClass();
        BlendMode.f8847a.getClass();
        Color.f8866b.getClass();
        PathFillType.f8908a.getClass();
    }

    public static final boolean a(ColorFilter colorFilter) {
        if (!(colorFilter instanceof BlendModeColorFilter)) {
            return colorFilter == null;
        }
        int i2 = ((BlendModeColorFilter) colorFilter).d;
        BlendMode.Companion companion = BlendMode.f8847a;
        companion.getClass();
        if (i2 != BlendMode.f8851f) {
            companion.getClass();
            if (i2 != BlendMode.d) {
                return false;
            }
        }
        return true;
    }
}
