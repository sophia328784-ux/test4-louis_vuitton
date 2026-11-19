package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0011\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/input/pointer/NodeParent;", "", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class NodeParent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableVector f9303a = new MutableVector(new Node[16], 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableObjectList f9304b = new MutableObjectList(10);

    public boolean a(LongSparseArray longSparseArray, LayoutCoordinates layoutCoordinates, InternalPointerEvent internalPointerEvent, boolean z) {
        MutableVector mutableVector = this.f9303a;
        Object[] objArr = mutableVector.f8165b;
        int i2 = mutableVector.d;
        boolean z2 = false;
        for (int i3 = 0; i3 < i2; i3++) {
            z2 = ((Node) objArr[i3]).a(longSparseArray, layoutCoordinates, internalPointerEvent, z) || z2;
        }
        return z2;
    }

    public void b(InternalPointerEvent internalPointerEvent) {
        MutableVector mutableVector = this.f9303a;
        int i2 = mutableVector.d;
        while (true) {
            i2--;
            if (-1 >= i2) {
                return;
            }
            if (((Node) mutableVector.f8165b[i2]).d.f9401a == 0) {
                mutableVector.o(i2);
            }
        }
    }
}
