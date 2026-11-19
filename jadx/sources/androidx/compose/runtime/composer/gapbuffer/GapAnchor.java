package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.Anchor;
import defpackage.a;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;", "Landroidx/compose/runtime/Anchor;", "", "loc", "<init>", "(I)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GapAnchor implements Anchor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f8187a;

    public GapAnchor(int i2) {
        this.f8187a = i2;
    }

    @Override // androidx.compose.runtime.Anchor
    public final boolean a() {
        return this.f8187a != Integer.MIN_VALUE;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("{ location = ");
        return a.i(this.f8187a, " }", sb);
    }
}
