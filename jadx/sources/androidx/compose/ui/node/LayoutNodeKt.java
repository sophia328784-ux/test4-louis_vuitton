package androidx.compose.ui.node;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import defpackage.a;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LayoutNodeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Density f9705a = DensityKt.b();

    public static final Owner a(LayoutNode layoutNode) {
        Owner owner = layoutNode.p;
        if (owner != null) {
            return owner;
        }
        throw a.s("LayoutNode should be attached to an owner");
    }
}
