package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.ComposerKt;
import defpackage.os;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class GapAnchorKt {
    public static final GapAnchor a(Anchor anchor) {
        GapAnchor gapAnchor = anchor instanceof GapAnchor ? (GapAnchor) anchor : null;
        if (gapAnchor != null) {
            return gapAnchor;
        }
        ComposerKt.b("Inconsistent composition");
        os.d();
        return null;
    }
}
