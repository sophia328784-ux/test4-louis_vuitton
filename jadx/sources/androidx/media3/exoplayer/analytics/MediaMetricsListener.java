package androidx.media3.exoplayer.analytics;

import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.FileDataSource;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.UdpDataSource;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.UnsupportedDrmException;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.aa0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class MediaMetricsListener implements AnalyticsListener, PlaybackSessionManager.Listener {
    public int A;
    public boolean B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f14839a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DefaultPlaybackSessionManager f14841c;
    public final PlaybackSession d;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f14846j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PlaybackMetrics.Builder f14847k;
    public int l;
    public PlaybackException o;
    public PendingFormatUpdate p;
    public PendingFormatUpdate q;
    public PendingFormatUpdate r;
    public Format s;
    public Format t;
    public Format u;
    public boolean v;
    public int w;
    public boolean x;
    public int y;
    public int z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f14840b = BackgroundExecutor.a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Timeline.Window f14843f = new Timeline.Window();
    public final Timeline.Period g = new Timeline.Period();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashMap f14845i = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap f14844h = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f14842e = SystemClock.elapsedRealtime();
    public int m = 0;
    public int n = 0;

    public static final class ErrorInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14848a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14849b;

        public ErrorInfo(int i2, int i3) {
            this.f14848a = i2;
            this.f14849b = i3;
        }
    }

    public static final class PendingFormatUpdate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Format f14850a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14851b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f14852c;

        public PendingFormatUpdate(Format format, int i2, String str) {
            this.f14850a = format;
            this.f14851b = i2;
            this.f14852c = str;
        }
    }

    public MediaMetricsListener(Context context, PlaybackSession playbackSession) {
        this.f14839a = context.getApplicationContext();
        this.d = playbackSession;
        DefaultPlaybackSessionManager defaultPlaybackSessionManager = new DefaultPlaybackSessionManager();
        this.f14841c = defaultPlaybackSessionManager;
        defaultPlaybackSessionManager.f14831e = this;
    }

    public static MediaMetricsListener m(Context context) {
        MediaMetricsManager mediaMetricsManager = (MediaMetricsManager) context.getSystemService("media_metrics");
        if (mediaMetricsManager == null) {
            return null;
        }
        return new MediaMetricsListener(context, mediaMetricsManager.createPlaybackSession());
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public final void a(DecoderCounters decoderCounters) {
        this.y += decoderCounters.g;
        this.z += decoderCounters.f14576e;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public final void b(VideoSize videoSize) {
        PendingFormatUpdate pendingFormatUpdate = this.p;
        if (pendingFormatUpdate != null) {
            Format format = pendingFormatUpdate.f14850a;
            if (format.w == -1) {
                Format.Builder builderA = format.a();
                builderA.u = videoSize.f14024a;
                builderA.v = videoSize.f14025b;
                this.p = new PendingFormatUpdate(new Format(builderA), pendingFormatUpdate.f14851b, pendingFormatUpdate.f14852c);
            }
        }
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public final void c(MediaLoadData mediaLoadData) {
        this.w = mediaLoadData.f15510a;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public final void d(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.d;
        if (mediaPeriodId == null) {
            return;
        }
        Format format = mediaLoadData.f15512c;
        format.getClass();
        int i2 = mediaLoadData.d;
        Timeline timeline = eventTime.f14805b;
        mediaPeriodId.getClass();
        PendingFormatUpdate pendingFormatUpdate = new PendingFormatUpdate(format, i2, this.f14841c.c(timeline, mediaPeriodId));
        int i3 = mediaLoadData.f15511b;
        if (i3 != 0) {
            if (i3 == 1) {
                this.q = pendingFormatUpdate;
                return;
            } else if (i3 != 2) {
                if (i3 != 3) {
                    return;
                }
                this.r = pendingFormatUpdate;
                return;
            }
        }
        this.p = pendingFormatUpdate;
    }

    /* JADX WARN: Code duplicated, block: B:253:0x0440  */
    /* JADX WARN: Code duplicated, block: B:367:0x05b5 A[PHI: r5
      0x05b5: PHI (r5v52 int) = (r5v51 int), (r5v50 int), (r5v50 int), (r5v50 int) binds: [B:374:0x05c6, B:356:0x059a, B:357:0x059c, B:358:0x059e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:384:0x05d8  */
    /* JADX WARN: Code duplicated, block: B:387:0x0606  */
    /* JADX WARN: Code duplicated, block: B:391:0x0618 A[Catch: all -> 0x0627, TryCatch #2 {all -> 0x0627, blocks: (B:389:0x0614, B:391:0x0618, B:394:0x0629, B:395:0x0633, B:397:0x0639, B:399:0x0646, B:401:0x064a), top: B:412:0x0614 }] */
    /* JADX WARN: Code duplicated, block: B:397:0x0639 A[Catch: all -> 0x0627, TryCatch #2 {all -> 0x0627, blocks: (B:389:0x0614, B:391:0x0618, B:394:0x0629, B:395:0x0633, B:397:0x0639, B:399:0x0646, B:401:0x064a), top: B:412:0x0614 }] */
    /* JADX WARN: Code duplicated, block: B:407:0x0654 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:412:0x0614 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public final void e(Player player, AnalyticsListener.Events events) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        ErrorInfo errorInfo;
        ErrorInfo errorInfo2;
        int i8;
        int i9;
        int i10;
        ErrorInfo errorInfo3;
        int i11;
        int i12;
        int i13;
        PendingFormatUpdate pendingFormatUpdate;
        int i14;
        boolean z2;
        DefaultPlaybackSessionManager defaultPlaybackSessionManager;
        String str;
        Iterator it;
        DefaultPlaybackSessionManager.SessionDescriptor sessionDescriptor;
        MediaMetricsListener mediaMetricsListener;
        Format format;
        DrmInitData drmInitData;
        int i15;
        if (events.f14812a.f13752a.size() == 0) {
            return;
        }
        int i16 = 0;
        while (true) {
            boolean z3 = true;
            if (i16 >= events.f14812a.f13752a.size()) {
                break;
            }
            int iB = events.f14812a.b(i16);
            AnalyticsListener.EventTime eventTime = (AnalyticsListener.EventTime) events.f14813b.get(iB);
            eventTime.getClass();
            DefaultPlaybackSessionManager defaultPlaybackSessionManager2 = this.f14841c;
            if (iB == 0) {
                synchronized (defaultPlaybackSessionManager2) {
                    try {
                        defaultPlaybackSessionManager2.f14831e.getClass();
                        Timeline timeline = defaultPlaybackSessionManager2.f14832f;
                        defaultPlaybackSessionManager2.f14832f = eventTime.f14805b;
                        Iterator it2 = defaultPlaybackSessionManager2.f14830c.values().iterator();
                        while (it2.hasNext()) {
                            DefaultPlaybackSessionManager.SessionDescriptor sessionDescriptor2 = (DefaultPlaybackSessionManager.SessionDescriptor) it2.next();
                            if (!sessionDescriptor2.b(timeline, defaultPlaybackSessionManager2.f14832f) || sessionDescriptor2.a(eventTime)) {
                                it2.remove();
                                if (sessionDescriptor2.f14834a.equals(defaultPlaybackSessionManager2.g)) {
                                    defaultPlaybackSessionManager2.a(sessionDescriptor2);
                                }
                                if (sessionDescriptor2.f14837e) {
                                    defaultPlaybackSessionManager2.f14831e.r(eventTime, sessionDescriptor2.f14834a);
                                }
                            }
                        }
                        defaultPlaybackSessionManager2.d(eventTime);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } else if (iB == 11) {
                int i17 = this.l;
                synchronized (defaultPlaybackSessionManager2) {
                    try {
                        defaultPlaybackSessionManager2.f14831e.getClass();
                        if (i17 != 0) {
                            z3 = false;
                        }
                        Iterator it3 = defaultPlaybackSessionManager2.f14830c.values().iterator();
                        while (it3.hasNext()) {
                            DefaultPlaybackSessionManager.SessionDescriptor sessionDescriptor3 = (DefaultPlaybackSessionManager.SessionDescriptor) it3.next();
                            if (sessionDescriptor3.a(eventTime)) {
                                it3.remove();
                                boolean zEquals = sessionDescriptor3.f14834a.equals(defaultPlaybackSessionManager2.g);
                                if (zEquals) {
                                    defaultPlaybackSessionManager2.a(sessionDescriptor3);
                                }
                                if (sessionDescriptor3.f14837e) {
                                    if (z3 && zEquals) {
                                        boolean z4 = sessionDescriptor3.f14838f;
                                    }
                                    defaultPlaybackSessionManager2.f14831e.r(eventTime, sessionDescriptor3.f14834a);
                                }
                            }
                        }
                        defaultPlaybackSessionManager2.d(eventTime);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } else {
                defaultPlaybackSessionManager2.e(eventTime);
            }
            i16++;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (events.a(0)) {
            AnalyticsListener.EventTime eventTime2 = (AnalyticsListener.EventTime) events.f14813b.get(0);
            eventTime2.getClass();
            if (this.f14847k != null) {
                p(eventTime2.f14805b, eventTime2.d);
            }
        }
        if (events.a(2) && this.f14847k != null) {
            UnmodifiableListIterator unmodifiableListIteratorListIterator = player.n().f14012a.listIterator(0);
            loop3: while (true) {
                if (!unmodifiableListIteratorListIterator.hasNext()) {
                    drmInitData = null;
                    break;
                }
                Tracks.Group group = (Tracks.Group) unmodifiableListIteratorListIterator.next();
                for (int i18 = 0; i18 < group.f14016a; i18++) {
                    if (group.f14019e[i18] && (drmInitData = group.f14017b.d[i18].s) != null) {
                        break loop3;
                    }
                }
            }
            if (drmInitData != null) {
                PlaybackMetrics.Builder builder = this.f14847k;
                String str2 = Util.f14242a;
                int i19 = 0;
                while (true) {
                    if (i19 >= drmInitData.f13747e) {
                        i15 = 1;
                        break;
                    }
                    UUID uuid = drmInitData.f13745b[i19].f13749c;
                    if (uuid.equals(C.f13719e)) {
                        i15 = 3;
                        break;
                    } else if (uuid.equals(C.f13720f)) {
                        i15 = 2;
                        break;
                    } else {
                        if (uuid.equals(C.d)) {
                            i15 = 6;
                            break;
                        }
                        i19++;
                    }
                }
                builder.setDrmType(i15);
            }
        }
        if (events.a(1011)) {
            this.A++;
        }
        PlaybackException playbackException = this.o;
        if (playbackException == null) {
            i4 = 4;
            i12 = 1;
            i13 = 2;
            i7 = 13;
            i11 = 8;
            i3 = 9;
            i5 = 7;
            i6 = 6;
        } else {
            int i20 = playbackException.f13915b;
            Context context = this.f14839a;
            boolean z5 = this.w == 4;
            if (i20 == 1001) {
                errorInfo = new ErrorInfo(20, 0);
            } else {
                if (playbackException instanceof ExoPlaybackException) {
                    ExoPlaybackException exoPlaybackException = (ExoPlaybackException) playbackException;
                    z = exoPlaybackException.f14632k == 1;
                    i2 = exoPlaybackException.o;
                } else {
                    i2 = 0;
                    z = false;
                }
                Throwable cause = playbackException.getCause();
                cause.getClass();
                int i21 = 27;
                if (cause instanceof IOException) {
                    if (cause instanceof HttpDataSource.InvalidResponseCodeException) {
                        errorInfo3 = new ErrorInfo(5, ((HttpDataSource.InvalidResponseCodeException) cause).d);
                    } else {
                        if ((cause instanceof HttpDataSource.InvalidContentTypeException) || (cause instanceof ParserException)) {
                            i8 = 7;
                            i9 = 6;
                            i10 = 4;
                            i3 = 9;
                            errorInfo = new ErrorInfo(z5 ? 10 : 11, 0);
                        } else {
                            boolean z6 = cause instanceof HttpDataSource.HttpDataSourceException;
                            if (z6 || (cause instanceof UdpDataSource.UdpDataSourceException)) {
                                i3 = 9;
                                if (NetworkTypeObserver.a(context).b() == 1) {
                                    errorInfo = new ErrorInfo(3, 0);
                                } else {
                                    Throwable cause2 = cause.getCause();
                                    if (cause2 instanceof UnknownHostException) {
                                        errorInfo = new ErrorInfo(6, 0);
                                        i6 = 6;
                                        i7 = 13;
                                        i4 = 4;
                                        i5 = 7;
                                    } else {
                                        i9 = 6;
                                        if (cause2 instanceof SocketTimeoutException) {
                                            errorInfo = new ErrorInfo(7, 0);
                                            i5 = 7;
                                            i6 = 6;
                                            i7 = 13;
                                            i4 = 4;
                                        } else {
                                            i8 = 7;
                                            if (z6 && ((HttpDataSource.HttpDataSourceException) cause).f14429c == 1) {
                                                i10 = 4;
                                                errorInfo = new ErrorInfo(4, 0);
                                            } else {
                                                i10 = 4;
                                                errorInfo = new ErrorInfo(8, 0);
                                            }
                                        }
                                    }
                                }
                            } else if (i20 == 1002) {
                                errorInfo = new ErrorInfo(21, 0);
                            } else if (cause instanceof DrmSession.DrmSessionException) {
                                Throwable cause3 = cause.getCause();
                                cause3.getClass();
                                if (cause3 instanceof MediaDrm.MediaDrmStateException) {
                                    int iZ = Util.z(((MediaDrm.MediaDrmStateException) cause3).getDiagnosticInfo());
                                    switch (Util.y(iZ)) {
                                        case 6002:
                                            i21 = 24;
                                            break;
                                        case 6003:
                                            i21 = 28;
                                            break;
                                        case 6004:
                                            i21 = 25;
                                            break;
                                        case 6005:
                                            i21 = 26;
                                            break;
                                    }
                                    errorInfo3 = new ErrorInfo(i21, iZ);
                                } else if (cause3 instanceof MediaDrmResetException) {
                                    errorInfo = new ErrorInfo(27, 0);
                                } else if (cause3 instanceof NotProvisionedException) {
                                    errorInfo = new ErrorInfo(24, 0);
                                } else if (cause3 instanceof DeniedByServerException) {
                                    errorInfo = new ErrorInfo(29, 0);
                                } else if (cause3 instanceof UnsupportedDrmException) {
                                    errorInfo = new ErrorInfo(23, 0);
                                } else {
                                    errorInfo = cause3 instanceof DefaultDrmSessionManager.MissingSchemeDataException ? new ErrorInfo(28, 0) : new ErrorInfo(30, 0);
                                }
                            } else if ((cause instanceof FileDataSource.FileDataSourceException) && (cause.getCause() instanceof FileNotFoundException)) {
                                Throwable cause4 = cause.getCause();
                                cause4.getClass();
                                Throwable cause5 = cause4.getCause();
                                errorInfo = ((cause5 instanceof ErrnoException) && ((ErrnoException) cause5).errno == OsConstants.EACCES) ? new ErrorInfo(32, 0) : new ErrorInfo(31, 0);
                            } else {
                                i3 = 9;
                                errorInfo = new ErrorInfo(9, 0);
                            }
                            i7 = 13;
                            i4 = 4;
                            i5 = 7;
                            i6 = 6;
                        }
                        i5 = i8;
                        i6 = i9;
                        i4 = i10;
                        i7 = 13;
                    }
                    errorInfo = errorInfo3;
                } else {
                    i3 = 9;
                    i4 = 4;
                    i5 = 7;
                    i6 = 6;
                    if (z && (i2 == 0 || i2 == 1)) {
                        errorInfo = new ErrorInfo(35, 0);
                    } else if (z && i2 == 3) {
                        errorInfo = new ErrorInfo(15, 0);
                    } else if (z && i2 == 2) {
                        errorInfo = new ErrorInfo(23, 0);
                    } else {
                        if (cause instanceof MediaCodecRenderer.DecoderInitializationException) {
                            i7 = 13;
                            errorInfo2 = new ErrorInfo(13, Util.z(((MediaCodecRenderer.DecoderInitializationException) cause).f15386e));
                        } else {
                            i7 = 13;
                            if (cause instanceof MediaCodecDecoderException) {
                                errorInfo = new ErrorInfo(14, ((MediaCodecDecoderException) cause).f15373b);
                            } else if (cause instanceof OutOfMemoryError) {
                                errorInfo = new ErrorInfo(14, 0);
                            } else if (cause instanceof AudioSink.InitializationException) {
                                errorInfo2 = new ErrorInfo(17, ((AudioSink.InitializationException) cause).f14928b);
                            } else if (cause instanceof AudioSink.WriteException) {
                                errorInfo2 = new ErrorInfo(18, ((AudioSink.WriteException) cause).f14930b);
                            } else if (cause instanceof MediaCodec.CryptoException) {
                                int errorCode = ((MediaCodec.CryptoException) cause).getErrorCode();
                                switch (Util.y(errorCode)) {
                                    case 6002:
                                        i21 = 24;
                                        break;
                                    case 6003:
                                        i21 = 28;
                                        break;
                                    case 6004:
                                        i21 = 25;
                                        break;
                                    case 6005:
                                        i21 = 26;
                                        break;
                                }
                                errorInfo2 = new ErrorInfo(i21, errorCode);
                            } else {
                                errorInfo = new ErrorInfo(22, 0);
                            }
                        }
                        errorInfo = errorInfo2;
                    }
                    i7 = 13;
                }
                i11 = 8;
                this.f14840b.execute(new aa0(this, new PlaybackErrorEvent.Builder().setTimeSinceCreatedMillis(jElapsedRealtime - this.f14842e).setErrorCode(errorInfo.f14848a).setSubErrorCode(errorInfo.f14849b).setException(playbackException).build(), i11));
                i12 = 1;
                this.B = true;
                this.o = null;
                i13 = 2;
            }
            i7 = 13;
            i3 = 9;
            i4 = 4;
            i5 = 7;
            i6 = 6;
            i11 = 8;
            this.f14840b.execute(new aa0(this, new PlaybackErrorEvent.Builder().setTimeSinceCreatedMillis(jElapsedRealtime - this.f14842e).setErrorCode(errorInfo.f14848a).setSubErrorCode(errorInfo.f14849b).setException(playbackException).build(), i11));
            i12 = 1;
            this.B = true;
            this.o = null;
            i13 = 2;
        }
        if (events.a(i13)) {
            Tracks tracksN = player.n();
            boolean zA = tracksN.a(i13);
            boolean zA2 = tracksN.a(i12);
            boolean zA3 = tracksN.a(3);
            if (zA || zA2 || zA3) {
                if (zA) {
                    format = null;
                } else {
                    format = null;
                    if (!Objects.equals(this.s, null)) {
                        int i22 = this.s == null ? 1 : 0;
                        this.s = null;
                        t(1, jElapsedRealtime, null, i22);
                    }
                }
                if (!zA2 && !Objects.equals(this.t, format)) {
                    int i23 = this.t == null ? 1 : 0;
                    this.t = format;
                    t(0, jElapsedRealtime, format, i23);
                }
                if (!zA3 && !Objects.equals(this.u, format)) {
                    int i24 = this.u == null ? 1 : 0;
                    this.u = format;
                    t(2, jElapsedRealtime, format, i24);
                }
                pendingFormatUpdate = format;
            } else {
                i4 = i4;
                i5 = i5;
                pendingFormatUpdate = 0;
            }
        } else {
            i4 = i4;
            i5 = i5;
            pendingFormatUpdate = 0;
        }
        if (l(this.p)) {
            PendingFormatUpdate pendingFormatUpdate2 = this.p;
            Format format2 = pendingFormatUpdate2.f14850a;
            if (format2.w != -1) {
                int i25 = pendingFormatUpdate2.f14851b;
                if (!Objects.equals(this.s, format2)) {
                    int i26 = (this.s == null && i25 == 0) ? 1 : i25;
                    this.s = format2;
                    t(1, jElapsedRealtime, format2, i26);
                }
                this.p = pendingFormatUpdate;
            }
        }
        if (l(this.q)) {
            PendingFormatUpdate pendingFormatUpdate3 = this.q;
            Format format3 = pendingFormatUpdate3.f14850a;
            int i27 = pendingFormatUpdate3.f14851b;
            if (!Objects.equals(this.t, format3)) {
                int i28 = (this.t == null && i27 == 0) ? 1 : i27;
                this.t = format3;
                t(0, jElapsedRealtime, format3, i28);
            }
            this.q = pendingFormatUpdate;
        }
        if (l(this.r)) {
            PendingFormatUpdate pendingFormatUpdate4 = this.r;
            Format format4 = pendingFormatUpdate4.f14850a;
            int i29 = pendingFormatUpdate4.f14851b;
            if (!Objects.equals(this.u, format4)) {
                int i30 = (this.u == null && i29 == 0) ? 1 : i29;
                this.u = format4;
                t(2, jElapsedRealtime, format4, i30);
            }
            this.r = pendingFormatUpdate;
        }
        switch (NetworkTypeObserver.a(this.f14839a).b()) {
            case 0:
                i11 = 0;
                break;
            case 1:
                i11 = i3;
                break;
            case 2:
                i11 = 2;
                break;
            case 3:
                i11 = i4;
                break;
            case 4:
                i11 = 5;
                break;
            case 5:
                i11 = i6;
                break;
            case 6:
            case 8:
            default:
                i11 = 1;
                break;
            case 7:
                i11 = 3;
                break;
            case 9:
                break;
            case 10:
                i11 = i5;
                break;
        }
        if (i11 != this.n) {
            this.n = i11;
            this.f14840b.execute(new aa0(this, new NetworkEvent.Builder().setNetworkType(i11).setTimeSinceCreatedMillis(jElapsedRealtime - this.f14842e).build(), i5));
        }
        if (player.h() != 2) {
            this.v = false;
        }
        if (player.e() == null) {
            this.x = false;
        } else if (events.a(10)) {
            this.x = true;
        }
        int iH = player.h();
        if (this.v) {
            i14 = 5;
        } else if (this.x) {
            i14 = i7;
        } else {
            if (iH != i4) {
                i14 = 12;
                int i31 = 2;
                if (iH == 2) {
                    int i32 = this.m;
                    if (i32 == 0 || i32 == 2 || i32 == 12) {
                        i14 = i31;
                    } else if (player.r()) {
                        i14 = player.Z() != 0 ? 10 : i6;
                    } else {
                        i14 = i5;
                    }
                } else {
                    i31 = 3;
                    if (iH != 3) {
                        z2 = true;
                        if (iH != 1 || this.m == 0) {
                            i14 = this.m;
                        }
                    } else if (!player.r()) {
                        i14 = i4;
                    } else if (player.Z() != 0) {
                        i14 = i3;
                    } else {
                        i14 = i31;
                    }
                }
                if (this.m != i14) {
                    this.m = i14;
                    this.B = z2;
                    this.f14840b.execute(new aa0(this, new PlaybackStateEvent.Builder().setState(this.m).setTimeSinceCreatedMillis(jElapsedRealtime - this.f14842e).build(), 10));
                }
                if (events.a(1028)) {
                    defaultPlaybackSessionManager = this.f14841c;
                    AnalyticsListener.EventTime eventTime3 = (AnalyticsListener.EventTime) events.f14813b.get(1028);
                    eventTime3.getClass();
                    synchronized (defaultPlaybackSessionManager) {
                        try {
                            str = defaultPlaybackSessionManager.g;
                            if (str != null) {
                                DefaultPlaybackSessionManager.SessionDescriptor sessionDescriptor4 = (DefaultPlaybackSessionManager.SessionDescriptor) defaultPlaybackSessionManager.f14830c.get(str);
                                sessionDescriptor4.getClass();
                                defaultPlaybackSessionManager.a(sessionDescriptor4);
                            }
                            it = defaultPlaybackSessionManager.f14830c.values().iterator();
                            while (it.hasNext()) {
                                sessionDescriptor = (DefaultPlaybackSessionManager.SessionDescriptor) it.next();
                                it.remove();
                                if (!sessionDescriptor.f14837e && (mediaMetricsListener = defaultPlaybackSessionManager.f14831e) != null) {
                                    mediaMetricsListener.r(eventTime3, sessionDescriptor.f14834a);
                                }
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
            }
            i14 = 11;
        }
        z2 = true;
        if (this.m != i14) {
            this.m = i14;
            this.B = z2;
            this.f14840b.execute(new aa0(this, new PlaybackStateEvent.Builder().setState(this.m).setTimeSinceCreatedMillis(jElapsedRealtime - this.f14842e).build(), 10));
        }
        if (events.a(1028)) {
            defaultPlaybackSessionManager = this.f14841c;
            AnalyticsListener.EventTime eventTime4 = (AnalyticsListener.EventTime) events.f14813b.get(1028);
            eventTime4.getClass();
            synchronized (defaultPlaybackSessionManager) {
                str = defaultPlaybackSessionManager.g;
                if (str != null) {
                    DefaultPlaybackSessionManager.SessionDescriptor sessionDescriptor5 = (DefaultPlaybackSessionManager.SessionDescriptor) defaultPlaybackSessionManager.f14830c.get(str);
                    sessionDescriptor5.getClass();
                    defaultPlaybackSessionManager.a(sessionDescriptor5);
                }
                it = defaultPlaybackSessionManager.f14830c.values().iterator();
                while (it.hasNext()) {
                    sessionDescriptor = (DefaultPlaybackSessionManager.SessionDescriptor) it.next();
                    it.remove();
                    if (!sessionDescriptor.f14837e) {
                    }
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public final void f(AnalyticsListener.EventTime eventTime, int i2, long j2) {
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.d;
        if (mediaPeriodId != null) {
            String strC = this.f14841c.c(eventTime.f14805b, mediaPeriodId);
            HashMap map = this.f14845i;
            Long l = (Long) map.get(strC);
            HashMap map2 = this.f14844h;
            Long l2 = (Long) map2.get(strC);
            map.put(strC, Long.valueOf((l == null ? 0L : l.longValue()) + j2));
            map2.put(strC, Long.valueOf((l2 != null ? l2.longValue() : 0L) + ((long) i2)));
        }
    }

    public final boolean l(PendingFormatUpdate pendingFormatUpdate) {
        String str;
        if (pendingFormatUpdate == null) {
            return false;
        }
        String str2 = pendingFormatUpdate.f14852c;
        DefaultPlaybackSessionManager defaultPlaybackSessionManager = this.f14841c;
        synchronized (defaultPlaybackSessionManager) {
            str = defaultPlaybackSessionManager.g;
        }
        return str2.equals(str);
    }

    public final void n() {
        PlaybackMetrics.Builder builder = this.f14847k;
        if (builder != null && this.B) {
            builder.setAudioUnderrunCount(this.A);
            this.f14847k.setVideoFramesDropped(this.y);
            this.f14847k.setVideoFramesPlayed(this.z);
            Long l = (Long) this.f14844h.get(this.f14846j);
            this.f14847k.setNetworkTransferDurationMillis(l == null ? 0L : l.longValue());
            Long l2 = (Long) this.f14845i.get(this.f14846j);
            this.f14847k.setNetworkBytesRead(l2 == null ? 0L : l2.longValue());
            this.f14847k.setStreamSource((l2 == null || l2.longValue() <= 0) ? 0 : 1);
            this.f14840b.execute(new aa0(this, this.f14847k.build(), 9));
        }
        this.f14847k = null;
        this.f14846j = null;
        this.A = 0;
        this.y = 0;
        this.z = 0;
        this.s = null;
        this.t = null;
        this.u = null;
        this.B = false;
    }

    public final LogSessionId o() {
        return this.d.getSessionId();
    }

    public final void p(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        int iB;
        PlaybackMetrics.Builder builder = this.f14847k;
        if (mediaPeriodId == null || (iB = timeline.b(mediaPeriodId.f15516a)) == -1) {
            return;
        }
        Timeline.Period period = this.g;
        int i2 = 0;
        timeline.f(iB, period, false);
        int i3 = period.f13961c;
        Timeline.Window window = this.f14843f;
        timeline.n(i3, window);
        MediaItem.LocalConfiguration localConfiguration = window.f13969c.f13788b;
        if (localConfiguration != null) {
            int iH = Util.H(localConfiguration.f13848a, localConfiguration.f13849b);
            if (iH == 0) {
                i2 = 3;
            } else if (iH != 1) {
                i2 = iH != 2 ? 1 : 4;
            } else {
                i2 = 5;
            }
        }
        builder.setStreamType(i2);
        if (window.m != -9223372036854775807L && !window.f13975k && !window.f13973i && !window.a()) {
            builder.setMediaDurationMillis(Util.f0(window.m));
        }
        builder.setPlaybackType(window.a() ? 2 : 1);
        this.B = true;
    }

    public final void q(AnalyticsListener.EventTime eventTime, String str) {
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.d;
        if (mediaPeriodId == null || !mediaPeriodId.b()) {
            n();
            this.f14846j = str;
            this.f14847k = new PlaybackMetrics.Builder().setPlayerName("AndroidXMedia3").setPlayerVersion("1.10.1");
            p(eventTime.f14805b, mediaPeriodId);
        }
    }

    public final void r(AnalyticsListener.EventTime eventTime, String str) {
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.d;
        if ((mediaPeriodId == null || !mediaPeriodId.b()) && str.equals(this.f14846j)) {
            n();
        }
        this.f14844h.remove(str);
        this.f14845i.remove(str);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public final void s(PlaybackException playbackException) {
        this.o = playbackException;
    }

    public final void t(int i2, long j2, Format format, int i3) {
        int i4;
        TrackChangeEvent.Builder timeSinceCreatedMillis = new TrackChangeEvent.Builder(i2).setTimeSinceCreatedMillis(j2 - this.f14842e);
        if (format != null) {
            timeSinceCreatedMillis.setTrackState(1);
            if (i3 != 1) {
                i4 = 3;
                if (i3 != 2) {
                    i4 = i3 != 3 ? 1 : 4;
                }
            } else {
                i4 = 2;
            }
            timeSinceCreatedMillis.setTrackChangeReason(i4);
            String str = format.n;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = format.o;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = format.f13763k;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i5 = format.f13762j;
            if (i5 != -1) {
                timeSinceCreatedMillis.setBitrate(i5);
            }
            int i6 = format.v;
            if (i6 != -1) {
                timeSinceCreatedMillis.setWidth(i6);
            }
            int i7 = format.w;
            if (i7 != -1) {
                timeSinceCreatedMillis.setHeight(i7);
            }
            int i8 = format.G;
            if (i8 != -1) {
                timeSinceCreatedMillis.setChannelCount(i8);
            }
            int i9 = format.H;
            if (i9 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i9);
            }
            String str4 = format.d;
            if (str4 != null) {
                String str5 = Util.f14242a;
                String[] strArrSplit = str4.split("-", -1);
                Pair pairCreate = Pair.create(strArrSplit[0], strArrSplit.length >= 2 ? strArrSplit[1] : null);
                timeSinceCreatedMillis.setLanguage((String) pairCreate.first);
                Object obj = pairCreate.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f2 = format.z;
            if (f2 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f2);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.B = true;
        this.f14840b.execute(new aa0(this, timeSinceCreatedMillis.build(), 6));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public final void v(int i2) {
        if (i2 == 1) {
            this.v = true;
        }
        this.l = i2;
    }
}
