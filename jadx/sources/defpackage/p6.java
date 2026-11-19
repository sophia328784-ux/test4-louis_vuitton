package defpackage;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.pager.MeasuredPage;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.IntOffset;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityView;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p6 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f78765c;

    public /* synthetic */ p6(int i2, ArrayList arrayList) {
        this.f78764b = i2;
        this.f78765c = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f78764b;
        int i3 = 1;
        ArrayList arrayList = this.f78765c;
        switch (i2) {
            case 0:
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int size = arrayList.size();
                for (int i4 = 0; i4 < size; i4++) {
                    Placeable.PlacementScope.y(placementScope, (Placeable) arrayList.get(i4), 0, 0);
                }
                break;
            case 1:
                ConnectivityView connectivityView = (ConnectivityView) obj;
                connectivityView.b(arrayList);
                connectivityView.k(arrayList);
                break;
            case 2:
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                int size2 = arrayList.size();
                int i5 = 0;
                while (i5 < size2) {
                    MeasuredPage measuredPage = (MeasuredPage) arrayList.get(i5);
                    List list = measuredPage.f5702c;
                    boolean z = measuredPage.f5707j;
                    if (measuredPage.n == Integer.MIN_VALUE) {
                        InlineClassHelperKt.a("position() should be called first");
                    }
                    int size3 = list.size();
                    int i6 = 0;
                    while (i6 < size3) {
                        Placeable placeable = (Placeable) list.get(i6);
                        int[] iArr = measuredPage.l;
                        int i7 = i6 * 2;
                        int i8 = size2;
                        long j2 = (((long) iArr[i7 + i3]) & BodyPartID.bodyIdMax) | (((long) iArr[i7]) << 32);
                        IntOffset.Companion companion = IntOffset.f11012b;
                        if (measuredPage.f5706i) {
                            int i9 = z ? (int) (j2 >> 32) : (measuredPage.n - ((int) (j2 >> 32))) - (z ? placeable.f9549c : placeable.f9548b);
                            j2 = (((long) (z ? (measuredPage.n - ((int) (j2 & BodyPartID.bodyIdMax))) - (z ? placeable.f9549c : placeable.f9548b) : (int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax) | (((long) i9) << 32);
                        }
                        long jD = IntOffset.d(j2, measuredPage.d);
                        if (z) {
                            Placeable.PlacementScope.H(placementScope2, placeable, jD);
                        } else {
                            Placeable.PlacementScope.B(placementScope2, placeable, jD);
                        }
                        i6++;
                        size2 = i8;
                        i3 = 1;
                    }
                    i5++;
                    i3 = 1;
                }
                break;
            case 3:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver, new CollectionInfo(1, arrayList.size()));
                break;
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver2, new CollectionInfo(1, arrayList.size()));
                break;
            default:
                Placeable.PlacementScope placementScope3 = (Placeable.PlacementScope) obj;
                int size4 = arrayList.size();
                for (int i10 = 0; i10 < size4; i10++) {
                    placementScope3.j((Placeable) arrayList.get(i10), 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                break;
        }
        return Unit.f71739a;
    }
}
