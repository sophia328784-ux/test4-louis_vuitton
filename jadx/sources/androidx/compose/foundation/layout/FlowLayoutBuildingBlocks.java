package androidx.compose.foundation.layout;

import androidx.collection.IntIntPair;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.crypto.CryptoServicesPermission;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0001\u0018\u00002\u00020\u0001:\u0002\r\u000eB7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;", "", "", "maxItemsInMainAxis", "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;", "overflow", "Landroidx/compose/foundation/layout/OrientationIndependentConstraints;", CryptoServicesPermission.CONSTRAINTS, "maxLines", "mainAxisSpacing", "crossAxisSpacing", "<init>", "(ILandroidx/compose/foundation/layout/FlowLayoutOverflowState;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "WrapInfo", "WrapEllipsisInfo", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FlowLayoutBuildingBlocks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FlowLayoutOverflowState f4968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f4969c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f4970e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f4971f;

    public FlowLayoutBuildingBlocks(int i2, FlowLayoutOverflowState flowLayoutOverflowState, long j2, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4967a = i2;
        this.f4968b = flowLayoutOverflowState;
        this.f4969c = j2;
        this.d = i3;
        this.f4970e = i4;
        this.f4971f = i5;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x004c  */
    public final WrapEllipsisInfo a(WrapInfo wrapInfo, boolean z, int i2, int i3, int i4, int i5) {
        WrapEllipsisInfo wrapEllipsisInfo;
        Measurable measurable;
        IntIntPair intIntPair;
        Placeable placeable;
        if (wrapInfo.f4976b) {
            FlowLayoutOverflowState flowLayoutOverflowState = this.f4968b;
            int i6 = FlowLayoutOverflowState.WhenMappings.f4991a[flowLayoutOverflowState.f4984a.ordinal()];
            boolean z2 = true;
            if (i6 == 1 || i6 == 2) {
                wrapEllipsisInfo = null;
            } else {
                if (i6 != 3 && i6 != 4) {
                    v40.g();
                    return null;
                }
                if (z) {
                    measurable = flowLayoutOverflowState.d;
                    intIntPair = flowLayoutOverflowState.f4989h;
                    placeable = flowLayoutOverflowState.f4987e;
                } else {
                    measurable = (i2 < flowLayoutOverflowState.f4985b - 1 || i3 < flowLayoutOverflowState.f4986c) ? null : flowLayoutOverflowState.f4988f;
                    intIntPair = flowLayoutOverflowState.f4990i;
                    placeable = flowLayoutOverflowState.g;
                }
                Placeable placeable2 = placeable;
                Measurable measurable2 = measurable;
                if (measurable2 == null) {
                    wrapEllipsisInfo = null;
                } else {
                    intIntPair.getClass();
                    wrapEllipsisInfo = new WrapEllipsisInfo(measurable2, placeable2, intIntPair.f3254a, false, 8, null);
                }
            }
            if (wrapEllipsisInfo != null) {
                if (i2 < 0 || (i5 != 0 && (i4 - ((int) (wrapEllipsisInfo.f4974c >> 32)) < 0 || i5 >= this.f4967a))) {
                    z2 = false;
                }
                wrapEllipsisInfo.d = z2;
                return wrapEllipsisInfo;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0059, code lost:
    
        if ((((int) (r22 >> 32)) - ((int) (r5 >> 32))) < 0) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.foundation.layout.FlowLayoutBuildingBlocks.WrapInfo b(boolean r20, int r21, long r22, androidx.collection.IntIntPair r24, int r25, int r26, int r27, boolean r28, boolean r29) {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.layout.FlowLayoutBuildingBlocks.b(boolean, int, long, androidx.collection.IntIntPair, int, int, int, boolean, boolean):androidx.compose.foundation.layout.FlowLayoutBuildingBlocks$WrapInfo");
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;", "", "Landroidx/compose/ui/layout/Measurable;", "ellipsis", "Landroidx/compose/ui/layout/Placeable;", "placeable", "Landroidx/collection/IntIntPair;", "ellipsisSize", "", "placeEllipsisOnLastContentLine", "<init>", "(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/Placeable;JZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class WrapEllipsisInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Measurable f4972a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Placeable f4973b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f4974c;
        public boolean d;

        public /* synthetic */ WrapEllipsisInfo(Measurable measurable, Placeable placeable, long j2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(measurable, placeable, j2, (i2 & 8) != 0 ? true : z, null);
        }

        public WrapEllipsisInfo(Measurable measurable, Placeable placeable, long j2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            this.f4972a = measurable;
            this.f4973b = placeable;
            this.f4974c = j2;
            this.d = z;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;", "", "", "isLastItemInLine", "isLastItemInContainer", "<init>", "(ZZ)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class WrapInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f4975a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f4976b;

        public /* synthetic */ WrapInfo(boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2);
        }

        public WrapInfo(boolean z, boolean z2) {
            this.f4975a = z;
            this.f4976b = z2;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public WrapInfo() {
            boolean z = false;
            this(z, z, 3, null);
        }
    }
}
