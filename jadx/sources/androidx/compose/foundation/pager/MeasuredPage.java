package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.LayoutDirection;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Landroidx/compose/foundation/pager/MeasuredPage;", "Landroidx/compose/foundation/pager/PageInfo;", "", "index", "size", "", "Landroidx/compose/ui/layout/Placeable;", "placeables", "Landroidx/compose/ui/unit/IntOffset;", "visualOffset", "", ConfigurationName.KEY, "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "Landroidx/compose/ui/Alignment$Horizontal;", "horizontalAlignment", "Landroidx/compose/ui/Alignment$Vertical;", "verticalAlignment", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutDirection", "", "reverseLayout", "<init>", "(IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MeasuredPage implements PageInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5700a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f5702c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f5703e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Alignment.Horizontal f5704f;
    public final Alignment.Vertical g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LayoutDirection f5705h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f5706i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f5707j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f5708k;
    public final int[] l;
    public int m;
    public int n;

    public MeasuredPage(int i2, int i3, List list, long j2, Object obj, Orientation orientation, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5700a = i2;
        this.f5701b = i3;
        this.f5702c = list;
        this.d = j2;
        this.f5703e = obj;
        this.f5704f = horizontal;
        this.g = vertical;
        this.f5705h = layoutDirection;
        this.f5706i = z;
        this.f5707j = orientation == Orientation.Vertical;
        int size = list.size();
        int iMax = 0;
        for (int i4 = 0; i4 < size; i4++) {
            Placeable placeable = (Placeable) list.get(i4);
            iMax = Math.max(iMax, !this.f5707j ? placeable.f9549c : placeable.f9548b);
        }
        this.f5708k = iMax;
        this.l = new int[this.f5702c.size() * 2];
        this.n = Integer.MIN_VALUE;
    }

    public final void a(int i2) {
        this.m += i2;
        int[] iArr = this.l;
        int length = iArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            boolean z = this.f5707j;
            if ((z && i3 % 2 == 1) || (!z && i3 % 2 == 0)) {
                iArr[i3] = iArr[i3] + i2;
            }
        }
    }

    public final void b(int i2, int i3, int i4) {
        int i5;
        this.m = i2;
        boolean z = this.f5707j;
        this.n = z ? i4 : i3;
        List list = this.f5702c;
        int size = list.size();
        for (int i6 = 0; i6 < size; i6++) {
            Placeable placeable = (Placeable) list.get(i6);
            int i7 = i6 * 2;
            int[] iArr = this.l;
            if (z) {
                Alignment.Horizontal horizontal = this.f5704f;
                if (horizontal == null) {
                    throw o60.u("null horizontalAlignment");
                }
                iArr[i7] = horizontal.a(placeable.f9548b, i3, this.f5705h);
                iArr[i7 + 1] = i2;
                i5 = placeable.f9549c;
            } else {
                iArr[i7] = i2;
                int i8 = i7 + 1;
                Alignment.Vertical vertical = this.g;
                if (vertical == null) {
                    throw o60.u("null verticalAlignment");
                }
                iArr[i8] = vertical.a(placeable.f9549c, i4);
                i5 = placeable.f9548b;
            }
            i2 += i5;
        }
    }

    @Override // androidx.compose.foundation.pager.PageInfo
    /* JADX INFO: renamed from: getIndex, reason: from getter */
    public final int getF5700a() {
        return this.f5700a;
    }

    @Override // androidx.compose.foundation.pager.PageInfo
    /* JADX INFO: renamed from: getOffset, reason: from getter */
    public final int getM() {
        return this.m;
    }
}
