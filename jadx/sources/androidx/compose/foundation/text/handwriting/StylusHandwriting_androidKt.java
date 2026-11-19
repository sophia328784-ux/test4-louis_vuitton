package androidx.compose.foundation.text.handwriting;

import android.os.Build;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class StylusHandwriting_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f6175a;

    static {
        f6175a = Build.VERSION.SDK_INT >= 34;
    }
}
