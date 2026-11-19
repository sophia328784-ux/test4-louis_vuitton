package androidx.media3.exoplayer.trackselection;

import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ForwardingTrackSelection implements ExoTrackSelection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExoTrackSelection f15724a;

    public ForwardingTrackSelection(ExoTrackSelection exoTrackSelection) {
        this.f15724a = exoTrackSelection;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final long a() {
        return this.f15724a.a();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final boolean b(int i2, long j2) {
        return this.f15724a.b(i2, j2);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final void c() {
        this.f15724a.c();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final int d() {
        return this.f15724a.d();
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public Format e(int i2) {
        return this.f15724a.e(i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ForwardingTrackSelection) {
            return this.f15724a.equals(((ForwardingTrackSelection) obj).f15724a);
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final int f(int i2) {
        return this.f15724a.f(i2);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final void g(long j2, long j3, long j4, List list, MediaChunkIterator[] mediaChunkIteratorArr) {
        this.f15724a.g(j2, j3, j4, list, mediaChunkIteratorArr);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final boolean h(int i2, long j2) {
        return this.f15724a.h(i2, j2);
    }

    public int hashCode() {
        return this.f15724a.hashCode();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final void i(float f2) {
        this.f15724a.i(f2);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final Object j() {
        return this.f15724a.j();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final void k() {
        this.f15724a.k();
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final int l(int i2) {
        return this.f15724a.l(i2);
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final int length() {
        return this.f15724a.length();
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public TrackGroup m() {
        return this.f15724a.m();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final boolean n(long j2, Chunk chunk, List list) {
        return this.f15724a.n(j2, chunk, list);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final void o(boolean z) {
        this.f15724a.o(z);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final void p() {
        this.f15724a.p();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final int q(long j2, List list) {
        return this.f15724a.q(j2, list);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final int r() {
        return this.f15724a.r();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public Format s() {
        return this.f15724a.s();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final int t() {
        return this.f15724a.t();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final void u() {
        this.f15724a.u();
    }
}
