package androidx.media3.exoplayer;

import android.text.TextUtils;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocation;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import androidx.media3.exoplayer.upstream.PlayerIdAwareAllocator;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.UnmodifiableListIterator;
import com.linkplay.medialib.ContentTree;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ct0;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class DefaultLoadControl implements LoadControl {
    public static final ImmutableList s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Timeline.Window f14598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Timeline.Period f14599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DefaultAllocator f14600c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f14601e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f14602f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f14603h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f14604i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f14605j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f14606k;
    public final int l;
    public final boolean m;
    public final long n;
    public final boolean o;
    public final ImmutableMap p;
    public final ConcurrentHashMap q;
    public long r;

    /* JADX INFO: loaded from: classes4.dex */
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap f14607a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public DefaultAllocator f14608b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14609c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f14610e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f14611f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f14612h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f14613i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f14614j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f14615k;
        public final boolean l;
        public int m;
        public boolean n;
        public boolean o;

        public Builder() {
            HashMap map = new HashMap();
            this.f14607a = map;
            map.put(PlayerId.f14853c.f14854a, 144179200);
            this.f14609c = 50000;
            this.d = 1000;
            this.f14610e = 50000;
            this.f14611f = 50000;
            this.g = 1000;
            this.f14612h = 1000;
            this.f14613i = com.networkbench.agent.impl.util.r.E;
            this.f14614j = 1000;
            this.f14615k = -1;
            this.l = true;
            this.m = 0;
            this.n = false;
        }
    }

    public final class PlayerIdFilteringAllocatorImpl implements PlayerIdAwareAllocator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap f14616a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PlayerId f14617b;

        public PlayerIdFilteringAllocatorImpl(PlayerId playerId) {
            this.f14617b = playerId;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public final synchronized void a(Allocator.AllocationNode allocationNode) {
            DefaultLoadControl.this.f14600c.a(allocationNode);
            while (allocationNode != null) {
                f(allocationNode.a());
                allocationNode = allocationNode.next();
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public final synchronized Allocation b() {
            Allocation allocationB;
            allocationB = DefaultLoadControl.this.f14600c.b();
            this.f14616a.put(allocationB, this.f14617b);
            PlayerLoadingState playerLoadingState = (PlayerLoadingState) DefaultLoadControl.this.q.get(this.f14617b);
            if (playerLoadingState != null) {
                synchronized (playerLoadingState) {
                    playerLoadingState.d++;
                }
            }
            return allocationB;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public final synchronized void c(Allocation allocation) {
            DefaultLoadControl.this.f14600c.c(allocation);
            f(allocation);
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public final synchronized void d() {
            DefaultLoadControl.this.f14600c.d();
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public final synchronized int e() {
            return DefaultLoadControl.this.f14600c.f15807b;
        }

        public final void f(Allocation allocation) {
            PlayerId playerId = (PlayerId) this.f14616a.remove(allocation);
            playerId.getClass();
            PlayerLoadingState playerLoadingState = (PlayerLoadingState) DefaultLoadControl.this.q.get(playerId);
            if (playerLoadingState != null) {
                synchronized (playerLoadingState) {
                    playerLoadingState.d--;
                }
            }
        }
    }

    public static class PlayerLoadingState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f14619a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f14620b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14621c;
        public int d;
    }

    static {
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        Object[] objArr = {"file", "content", DbParams.KEY_DATA, "android.resource", "rawresource", "asset"};
        ObjectArrays.a(6, objArr);
        s = ImmutableList.q(6, objArr);
    }

    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, boolean z, int i11, boolean z2, Map map) {
        k(i6, 0, "bufferForPlaybackMs", ContentTree.ROOT_ID);
        k(i7, 0, "bufferForPlaybackForLocalPlaybackMs", ContentTree.ROOT_ID);
        k(i8, 0, "bufferForPlaybackAfterRebufferMs", ContentTree.ROOT_ID);
        k(i9, 0, "bufferForPlaybackAfterRebufferForLocalPlaybackMs", ContentTree.ROOT_ID);
        k(i2, i6, "minBufferMs", "bufferForPlaybackMs");
        k(i3, i7, "minBufferForLocalPlaybackMs", "bufferForPlaybackForLocalPlaybackMs");
        k(i2, i8, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        k(i3, i9, "minBufferForLocalPlaybackMs", "bufferForPlaybackAfterRebufferForLocalPlaybackMs");
        k(i4, i2, "maxBufferMs", "minBufferMs");
        k(i5, i3, "maxBufferForLocalPlaybackMs", "minBufferForLocalPlaybackMs");
        k(i11, 0, "backBufferDurationMs", ContentTree.ROOT_ID);
        this.f14598a = new Timeline.Window();
        this.f14599b = new Timeline.Period();
        this.f14600c = defaultAllocator;
        this.d = Util.R(i2);
        this.f14601e = Util.R(i3);
        this.f14602f = Util.R(i4);
        this.g = Util.R(i5);
        this.f14603h = Util.R(i6);
        this.f14604i = Util.R(i7);
        this.f14605j = Util.R(i8);
        this.f14606k = Util.R(i9);
        this.l = i10;
        this.m = z;
        this.n = Util.R(i11);
        this.o = z2;
        this.q = new ConcurrentHashMap();
        this.p = ImmutableMap.c(map);
        this.r = -1L;
    }

    public static void k(int i2, int i3, String str, String str2) {
        Preconditions.i(i2 >= i3, "%s cannot be less than %s", str, str2);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final boolean a(LoadControl.Parameters parameters) {
        long jMin;
        int i2;
        boolean zL = l(parameters);
        PlayerId playerId = parameters.f14698a;
        long jD = Util.D(parameters.f14701e, parameters.d);
        if (parameters.f14702f) {
            jMin = zL ? this.f14606k : this.f14605j;
        } else {
            jMin = zL ? this.f14604i : this.f14603h;
        }
        long j2 = parameters.g;
        if (j2 != -9223372036854775807L) {
            jMin = Math.min(j2 / 2, jMin);
        }
        if (jMin <= 0 || jD >= jMin) {
            return true;
        }
        if (!(zL ? this.m : false)) {
            PlayerLoadingState playerLoadingState = (PlayerLoadingState) this.q.get(playerId);
            playerLoadingState.getClass();
            synchronized (playerLoadingState) {
                i2 = playerLoadingState.d;
            }
            int i3 = i2 * this.f14600c.f15807b;
            PlayerLoadingState playerLoadingState2 = (PlayerLoadingState) this.q.get(playerId);
            playerLoadingState2.getClass();
            if (i3 >= playerLoadingState2.f14621c) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final boolean b() {
        return this.o;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.media3.exoplayer.LoadControl
    public final void c(LoadControl.Parameters parameters, ExoTrackSelection[] exoTrackSelectionArr) {
        PlayerId playerId = parameters.f14698a;
        Integer num = (Integer) this.p.get(playerId.f14854a);
        int iIntValue = (num == null || num.intValue() == -1) ? this.l : num.intValue();
        PlayerLoadingState playerLoadingState = (PlayerLoadingState) this.q.get(playerId);
        playerLoadingState.getClass();
        if (iIntValue == -1) {
            boolean zL = l(parameters);
            int length = exoTrackSelectionArr.length;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int i4 = 13107200;
                if (i2 < length) {
                    ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i2];
                    if (exoTrackSelection != null) {
                        switch (exoTrackSelection.m().f13979c) {
                            case -2:
                                i4 = 0;
                                i3 += i4;
                                break;
                            case -1:
                            case 1:
                                i3 += i4;
                                break;
                            case 0:
                                i4 = 144310272;
                                i3 += i4;
                                break;
                            case 2:
                                i4 = zL ? 19660800 : 131072000;
                                i3 += i4;
                                break;
                            case 3:
                            case 5:
                            case 6:
                                i4 = 131072;
                                i3 += i4;
                                break;
                            case 4:
                                i4 = 26214400;
                                i3 += i4;
                                break;
                            default:
                                ct0.c();
                                break;
                        }
                        return;
                    }
                    i2++;
                } else {
                    iIntValue = Util.j(i3, 13107200, 210239488);
                }
            }
        }
        playerLoadingState.f14621c = iIntValue;
        m();
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final long d() {
        return this.n;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final void e(PlayerId playerId) {
        long id = Thread.currentThread().getId();
        long j2 = this.r;
        Preconditions.p("Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).", j2 == -1 || j2 == id);
        this.r = id;
        ConcurrentHashMap concurrentHashMap = this.q;
        PlayerLoadingState playerLoadingState = (PlayerLoadingState) concurrentHashMap.get(playerId);
        if (playerLoadingState == null) {
            concurrentHashMap.put(playerId, new PlayerLoadingState());
        } else {
            playerLoadingState.f14619a++;
        }
        PlayerLoadingState playerLoadingState2 = (PlayerLoadingState) concurrentHashMap.get(playerId);
        playerLoadingState2.getClass();
        Integer num = (Integer) this.p.get(playerId.f14854a);
        int iIntValue = (num == null || num.intValue() == -1) ? this.l : num.intValue();
        if (iIntValue == -1) {
            iIntValue = 13107200;
        }
        playerLoadingState2.f14621c = iIntValue;
        playerLoadingState2.f14620b = false;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final void f(PlayerId playerId) {
        ConcurrentHashMap concurrentHashMap = this.q;
        PlayerLoadingState playerLoadingState = (PlayerLoadingState) concurrentHashMap.get(playerId);
        if (playerLoadingState != null) {
            int i2 = playerLoadingState.f14619a - 1;
            playerLoadingState.f14619a = i2;
            if (i2 == 0) {
                concurrentHashMap.remove(playerId);
                m();
            }
        }
        if (concurrentHashMap.isEmpty()) {
            this.r = -1L;
        }
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final boolean g(LoadControl.Parameters parameters) {
        int i2;
        PlayerId playerId = parameters.f14698a;
        long j2 = parameters.d;
        PlayerLoadingState playerLoadingState = (PlayerLoadingState) this.q.get(playerId);
        playerLoadingState.getClass();
        PlayerLoadingState playerLoadingState2 = (PlayerLoadingState) this.q.get(playerId);
        playerLoadingState2.getClass();
        synchronized (playerLoadingState2) {
            i2 = playerLoadingState2.d;
        }
        int i3 = i2 * this.f14600c.f15807b;
        PlayerLoadingState playerLoadingState3 = (PlayerLoadingState) this.q.get(playerId);
        playerLoadingState3.getClass();
        boolean z = i3 >= playerLoadingState3.f14621c;
        if (playerId.equals(PlayerId.f14853c)) {
            return !z;
        }
        boolean zL = l(parameters);
        long jMin = zL ? this.f14601e : this.d;
        long j3 = zL ? this.g : this.f14602f;
        float f2 = parameters.f14701e;
        if (f2 > 1.0f) {
            jMin = Math.min(Util.A(f2, jMin), j3);
        }
        if (j2 < Math.max(jMin, 500000L)) {
            boolean z2 = (zL ? this.m : false) || !z;
            playerLoadingState.f14620b = z2;
            if (!z2 && j2 < 500000) {
                Log.g("Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j2 >= j3 || z) {
            playerLoadingState.f14620b = false;
        }
        return playerLoadingState.f14620b;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final boolean h() {
        Iterator it = this.q.values().iterator();
        while (it.hasNext()) {
            if (((PlayerLoadingState) it.next()).f14620b) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final void i(PlayerId playerId) {
        ConcurrentHashMap concurrentHashMap = this.q;
        PlayerLoadingState playerLoadingState = (PlayerLoadingState) concurrentHashMap.get(playerId);
        if (playerLoadingState != null) {
            int i2 = playerLoadingState.f14619a - 1;
            playerLoadingState.f14619a = i2;
            if (i2 == 0) {
                concurrentHashMap.remove(playerId);
                m();
            }
        }
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final Allocator j(PlayerId playerId) {
        return new PlayerIdFilteringAllocatorImpl(playerId);
    }

    public final boolean l(LoadControl.Parameters parameters) {
        Timeline timeline = parameters.f14699b;
        MediaItem.LocalConfiguration localConfiguration = timeline.m(timeline.g(parameters.f14700c.f15516a, this.f14599b).f13961c, this.f14598a, 0L).f13969c.f13788b;
        if (localConfiguration == null) {
            return false;
        }
        String scheme = localConfiguration.f13848a.getScheme();
        return TextUtils.isEmpty(scheme) || s.contains(scheme);
    }

    public final void m() {
        boolean zIsEmpty = this.q.isEmpty();
        DefaultAllocator defaultAllocator = this.f14600c;
        int i2 = 0;
        if (zIsEmpty) {
            synchronized (defaultAllocator) {
                if (defaultAllocator.f15806a) {
                    defaultAllocator.f(0);
                }
            }
        } else {
            Iterator it = this.q.values().iterator();
            while (it.hasNext()) {
                i2 += ((PlayerLoadingState) it.next()).f14621c;
            }
            defaultAllocator.f(i2);
        }
    }

    public DefaultLoadControl() {
        this(new DefaultAllocator(true, 65536), 50000, 1000, 50000, 50000, 1000, 1000, com.networkbench.agent.impl.util.r.E, 1000, -1, true, 0, false, ImmutableMap.h());
    }
}
