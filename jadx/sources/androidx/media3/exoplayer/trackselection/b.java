package androidx.media3.exoplayer.trackselection;

import com.google.common.collect.ComparisonChain;
import com.google.common.collect.Ordering;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Comparator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15737b;

    public /* synthetic */ b(int i2) {
        this.f15737b = i2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i2 = this.f15737b;
        ComparisonChain comparisonChainB = ComparisonChain.f33575a;
        switch (i2) {
            case 0:
                return Integer.compare(((DefaultTrackSelector.ImageTrackInfo) ((List) obj).get(0)).g, ((DefaultTrackSelector.ImageTrackInfo) ((List) obj2).get(0)).g);
            case 1:
                List list = (List) obj;
                List list2 = (List) obj2;
                int i3 = 4;
                ComparisonChain comparisonChainA = comparisonChainB.b((DefaultTrackSelector.VideoTrackInfo) Collections.max(list, new b(i3)), (DefaultTrackSelector.VideoTrackInfo) Collections.max(list2, new b(i3)), new b(i3)).a(list.size(), list2.size());
                int i4 = 5;
                return comparisonChainA.b((DefaultTrackSelector.VideoTrackInfo) Collections.max(list, new b(i4)), (DefaultTrackSelector.VideoTrackInfo) Collections.max(list2, new b(i4)), new b(i4)).e();
            case 2:
                return ((DefaultTrackSelector.AudioTrackInfo) Collections.max((List) obj)).c((DefaultTrackSelector.AudioTrackInfo) Collections.max((List) obj2));
            case 3:
                return ((DefaultTrackSelector.TextTrackInfo) ((List) obj).get(0)).c((DefaultTrackSelector.TextTrackInfo) ((List) obj2).get(0));
            case 4:
                DefaultTrackSelector.VideoTrackInfo videoTrackInfo = (DefaultTrackSelector.VideoTrackInfo) obj;
                DefaultTrackSelector.VideoTrackInfo videoTrackInfo2 = (DefaultTrackSelector.VideoTrackInfo) obj2;
                return comparisonChainB.c(videoTrackInfo.f15717i, videoTrackInfo2.f15717i).b(Integer.valueOf(videoTrackInfo.n), Integer.valueOf(videoTrackInfo2.n), Ordering.c().e()).a(videoTrackInfo.o, videoTrackInfo2.o).a(videoTrackInfo.p, videoTrackInfo2.p).b(Integer.valueOf(videoTrackInfo.q), Integer.valueOf(videoTrackInfo2.q), Ordering.c().e()).c(videoTrackInfo.r, videoTrackInfo2.r).a(videoTrackInfo.s, videoTrackInfo2.s).c(videoTrackInfo.f15718j, videoTrackInfo2.f15718j).c(videoTrackInfo.f15715f, videoTrackInfo2.f15715f).c(videoTrackInfo.f15716h, videoTrackInfo2.f15716h).b(Integer.valueOf(videoTrackInfo.m), Integer.valueOf(videoTrackInfo2.m), Ordering.c().e()).c(videoTrackInfo.v, videoTrackInfo2.v).c(videoTrackInfo.x, videoTrackInfo2.x).e();
            default:
                DefaultTrackSelector.VideoTrackInfo videoTrackInfo3 = (DefaultTrackSelector.VideoTrackInfo) obj;
                DefaultTrackSelector.VideoTrackInfo videoTrackInfo4 = (DefaultTrackSelector.VideoTrackInfo) obj2;
                boolean z = videoTrackInfo3.f15715f;
                int i5 = videoTrackInfo3.f15719k;
                Ordering orderingE = (z && videoTrackInfo3.f15717i) ? DefaultTrackSelector.f15687k : DefaultTrackSelector.f15687k.e();
                if (videoTrackInfo3.g.F) {
                    comparisonChainB = comparisonChainB.b(Integer.valueOf(i5), Integer.valueOf(videoTrackInfo4.f15719k), DefaultTrackSelector.f15687k.e());
                }
                ComparisonChain comparisonChainB2 = comparisonChainB.c(videoTrackInfo3.z, videoTrackInfo4.z).b(Integer.valueOf(videoTrackInfo3.l), Integer.valueOf(videoTrackInfo4.l), orderingE);
                if (videoTrackInfo3.v && videoTrackInfo3.x) {
                    comparisonChainB2 = comparisonChainB2.a(videoTrackInfo3.y, videoTrackInfo4.y);
                }
                return comparisonChainB2.c(videoTrackInfo3.w, videoTrackInfo4.w).b(Integer.valueOf(i5), Integer.valueOf(videoTrackInfo4.f15719k), orderingE).e();
        }
    }
}
