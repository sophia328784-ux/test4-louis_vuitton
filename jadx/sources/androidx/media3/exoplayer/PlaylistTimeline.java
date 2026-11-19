package androidx.media3.exoplayer;

import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.ShuffleOrder;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class PlaylistTimeline extends AbstractConcatenatedTimeline {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f14773i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f14774j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f14775k;
    public final int[] l;
    public final Timeline[] m;
    public final Object[] n;
    public final HashMap o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlaylistTimeline(Timeline[] timelineArr, Object[] objArr, ShuffleOrder shuffleOrder) {
        super(false, shuffleOrder);
        int i2 = 0;
        int length = timelineArr.length;
        this.m = timelineArr;
        this.f14775k = new int[length];
        this.l = new int[length];
        this.n = objArr;
        this.o = new HashMap();
        int length2 = timelineArr.length;
        int iO = 0;
        int iH = 0;
        int i3 = 0;
        while (i2 < length2) {
            Timeline timeline = timelineArr[i2];
            this.m[i3] = timeline;
            this.l[i3] = iO;
            this.f14775k[i3] = iH;
            iO += timeline.o();
            iH += this.m[i3].h();
            this.o.put(objArr[i3], Integer.valueOf(i3));
            i2++;
            i3++;
        }
        this.f14773i = iO;
        this.f14774j = iH;
    }

    @Override // androidx.media3.common.Timeline
    public final int h() {
        return this.f14774j;
    }

    @Override // androidx.media3.common.Timeline
    public final int o() {
        return this.f14773i;
    }

    @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
    public final int q(Object obj) {
        Integer num = (Integer) this.o.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
    public final int r(int i2) {
        return Util.e(this.f14775k, i2 + 1, false, false);
    }

    @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
    public final int s(int i2) {
        return Util.e(this.l, i2 + 1, false, false);
    }

    @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
    public final Object t(int i2) {
        return this.n[i2];
    }

    @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
    public final int u(int i2) {
        return this.f14775k[i2];
    }

    @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
    public final int v(int i2) {
        return this.l[i2];
    }

    @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
    public final Timeline x(int i2) {
        return this.m[i2];
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PlaylistTimeline(Collection<? extends MediaSourceInfoHolder> collection, ShuffleOrder shuffleOrder) {
        Timeline[] timelineArr = new Timeline[collection.size()];
        Iterator<? extends MediaSourceInfoHolder> it = collection.iterator();
        int i2 = 0;
        int i3 = 0;
        while (it.hasNext()) {
            timelineArr[i3] = it.next().a();
            i3++;
        }
        Object[] objArr = new Object[collection.size()];
        Iterator<? extends MediaSourceInfoHolder> it2 = collection.iterator();
        while (it2.hasNext()) {
            objArr[i2] = it2.next().getUid();
            i2++;
        }
        this(timelineArr, objArr, shuffleOrder);
    }
}
