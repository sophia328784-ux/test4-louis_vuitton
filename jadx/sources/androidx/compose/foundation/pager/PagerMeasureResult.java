package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002BÑ\u0001\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0006\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0015\u001a\u00020\u0006\u0012\u0006\u0010\u0016\u001a\u00020\u000e\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u000e\u0012\u000e\b\u0002\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$¨\u0006%"}, d2 = {"Landroidx/compose/foundation/pager/PagerMeasureResult;", "Landroidx/compose/foundation/pager/PagerLayoutInfo;", "Landroidx/compose/ui/layout/MeasureResult;", "", "Landroidx/compose/foundation/pager/MeasuredPage;", "visiblePagesInfo", "", "pageSize", "pageSpacing", "afterContentPadding", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "viewportStartOffset", "viewportEndOffset", "", "reverseLayout", "beyondViewportPageCount", "firstVisiblePage", "currentPage", "", "currentPageOffsetFraction", "firstVisiblePageScrollOffset", "canScrollForward", "Landroidx/compose/foundation/gestures/snapping/SnapPosition;", "snapPosition", "measureResult", "remeasureNeeded", "extraPagesBefore", "extraPagesAfter", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "Landroidx/compose/ui/unit/Density;", "density", "Landroidx/compose/ui/unit/Constraints;", "childConstraints", "<init>", "(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIZILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PagerMeasureResult implements PagerLayoutInfo, MeasureResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f5739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5741c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Orientation f5742e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f5743f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f5744h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f5745i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MeasuredPage f5746j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MeasuredPage f5747k;
    public final float l;
    public final int m;
    public final boolean n;
    public final SnapPosition o;
    public final MeasureResult p;
    public final boolean q;
    public final List r;
    public final List s;
    public final CoroutineScope t;
    public final Density u;
    public final long v;

    public PagerMeasureResult(List list, int i2, int i3, int i4, Orientation orientation, int i5, int i6, boolean z, int i7, MeasuredPage measuredPage, MeasuredPage measuredPage2, float f2, int i8, boolean z2, SnapPosition snapPosition, MeasureResult measureResult, boolean z3, List list2, List list3, CoroutineScope coroutineScope, Density density, long j2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, i2, i3, i4, orientation, i5, i6, z, i7, measuredPage, measuredPage2, f2, i8, z2, snapPosition, measureResult, z3, (i9 & 131072) != 0 ? EmptyList.f71768b : list2, (i9 & 262144) != 0 ? EmptyList.f71768b : list3, coroutineScope, density, j2, null);
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    public final long a() {
        MeasureResult measureResult = this.p;
        long f9422a = (((long) measureResult.getF9726a()) << 32) | (((long) measureResult.getF9727b()) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        return f9422a;
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getD() {
        return this.d;
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    /* JADX INFO: renamed from: c, reason: from getter */
    public final Orientation getF5742e() {
        return this.f5742e;
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getF5744h() {
        return this.f5744h;
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    public final int e() {
        return -this.f5743f;
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    /* JADX INFO: renamed from: f, reason: from getter */
    public final int getF5740b() {
        return this.f5740b;
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    /* JADX INFO: renamed from: g, reason: from getter */
    public final List getF5739a() {
        return this.f5739a;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: getHeight */
    public final int getF9727b() {
        return this.p.getF9727b();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: getWidth */
    public final int getF9726a() {
        return this.p.getF9726a();
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    /* JADX INFO: renamed from: h, reason: from getter */
    public final int getF5741c() {
        return this.f5741c;
    }

    @Override // androidx.compose.foundation.pager.PagerLayoutInfo
    /* JADX INFO: renamed from: i, reason: from getter */
    public final SnapPosition getO() {
        return this.o;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: j */
    public final Map getF5787a() {
        return this.p.getF5787a();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final void k() {
        this.p.k();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: l */
    public final Function1 getD() {
        return this.p.getD();
    }

    public final PagerMeasureResult m(int i2) {
        int i3;
        int i4;
        int i5 = this.f5740b + this.f5741c;
        if (!this.q) {
            List list = this.f5739a;
            if (!list.isEmpty() && this.f5746j != null && (i4 = (i3 = this.m) - i2) >= 0 && i4 < i5) {
                float f2 = i5 != 0 ? i2 / i5 : Call.Parameters.DEFAULT_CAMERA_ZOOM;
                float f3 = this.l;
                float f4 = f3 - f2;
                if (this.f5747k != null && f4 < 0.5f && f4 > -0.5f) {
                    MeasuredPage measuredPage = (MeasuredPage) CollectionsKt.B(list);
                    MeasuredPage measuredPage2 = (MeasuredPage) CollectionsKt.M(list);
                    int i6 = this.g;
                    int i7 = this.f5743f;
                    if (i2 >= 0 ? Math.min(i7 - measuredPage.m, i6 - measuredPage2.m) > i2 : Math.min((measuredPage.m + i5) - i7, (measuredPage2.m + i5) - i6) > (-i2)) {
                        int size = list.size();
                        for (int i8 = 0; i8 < size; i8++) {
                            ((MeasuredPage) list.get(i8)).a(i2);
                        }
                        List list2 = this.r;
                        int size2 = list2.size();
                        for (int i9 = 0; i9 < size2; i9++) {
                            ((MeasuredPage) list2.get(i9)).a(i2);
                        }
                        List list3 = this.s;
                        int size3 = list3.size();
                        for (int i10 = 0; i10 < size3; i10++) {
                            ((MeasuredPage) list3.get(i10)).a(i2);
                        }
                        return new PagerMeasureResult(this.f5739a, this.f5740b, this.f5741c, this.d, this.f5742e, this.f5743f, this.g, this.f5744h, this.f5745i, this.f5746j, this.f5747k, f3 - f2, i3 - i2, this.n || i2 > 0, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, null);
                    }
                }
            }
        }
        return null;
    }

    public PagerMeasureResult(List list, int i2, int i3, int i4, Orientation orientation, int i5, int i6, boolean z, int i7, MeasuredPage measuredPage, MeasuredPage measuredPage2, float f2, int i8, boolean z2, SnapPosition snapPosition, MeasureResult measureResult, boolean z3, List list2, List list3, CoroutineScope coroutineScope, Density density, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5739a = list;
        this.f5740b = i2;
        this.f5741c = i3;
        this.d = i4;
        this.f5742e = orientation;
        this.f5743f = i5;
        this.g = i6;
        this.f5744h = z;
        this.f5745i = i7;
        this.f5746j = measuredPage;
        this.f5747k = measuredPage2;
        this.l = f2;
        this.m = i8;
        this.n = z2;
        this.o = snapPosition;
        this.p = measureResult;
        this.q = z3;
        this.r = list2;
        this.s = list3;
        this.t = coroutineScope;
        this.u = density;
        this.v = j2;
    }
}
