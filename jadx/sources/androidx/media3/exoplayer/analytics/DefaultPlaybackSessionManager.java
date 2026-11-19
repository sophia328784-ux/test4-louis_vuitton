package androidx.media3.exoplayer.analytics;

import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Supplier;
import defpackage.ur;
import java.util.HashMap;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultPlaybackSessionManager implements PlaybackSessionManager {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ur f14826i = new ur(2);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Random f14827j = new Random();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Timeline.Window f14828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Timeline.Period f14829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f14830c;
    public final Supplier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MediaMetricsListener f14831e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Timeline f14832f;
    public String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f14833h;

    public final class SessionDescriptor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f14834a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14835b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f14836c;
        public final MediaSource.MediaPeriodId d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f14837e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f14838f;

        public SessionDescriptor(String str, int i2, MediaSource.MediaPeriodId mediaPeriodId) {
            this.f14834a = str;
            this.f14835b = i2;
            this.f14836c = mediaPeriodId == null ? -1L : mediaPeriodId.d;
            if (mediaPeriodId == null || !mediaPeriodId.b()) {
                return;
            }
            this.d = mediaPeriodId;
        }

        public final boolean a(AnalyticsListener.EventTime eventTime) {
            MediaSource.MediaPeriodId mediaPeriodId = eventTime.d;
            Timeline timeline = eventTime.f14805b;
            if (mediaPeriodId == null) {
                return this.f14835b != eventTime.f14806c;
            }
            long j2 = this.f14836c;
            if (j2 == -1) {
                return false;
            }
            if (mediaPeriodId.d > j2) {
                return true;
            }
            MediaSource.MediaPeriodId mediaPeriodId2 = this.d;
            if (mediaPeriodId2 == null) {
                return false;
            }
            int i2 = mediaPeriodId2.f15517b;
            int iB = timeline.b(mediaPeriodId.f15516a);
            int iB2 = timeline.b(mediaPeriodId2.f15516a);
            if (mediaPeriodId.d < mediaPeriodId2.d || iB < iB2) {
                return false;
            }
            if (iB > iB2) {
                return true;
            }
            if (!mediaPeriodId.b()) {
                int i3 = mediaPeriodId.f15519e;
                return i3 == -1 || i3 > i2;
            }
            int i4 = mediaPeriodId.f15517b;
            int i5 = mediaPeriodId.f15518c;
            if (i4 <= i2) {
                return i4 == i2 && i5 > mediaPeriodId2.f15518c;
            }
            return true;
        }

        public final boolean b(Timeline timeline, Timeline timeline2) {
            MediaSource.MediaPeriodId mediaPeriodId;
            int i2 = this.f14835b;
            if (i2 < timeline.o()) {
                DefaultPlaybackSessionManager defaultPlaybackSessionManager = DefaultPlaybackSessionManager.this;
                Timeline.Window window = defaultPlaybackSessionManager.f14828a;
                timeline.n(i2, window);
                int i3 = window.n;
                while (true) {
                    if (i3 > window.o) {
                        i2 = -1;
                        break;
                    }
                    int iB = timeline2.b(timeline.l(i3));
                    if (iB != -1) {
                        i2 = timeline2.f(iB, defaultPlaybackSessionManager.f14829b, false).f13961c;
                        break;
                    }
                    i3++;
                }
            } else if (i2 >= timeline2.o()) {
                i2 = -1;
                break;
            }
            this.f14835b = i2;
            return i2 != -1 && ((mediaPeriodId = this.d) == null || timeline2.b(mediaPeriodId.f15516a) != -1);
        }
    }

    public DefaultPlaybackSessionManager(Supplier<String> supplier) {
        this.d = supplier;
        this.f14828a = new Timeline.Window();
        this.f14829b = new Timeline.Period();
        this.f14830c = new HashMap();
        this.f14832f = Timeline.f13952a;
        this.f14833h = -1L;
    }

    public final void a(SessionDescriptor sessionDescriptor) {
        long j2 = sessionDescriptor.f14836c;
        if (j2 != -1 && sessionDescriptor.f14837e) {
            this.f14833h = j2;
        }
        this.g = null;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004b  */
    /* JADX WARN: Code duplicated, block: B:41:0x008e  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a0 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    public final SessionDescriptor b(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
        long j2;
        long j3;
        long j4;
        HashMap map = this.f14830c;
        SessionDescriptor sessionDescriptor = null;
        long j5 = Long.MAX_VALUE;
        for (SessionDescriptor sessionDescriptor2 : map.values()) {
            long j6 = sessionDescriptor2.f14836c;
            MediaSource.MediaPeriodId mediaPeriodId2 = sessionDescriptor2.d;
            if (j6 == -1 && i2 == sessionDescriptor2.f14835b && mediaPeriodId != null) {
                long j7 = mediaPeriodId.d;
                DefaultPlaybackSessionManager defaultPlaybackSessionManager = DefaultPlaybackSessionManager.this;
                j2 = -1;
                SessionDescriptor sessionDescriptor3 = (SessionDescriptor) defaultPlaybackSessionManager.f14830c.get(defaultPlaybackSessionManager.g);
                if (sessionDescriptor3 != null) {
                    j4 = sessionDescriptor3.f14836c;
                    if (j4 == -1) {
                        j4 = defaultPlaybackSessionManager.f14833h + 1;
                    }
                } else {
                    j4 = defaultPlaybackSessionManager.f14833h + 1;
                }
                if (j7 >= j4) {
                    sessionDescriptor2.f14836c = j7;
                }
            } else {
                j2 = -1;
            }
            if (mediaPeriodId != null) {
                long j8 = mediaPeriodId.d;
                if (j8 != j2) {
                    if (mediaPeriodId2 == null) {
                        if (!mediaPeriodId.b() && j8 == sessionDescriptor2.f14836c) {
                            j3 = sessionDescriptor2.f14836c;
                            if (j3 != j2 || j3 < j5) {
                                sessionDescriptor = sessionDescriptor2;
                                j5 = j3;
                            } else if (j3 == j5) {
                                String str = Util.f14242a;
                                if (sessionDescriptor.d != null && mediaPeriodId2 != null) {
                                    sessionDescriptor = sessionDescriptor2;
                                }
                            }
                        }
                    } else if (j8 == mediaPeriodId2.d && mediaPeriodId.f15517b == mediaPeriodId2.f15517b && mediaPeriodId.f15518c == mediaPeriodId2.f15518c) {
                        j3 = sessionDescriptor2.f14836c;
                        if (j3 != j2) {
                        }
                        sessionDescriptor = sessionDescriptor2;
                        j5 = j3;
                    }
                }
            }
            if (i2 == sessionDescriptor2.f14835b) {
                j3 = sessionDescriptor2.f14836c;
                if (j3 != j2) {
                }
                sessionDescriptor = sessionDescriptor2;
                j5 = j3;
            }
        }
        if (sessionDescriptor != null) {
            return sessionDescriptor;
        }
        String str2 = (String) this.d.get();
        SessionDescriptor sessionDescriptor4 = new SessionDescriptor(str2, i2, mediaPeriodId);
        map.put(str2, sessionDescriptor4);
        return sessionDescriptor4;
    }

    public final synchronized String c(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        return b(timeline.g(mediaPeriodId.f15516a, this.f14829b).f13961c, mediaPeriodId).f14834a;
    }

    public final void d(AnalyticsListener.EventTime eventTime) {
        MediaSource.MediaPeriodId mediaPeriodId;
        Timeline timeline = eventTime.f14805b;
        int i2 = eventTime.f14806c;
        MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.d;
        boolean zP = timeline.p();
        String str = this.g;
        HashMap map = this.f14830c;
        if (zP) {
            if (str != null) {
                SessionDescriptor sessionDescriptor = (SessionDescriptor) map.get(str);
                sessionDescriptor.getClass();
                a(sessionDescriptor);
                return;
            }
            return;
        }
        SessionDescriptor sessionDescriptor2 = (SessionDescriptor) map.get(str);
        this.g = b(i2, mediaPeriodId2).f14834a;
        e(eventTime);
        if (mediaPeriodId2 != null) {
            long j2 = mediaPeriodId2.d;
            if (mediaPeriodId2.b()) {
                if (sessionDescriptor2 != null && sessionDescriptor2.f14836c == j2 && (mediaPeriodId = sessionDescriptor2.d) != null && mediaPeriodId.f15517b == mediaPeriodId2.f15517b && mediaPeriodId.f15518c == mediaPeriodId2.f15518c) {
                    return;
                }
                b(i2, new MediaSource.MediaPeriodId(mediaPeriodId2.f15516a, j2));
                this.f14831e.getClass();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0033 A[Catch: all -> 0x0058, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0005, B:8:0x0014, B:10:0x0018, B:12:0x0020, B:14:0x002c, B:17:0x0033, B:23:0x003e, B:25:0x004a, B:27:0x0050, B:33:0x005b, B:35:0x0067, B:36:0x006b, B:38:0x0070, B:40:0x0076, B:42:0x008d, B:43:0x00db, B:45:0x00df, B:46:0x00e7, B:48:0x00f1, B:50:0x00f5), top: B:55:0x0005 }] */
    public final synchronized void e(AnalyticsListener.EventTime eventTime) {
        long j2;
        this.f14831e.getClass();
        if (eventTime.f14805b.p()) {
            return;
        }
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.d;
        if (mediaPeriodId != null) {
            long j3 = mediaPeriodId.d;
            if (j3 != -1) {
                SessionDescriptor sessionDescriptor = (SessionDescriptor) this.f14830c.get(this.g);
                if (sessionDescriptor != null) {
                    j2 = sessionDescriptor.f14836c;
                    if (j2 == -1) {
                        j2 = this.f14833h + 1;
                    }
                } else {
                    j2 = this.f14833h + 1;
                }
                if (j3 < j2) {
                    return;
                }
            }
            SessionDescriptor sessionDescriptor2 = (SessionDescriptor) this.f14830c.get(this.g);
            if (sessionDescriptor2 != null && sessionDescriptor2.f14836c == -1 && sessionDescriptor2.f14835b != eventTime.f14806c) {
                return;
            }
        }
        SessionDescriptor sessionDescriptorB = b(eventTime.f14806c, eventTime.d);
        if (this.g == null) {
            this.g = sessionDescriptorB.f14834a;
        }
        MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.d;
        if (mediaPeriodId2 != null && mediaPeriodId2.b()) {
            MediaSource.MediaPeriodId mediaPeriodId3 = eventTime.d;
            MediaSource.MediaPeriodId mediaPeriodId4 = new MediaSource.MediaPeriodId(mediaPeriodId3.f15516a, mediaPeriodId3.d, mediaPeriodId3.f15517b);
            SessionDescriptor sessionDescriptorB2 = b(eventTime.f14806c, mediaPeriodId4);
            if (!sessionDescriptorB2.f14837e) {
                sessionDescriptorB2.f14837e = true;
                eventTime.f14805b.g(eventTime.d.f15516a, this.f14829b);
                new AnalyticsListener.EventTime(eventTime.f14804a, eventTime.f14805b, eventTime.f14806c, mediaPeriodId4, Math.max(0L, Util.f0(this.f14829b.d(eventTime.d.f15517b)) + Util.f0(this.f14829b.f13962e)), eventTime.f14808f, eventTime.g, eventTime.f14809h, eventTime.f14810i, eventTime.f14811j);
                this.f14831e.getClass();
            }
        }
        if (!sessionDescriptorB.f14837e) {
            sessionDescriptorB.f14837e = true;
            this.f14831e.getClass();
        }
        if (sessionDescriptorB.f14834a.equals(this.g) && !sessionDescriptorB.f14838f) {
            sessionDescriptorB.f14838f = true;
            this.f14831e.q(eventTime, sessionDescriptorB.f14834a);
        }
    }

    public DefaultPlaybackSessionManager() {
        this(f14826i);
    }
}
