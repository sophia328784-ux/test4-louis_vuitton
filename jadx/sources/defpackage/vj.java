package defpackage;

import androidx.compose.foundation.lazy.LazyListItemInfo;
import androidx.compose.foundation.lazy.LazyListLayoutInfo;
import androidx.compose.foundation.lazy.LazyListState;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vj implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LazyListState f80592c;
    public final /* synthetic */ int d;

    public /* synthetic */ vj(LazyListState lazyListState, int i2, int i3) {
        this.f80591b = i3;
        this.f80592c = lazyListState;
        this.d = i2;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0058  */
    /* JADX WARN: Code duplicated, block: B:24:0x0068  */
    /* JADX WARN: Code duplicated, block: B:26:0x007b  */
    /* JADX WARN: Code duplicated, block: B:28:0x007f  */
    /* JADX WARN: Code duplicated, block: B:29:0x0081  */
    /* JADX WARN: Code duplicated, block: B:30:0x0083  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a8  */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        LazyListItemInfo lazyListItemInfo;
        float fC;
        float m;
        float p;
        float fE;
        float fC2;
        float q;
        float f2;
        int i2 = this.f80591b;
        Object obj = null;
        int i3 = this.d;
        LazyListState lazyListState = this.f80592c;
        switch (i2) {
            case 0:
                LazyListLayoutInfo lazyListLayoutInfoJ = lazyListState.j();
                for (Object obj2 : lazyListLayoutInfoJ.getF5211k()) {
                    if (((LazyListItemInfo) obj2).getF5212a() == i3) {
                        obj = obj2;
                        lazyListItemInfo = (LazyListItemInfo) obj;
                        fC = 1.0f;
                        if (lazyListItemInfo != null) {
                            m = lazyListLayoutInfoJ.getM() - lazyListLayoutInfoJ.getL();
                            if (m > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                p = lazyListItemInfo.getP() - lazyListLayoutInfoJ.getL();
                                fE = lazyListLayoutInfoJ.e();
                                if (fE <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    fC2 = RangesKt.c(p / fE, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
                                } else if (p >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    fC2 = 1.0f;
                                } else {
                                    fC2 = 0.0f;
                                }
                                q = m - ((lazyListItemInfo.getQ() + lazyListItemInfo.getP()) - lazyListLayoutInfoJ.getL());
                                f2 = m * 0.1f;
                                if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    fC = RangesKt.c(q / f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
                                } else if (q < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    fC = 0.0f;
                                }
                                fC = Math.min(fC2, fC);
                            }
                        }
                        return Float.valueOf(fC);
                    }
                }
                lazyListItemInfo = (LazyListItemInfo) obj;
                fC = 1.0f;
                if (lazyListItemInfo != null) {
                    m = lazyListLayoutInfoJ.getM() - lazyListLayoutInfoJ.getL();
                    if (m > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        p = lazyListItemInfo.getP() - lazyListLayoutInfoJ.getL();
                        fE = lazyListLayoutInfoJ.e();
                        if (fE <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            fC2 = RangesKt.c(p / fE, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
                        } else if (p >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            fC2 = 1.0f;
                        } else {
                            fC2 = 0.0f;
                        }
                        q = m - ((lazyListItemInfo.getQ() + lazyListItemInfo.getP()) - lazyListLayoutInfoJ.getL());
                        f2 = m * 0.1f;
                        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            fC = RangesKt.c(q / f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
                        } else if (q < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            fC = 0.0f;
                        }
                        fC = Math.min(fC2, fC);
                    }
                }
                return Float.valueOf(fC);
            default:
                for (Object obj3 : lazyListState.j().getF5211k()) {
                    if (((LazyListItemInfo) obj3).getF5212a() == i3) {
                        obj = obj3;
                        return (LazyListItemInfo) obj;
                    }
                }
                return (LazyListItemInfo) obj;
        }
    }
}
