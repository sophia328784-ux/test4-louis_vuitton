package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/platform/NestedScrollInteropConnection;", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "Landroid/view/View;", "view", "", "minFlingVelocity", "<init>", "(Landroid/view/View;F)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NestedScrollInteropConnection implements NestedScrollConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f10128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NestedScrollingChildHelper f10129c;
    public final int[] d;

    public NestedScrollInteropConnection(View view, float f2) {
        this.f10128b = view;
        NestedScrollingChildHelper nestedScrollingChildHelper = new NestedScrollingChildHelper(view);
        nestedScrollingChildHelper.g(true);
        this.f10129c = nestedScrollingChildHelper;
        this.d = new int[2];
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        view.setNestedScrollingEnabled(true);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long A0(int i2, long j2, long j3) {
        if (!this.f10129c.h(NestedScrollInteropConnectionKt.a(j3), NestedScrollInteropConnectionKt.c(i2))) {
            Offset.f8806b.getClass();
            return 0L;
        }
        int[] iArr = this.d;
        ArraysKt.s(0, 0, 6, iArr);
        int iD = NestedScrollInteropConnectionKt.d(Float.intBitsToFloat((int) (j3 >> 32)));
        int iD2 = NestedScrollInteropConnectionKt.d(Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax)));
        this.f10129c.d(NestedScrollInteropConnectionKt.d(Float.intBitsToFloat((int) (j2 >> 32))), NestedScrollInteropConnectionKt.d(Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & j2))), iD, iD2, null, NestedScrollInteropConnectionKt.c(i2), this.d);
        return NestedScrollInteropConnectionKt.b(iD, j3, iArr, iD2);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final Object P(long j2, long j3, Continuation continuation) {
        NestedScrollingChildHelper nestedScrollingChildHelper = this.f10129c;
        if (nestedScrollingChildHelper.f(0)) {
            nestedScrollingChildHelper.i(0);
        }
        if (nestedScrollingChildHelper.f(1)) {
            nestedScrollingChildHelper.i(1);
        }
        Velocity.f11029b.getClass();
        return new Velocity(0L);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long l0(int i2, long j2) {
        if (!this.f10129c.h(NestedScrollInteropConnectionKt.a(j2), NestedScrollInteropConnectionKt.c(i2))) {
            Offset.f8806b.getClass();
            return 0L;
        }
        int[] iArr = this.d;
        ArraysKt.s(0, 0, 6, iArr);
        int iD = NestedScrollInteropConnectionKt.d(Float.intBitsToFloat((int) (j2 >> 32)));
        int iD2 = NestedScrollInteropConnectionKt.d(Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & j2)));
        this.f10129c.c(iD, iD2, this.d, null, NestedScrollInteropConnectionKt.c(i2));
        return NestedScrollInteropConnectionKt.b(iD, j2, iArr, iD2);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final Object y1(long j2, Continuation continuation) {
        float fB = Velocity.b(j2) * (-1.0f);
        float fC = Velocity.c(j2) * (-1.0f);
        NestedScrollingChildHelper nestedScrollingChildHelper = this.f10129c;
        if (!nestedScrollingChildHelper.b(fB, fC) && !nestedScrollingChildHelper.a(Velocity.b(j2) * (-1.0f), Velocity.c(j2) * (-1.0f), true)) {
            Velocity.f11029b.getClass();
            j2 = 0;
        }
        return new Velocity(j2);
    }
}
