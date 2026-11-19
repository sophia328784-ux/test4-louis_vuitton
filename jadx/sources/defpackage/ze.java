package defpackage;

import android.net.Uri;
import android.os.Parcelable;
import androidx.compose.foundation.lazy.LazyListPrefetchStrategy;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.LazyGridPrefetchResultScope;
import androidx.compose.foundation.lazy.grid.LazyGridPrefetchStrategy;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.layout.NestedPrefetchScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.util.MathHelpersKt;
import coil3.compose.AsyncImagePainter;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffFragment;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormFragment;
import com.vuitton.android.presentation.screen.onboarding.models.PathPositionUIModel;
import com.vuitton.android.presentation.screen.plp.components.composables.PLPDispatchFilterComposableKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ze implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f81605c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ze(int i2, Object obj, int i3) {
        this.f81604b = i3;
        this.f81605c = i2;
        this.d = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81604b;
        Object obj2 = this.d;
        int i3 = this.f81605c;
        switch (i2) {
            case 0:
                PagerState pagerState = (PagerState) obj2;
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                graphicsLayerScope.getClass();
                pagerState.getClass();
                float fL = pagerState.l() + (pagerState.k() - i3);
                float fAbs = Math.abs(fL);
                float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                float fB = MathHelpersKt.b(0.82f, 1.0f, 1.0f - RangesKt.c(fAbs, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f));
                graphicsLayerScope.m(fB);
                graphicsLayerScope.x(fB);
                if (fL > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    f2 = 1.0f;
                }
                graphicsLayerScope.C0(TransformOriginKt.a(f2, 0.5f));
                return Unit.f71739a;
            case 1:
                Uri uri = (Uri) obj;
                DistantRepairFormBffFragment.Companion companion = DistantRepairFormBffFragment.M;
                uri.getClass();
                ((DistantRepairFormBffFragment) obj2).O().W0(uri, i3);
                return Unit.f71739a;
            case 2:
                Uri uri2 = (Uri) obj;
                DistantRepairFormFragment.Companion companion2 = DistantRepairFormFragment.M;
                uri2.getClass();
                ((DistantRepairFormFragment) obj2).O().W0(uri2, i3);
                return Unit.f71739a;
            case 3:
                ((Long) obj).longValue();
                ((Function1) obj2).invoke(Integer.valueOf(i3));
                return Unit.f71739a;
            case 4:
                Function0 function0 = (Function0) obj2;
                ((AsyncImagePainter.State.Success) obj).getClass();
                if (i3 == 0 && function0 != null) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 5:
                List list = (List) obj2;
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                layoutCoordinates.getClass();
                if (list != null) {
                    ((PathPositionUIModel) list.get(i3)).f59603a = Float.intBitsToFloat((int) (LayoutCoordinatesKt.f(layoutCoordinates) >> 32));
                    ((PathPositionUIModel) list.get(i3)).f59604b = Float.intBitsToFloat((int) (LayoutCoordinatesKt.f(layoutCoordinates) & BodyPartID.bodyIdMax)) - ((float) (((double) ((int) (layoutCoordinates.a() & BodyPartID.bodyIdMax))) * 0.1d));
                }
                return Unit.f71739a;
            case 6:
                Function2 function2 = (Function2) obj2;
                LazyGridPrefetchResultScope lazyGridPrefetchResultScope = (LazyGridPrefetchResultScope) obj;
                int iB = lazyGridPrefetchResultScope.b();
                int iB2 = Integer.MIN_VALUE;
                for (int i4 = 0; i4 < iB; i4++) {
                    iB2 = ComparisonsKt.b(lazyGridPrefetchResultScope.a(i4), new int[0]);
                }
                if (iB2 != Integer.MIN_VALUE) {
                    function2.invoke(Integer.valueOf(i3), Integer.valueOf(iB2));
                }
                return Unit.f71739a;
            case 7:
                NestedPrefetchScope nestedPrefetchScope = (NestedPrefetchScope) obj;
                LazyGridPrefetchStrategy lazyGridPrefetchStrategy = ((LazyGridState) obj2).f5354a;
                Snapshot.f8462e.getClass();
                Snapshot snapshotA = Snapshot.Companion.a();
                Snapshot.Companion.e(snapshotA, Snapshot.Companion.b(snapshotA), snapshotA != null ? snapshotA.e() : null);
                lazyGridPrefetchStrategy.a(nestedPrefetchScope, i3);
                return Unit.f71739a;
            case 8:
                NestedPrefetchScope nestedPrefetchScope2 = (NestedPrefetchScope) obj;
                LazyListPrefetchStrategy lazyListPrefetchStrategy = ((LazyListState) obj2).f5232a;
                Snapshot.f8462e.getClass();
                Snapshot snapshotA2 = Snapshot.Companion.a();
                Snapshot.Companion.e(snapshotA2, Snapshot.Companion.b(snapshotA2), snapshotA2 != null ? snapshotA2.e() : null);
                lazyListPrefetchStrategy.a(nestedPrefetchScope2, i3);
                return Unit.f71739a;
            case 9:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                float f3 = PLPDispatchFilterComposableKt.f62727a;
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, Role.f10291e);
                SemanticsPropertiesKt.p(semanticsPropertyReceiver, ((ProductFilterValueUiModel) obj2).f62968e);
                SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(0, 1, i3, 1));
                return Unit.f71739a;
            default:
                List list2 = (List) obj;
                Parcelable.Creator<SnapshotStateList<Object>> creator = SnapshotStateList.CREATOR;
                return Boolean.valueOf(list2.addAll(i3, (Collection) obj2));
        }
    }

    public /* synthetic */ ze(Object obj, int i2, int i3) {
        this.f81604b = i3;
        this.d = obj;
        this.f81605c = i2;
    }
}
