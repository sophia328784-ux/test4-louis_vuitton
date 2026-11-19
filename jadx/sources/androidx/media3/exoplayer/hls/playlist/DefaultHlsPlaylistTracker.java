package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.exoplayer.hls.HlsDataSourceFactory;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterables;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.collect.UnmodifiableListIterator;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.os;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultHlsPlaylistTracker implements HlsPlaylistTracker, Loader.Callback<ParsingLoadable<HlsPlaylist>> {
    public static final os x = new os(24);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HlsDataSourceFactory f15211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HlsPlaylistParserFactory f15212c;
    public final LoadErrorHandlingPolicy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f15213e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CopyOnWriteArrayList f15214f;
    public final double g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CmcdConfiguration f15215h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Supplier f15216i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MediaSourceEventListener.EventDispatcher f15217j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Loader f15218k;
    public Handler l;
    public HlsMediaSource m;
    public HlsMultivariantPlaylist n;
    public ParserException o;
    public ImmutableList p;
    public ImmutableList q;
    public ImmutableList r;
    public ImmutableList s;
    public Uri t;
    public HlsMediaPlaylist u;
    public boolean v;
    public long w;

    public class FirstPrimaryMediaPlaylistListener implements HlsPlaylistTracker.PlaylistEventListener {
        public FirstPrimaryMediaPlaylistListener() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
        public final boolean b(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z) {
            RedundantGroupBundle redundantGroupBundle;
            DefaultHlsPlaylistTracker defaultHlsPlaylistTracker = DefaultHlsPlaylistTracker.this;
            HashMap map = defaultHlsPlaylistTracker.f15213e;
            if (defaultHlsPlaylistTracker.u == null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                RedundantGroupBundle redundantGroupBundle2 = (RedundantGroupBundle) map.get(uri);
                redundantGroupBundle2.getClass();
                HlsRedundantGroup hlsRedundantGroup = redundantGroupBundle2.f15228a;
                int size = hlsRedundantGroup.f15306b.size();
                UnmodifiableIterator it = ImmutableSet.s(hlsRedundantGroup.f15306b.values()).iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    if (defaultHlsPlaylistTracker.a((Uri) it.next(), jElapsedRealtime)) {
                        i2++;
                    }
                }
                int size2 = defaultHlsPlaylistTracker.p.size();
                UnmodifiableListIterator unmodifiableListIteratorListIterator = defaultHlsPlaylistTracker.p.listIterator(0);
                int i3 = 0;
                while (unmodifiableListIteratorListIterator.hasNext()) {
                    if (defaultHlsPlaylistTracker.o((HlsRedundantGroup) unmodifiableListIteratorListIterator.next(), jElapsedRealtime)) {
                        i3++;
                    }
                }
                LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionC = defaultHlsPlaylistTracker.d.c(new LoadErrorHandlingPolicy.FallbackOptions(size, i2, size2, i3), loadErrorInfo);
                if (fallbackSelectionC != null && (redundantGroupBundle = (RedundantGroupBundle) map.get(uri)) != null) {
                    return RedundantGroupBundle.c(redundantGroupBundle, uri, fallbackSelectionC.f15829b);
                }
            }
            return false;
        }

        @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
        public final void h() {
            DefaultHlsPlaylistTracker.this.f15214f.remove(this);
        }
    }

    public final class MediaPlaylistBundle implements Loader.Callback<ParsingLoadable<HlsPlaylist>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f15220b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f15221c;
        public final Loader d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final DataSource f15222e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public HlsMediaPlaylist f15223f;
        public long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f15224h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f15225i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f15226j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f15227k;
        public IOException l;
        public boolean m;

        public MediaPlaylistBundle(Uri uri, String str) {
            this.f15220b = uri;
            this.f15221c = str;
            Supplier supplier = DefaultHlsPlaylistTracker.this.f15216i;
            this.d = supplier != null ? new Loader((ReleasableExecutor) supplier.get()) : new Loader("DefaultHlsPlaylistTracker:MediaPlaylist");
            this.f15222e = DefaultHlsPlaylistTracker.this.f15211b.a();
        }

        public final Uri a() {
            HlsMediaPlaylist hlsMediaPlaylist = this.f15223f;
            Uri uri = this.f15220b;
            if (hlsMediaPlaylist != null) {
                HlsMediaPlaylist.ServerControl serverControl = hlsMediaPlaylist.v;
                if (serverControl.f15271a != -9223372036854775807L || serverControl.f15274e) {
                    Uri.Builder builderBuildUpon = uri.buildUpon();
                    HlsMediaPlaylist hlsMediaPlaylist2 = this.f15223f;
                    if (hlsMediaPlaylist2.v.f15274e) {
                        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(hlsMediaPlaylist2.f15238k + ((long) hlsMediaPlaylist2.r.size())));
                        HlsMediaPlaylist hlsMediaPlaylist3 = this.f15223f;
                        if (hlsMediaPlaylist3.n != -9223372036854775807L) {
                            ImmutableList immutableList = hlsMediaPlaylist3.s;
                            int size = immutableList.size();
                            if (!immutableList.isEmpty() && ((HlsMediaPlaylist.Part) Iterables.b(immutableList)).n) {
                                size--;
                            }
                            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(size));
                        }
                    }
                    HlsMediaPlaylist.ServerControl serverControl2 = this.f15223f.v;
                    if (serverControl2.f15271a != -9223372036854775807L) {
                        builderBuildUpon.appendQueryParameter("_HLS_skip", serverControl2.f15272b ? "v2" : "YES");
                    }
                    return builderBuildUpon.build();
                }
            }
            return uri;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public final Loader.LoadErrorAction b(Loader.Loadable loadable, long j2, long j3, IOException iOException, int i2) {
            ParsingLoadable parsingLoadable = (ParsingLoadable) loadable;
            long j4 = parsingLoadable.f15839a;
            int i3 = parsingLoadable.f15841c;
            DataSpec dataSpec = parsingLoadable.f15840b;
            StatsDataSource statsDataSource = parsingLoadable.d;
            LoadEventInfo loadEventInfo = new LoadEventInfo(j4, dataSpec, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
            boolean z = true;
            boolean z2 = statsDataSource.f14443c.getQueryParameter("_HLS_msn") != null;
            boolean z3 = iOException instanceof HlsPlaylistParser.DeltaUpdateException;
            Loader.LoadErrorAction loadErrorAction = Loader.f15832e;
            Uri uri = this.f15220b;
            DefaultHlsPlaylistTracker defaultHlsPlaylistTracker = DefaultHlsPlaylistTracker.this;
            if (z2 || z3) {
                int i4 = iOException instanceof HttpDataSource.InvalidResponseCodeException ? ((HttpDataSource.InvalidResponseCodeException) iOException).d : Integer.MAX_VALUE;
                if (z3 || i4 == 400 || i4 == 503) {
                    this.f15225i = SystemClock.elapsedRealtime();
                    d(uri);
                    MediaSourceEventListener.EventDispatcher eventDispatcher = defaultHlsPlaylistTracker.f15217j;
                    String str = Util.f14242a;
                    eventDispatcher.e(loadEventInfo, i3, iOException, true);
                    return loadErrorAction;
                }
            }
            LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo = new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(i3), iOException, i2);
            Iterator it = defaultHlsPlaylistTracker.f15214f.iterator();
            boolean z4 = false;
            while (it.hasNext()) {
                z4 |= !((HlsPlaylistTracker.PlaylistEventListener) it.next()).b(uri, loadErrorInfo, false);
            }
            LoadErrorHandlingPolicy loadErrorHandlingPolicy = defaultHlsPlaylistTracker.d;
            if (z4) {
                long jA = loadErrorHandlingPolicy.a(loadErrorInfo);
                loadErrorAction = jA != -9223372036854775807L ? new Loader.LoadErrorAction(0, jA) : Loader.f15833f;
            }
            int i5 = loadErrorAction.f15837a;
            if (i5 != 0 && i5 != 1) {
                z = false;
            }
            defaultHlsPlaylistTracker.f15217j.e(loadEventInfo, i3, iOException, !z);
            if (!z) {
                loadErrorHandlingPolicy.getClass();
            }
            return loadErrorAction;
        }

        public final void c(Uri uri) {
            DefaultHlsPlaylistTracker defaultHlsPlaylistTracker = DefaultHlsPlaylistTracker.this;
            ParsingLoadable.Parser parserB = defaultHlsPlaylistTracker.f15212c.b(defaultHlsPlaylistTracker.n, this.f15223f);
            DataSpec.Builder builder = new DataSpec.Builder();
            builder.f14397a = uri;
            builder.f14403i = 1;
            DataSpec dataSpecA = builder.a();
            CmcdConfiguration cmcdConfiguration = defaultHlsPlaylistTracker.f15215h;
            if (cmcdConfiguration != null) {
                CmcdData.Factory factory = new CmcdData.Factory(cmcdConfiguration, NBSSpanMetricUnit.Hour);
                factory.f15804j = NBSSpanMetricUnit.Minute;
                HlsMediaPlaylist hlsMediaPlaylist = defaultHlsPlaylistTracker.u;
                if (hlsMediaPlaylist != null) {
                    factory.f15801f = Boolean.valueOf(true ^ hlsMediaPlaylist.o);
                }
                dataSpecA = factory.a().a(dataSpecA);
            }
            ParsingLoadable parsingLoadable = new ParsingLoadable(this.f15222e, dataSpecA, 4, parserB);
            this.d.e(parsingLoadable, this, defaultHlsPlaylistTracker.d.b(parsingLoadable.f15841c));
        }

        public final void d(final Uri uri) {
            this.f15226j = 0L;
            if (this.f15227k) {
                return;
            }
            Loader loader = this.d;
            if (loader.b() || loader.f15836c != null) {
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = this.f15225i;
            if (jElapsedRealtime >= j2) {
                c(uri);
            } else {
                this.f15227k = true;
                DefaultHlsPlaylistTracker.this.l.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.hls.playlist.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultHlsPlaylistTracker.MediaPlaylistBundle mediaPlaylistBundle = this.f15311b;
                        mediaPlaylistBundle.f15227k = false;
                        mediaPlaylistBundle.c(uri);
                    }
                }, j2 - jElapsedRealtime);
            }
        }

        /* JADX WARN: Code duplicated, block: B:101:0x0259  */
        /* JADX WARN: Code duplicated, block: B:102:0x025b A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:103:0x025d  */
        /* JADX WARN: Code duplicated, block: B:105:0x0268  */
        /* JADX WARN: Code duplicated, block: B:106:0x026c  */
        /* JADX WARN: Code duplicated, block: B:109:0x027e  */
        /* JADX WARN: Code duplicated, block: B:111:0x0286  */
        /* JADX WARN: Code duplicated, block: B:117:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:24:0x0059  */
        /* JADX WARN: Code duplicated, block: B:26:0x005d  */
        /* JADX WARN: Code duplicated, block: B:28:0x0061  */
        /* JADX WARN: Code duplicated, block: B:29:0x0069  */
        /* JADX WARN: Code duplicated, block: B:31:0x00cd  */
        /* JADX WARN: Code duplicated, block: B:32:0x00d3  */
        /* JADX WARN: Code duplicated, block: B:34:0x00db  */
        /* JADX WARN: Code duplicated, block: B:36:0x00e0  */
        /* JADX WARN: Code duplicated, block: B:38:0x00e4  */
        /* JADX WARN: Code duplicated, block: B:39:0x00e7  */
        /* JADX WARN: Code duplicated, block: B:41:0x00eb  */
        /* JADX WARN: Code duplicated, block: B:42:0x00ee  */
        /* JADX WARN: Code duplicated, block: B:44:0x0105  */
        /* JADX WARN: Code duplicated, block: B:45:0x010c  */
        /* JADX WARN: Code duplicated, block: B:47:0x010f  */
        /* JADX WARN: Code duplicated, block: B:49:0x0114  */
        /* JADX WARN: Code duplicated, block: B:51:0x011b  */
        /* JADX WARN: Code duplicated, block: B:55:0x0124  */
        /* JADX WARN: Code duplicated, block: B:56:0x012c  */
        /* JADX WARN: Code duplicated, block: B:58:0x0130  */
        /* JADX WARN: Code duplicated, block: B:59:0x0133  */
        /* JADX WARN: Code duplicated, block: B:61:0x0136  */
        /* JADX WARN: Code duplicated, block: B:62:0x0138  */
        /* JADX WARN: Code duplicated, block: B:64:0x0144  */
        /* JADX WARN: Code duplicated, block: B:65:0x014b  */
        /* JADX WARN: Code duplicated, block: B:67:0x014e  */
        /* JADX WARN: Code duplicated, block: B:72:0x01b4  */
        /* JADX WARN: Code duplicated, block: B:74:0x01c0  */
        /* JADX WARN: Code duplicated, block: B:76:0x01c4  */
        /* JADX WARN: Code duplicated, block: B:81:0x01df A[LOOP:0: B:79:0x01d9->B:81:0x01df, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:82:0x01e9  */
        /* JADX WARN: Code duplicated, block: B:84:0x01ed  */
        /* JADX WARN: Code duplicated, block: B:86:0x01ff  */
        /* JADX WARN: Code duplicated, block: B:87:0x0207  */
        /* JADX WARN: Code duplicated, block: B:89:0x021a  */
        /* JADX WARN: Code duplicated, block: B:91:0x0221  */
        /* JADX WARN: Code duplicated, block: B:93:0x0225  */
        /* JADX WARN: Code duplicated, block: B:96:0x023e A[LOOP:1: B:94:0x0238->B:96:0x023e, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:99:0x0254 A[DONT_INVERT] */
        /* JADX WARN: Multi-variable type inference failed */
        public final void e(HlsMediaPlaylist hlsMediaPlaylist, LoadEventInfo loadEventInfo) {
            boolean z;
            long j2;
            ImmutableList immutableList;
            long j3;
            boolean z2;
            HlsMediaPlaylist hlsMediaPlaylist2;
            long j4;
            long j5;
            ImmutableList immutableList2;
            int size;
            int i2;
            HlsMediaPlaylist.Segment segment;
            long j6;
            long j7;
            long j8;
            HlsMediaPlaylist hlsMediaPlaylist3;
            int i3;
            int i4;
            ImmutableList immutableList3;
            HlsMediaPlaylist.Segment segment2;
            int i5;
            HlsMediaPlaylist hlsMediaPlaylist4;
            IOException iOException;
            Uri uri;
            long size2;
            HlsMediaPlaylist hlsMediaPlaylist5;
            IOException playlistStuckException;
            boolean z3;
            LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo;
            Iterator it;
            HlsMediaPlaylist hlsMediaPlaylist6;
            HlsMediaPlaylist.ServerControl serverControl;
            long j9;
            long j10;
            Iterator it2;
            int size3;
            int size4;
            int size5;
            HlsMediaPlaylist hlsMediaPlaylist7 = this.f15223f;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.g = jElapsedRealtime;
            DefaultHlsPlaylistTracker defaultHlsPlaylistTracker = DefaultHlsPlaylistTracker.this;
            CopyOnWriteArrayList copyOnWriteArrayList = defaultHlsPlaylistTracker.f15214f;
            if (hlsMediaPlaylist7 != null) {
                long j11 = hlsMediaPlaylist.f15238k;
                long j12 = hlsMediaPlaylist7.f15238k;
                z = j11 > j12 || (j11 >= j12 && ((size3 = hlsMediaPlaylist.r.size() - hlsMediaPlaylist7.r.size()) == 0 ? (size4 = hlsMediaPlaylist.s.size()) > (size5 = hlsMediaPlaylist7.s.size()) || (size4 == size5 && hlsMediaPlaylist.o && !hlsMediaPlaylist7.o) : size3 > 0));
                j2 = hlsMediaPlaylist.f15238k;
                immutableList = hlsMediaPlaylist.r;
                j3 = 0;
                if (z) {
                    copyOnWriteArrayList = copyOnWriteArrayList;
                    z2 = true;
                    if (hlsMediaPlaylist.p) {
                        j7 = hlsMediaPlaylist.f15235h;
                    } else {
                        hlsMediaPlaylist2 = defaultHlsPlaylistTracker.u;
                        if (hlsMediaPlaylist2 != null) {
                            j4 = hlsMediaPlaylist2.f15235h;
                        } else {
                            j4 = 0;
                        }
                        if (hlsMediaPlaylist7 == null) {
                            long j13 = hlsMediaPlaylist7.f15235h;
                            j5 = hlsMediaPlaylist7.f15238k;
                            immutableList2 = hlsMediaPlaylist7.r;
                            size = immutableList2.size();
                            i2 = (int) (j2 - j5);
                            if (i2 < immutableList2.size()) {
                                segment = (HlsMediaPlaylist.Segment) immutableList2.get(i2);
                            } else {
                                segment = null;
                            }
                            if (segment != null) {
                                j6 = segment.f15266f;
                            } else {
                                if (size == j2 - j5) {
                                    j6 = hlsMediaPlaylist7.u;
                                }
                                if (hlsMediaPlaylist.f15236i) {
                                    i5 = hlsMediaPlaylist.f15237j;
                                } else {
                                    hlsMediaPlaylist3 = defaultHlsPlaylistTracker.u;
                                    if (hlsMediaPlaylist3 != null) {
                                        i3 = hlsMediaPlaylist3.f15237j;
                                    } else {
                                        i3 = 0;
                                    }
                                    if (hlsMediaPlaylist7 == null) {
                                        i4 = (int) (j2 - hlsMediaPlaylist7.f15238k);
                                        immutableList3 = hlsMediaPlaylist7.r;
                                        if (i4 < immutableList3.size()) {
                                            segment2 = (HlsMediaPlaylist.Segment) immutableList3.get(i4);
                                        } else {
                                            segment2 = null;
                                        }
                                        if (segment2 != null) {
                                            i3 = (hlsMediaPlaylist7.f15237j + segment2.f15265e) - ((HlsMediaPlaylist.Segment) immutableList.get(0)).f15265e;
                                        }
                                    }
                                    i5 = i3;
                                }
                                iOException = null;
                                hlsMediaPlaylist4 = new HlsMediaPlaylist(hlsMediaPlaylist.d, hlsMediaPlaylist.f15290a, hlsMediaPlaylist.f15291b, hlsMediaPlaylist.f15233e, hlsMediaPlaylist.g, j8, true, i5, hlsMediaPlaylist.f15238k, hlsMediaPlaylist.l, hlsMediaPlaylist.m, hlsMediaPlaylist.n, hlsMediaPlaylist.f15292c, hlsMediaPlaylist.o, hlsMediaPlaylist.p, hlsMediaPlaylist.q, immutableList, hlsMediaPlaylist.s, hlsMediaPlaylist.v, hlsMediaPlaylist.t, hlsMediaPlaylist.w, hlsMediaPlaylist.x);
                            }
                            j7 = j13 + j6;
                        }
                        j8 = j4;
                        if (hlsMediaPlaylist.f15236i) {
                            i5 = hlsMediaPlaylist.f15237j;
                        } else {
                            hlsMediaPlaylist3 = defaultHlsPlaylistTracker.u;
                            if (hlsMediaPlaylist3 != null) {
                                i3 = hlsMediaPlaylist3.f15237j;
                            } else {
                                i3 = 0;
                            }
                            if (hlsMediaPlaylist7 == null) {
                                i4 = (int) (j2 - hlsMediaPlaylist7.f15238k);
                                immutableList3 = hlsMediaPlaylist7.r;
                                if (i4 < immutableList3.size()) {
                                    segment2 = (HlsMediaPlaylist.Segment) immutableList3.get(i4);
                                } else {
                                    segment2 = null;
                                }
                                if (segment2 != null) {
                                    i3 = (hlsMediaPlaylist7.f15237j + segment2.f15265e) - ((HlsMediaPlaylist.Segment) immutableList.get(0)).f15265e;
                                }
                            }
                            i5 = i3;
                        }
                        iOException = null;
                        hlsMediaPlaylist4 = new HlsMediaPlaylist(hlsMediaPlaylist.d, hlsMediaPlaylist.f15290a, hlsMediaPlaylist.f15291b, hlsMediaPlaylist.f15233e, hlsMediaPlaylist.g, j8, true, i5, hlsMediaPlaylist.f15238k, hlsMediaPlaylist.l, hlsMediaPlaylist.m, hlsMediaPlaylist.n, hlsMediaPlaylist.f15292c, hlsMediaPlaylist.o, hlsMediaPlaylist.p, hlsMediaPlaylist.q, immutableList, hlsMediaPlaylist.s, hlsMediaPlaylist.v, hlsMediaPlaylist.t, hlsMediaPlaylist.w, hlsMediaPlaylist.x);
                    }
                    j8 = j7;
                    if (hlsMediaPlaylist.f15236i) {
                        i5 = hlsMediaPlaylist.f15237j;
                    } else {
                        hlsMediaPlaylist3 = defaultHlsPlaylistTracker.u;
                        if (hlsMediaPlaylist3 != null) {
                            i3 = hlsMediaPlaylist3.f15237j;
                        } else {
                            i3 = 0;
                        }
                        if (hlsMediaPlaylist7 == null) {
                            i4 = (int) (j2 - hlsMediaPlaylist7.f15238k);
                            immutableList3 = hlsMediaPlaylist7.r;
                            if (i4 < immutableList3.size()) {
                                segment2 = (HlsMediaPlaylist.Segment) immutableList3.get(i4);
                            } else {
                                segment2 = null;
                            }
                            if (segment2 != null) {
                                i3 = (hlsMediaPlaylist7.f15237j + segment2.f15265e) - ((HlsMediaPlaylist.Segment) immutableList.get(0)).f15265e;
                            }
                        }
                        i5 = i3;
                    }
                    iOException = null;
                    hlsMediaPlaylist4 = new HlsMediaPlaylist(hlsMediaPlaylist.d, hlsMediaPlaylist.f15290a, hlsMediaPlaylist.f15291b, hlsMediaPlaylist.f15233e, hlsMediaPlaylist.g, j8, true, i5, hlsMediaPlaylist.f15238k, hlsMediaPlaylist.l, hlsMediaPlaylist.m, hlsMediaPlaylist.n, hlsMediaPlaylist.f15292c, hlsMediaPlaylist.o, hlsMediaPlaylist.p, hlsMediaPlaylist.q, immutableList, hlsMediaPlaylist.s, hlsMediaPlaylist.v, hlsMediaPlaylist.t, hlsMediaPlaylist.w, hlsMediaPlaylist.x);
                } else {
                    if (hlsMediaPlaylist.o) {
                        z2 = true;
                        hlsMediaPlaylist4 = hlsMediaPlaylist7;
                    } else if (hlsMediaPlaylist7.o) {
                        hlsMediaPlaylist4 = hlsMediaPlaylist7;
                        copyOnWriteArrayList = copyOnWriteArrayList;
                        iOException = null;
                        z2 = true;
                    } else {
                        z2 = true;
                        hlsMediaPlaylist4 = new HlsMediaPlaylist(hlsMediaPlaylist7.d, hlsMediaPlaylist7.f15290a, hlsMediaPlaylist7.f15291b, hlsMediaPlaylist7.f15233e, hlsMediaPlaylist7.g, hlsMediaPlaylist7.f15235h, hlsMediaPlaylist7.f15236i, hlsMediaPlaylist7.f15237j, hlsMediaPlaylist7.f15238k, hlsMediaPlaylist7.l, hlsMediaPlaylist7.m, hlsMediaPlaylist7.n, hlsMediaPlaylist7.f15292c, true, hlsMediaPlaylist7.p, hlsMediaPlaylist7.q, hlsMediaPlaylist7.r, hlsMediaPlaylist7.s, hlsMediaPlaylist7.v, hlsMediaPlaylist7.t, hlsMediaPlaylist7.w, hlsMediaPlaylist7.x);
                    }
                    iOException = null;
                }
                this.f15223f = hlsMediaPlaylist4;
                uri = this.f15220b;
                if (hlsMediaPlaylist4 != hlsMediaPlaylist7) {
                    this.l = iOException;
                    this.f15224h = jElapsedRealtime;
                    if (uri.equals(defaultHlsPlaylistTracker.t)) {
                        if (defaultHlsPlaylistTracker.u == null) {
                            defaultHlsPlaylistTracker.v = !hlsMediaPlaylist4.o;
                            defaultHlsPlaylistTracker.w = hlsMediaPlaylist4.f15235h;
                        }
                        defaultHlsPlaylistTracker.u = hlsMediaPlaylist4;
                        defaultHlsPlaylistTracker.m.y(hlsMediaPlaylist4);
                    }
                    it2 = copyOnWriteArrayList.iterator();
                    while (it2.hasNext()) {
                        ((HlsPlaylistTracker.PlaylistEventListener) it2.next()).h();
                    }
                } else if (!hlsMediaPlaylist4.o) {
                    size2 = hlsMediaPlaylist.f15238k + ((long) hlsMediaPlaylist.r.size());
                    hlsMediaPlaylist5 = this.f15223f;
                    if (size2 < hlsMediaPlaylist5.f15238k) {
                        playlistStuckException = new HlsPlaylistTracker.PlaylistResetException(uri);
                        z3 = z2;
                    } else {
                        if (jElapsedRealtime - this.f15224h > Util.f0(hlsMediaPlaylist5.m) * defaultHlsPlaylistTracker.g) {
                            playlistStuckException = new HlsPlaylistTracker.PlaylistStuckException(uri);
                        } else {
                            playlistStuckException = iOException;
                        }
                        z3 = false;
                    }
                    if (playlistStuckException != null) {
                        this.l = playlistStuckException;
                        loadErrorInfo = new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(4), playlistStuckException, z2 ? 1 : 0);
                        it = copyOnWriteArrayList.iterator();
                        while (it.hasNext()) {
                            ((HlsPlaylistTracker.PlaylistEventListener) it.next()).b(uri, loadErrorInfo, z3);
                        }
                    }
                }
                hlsMediaPlaylist6 = this.f15223f;
                serverControl = hlsMediaPlaylist6.v;
                j9 = hlsMediaPlaylist6.m;
                if (!serverControl.f15274e) {
                    if (hlsMediaPlaylist6 == hlsMediaPlaylist7) {
                        j10 = hlsMediaPlaylist6.n;
                        if (j10 != -9223372036854775807L) {
                            j3 = j10 / 2;
                        } else {
                            j9 /= 2;
                        }
                    }
                    this.f15225i = (Util.f0(j3) + jElapsedRealtime) - loadEventInfo.f15499e;
                    if (this.f15223f.o) {
                    }
                    if (!uri.equals(defaultHlsPlaylistTracker.t) || this.m) {
                        d(a());
                    }
                    return;
                }
                if (hlsMediaPlaylist6 == hlsMediaPlaylist7) {
                    j9 /= 2;
                }
                j3 = j9;
                this.f15225i = (Util.f0(j3) + jElapsedRealtime) - loadEventInfo.f15499e;
                if (this.f15223f.o) {
                    if (uri.equals(defaultHlsPlaylistTracker.t)) {
                    }
                    d(a());
                }
            }
            hlsMediaPlaylist.getClass();
            j2 = hlsMediaPlaylist.f15238k;
            immutableList = hlsMediaPlaylist.r;
            j3 = 0;
            if (z) {
                if (hlsMediaPlaylist.o) {
                    z2 = true;
                    hlsMediaPlaylist4 = hlsMediaPlaylist7;
                } else if (hlsMediaPlaylist7.o) {
                    hlsMediaPlaylist4 = hlsMediaPlaylist7;
                    copyOnWriteArrayList = copyOnWriteArrayList;
                    iOException = null;
                    z2 = true;
                } else {
                    z2 = true;
                    hlsMediaPlaylist4 = new HlsMediaPlaylist(hlsMediaPlaylist7.d, hlsMediaPlaylist7.f15290a, hlsMediaPlaylist7.f15291b, hlsMediaPlaylist7.f15233e, hlsMediaPlaylist7.g, hlsMediaPlaylist7.f15235h, hlsMediaPlaylist7.f15236i, hlsMediaPlaylist7.f15237j, hlsMediaPlaylist7.f15238k, hlsMediaPlaylist7.l, hlsMediaPlaylist7.m, hlsMediaPlaylist7.n, hlsMediaPlaylist7.f15292c, true, hlsMediaPlaylist7.p, hlsMediaPlaylist7.q, hlsMediaPlaylist7.r, hlsMediaPlaylist7.s, hlsMediaPlaylist7.v, hlsMediaPlaylist7.t, hlsMediaPlaylist7.w, hlsMediaPlaylist7.x);
                }
                iOException = null;
            } else {
                copyOnWriteArrayList = copyOnWriteArrayList;
                z2 = true;
                if (hlsMediaPlaylist.p) {
                    j7 = hlsMediaPlaylist.f15235h;
                } else {
                    hlsMediaPlaylist2 = defaultHlsPlaylistTracker.u;
                    if (hlsMediaPlaylist2 != null) {
                        j4 = hlsMediaPlaylist2.f15235h;
                    } else {
                        j4 = 0;
                    }
                    if (hlsMediaPlaylist7 == null) {
                        long j14 = hlsMediaPlaylist7.f15235h;
                        j5 = hlsMediaPlaylist7.f15238k;
                        immutableList2 = hlsMediaPlaylist7.r;
                        size = immutableList2.size();
                        i2 = (int) (j2 - j5);
                        if (i2 < immutableList2.size()) {
                            segment = (HlsMediaPlaylist.Segment) immutableList2.get(i2);
                        } else {
                            segment = null;
                        }
                        if (segment != null) {
                            j6 = segment.f15266f;
                        } else {
                            if (size == j2 - j5) {
                                j6 = hlsMediaPlaylist7.u;
                            }
                            if (hlsMediaPlaylist.f15236i) {
                                i5 = hlsMediaPlaylist.f15237j;
                            } else {
                                hlsMediaPlaylist3 = defaultHlsPlaylistTracker.u;
                                if (hlsMediaPlaylist3 != null) {
                                    i3 = hlsMediaPlaylist3.f15237j;
                                } else {
                                    i3 = 0;
                                }
                                if (hlsMediaPlaylist7 == null) {
                                    i4 = (int) (j2 - hlsMediaPlaylist7.f15238k);
                                    immutableList3 = hlsMediaPlaylist7.r;
                                    if (i4 < immutableList3.size()) {
                                        segment2 = (HlsMediaPlaylist.Segment) immutableList3.get(i4);
                                    } else {
                                        segment2 = null;
                                    }
                                    if (segment2 != null) {
                                        i3 = (hlsMediaPlaylist7.f15237j + segment2.f15265e) - ((HlsMediaPlaylist.Segment) immutableList.get(0)).f15265e;
                                    }
                                }
                                i5 = i3;
                            }
                            iOException = null;
                            hlsMediaPlaylist4 = new HlsMediaPlaylist(hlsMediaPlaylist.d, hlsMediaPlaylist.f15290a, hlsMediaPlaylist.f15291b, hlsMediaPlaylist.f15233e, hlsMediaPlaylist.g, j8, true, i5, hlsMediaPlaylist.f15238k, hlsMediaPlaylist.l, hlsMediaPlaylist.m, hlsMediaPlaylist.n, hlsMediaPlaylist.f15292c, hlsMediaPlaylist.o, hlsMediaPlaylist.p, hlsMediaPlaylist.q, immutableList, hlsMediaPlaylist.s, hlsMediaPlaylist.v, hlsMediaPlaylist.t, hlsMediaPlaylist.w, hlsMediaPlaylist.x);
                        }
                        j7 = j14 + j6;
                    }
                    j8 = j4;
                    if (hlsMediaPlaylist.f15236i) {
                        i5 = hlsMediaPlaylist.f15237j;
                    } else {
                        hlsMediaPlaylist3 = defaultHlsPlaylistTracker.u;
                        if (hlsMediaPlaylist3 != null) {
                            i3 = hlsMediaPlaylist3.f15237j;
                        } else {
                            i3 = 0;
                        }
                        if (hlsMediaPlaylist7 == null) {
                            i4 = (int) (j2 - hlsMediaPlaylist7.f15238k);
                            immutableList3 = hlsMediaPlaylist7.r;
                            if (i4 < immutableList3.size()) {
                                segment2 = (HlsMediaPlaylist.Segment) immutableList3.get(i4);
                            } else {
                                segment2 = null;
                            }
                            if (segment2 != null) {
                                i3 = (hlsMediaPlaylist7.f15237j + segment2.f15265e) - ((HlsMediaPlaylist.Segment) immutableList.get(0)).f15265e;
                            }
                        }
                        i5 = i3;
                    }
                    iOException = null;
                    hlsMediaPlaylist4 = new HlsMediaPlaylist(hlsMediaPlaylist.d, hlsMediaPlaylist.f15290a, hlsMediaPlaylist.f15291b, hlsMediaPlaylist.f15233e, hlsMediaPlaylist.g, j8, true, i5, hlsMediaPlaylist.f15238k, hlsMediaPlaylist.l, hlsMediaPlaylist.m, hlsMediaPlaylist.n, hlsMediaPlaylist.f15292c, hlsMediaPlaylist.o, hlsMediaPlaylist.p, hlsMediaPlaylist.q, immutableList, hlsMediaPlaylist.s, hlsMediaPlaylist.v, hlsMediaPlaylist.t, hlsMediaPlaylist.w, hlsMediaPlaylist.x);
                }
                j8 = j7;
                if (hlsMediaPlaylist.f15236i) {
                    i5 = hlsMediaPlaylist.f15237j;
                } else {
                    hlsMediaPlaylist3 = defaultHlsPlaylistTracker.u;
                    if (hlsMediaPlaylist3 != null) {
                        i3 = hlsMediaPlaylist3.f15237j;
                    } else {
                        i3 = 0;
                    }
                    if (hlsMediaPlaylist7 == null) {
                        i4 = (int) (j2 - hlsMediaPlaylist7.f15238k);
                        immutableList3 = hlsMediaPlaylist7.r;
                        if (i4 < immutableList3.size()) {
                            segment2 = (HlsMediaPlaylist.Segment) immutableList3.get(i4);
                        } else {
                            segment2 = null;
                        }
                        if (segment2 != null) {
                            i3 = (hlsMediaPlaylist7.f15237j + segment2.f15265e) - ((HlsMediaPlaylist.Segment) immutableList.get(0)).f15265e;
                        }
                    }
                    i5 = i3;
                }
                iOException = null;
                hlsMediaPlaylist4 = new HlsMediaPlaylist(hlsMediaPlaylist.d, hlsMediaPlaylist.f15290a, hlsMediaPlaylist.f15291b, hlsMediaPlaylist.f15233e, hlsMediaPlaylist.g, j8, true, i5, hlsMediaPlaylist.f15238k, hlsMediaPlaylist.l, hlsMediaPlaylist.m, hlsMediaPlaylist.n, hlsMediaPlaylist.f15292c, hlsMediaPlaylist.o, hlsMediaPlaylist.p, hlsMediaPlaylist.q, immutableList, hlsMediaPlaylist.s, hlsMediaPlaylist.v, hlsMediaPlaylist.t, hlsMediaPlaylist.w, hlsMediaPlaylist.x);
            }
            this.f15223f = hlsMediaPlaylist4;
            uri = this.f15220b;
            if (hlsMediaPlaylist4 != hlsMediaPlaylist7) {
                this.l = iOException;
                this.f15224h = jElapsedRealtime;
                if (uri.equals(defaultHlsPlaylistTracker.t)) {
                    if (defaultHlsPlaylistTracker.u == null) {
                        defaultHlsPlaylistTracker.v = !hlsMediaPlaylist4.o;
                        defaultHlsPlaylistTracker.w = hlsMediaPlaylist4.f15235h;
                    }
                    defaultHlsPlaylistTracker.u = hlsMediaPlaylist4;
                    defaultHlsPlaylistTracker.m.y(hlsMediaPlaylist4);
                }
                it2 = copyOnWriteArrayList.iterator();
                while (it2.hasNext()) {
                    ((HlsPlaylistTracker.PlaylistEventListener) it2.next()).h();
                }
            } else if (!hlsMediaPlaylist4.o) {
                size2 = hlsMediaPlaylist.f15238k + ((long) hlsMediaPlaylist.r.size());
                hlsMediaPlaylist5 = this.f15223f;
                if (size2 < hlsMediaPlaylist5.f15238k) {
                    playlistStuckException = new HlsPlaylistTracker.PlaylistResetException(uri);
                    z3 = z2;
                } else {
                    if (jElapsedRealtime - this.f15224h > Util.f0(hlsMediaPlaylist5.m) * defaultHlsPlaylistTracker.g) {
                        playlistStuckException = new HlsPlaylistTracker.PlaylistStuckException(uri);
                    } else {
                        playlistStuckException = iOException;
                    }
                    z3 = false;
                }
                if (playlistStuckException != null) {
                    this.l = playlistStuckException;
                    loadErrorInfo = new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(4), playlistStuckException, z2 ? 1 : 0);
                    it = copyOnWriteArrayList.iterator();
                    while (it.hasNext()) {
                        ((HlsPlaylistTracker.PlaylistEventListener) it.next()).b(uri, loadErrorInfo, z3);
                    }
                }
            }
            hlsMediaPlaylist6 = this.f15223f;
            serverControl = hlsMediaPlaylist6.v;
            j9 = hlsMediaPlaylist6.m;
            if (!serverControl.f15274e) {
                if (hlsMediaPlaylist6 == hlsMediaPlaylist7) {
                    j10 = hlsMediaPlaylist6.n;
                    if (j10 != -9223372036854775807L) {
                        j3 = j10 / 2;
                    } else {
                        j9 /= 2;
                    }
                }
                this.f15225i = (Util.f0(j3) + jElapsedRealtime) - loadEventInfo.f15499e;
                if (this.f15223f.o) {
                    if (uri.equals(defaultHlsPlaylistTracker.t)) {
                    }
                    d(a());
                }
            }
            if (hlsMediaPlaylist6 == hlsMediaPlaylist7) {
                j9 /= 2;
            }
            j3 = j9;
            this.f15225i = (Util.f0(j3) + jElapsedRealtime) - loadEventInfo.f15499e;
            if (this.f15223f.o) {
                if (uri.equals(defaultHlsPlaylistTracker.t)) {
                }
                d(a());
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public final void l(Loader.Loadable loadable, long j2, long j3, int i2) {
            LoadEventInfo loadEventInfo;
            ParsingLoadable parsingLoadable = (ParsingLoadable) loadable;
            if (i2 == 0) {
                loadEventInfo = new LoadEventInfo(parsingLoadable.f15839a, parsingLoadable.f15840b, j2);
            } else {
                long j4 = parsingLoadable.f15839a;
                DataSpec dataSpec = parsingLoadable.f15840b;
                StatsDataSource statsDataSource = parsingLoadable.d;
                loadEventInfo = new LoadEventInfo(j4, dataSpec, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
            }
            DefaultHlsPlaylistTracker.this.f15217j.f(loadEventInfo, parsingLoadable.f15841c, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, i2);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public final void q(Loader.Loadable loadable, long j2, long j3) {
            ParsingLoadable parsingLoadable = (ParsingLoadable) loadable;
            HlsPlaylist hlsPlaylist = (HlsPlaylist) parsingLoadable.f15843f;
            long j4 = parsingLoadable.f15839a;
            DataSpec dataSpec = parsingLoadable.f15840b;
            StatsDataSource statsDataSource = parsingLoadable.d;
            LoadEventInfo loadEventInfo = new LoadEventInfo(j4, dataSpec, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
            if (hlsPlaylist instanceof HlsMediaPlaylist) {
                e((HlsMediaPlaylist) hlsPlaylist, loadEventInfo);
                DefaultHlsPlaylistTracker.this.f15217j.c(loadEventInfo, 4, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
            } else {
                ParserException parserExceptionB = ParserException.b("Loaded playlist has unexpected type.");
                this.l = parserExceptionB;
                DefaultHlsPlaylistTracker.this.f15217j.e(loadEventInfo, 4, parserExceptionB, true);
            }
            DefaultHlsPlaylistTracker.this.d.getClass();
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public final void w(Loader.Loadable loadable, long j2, long j3, boolean z) {
            ParsingLoadable parsingLoadable = (ParsingLoadable) loadable;
            long j4 = parsingLoadable.f15839a;
            DataSpec dataSpec = parsingLoadable.f15840b;
            StatsDataSource statsDataSource = parsingLoadable.d;
            LoadEventInfo loadEventInfo = new LoadEventInfo(j4, dataSpec, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
            DefaultHlsPlaylistTracker defaultHlsPlaylistTracker = DefaultHlsPlaylistTracker.this;
            defaultHlsPlaylistTracker.d.getClass();
            defaultHlsPlaylistTracker.f15217j.b(loadEventInfo, 4, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        }
    }

    public final class RedundantGroupBundle {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HlsRedundantGroup f15228a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashMap f15229b;

        /* JADX WARN: Multi-variable type inference failed */
        public RedundantGroupBundle(HlsRedundantGroup hlsRedundantGroup) {
            this.f15228a = hlsRedundantGroup;
            HashMap map = new HashMap();
            UnmodifiableIterator it = ImmutableSet.s(hlsRedundantGroup.f15306b.keySet()).iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                Uri uri = (Uri) hlsRedundantGroup.f15306b.get(str);
                uri.getClass();
                map.put(uri, DefaultHlsPlaylistTracker.this.new MediaPlaylistBundle(uri, str));
            }
            this.f15229b = map;
        }

        public static HlsMediaPlaylist a(RedundantGroupBundle redundantGroupBundle, Uri uri) {
            HashMap map = redundantGroupBundle.f15229b;
            Preconditions.q(map.containsKey(uri));
            MediaPlaylistBundle mediaPlaylistBundle = (MediaPlaylistBundle) map.get(uri);
            mediaPlaylistBundle.getClass();
            return mediaPlaylistBundle.f15223f;
        }

        public static void b(RedundantGroupBundle redundantGroupBundle, Uri uri, boolean z) {
            HashMap map = redundantGroupBundle.f15229b;
            Preconditions.q(map.containsKey(uri));
            MediaPlaylistBundle mediaPlaylistBundle = (MediaPlaylistBundle) map.get(uri);
            mediaPlaylistBundle.getClass();
            mediaPlaylistBundle.d(z ? mediaPlaylistBundle.a() : mediaPlaylistBundle.f15220b);
        }

        /* JADX WARN: Code duplicated, block: B:28:0x00db A[RETURN] */
        /* JADX WARN: Multi-variable type inference failed */
        public static boolean c(RedundantGroupBundle redundantGroupBundle, Uri uri, long j2) {
            boolean z;
            HashMap map = redundantGroupBundle.f15229b;
            Preconditions.q(map.containsKey(uri));
            MediaPlaylistBundle mediaPlaylistBundle = (MediaPlaylistBundle) map.get(uri);
            mediaPlaylistBundle.getClass();
            mediaPlaylistBundle.f15226j = SystemClock.elapsedRealtime() + j2;
            DefaultHlsPlaylistTracker defaultHlsPlaylistTracker = DefaultHlsPlaylistTracker.this;
            HlsRedundantGroup hlsRedundantGroup = redundantGroupBundle.f15228a;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            for (MediaPlaylistBundle mediaPlaylistBundle2 : map.values()) {
                if (!mediaPlaylistBundle2.f15221c.equals(hlsRedundantGroup.d) && jElapsedRealtime > mediaPlaylistBundle2.f15226j) {
                    Uri uriC = hlsRedundantGroup.c();
                    String str = mediaPlaylistBundle2.f15221c;
                    Preconditions.q(hlsRedundantGroup.f15306b.containsKey(str));
                    hlsRedundantGroup.d = str;
                    if (uriC.equals(defaultHlsPlaylistTracker.t)) {
                        defaultHlsPlaylistTracker.u(mediaPlaylistBundle2.f15220b);
                    }
                    MediaPlaylistBundle mediaPlaylistBundle3 = (MediaPlaylistBundle) map.get(uriC);
                    mediaPlaylistBundle3.getClass();
                    mediaPlaylistBundle2.m = mediaPlaylistBundle3.m;
                    mediaPlaylistBundle3.m = false;
                    return true;
                }
            }
            Uri uri2 = defaultHlsPlaylistTracker.t;
            if (uri2 == null || uri.equals(uri2)) {
                ImmutableList immutableList = defaultHlsPlaylistTracker.p;
                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                for (int i2 = 0; i2 < immutableList.size(); i2++) {
                    Uri uriC2 = ((HlsRedundantGroup) immutableList.get(i2)).c();
                    RedundantGroupBundle redundantGroupBundle2 = (RedundantGroupBundle) defaultHlsPlaylistTracker.f15213e.get(uriC2);
                    redundantGroupBundle2.getClass();
                    HashMap map2 = redundantGroupBundle2.f15229b;
                    Preconditions.q(map2.containsKey(uriC2));
                    MediaPlaylistBundle mediaPlaylistBundle4 = (MediaPlaylistBundle) map2.get(uriC2);
                    mediaPlaylistBundle4.getClass();
                    if (jElapsedRealtime2 > mediaPlaylistBundle4.f15226j) {
                        defaultHlsPlaylistTracker.t = uriC2;
                        Uri uriT = defaultHlsPlaylistTracker.t(uriC2);
                        Preconditions.q(map2.containsKey(uriC2));
                        MediaPlaylistBundle mediaPlaylistBundle5 = (MediaPlaylistBundle) map2.get(uriC2);
                        mediaPlaylistBundle5.getClass();
                        mediaPlaylistBundle5.d(uriT);
                        z = true;
                        if (z) {
                            return false;
                        }
                    }
                }
                z = false;
                if (z) {
                    return false;
                }
            }
            return true;
        }
    }

    public DefaultHlsPlaylistTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory, CmcdConfiguration cmcdConfiguration, double d, Supplier<ReleasableExecutor> supplier) {
        this.f15211b = hlsDataSourceFactory;
        this.f15212c = hlsPlaylistParserFactory;
        this.d = loadErrorHandlingPolicy;
        this.f15215h = cmcdConfiguration;
        this.g = d;
        this.f15216i = supplier;
        this.f15214f = new CopyOnWriteArrayList();
        this.f15213e = new HashMap();
        this.w = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public final boolean a(Uri uri, long j2) {
        RedundantGroupBundle redundantGroupBundle = (RedundantGroupBundle) this.f15213e.get(uri);
        if (redundantGroupBundle != null) {
            HashMap map = redundantGroupBundle.f15229b;
            Preconditions.q(map.containsKey(uri));
            MediaPlaylistBundle mediaPlaylistBundle = (MediaPlaylistBundle) map.get(uri);
            mediaPlaylistBundle.getClass();
            if (j2 <= mediaPlaylistBundle.f15226j) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final Loader.LoadErrorAction b(Loader.Loadable loadable, long j2, long j3, IOException iOException, int i2) {
        ParsingLoadable parsingLoadable = (ParsingLoadable) loadable;
        long j4 = parsingLoadable.f15839a;
        DataSpec dataSpec = parsingLoadable.f15840b;
        StatsDataSource statsDataSource = parsingLoadable.d;
        LoadEventInfo loadEventInfo = new LoadEventInfo(j4, dataSpec, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
        int i3 = parsingLoadable.f15841c;
        long jA = this.d.a(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(i3), iOException, i2));
        boolean z = jA == -9223372036854775807L;
        this.f15217j.e(loadEventInfo, i3, iOException, z);
        return z ? Loader.f15833f : new Loader.LoadErrorAction(0, jA);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public final void c(Uri uri) {
        RedundantGroupBundle redundantGroupBundle = (RedundantGroupBundle) this.f15213e.get(uri);
        if (redundantGroupBundle != null) {
            HashMap map = redundantGroupBundle.f15229b;
            Preconditions.q(map.containsKey(uri));
            MediaPlaylistBundle mediaPlaylistBundle = (MediaPlaylistBundle) map.get(uri);
            mediaPlaylistBundle.getClass();
            mediaPlaylistBundle.m = false;
        }
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public final void d(Uri uri) {
        RedundantGroupBundle redundantGroupBundle = (RedundantGroupBundle) this.f15213e.get(uri);
        if (redundantGroupBundle != null) {
            HashMap map = redundantGroupBundle.f15229b;
            Preconditions.q(map.containsKey(uri));
            MediaPlaylistBundle mediaPlaylistBundle = (MediaPlaylistBundle) map.get(uri);
            mediaPlaylistBundle.getClass();
            mediaPlaylistBundle.d.c(Integer.MIN_VALUE);
            IOException iOException = mediaPlaylistBundle.l;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public final ImmutableList e(int i2) {
        if (i2 == 0) {
            return this.p;
        }
        if (i2 == 1) {
            return this.q;
        }
        if (i2 == 2) {
            return this.r;
        }
        if (i2 != 3) {
            return null;
        }
        return this.s;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public final long f() {
        return this.w;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public final HlsMultivariantPlaylist g() {
        return this.n;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public final void h(Uri uri) {
        RedundantGroupBundle redundantGroupBundle = (RedundantGroupBundle) this.f15213e.get(uri);
        if (redundantGroupBundle != null) {
            RedundantGroupBundle.b(redundantGroupBundle, uri, true);
        }
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public final boolean i(Uri uri) {
        int i2;
        RedundantGroupBundle redundantGroupBundle = (RedundantGroupBundle) this.f15213e.get(uri);
        if (redundantGroupBundle == null) {
            return false;
        }
        HashMap map = redundantGroupBundle.f15229b;
        Preconditions.q(map.containsKey(uri));
        MediaPlaylistBundle mediaPlaylistBundle = (MediaPlaylistBundle) map.get(uri);
        mediaPlaylistBundle.getClass();
        if (mediaPlaylistBundle.f15223f == null) {
            return false;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jMax = Math.max(30000L, Util.f0(mediaPlaylistBundle.f15223f.u));
        HlsMediaPlaylist hlsMediaPlaylist = mediaPlaylistBundle.f15223f;
        return hlsMediaPlaylist.o || (i2 = hlsMediaPlaylist.d) == 2 || i2 == 1 || mediaPlaylistBundle.g + jMax > jElapsedRealtime;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public final void j(HlsPlaylistTracker.PlaylistEventListener playlistEventListener) {
        this.f15214f.remove(playlistEventListener);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public final void k(HlsPlaylistTracker.PlaylistEventListener playlistEventListener) {
        this.f15214f.add(playlistEventListener);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final void l(Loader.Loadable loadable, long j2, long j3, int i2) {
        LoadEventInfo loadEventInfo;
        ParsingLoadable parsingLoadable = (ParsingLoadable) loadable;
        if (i2 == 0) {
            loadEventInfo = new LoadEventInfo(parsingLoadable.f15839a, parsingLoadable.f15840b, j2);
        } else {
            long j4 = parsingLoadable.f15839a;
            DataSpec dataSpec = parsingLoadable.f15840b;
            StatsDataSource statsDataSource = parsingLoadable.d;
            loadEventInfo = new LoadEventInfo(j4, dataSpec, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
        }
        this.f15217j.f(loadEventInfo, parsingLoadable.f15841c, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, i2);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public final boolean m() {
        return this.v;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public final boolean n(Uri uri, long j2) {
        RedundantGroupBundle redundantGroupBundle = (RedundantGroupBundle) this.f15213e.get(uri);
        if (redundantGroupBundle != null) {
            return RedundantGroupBundle.c(redundantGroupBundle, uri, j2);
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public final boolean o(HlsRedundantGroup hlsRedundantGroup, long j2) {
        RedundantGroupBundle redundantGroupBundle = (RedundantGroupBundle) this.f15213e.get(hlsRedundantGroup.c());
        if (redundantGroupBundle == null) {
            return false;
        }
        Iterator it = redundantGroupBundle.f15229b.values().iterator();
        boolean z = true;
        while (it.hasNext()) {
            z &= j2 <= ((MediaPlaylistBundle) it.next()).f15226j;
        }
        return z;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public final HlsRedundantGroup p(Uri uri) {
        RedundantGroupBundle redundantGroupBundle = (RedundantGroupBundle) this.f15213e.get(uri);
        if (redundantGroupBundle != null) {
            return redundantGroupBundle.f15228a;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final void q(Loader.Loadable loadable, long j2, long j3) {
        HlsMultivariantPlaylist hlsMultivariantPlaylist;
        ParsingLoadable parsingLoadable = (ParsingLoadable) loadable;
        HlsPlaylist hlsPlaylist = (HlsPlaylist) parsingLoadable.f15843f;
        boolean z = hlsPlaylist instanceof HlsMediaPlaylist;
        if (z) {
            String str = hlsPlaylist.f15290a;
            HlsMultivariantPlaylist hlsMultivariantPlaylist2 = HlsMultivariantPlaylist.n;
            Uri uri = Uri.parse(str);
            Format.Builder builder = new Format.Builder();
            builder.f13764a = ContentTree.ROOT_ID;
            builder.m = MimeTypes.p("application/x-mpegURL");
            List listSingletonList = Collections.singletonList(new HlsMultivariantPlaylist.Variant(uri, new Format(builder), null, null, null, null, null, null));
            List list = Collections.EMPTY_LIST;
            hlsMultivariantPlaylist = new HlsMultivariantPlaylist("", list, listSingletonList, list, list, list, list, null, null, false, Collections.EMPTY_MAP, list);
        } else {
            hlsMultivariantPlaylist = (HlsMultivariantPlaylist) hlsPlaylist;
        }
        this.n = hlsMultivariantPlaylist;
        try {
            this.p = HlsRedundantGroup.b(hlsMultivariantPlaylist.f15275e);
            this.q = HlsRedundantGroup.a(hlsMultivariantPlaylist.f15276f);
            this.r = HlsRedundantGroup.a(hlsMultivariantPlaylist.g);
            this.s = HlsRedundantGroup.a(hlsMultivariantPlaylist.f15277h);
            this.t = ((HlsRedundantGroup) this.p.get(0)).c();
            this.f15214f.add(new FirstPrimaryMediaPlaylistListener());
            s(this.p);
            s(this.q);
            s(this.r);
            s(this.s);
            long j4 = parsingLoadable.f15839a;
            DataSpec dataSpec = parsingLoadable.f15840b;
            StatsDataSource statsDataSource = parsingLoadable.d;
            LoadEventInfo loadEventInfo = new LoadEventInfo(j4, dataSpec, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
            RedundantGroupBundle redundantGroupBundle = (RedundantGroupBundle) this.f15213e.get(this.t);
            redundantGroupBundle.getClass();
            if (z) {
                Uri uri2 = parsingLoadable.d.f14443c;
                HashMap map = redundantGroupBundle.f15229b;
                Preconditions.q(map.containsKey(uri2));
                MediaPlaylistBundle mediaPlaylistBundle = (MediaPlaylistBundle) map.get(uri2);
                mediaPlaylistBundle.getClass();
                mediaPlaylistBundle.e((HlsMediaPlaylist) hlsPlaylist, loadEventInfo);
            } else {
                RedundantGroupBundle.b(redundantGroupBundle, this.t, false);
            }
            this.d.getClass();
            this.f15217j.c(loadEventInfo, 4, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        } catch (ParserException e2) {
            this.o = e2;
        }
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public final HlsMediaPlaylist r(Uri uri, boolean z) {
        HashMap map = this.f15213e;
        RedundantGroupBundle redundantGroupBundle = (RedundantGroupBundle) map.get(uri);
        if (redundantGroupBundle == null) {
            return null;
        }
        HlsMediaPlaylist hlsMediaPlaylistA = RedundantGroupBundle.a(redundantGroupBundle, uri);
        if (hlsMediaPlaylistA != null && z) {
            u(uri);
            RedundantGroupBundle redundantGroupBundle2 = (RedundantGroupBundle) map.get(uri);
            redundantGroupBundle2.getClass();
            HashMap map2 = redundantGroupBundle2.f15229b;
            Preconditions.q(map2.containsKey(uri));
            MediaPlaylistBundle mediaPlaylistBundle = (MediaPlaylistBundle) map2.get(uri);
            mediaPlaylistBundle.getClass();
            if (!mediaPlaylistBundle.m) {
                Preconditions.q(map2.containsKey(uri));
                MediaPlaylistBundle mediaPlaylistBundle2 = (MediaPlaylistBundle) map2.get(uri);
                mediaPlaylistBundle2.getClass();
                mediaPlaylistBundle2.m = true;
                HlsMediaPlaylist hlsMediaPlaylistA2 = RedundantGroupBundle.a(redundantGroupBundle2, uri);
                if (hlsMediaPlaylistA2 != null && !hlsMediaPlaylistA2.o) {
                    RedundantGroupBundle.b(redundantGroupBundle2, uri, true);
                }
            }
        }
        return hlsMediaPlaylistA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void s(List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            HlsRedundantGroup hlsRedundantGroup = (HlsRedundantGroup) list.get(i2);
            RedundantGroupBundle redundantGroupBundle = new RedundantGroupBundle(hlsRedundantGroup);
            UnmodifiableIterator it = ImmutableSet.s(hlsRedundantGroup.f15306b.values()).iterator();
            while (it.hasNext()) {
                this.f15213e.put((Uri) it.next(), redundantGroupBundle);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Uri t(Uri uri) {
        HlsMediaPlaylist.RenditionReport renditionReport;
        HlsMediaPlaylist hlsMediaPlaylist = this.u;
        if (hlsMediaPlaylist == null || !hlsMediaPlaylist.v.f15274e || (renditionReport = (HlsMediaPlaylist.RenditionReport) hlsMediaPlaylist.t.get(uri)) == null) {
            return uri;
        }
        Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(renditionReport.f15261b));
        int i2 = renditionReport.f15262c;
        if (i2 != -1) {
            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(i2));
        }
        return builderBuildUpon.build();
    }

    public final void u(Uri uri) {
        if (uri.equals(this.t)) {
            return;
        }
        List list = this.n.f15275e;
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (uri.equals(((HlsMultivariantPlaylist.Variant) list.get(i2)).f15284a)) {
                HlsMediaPlaylist hlsMediaPlaylist = this.u;
                if (hlsMediaPlaylist == null || !hlsMediaPlaylist.o) {
                    this.t = uri;
                    RedundantGroupBundle redundantGroupBundle = (RedundantGroupBundle) this.f15213e.get(uri);
                    redundantGroupBundle.getClass();
                    HlsMediaPlaylist hlsMediaPlaylistA = RedundantGroupBundle.a(redundantGroupBundle, uri);
                    if (hlsMediaPlaylistA != null && hlsMediaPlaylistA.o) {
                        this.u = hlsMediaPlaylistA;
                        this.m.y(hlsMediaPlaylistA);
                        return;
                    }
                    Uri uriT = t(uri);
                    HashMap map = redundantGroupBundle.f15229b;
                    Preconditions.q(map.containsKey(uri));
                    MediaPlaylistBundle mediaPlaylistBundle = (MediaPlaylistBundle) map.get(uri);
                    mediaPlaylistBundle.getClass();
                    mediaPlaylistBundle.d(uriT);
                    return;
                }
                return;
            }
        }
    }

    public final void v() {
        this.t = null;
        this.u = null;
        this.n = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.o = null;
        this.w = -9223372036854775807L;
        this.f15218k.d(null);
        this.f15218k = null;
        HashMap map = this.f15213e;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((RedundantGroupBundle) it.next()).f15229b.values().iterator();
            while (it2.hasNext()) {
                ((MediaPlaylistBundle) it2.next()).d.d(null);
            }
        }
        this.l.removeCallbacksAndMessages(null);
        this.l = null;
        map.clear();
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final void w(Loader.Loadable loadable, long j2, long j3, boolean z) {
        ParsingLoadable parsingLoadable = (ParsingLoadable) loadable;
        long j4 = parsingLoadable.f15839a;
        DataSpec dataSpec = parsingLoadable.f15840b;
        StatsDataSource statsDataSource = parsingLoadable.d;
        LoadEventInfo loadEventInfo = new LoadEventInfo(j4, dataSpec, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
        this.d.getClass();
        this.f15217j.b(loadEventInfo, 4, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
    }

    public DefaultHlsPlaylistTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory, CmcdConfiguration cmcdConfiguration, Supplier<ReleasableExecutor> supplier) {
        this(hlsDataSourceFactory, loadErrorHandlingPolicy, hlsPlaylistParserFactory, cmcdConfiguration, 3.5d, supplier);
    }
}
