package androidx.media3.exoplayer.source;

import androidx.media3.common.Timeline;

/* JADX INFO: loaded from: classes.dex */
public abstract class ForwardingTimeline extends Timeline {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Timeline f15491e;

    public ForwardingTimeline(Timeline timeline) {
        this.f15491e = timeline;
    }

    @Override // androidx.media3.common.Timeline
    public final int a(boolean z) {
        return this.f15491e.a(z);
    }

    @Override // androidx.media3.common.Timeline
    public int b(Object obj) {
        return this.f15491e.b(obj);
    }

    @Override // androidx.media3.common.Timeline
    public final int c(boolean z) {
        return this.f15491e.c(z);
    }

    @Override // androidx.media3.common.Timeline
    public final int e(int i2, int i3, boolean z) {
        return this.f15491e.e(i2, i3, z);
    }

    @Override // androidx.media3.common.Timeline
    public Timeline.Period f(int i2, Timeline.Period period, boolean z) {
        return this.f15491e.f(i2, period, z);
    }

    @Override // androidx.media3.common.Timeline
    public final int h() {
        return this.f15491e.h();
    }

    @Override // androidx.media3.common.Timeline
    public final int k(int i2, int i3, boolean z) {
        return this.f15491e.k(i2, i3, z);
    }

    @Override // androidx.media3.common.Timeline
    public Object l(int i2) {
        return this.f15491e.l(i2);
    }

    @Override // androidx.media3.common.Timeline
    public Timeline.Window m(int i2, Timeline.Window window, long j2) {
        return this.f15491e.m(i2, window, j2);
    }

    @Override // androidx.media3.common.Timeline
    public final int o() {
        return this.f15491e.o();
    }
}
