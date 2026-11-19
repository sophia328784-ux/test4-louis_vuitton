package androidx.compose.ui.node;

import androidx.compose.ui.layout.IntrinsicMeasureScope;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class MeasureScopeWithLayoutNodeKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9767a;

        static {
            int[] iArr = new int[LayoutNode.LayoutState.values().length];
            try {
                iArr[LayoutNode.LayoutState.LookaheadMeasuring.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutNode.LayoutState.LookaheadLayingOut.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LayoutNode.LayoutState.Idle.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f9767a = iArr;
        }
    }

    public static final ArrayList a(IntrinsicMeasureScope intrinsicMeasureScope) {
        intrinsicMeasureScope.getClass();
        LayoutNode q = ((MeasureScopeWithLayoutNode) intrinsicMeasureScope).getQ();
        boolean zB = b(q);
        List listI = q.I();
        ArrayList arrayList = new ArrayList(listI.size());
        int size = listI.size();
        for (int i2 = 0; i2 < size; i2++) {
            LayoutNode layoutNode = (LayoutNode) listI.get(i2);
            arrayList.add(zB ? layoutNode.F() : layoutNode.G());
        }
        return arrayList;
    }

    public static final boolean b(LayoutNode layoutNode) {
        int i2 = WhenMappings.f9767a[layoutNode.I.d.ordinal()];
        if (i2 == 1 || i2 == 2) {
            return true;
        }
        if (i2 != 3 && i2 != 4) {
            if (i2 == 5) {
                LayoutNode layoutNodeO = layoutNode.O();
                if (layoutNodeO != null) {
                    return b(layoutNodeO);
                }
                md.n("no parent for idle node");
                return false;
            }
            v40.g();
        }
        return false;
    }
}
