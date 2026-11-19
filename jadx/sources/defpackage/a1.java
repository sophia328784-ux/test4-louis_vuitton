package defpackage;

import androidx.compose.foundation.lazy.LazyListItemInfo;
import androidx.compose.foundation.lazy.LazyListLayoutInfo;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.DatePickerKt;
import com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a1 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LazyListState f361c;

    public /* synthetic */ a1(LazyListState lazyListState, int i2) {
        this.f360b = i2;
        this.f361c = lazyListState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f360b;
        z = false;
        boolean z = false;
        Object next = null;
        LazyListState lazyListState = this.f361c;
        switch (i2) {
            case 0:
                int i3 = AICompanionOnboardingScreenKt.f52870b;
                LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) CollectionsKt.firstOrNull(lazyListState.j().getF5211k());
                return Float.valueOf(lazyListItemInfo != null ? RangesKt.c(1.0f - RangesKt.c((lazyListState.i() / lazyListItemInfo.getQ()) / 0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f) : 1.0f);
            case 1:
                LazyListLayoutInfo lazyListLayoutInfoJ = lazyListState.j();
                List f5211k = lazyListLayoutInfoJ.getF5211k();
                int m = ((lazyListLayoutInfoJ.getM() - lazyListLayoutInfoJ.getL()) / 2) + lazyListLayoutInfoJ.getL();
                Iterator it = f5211k.iterator();
                if (it.hasNext()) {
                    next = it.next();
                    if (it.hasNext()) {
                        LazyListItemInfo lazyListItemInfo2 = (LazyListItemInfo) next;
                        int iAbs = Math.abs(((lazyListItemInfo2.getQ() / 2) + lazyListItemInfo2.getP()) - m);
                        do {
                            Object next2 = it.next();
                            LazyListItemInfo lazyListItemInfo3 = (LazyListItemInfo) next2;
                            int iAbs2 = Math.abs(((lazyListItemInfo3.getQ() / 2) + lazyListItemInfo3.getP()) - m);
                            if (iAbs > iAbs2) {
                                next = next2;
                                iAbs = iAbs2;
                            }
                        } while (it.hasNext());
                    }
                }
                LazyListItemInfo lazyListItemInfo4 = (LazyListItemInfo) next;
                return Integer.valueOf(lazyListItemInfo4 != null ? lazyListItemInfo4.getF5212a() : 0);
            case 2:
                float f2 = DatePickerKt.f6780a;
                return Integer.valueOf(lazyListState.h());
            case 3:
                return Boolean.valueOf(lazyListState.f5239j.a());
            case 4:
                return Boolean.valueOf(lazyListState.f5239j.a());
            case 5:
                return Integer.valueOf(lazyListState.h());
            case 6:
                return Integer.valueOf(lazyListState.j().getN());
            case 7:
                List f5211k2 = lazyListState.j().getF5211k();
                ArrayList arrayList = new ArrayList(CollectionsKt.t(f5211k2, 10));
                Iterator it2 = f5211k2.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((LazyListItemInfo) it2.next()).getL());
                }
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    if (obj instanceof String) {
                        arrayList2.add(obj);
                    }
                }
                return arrayList2;
            case 8:
                return Boolean.valueOf(lazyListState.f5239j.a());
            case 9:
                LazyListItemInfo lazyListItemInfo5 = (LazyListItemInfo) CollectionsKt.N(lazyListState.j().getF5211k());
                if (lazyListItemInfo5 != null) {
                    return Integer.valueOf(lazyListItemInfo5.getF5212a());
                }
                return null;
            case 10:
                LazyListItemInfo lazyListItemInfo6 = (LazyListItemInfo) CollectionsKt.N(lazyListState.j().getF5211k());
                if (lazyListItemInfo6 != null) {
                    return Integer.valueOf(lazyListItemInfo6.getF5212a());
                }
                return null;
            default:
                if (lazyListState.h() == 0 && lazyListState.i() == 0) {
                    z = true;
                }
                return Boolean.valueOf(z);
        }
    }
}
