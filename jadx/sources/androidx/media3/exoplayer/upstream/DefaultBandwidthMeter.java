package androidx.media3.exoplayer.upstream;

import android.content.Context;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import androidx.media3.exoplayer.upstream.SlidingPercentile;
import com.batch.android.x0.h;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.linkplay.core.model.menubar.MenuBarConstants;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.util.r;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.asn1.eac.EACTags;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.math.Primes;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultBandwidthMeter implements BandwidthMeter, TransferListener {
    public static final ImmutableList p = ImmutableList.z(4300000L, 3200000L, 2400000L, 1700000L, 860000L);
    public static final ImmutableList q = ImmutableList.z(1500000L, 980000L, 750000L, 520000L, 290000L);
    public static final ImmutableList r = ImmutableList.z(2000000L, 1300000L, 1000000L, 860000L, 610000L);
    public static final ImmutableList s = ImmutableList.z(2500000L, 1700000L, 1200000L, 970000L, 680000L);
    public static final ImmutableList t = ImmutableList.z(4700000L, 2800000L, 2100000L, 1700000L, 980000L);
    public static final ImmutableList u = ImmutableList.z(2700000L, 2000000L, 1600000L, 1300000L, 1000000L);
    public static DefaultBandwidthMeter v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f15811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableMap f15812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BandwidthMeter.EventListener.EventDispatcher f15813c;
    public final Clock d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f15814e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SlidingPercentile f15815f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f15816h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f15817i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f15818j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f15819k;
    public long l;
    public long m;
    public int n;
    public String o;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f15820a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashMap f15821b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15822c;
        public final SystemClock d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f15823e;

        public Builder(Context context) {
            this.f15820a = context == null ? null : context.getApplicationContext();
            this.f15822c = r.E;
            this.d = Clock.f14143a;
            this.f15823e = true;
            HashMap map = new HashMap(8);
            this.f15821b = map;
            map.put(0, 1000000L);
            map.put(2, -9223372036854775807L);
            map.put(3, -9223372036854775807L);
            map.put(4, -9223372036854775807L);
            map.put(5, -9223372036854775807L);
            map.put(10, -9223372036854775807L);
            map.put(9, -9223372036854775807L);
            map.put(7, -9223372036854775807L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v6, types: [qs] */
    public DefaultBandwidthMeter(Context context, Map map, int i2, Clock clock, boolean z) {
        this.f15811a = context == null ? null : context.getApplicationContext();
        this.f15812b = ImmutableMap.c(map);
        this.f15813c = new BandwidthMeter.EventListener.EventDispatcher();
        this.f15815f = new SlidingPercentile(i2);
        this.d = clock;
        this.f15814e = z;
        if (context == null) {
            this.n = 0;
            this.l = 1000000L;
            return;
        }
        NetworkTypeObserver networkTypeObserverA = NetworkTypeObserver.a(context);
        int iB = networkTypeObserverA.b();
        this.n = iB;
        this.l = h(iB);
        networkTypeObserverA.c(new NetworkTypeObserver.Listener() { // from class: qs
            /* JADX WARN: Code duplicated, block: B:32:0x004a A[Catch: all -> 0x000f, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x0009, B:13:0x0015, B:17:0x001b, B:23:0x0027, B:25:0x002b, B:27:0x0031, B:29:0x003b, B:31:0x0045, B:33:0x0056, B:32:0x004a, B:34:0x0058, B:36:0x0069, B:38:0x0071), top: B:45:0x0005 }] */
            @Override // androidx.media3.common.util.NetworkTypeObserver.Listener
            public final void a(int i3) {
                String strD;
                TelephonyManager telephonyManager;
                DefaultBandwidthMeter defaultBandwidthMeter = this.f79147a;
                ImmutableList immutableList = DefaultBandwidthMeter.p;
                synchronized (defaultBandwidthMeter) {
                    int i4 = defaultBandwidthMeter.n;
                    if (i4 == 0 || defaultBandwidthMeter.f15814e) {
                        if (i4 != i3 || defaultBandwidthMeter.o == null) {
                            defaultBandwidthMeter.n = i3;
                            if (i3 != 1 && i3 != 0 && i3 != 8) {
                                if (defaultBandwidthMeter.o == null) {
                                    Context context2 = defaultBandwidthMeter.f15811a;
                                    String str = Util.f14242a;
                                    if (context2 == null || (telephonyManager = (TelephonyManager) context2.getSystemService("phone")) == null) {
                                        strD = Ascii.d(Locale.getDefault().getCountry());
                                    } else {
                                        String networkCountryIso = telephonyManager.getNetworkCountryIso();
                                        if (TextUtils.isEmpty(networkCountryIso)) {
                                            strD = Ascii.d(Locale.getDefault().getCountry());
                                        } else {
                                            strD = Ascii.d(networkCountryIso);
                                        }
                                    }
                                    defaultBandwidthMeter.o = strD;
                                }
                                defaultBandwidthMeter.l = defaultBandwidthMeter.h(i3);
                                long jB = defaultBandwidthMeter.d.b();
                                defaultBandwidthMeter.i(defaultBandwidthMeter.g > 0 ? (int) (jB - defaultBandwidthMeter.f15816h) : 0, defaultBandwidthMeter.f15817i, defaultBandwidthMeter.l);
                                defaultBandwidthMeter.f15816h = jB;
                                defaultBandwidthMeter.f15817i = 0L;
                                defaultBandwidthMeter.f15819k = 0L;
                                defaultBandwidthMeter.f15818j = 0L;
                                SlidingPercentile slidingPercentile = defaultBandwidthMeter.f15815f;
                                slidingPercentile.f15847b.clear();
                                slidingPercentile.d = -1;
                                slidingPercentile.f15849e = 0;
                                slidingPercentile.f15850f = 0;
                            }
                        }
                    }
                }
            }
        }, BackgroundExecutor.a());
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public final void a(BandwidthMeter.EventListener eventListener) {
        CopyOnWriteArrayList<BandwidthMeter.EventListener.EventDispatcher.HandlerAndListener> copyOnWriteArrayList = this.f15813c.f15751a;
        for (BandwidthMeter.EventListener.EventDispatcher.HandlerAndListener handlerAndListener : copyOnWriteArrayList) {
            if (handlerAndListener.f15753b == eventListener) {
                handlerAndListener.f15754c = true;
                copyOnWriteArrayList.remove(handlerAndListener);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x000f  */
    /* JADX WARN: Code duplicated, block: B:13:0x0012 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:15:0x0014 A[Catch: all -> 0x000d, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:15:0x0014), top: B:20:0x0003 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:13:0x0012, please report this as an issue */
    @Override // androidx.media3.datasource.TransferListener
    public final synchronized void b(DataSpec dataSpec, boolean z, int i2) {
        boolean z2;
        if (!z) {
            z2 = false;
            if (z2) {
                this.f15817i += (long) i2;
                return;
            }
            return;
        }
        if ((dataSpec.f14396i & 8) == 8) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z2) {
            return;
        }
        this.f15817i += (long) i2;
        return;
        throw th;
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public final void c(Handler handler, BandwidthMeter.EventListener eventListener) {
        eventListener.getClass();
        BandwidthMeter.EventListener.EventDispatcher eventDispatcher = this.f15813c;
        eventDispatcher.getClass();
        CopyOnWriteArrayList<BandwidthMeter.EventListener.EventDispatcher.HandlerAndListener> copyOnWriteArrayList = eventDispatcher.f15751a;
        for (BandwidthMeter.EventListener.EventDispatcher.HandlerAndListener handlerAndListener : copyOnWriteArrayList) {
            if (handlerAndListener.f15753b == eventListener) {
                handlerAndListener.f15754c = true;
                copyOnWriteArrayList.remove(handlerAndListener);
            }
        }
        copyOnWriteArrayList.add(new BandwidthMeter.EventListener.EventDispatcher.HandlerAndListener(handler, eventListener));
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public final DefaultBandwidthMeter d() {
        return this;
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public final synchronized long e() {
        return this.l;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0014  */
    /* JADX WARN: Code duplicated, block: B:14:0x0017 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:18:0x001d  */
    /* JADX WARN: Code duplicated, block: B:21:0x003b A[Catch: all -> 0x0078, TRY_LEAVE, TryCatch #1 {all -> 0x0078, blocks: (B:16:0x0019, B:19:0x001e, B:21:0x003b, B:28:0x0066, B:27:0x005d), top: B:42:0x0019 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x005d A[Catch: all -> 0x0078, TRY_ENTER, TryCatch #1 {all -> 0x0078, blocks: (B:16:0x0019, B:19:0x001e, B:21:0x003b, B:28:0x0066, B:27:0x005d), top: B:42:0x0019 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x007b  */
    /* JADX WARN: Code duplicated, block: B:42:0x0019 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:14:0x0017, please report this as an issue */
    @Override // androidx.media3.datasource.TransferListener
    public final synchronized void f(DataSpec dataSpec, boolean z) throws Throwable {
        Throwable th;
        boolean z2;
        long jB;
        int i2;
        long j2;
        DefaultBandwidthMeter defaultBandwidthMeter;
        try {
            if (!z) {
                z2 = false;
                if (z2) {
                    Preconditions.q(this.g > 0);
                    jB = this.d.b();
                    i2 = (int) (jB - this.f15816h);
                    this.f15818j += (long) i2;
                    long j3 = this.f15819k;
                    j2 = this.f15817i;
                    this.f15819k = j3 + j2;
                    if (i2 > 0) {
                        this.f15815f.a((j2 * 8000.0f) / i2, (int) Math.sqrt(j2));
                        if (this.f15818j < 2000) {
                            this.l = (long) this.f15815f.b();
                        } else {
                            this.l = (long) this.f15815f.b();
                        }
                        defaultBandwidthMeter = this;
                        defaultBandwidthMeter.i(i2, this.f15817i, this.l);
                        defaultBandwidthMeter.f15816h = jB;
                        defaultBandwidthMeter.f15817i = 0L;
                    } else {
                        defaultBandwidthMeter = this;
                    }
                    defaultBandwidthMeter.g--;
                    return;
                }
                return;
            }
            try {
                if ((dataSpec.f14396i & 8) == 8) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (z2) {
                    return;
                }
                try {
                    Preconditions.q(this.g > 0);
                    jB = this.d.b();
                    i2 = (int) (jB - this.f15816h);
                    this.f15818j += (long) i2;
                    long j4 = this.f15819k;
                    j2 = this.f15817i;
                    this.f15819k = j4 + j2;
                    if (i2 > 0) {
                        this.f15815f.a((j2 * 8000.0f) / i2, (int) Math.sqrt(j2));
                        if (this.f15818j < 2000 || this.f15819k >= 524288) {
                            this.l = (long) this.f15815f.b();
                        }
                        defaultBandwidthMeter = this;
                        defaultBandwidthMeter.i(i2, this.f15817i, this.l);
                        defaultBandwidthMeter.f15816h = jB;
                        defaultBandwidthMeter.f15817i = 0L;
                    } else {
                        defaultBandwidthMeter = this;
                    }
                    defaultBandwidthMeter.g--;
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    th = th;
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0010  */
    /* JADX WARN: Code duplicated, block: B:14:0x0013 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:16:0x0015 A[Catch: all -> 0x000e, TRY_ENTER, TryCatch #0 {, blocks: (B:5:0x0004, B:16:0x0015, B:18:0x0019, B:19:0x0021), top: B:24:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0019 A[Catch: all -> 0x000e, TryCatch #0 {, blocks: (B:5:0x0004, B:16:0x0015, B:18:0x0019, B:19:0x0021), top: B:24:0x0004 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:14:0x0013, please report this as an issue */
    @Override // androidx.media3.datasource.TransferListener
    public final synchronized void g(DataSpec dataSpec, boolean z) {
        boolean z2;
        if (!z) {
            z2 = false;
            if (z2) {
                if (this.g == 0) {
                    this.f15816h = this.d.b();
                }
                this.g++;
                return;
            }
            return;
        }
        if ((dataSpec.f14396i & 8) == 8) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z2) {
            return;
        }
        if (this.g == 0) {
            this.f15816h = this.d.b();
        }
        this.g++;
        return;
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:1149:0x1216  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    public final long h(int i2) {
        int[] iArr;
        long jLongValue;
        Integer numValueOf = Integer.valueOf(i2);
        ImmutableMap immutableMap = this.f15812b;
        Long lValueOf = (Long) immutableMap.get(numValueOf);
        if (lValueOf == null) {
            lValueOf = (Long) immutableMap.get(0);
        } else if (lValueOf.longValue() == -9223372036854775807L) {
            String str = this.o;
            if (str == null) {
                str = "";
            }
            byte b2 = -1;
            switch (str.hashCode()) {
                case 2083:
                    if (str.equals("AD")) {
                        b2 = 0;
                    }
                    break;
                case 2084:
                    if (str.equals("AE")) {
                        b2 = 1;
                    }
                    break;
                case 2085:
                    if (str.equals("AF")) {
                        b2 = 2;
                    }
                    break;
                case 2086:
                    if (str.equals("AG")) {
                        b2 = 3;
                    }
                    break;
                case 2088:
                    if (str.equals("AI")) {
                        b2 = 4;
                    }
                    break;
                case 2091:
                    if (str.equals("AL")) {
                        b2 = 5;
                    }
                    break;
                case 2092:
                    if (str.equals("AM")) {
                        b2 = 6;
                    }
                    break;
                case 2094:
                    if (str.equals("AO")) {
                        b2 = 7;
                    }
                    break;
                case 2096:
                    if (str.equals("AQ")) {
                        b2 = 8;
                    }
                    break;
                case 2097:
                    if (str.equals("AR")) {
                        b2 = 9;
                    }
                    break;
                case 2098:
                    if (str.equals("AS")) {
                        b2 = 10;
                    }
                    break;
                case 2099:
                    if (str.equals("AT")) {
                        b2 = 11;
                    }
                    break;
                case HarvestConfiguration.S_DOM_THR /* 2100 */:
                    if (str.equals("AU")) {
                        b2 = 12;
                    }
                    break;
                case 2102:
                    if (str.equals("AW")) {
                        b2 = 13;
                    }
                    break;
                case 2103:
                    if (str.equals("AX")) {
                        b2 = 14;
                    }
                    break;
                case 2105:
                    if (str.equals("AZ")) {
                        b2 = 15;
                    }
                    break;
                case 2111:
                    if (str.equals("BA")) {
                        b2 = 16;
                    }
                    break;
                case 2112:
                    if (str.equals("BB")) {
                        b2 = 17;
                    }
                    break;
                case 2114:
                    if (str.equals("BD")) {
                        b2 = 18;
                    }
                    break;
                case 2115:
                    if (str.equals("BE")) {
                        b2 = 19;
                    }
                    break;
                case 2116:
                    if (str.equals("BF")) {
                        b2 = 20;
                    }
                    break;
                case 2117:
                    if (str.equals("BG")) {
                        b2 = 21;
                    }
                    break;
                case 2118:
                    if (str.equals("BH")) {
                        b2 = 22;
                    }
                    break;
                case 2119:
                    if (str.equals("BI")) {
                        b2 = 23;
                    }
                    break;
                case 2120:
                    if (str.equals("BJ")) {
                        b2 = 24;
                    }
                    break;
                case 2122:
                    if (str.equals("BL")) {
                        b2 = 25;
                    }
                    break;
                case 2123:
                    if (str.equals("BM")) {
                        b2 = 26;
                    }
                    break;
                case 2124:
                    if (str.equals("BN")) {
                        b2 = 27;
                    }
                    break;
                case 2125:
                    if (str.equals("BO")) {
                        b2 = 28;
                    }
                    break;
                case 2127:
                    if (str.equals("BQ")) {
                        b2 = 29;
                    }
                    break;
                case 2128:
                    if (str.equals("BR")) {
                        b2 = 30;
                    }
                    break;
                case 2129:
                    if (str.equals("BS")) {
                        b2 = 31;
                    }
                    break;
                case 2130:
                    if (str.equals("BT")) {
                        b2 = 32;
                    }
                    break;
                case 2133:
                    if (str.equals("BW")) {
                        b2 = 33;
                    }
                    break;
                case 2135:
                    if (str.equals("BY")) {
                        b2 = 34;
                    }
                    break;
                case 2136:
                    if (str.equals("BZ")) {
                        b2 = 35;
                    }
                    break;
                case 2142:
                    if (str.equals("CA")) {
                        b2 = 36;
                    }
                    break;
                case 2145:
                    if (str.equals(MenuBarConstants.MEDIA_TYPE_CD)) {
                        b2 = 37;
                    }
                    break;
                case 2147:
                    if (str.equals("CF")) {
                        b2 = 38;
                    }
                    break;
                case 2148:
                    if (str.equals("CG")) {
                        b2 = 39;
                    }
                    break;
                case 2149:
                    if (str.equals("CH")) {
                        b2 = 40;
                    }
                    break;
                case 2150:
                    if (str.equals("CI")) {
                        b2 = 41;
                    }
                    break;
                case 2152:
                    if (str.equals("CK")) {
                        b2 = 42;
                    }
                    break;
                case 2153:
                    if (str.equals("CL")) {
                        b2 = 43;
                    }
                    break;
                case 2154:
                    if (str.equals("CM")) {
                        b2 = 44;
                    }
                    break;
                case 2155:
                    if (str.equals("CN")) {
                        b2 = 45;
                    }
                    break;
                case 2156:
                    if (str.equals("CO")) {
                        b2 = 46;
                    }
                    break;
                case 2159:
                    if (str.equals("CR")) {
                        b2 = 47;
                    }
                    break;
                case 2162:
                    if (str.equals("CU")) {
                        b2 = 48;
                    }
                    break;
                case 2163:
                    if (str.equals("CV")) {
                        b2 = 49;
                    }
                    break;
                case 2164:
                    if (str.equals("CW")) {
                        b2 = 50;
                    }
                    break;
                case 2165:
                    if (str.equals("CX")) {
                        b2 = 51;
                    }
                    break;
                case 2166:
                    if (str.equals("CY")) {
                        b2 = 52;
                    }
                    break;
                case 2167:
                    if (str.equals("CZ")) {
                        b2 = 53;
                    }
                    break;
                case 2177:
                    if (str.equals("DE")) {
                        b2 = 54;
                    }
                    break;
                case 2182:
                    if (str.equals("DJ")) {
                        b2 = 55;
                    }
                    break;
                case 2183:
                    if (str.equals("DK")) {
                        b2 = 56;
                    }
                    break;
                case 2185:
                    if (str.equals("DM")) {
                        b2 = 57;
                    }
                    break;
                case 2187:
                    if (str.equals("DO")) {
                        b2 = 58;
                    }
                    break;
                case 2198:
                    if (str.equals("DZ")) {
                        b2 = 59;
                    }
                    break;
                case 2206:
                    if (str.equals("EC")) {
                        b2 = 60;
                    }
                    break;
                case 2208:
                    if (str.equals("EE")) {
                        b2 = 61;
                    }
                    break;
                case 2210:
                    if (str.equals("EG")) {
                        b2 = 62;
                    }
                    break;
                case 2221:
                    if (str.equals("ER")) {
                        b2 = 63;
                    }
                    break;
                case 2222:
                    if (str.equals("ES")) {
                        b2 = 64;
                    }
                    break;
                case 2223:
                    if (str.equals("ET")) {
                        b2 = 65;
                    }
                    break;
                case 2243:
                    if (str.equals("FI")) {
                        b2 = 66;
                    }
                    break;
                case 2244:
                    if (str.equals("FJ")) {
                        b2 = 67;
                    }
                    break;
                case 2245:
                    if (str.equals("FK")) {
                        b2 = 68;
                    }
                    break;
                case 2247:
                    if (str.equals("FM")) {
                        b2 = 69;
                    }
                    break;
                case 2249:
                    if (str.equals("FO")) {
                        b2 = 70;
                    }
                    break;
                case 2252:
                    if (str.equals("FR")) {
                        b2 = 71;
                    }
                    break;
                case 2266:
                    if (str.equals("GA")) {
                        b2 = 72;
                    }
                    break;
                case 2267:
                    if (str.equals("GB")) {
                        b2 = 73;
                    }
                    break;
                case 2269:
                    if (str.equals("GD")) {
                        b2 = 74;
                    }
                    break;
                case 2270:
                    if (str.equals("GE")) {
                        b2 = 75;
                    }
                    break;
                case 2271:
                    if (str.equals("GF")) {
                        b2 = 76;
                    }
                    break;
                case 2272:
                    if (str.equals("GG")) {
                        b2 = 77;
                    }
                    break;
                case 2273:
                    if (str.equals("GH")) {
                        b2 = 78;
                    }
                    break;
                case 2274:
                    if (str.equals("GI")) {
                        b2 = 79;
                    }
                    break;
                case 2277:
                    if (str.equals("GL")) {
                        b2 = 80;
                    }
                    break;
                case 2278:
                    if (str.equals("GM")) {
                        b2 = 81;
                    }
                    break;
                case 2279:
                    if (str.equals("GN")) {
                        b2 = 82;
                    }
                    break;
                case 2281:
                    if (str.equals("GP")) {
                        b2 = 83;
                    }
                    break;
                case 2282:
                    if (str.equals("GQ")) {
                        b2 = 84;
                    }
                    break;
                case 2283:
                    if (str.equals("GR")) {
                        b2 = 85;
                    }
                    break;
                case 2285:
                    if (str.equals("GT")) {
                        b2 = 86;
                    }
                    break;
                case 2286:
                    if (str.equals("GU")) {
                        b2 = 87;
                    }
                    break;
                case 2288:
                    if (str.equals("GW")) {
                        b2 = 88;
                    }
                    break;
                case 2290:
                    if (str.equals("GY")) {
                        b2 = 89;
                    }
                    break;
                case 2307:
                    if (str.equals("HK")) {
                        b2 = 90;
                    }
                    break;
                case 2314:
                    if (str.equals("HR")) {
                        b2 = 91;
                    }
                    break;
                case 2316:
                    if (str.equals("HT")) {
                        b2 = 92;
                    }
                    break;
                case 2317:
                    if (str.equals("HU")) {
                        b2 = 93;
                    }
                    break;
                case 2331:
                    if (str.equals("ID")) {
                        b2 = 94;
                    }
                    break;
                case 2332:
                    if (str.equals("IE")) {
                        b2 = 95;
                    }
                    break;
                case 2339:
                    if (str.equals("IL")) {
                        b2 = 96;
                    }
                    break;
                case 2340:
                    if (str.equals("IM")) {
                        b2 = 97;
                    }
                    break;
                case 2341:
                    if (str.equals("IN")) {
                        b2 = 98;
                    }
                    break;
                case 2342:
                    if (str.equals("IO")) {
                        b2 = 99;
                    }
                    break;
                case 2344:
                    if (str.equals("IQ")) {
                        b2 = 100;
                    }
                    break;
                case 2345:
                    if (str.equals("IR")) {
                        b2 = 101;
                    }
                    break;
                case 2346:
                    if (str.equals("IS")) {
                        b2 = 102;
                    }
                    break;
                case 2347:
                    if (str.equals("IT")) {
                        b2 = 103;
                    }
                    break;
                case 2363:
                    if (str.equals("JE")) {
                        b2 = 104;
                    }
                    break;
                case 2371:
                    if (str.equals("JM")) {
                        b2 = 105;
                    }
                    break;
                case 2373:
                    if (str.equals("JO")) {
                        b2 = 106;
                    }
                    break;
                case 2374:
                    if (str.equals("JP")) {
                        b2 = 107;
                    }
                    break;
                case 2394:
                    if (str.equals("KE")) {
                        b2 = 108;
                    }
                    break;
                case 2396:
                    if (str.equals("KG")) {
                        b2 = 109;
                    }
                    break;
                case 2397:
                    if (str.equals("KH")) {
                        b2 = 110;
                    }
                    break;
                case 2398:
                    if (str.equals("KI")) {
                        b2 = 111;
                    }
                    break;
                case 2402:
                    if (str.equals("KM")) {
                        b2 = 112;
                    }
                    break;
                case 2403:
                    if (str.equals("KN")) {
                        b2 = 113;
                    }
                    break;
                case 2407:
                    if (str.equals("KR")) {
                        b2 = 114;
                    }
                    break;
                case 2412:
                    if (str.equals("KW")) {
                        b2 = 115;
                    }
                    break;
                case 2414:
                    if (str.equals("KY")) {
                        b2 = 116;
                    }
                    break;
                case 2415:
                    if (str.equals("KZ")) {
                        b2 = 117;
                    }
                    break;
                case 2421:
                    if (str.equals("LA")) {
                        b2 = 118;
                    }
                    break;
                case 2422:
                    if (str.equals("LB")) {
                        b2 = 119;
                    }
                    break;
                case 2423:
                    if (str.equals("LC")) {
                        b2 = 120;
                    }
                    break;
                case 2429:
                    if (str.equals("LI")) {
                        b2 = 121;
                    }
                    break;
                case 2431:
                    if (str.equals("LK")) {
                        b2 = 122;
                    }
                    break;
                case 2438:
                    if (str.equals("LR")) {
                        b2 = 123;
                    }
                    break;
                case 2439:
                    if (str.equals("LS")) {
                        b2 = 124;
                    }
                    break;
                case 2440:
                    if (str.equals("LT")) {
                        b2 = 125;
                    }
                    break;
                case 2441:
                    if (str.equals("LU")) {
                        b2 = 126;
                    }
                    break;
                case 2442:
                    if (str.equals("LV")) {
                        b2 = 127;
                    }
                    break;
                case 2445:
                    if (str.equals("LY")) {
                        b2 = 128;
                    }
                    break;
                case 2452:
                    if (str.equals("MA")) {
                        b2 = 129;
                    }
                    break;
                case 2454:
                    if (str.equals("MC")) {
                        b2 = 130;
                    }
                    break;
                case 2455:
                    if (str.equals("MD")) {
                        b2 = 131;
                    }
                    break;
                case 2456:
                    if (str.equals("ME")) {
                        b2 = 132;
                    }
                    break;
                case 2457:
                    if (str.equals("MF")) {
                        b2 = 133;
                    }
                    break;
                case 2458:
                    if (str.equals("MG")) {
                        b2 = 134;
                    }
                    break;
                case 2459:
                    if (str.equals("MH")) {
                        b2 = 135;
                    }
                    break;
                case 2462:
                    if (str.equals("MK")) {
                        b2 = 136;
                    }
                    break;
                case 2463:
                    if (str.equals("ML")) {
                        b2 = 137;
                    }
                    break;
                case 2464:
                    if (str.equals("MM")) {
                        b2 = 138;
                    }
                    break;
                case 2465:
                    if (str.equals("MN")) {
                        b2 = 139;
                    }
                    break;
                case 2466:
                    if (str.equals("MO")) {
                        b2 = 140;
                    }
                    break;
                case 2467:
                    if (str.equals("MP")) {
                        b2 = 141;
                    }
                    break;
                case 2468:
                    if (str.equals("MQ")) {
                        b2 = 142;
                    }
                    break;
                case 2469:
                    if (str.equals("MR")) {
                        b2 = 143;
                    }
                    break;
                case 2470:
                    if (str.equals("MS")) {
                        b2 = h.a.f24175c;
                    }
                    break;
                case 2471:
                    if (str.equals("MT")) {
                        b2 = 145;
                    }
                    break;
                case 2472:
                    if (str.equals("MU")) {
                        b2 = 146;
                    }
                    break;
                case 2473:
                    if (str.equals("MV")) {
                        b2 = 147;
                    }
                    break;
                case 2474:
                    if (str.equals("MW")) {
                        b2 = 148;
                    }
                    break;
                case 2475:
                    if (str.equals("MX")) {
                        b2 = 149;
                    }
                    break;
                case 2476:
                    if (str.equals("MY")) {
                        b2 = 150;
                    }
                    break;
                case 2477:
                    if (str.equals("MZ")) {
                        b2 = 151;
                    }
                    break;
                case 2483:
                    if (str.equals("NA")) {
                        b2 = 152;
                    }
                    break;
                case 2485:
                    if (str.equals("NC")) {
                        b2 = 153;
                    }
                    break;
                case 2487:
                    if (str.equals("NE")) {
                        b2 = 154;
                    }
                    break;
                case 2488:
                    if (str.equals("NF")) {
                        b2 = 155;
                    }
                    break;
                case 2489:
                    if (str.equals("NG")) {
                        b2 = 156;
                    }
                    break;
                case 2491:
                    if (str.equals("NI")) {
                        b2 = 157;
                    }
                    break;
                case 2494:
                    if (str.equals("NL")) {
                        b2 = 158;
                    }
                    break;
                case 2497:
                    if (str.equals("NO")) {
                        b2 = 159;
                    }
                    break;
                case 2498:
                    if (str.equals("NP")) {
                        b2 = h.a.d;
                    }
                    break;
                case 2500:
                    if (str.equals("NR")) {
                        b2 = 161;
                    }
                    break;
                case 2503:
                    if (str.equals("NU")) {
                        b2 = 162;
                    }
                    break;
                case 2508:
                    if (str.equals("NZ")) {
                        b2 = 163;
                    }
                    break;
                case 2526:
                    if (str.equals("OM")) {
                        b2 = 164;
                    }
                    break;
                case 2545:
                    if (str.equals("PA")) {
                        b2 = 165;
                    }
                    break;
                case 2549:
                    if (str.equals("PE")) {
                        b2 = 166;
                    }
                    break;
                case 2550:
                    if (str.equals("PF")) {
                        b2 = 167;
                    }
                    break;
                case 2551:
                    if (str.equals("PG")) {
                        b2 = 168;
                    }
                    break;
                case 2552:
                    if (str.equals("PH")) {
                        b2 = 169;
                    }
                    break;
                case 2555:
                    if (str.equals("PK")) {
                        b2 = 170;
                    }
                    break;
                case 2556:
                    if (str.equals("PL")) {
                        b2 = 171;
                    }
                    break;
                case 2557:
                    if (str.equals("PM")) {
                        b2 = 172;
                    }
                    break;
                case 2562:
                    if (str.equals("PR")) {
                        b2 = 173;
                    }
                    break;
                case 2563:
                    if (str.equals("PS")) {
                        b2 = 174;
                    }
                    break;
                case 2564:
                    if (str.equals("PT")) {
                        b2 = 175;
                    }
                    break;
                case 2567:
                    if (str.equals("PW")) {
                        b2 = 176;
                    }
                    break;
                case 2569:
                    if (str.equals("PY")) {
                        b2 = 177;
                    }
                    break;
                case 2576:
                    if (str.equals("QA")) {
                        b2 = 178;
                    }
                    break;
                case 2611:
                    if (str.equals("RE")) {
                        b2 = 179;
                    }
                    break;
                case 2621:
                    if (str.equals("RO")) {
                        b2 = 180;
                    }
                    break;
                case 2625:
                    if (str.equals("RS")) {
                        b2 = 181;
                    }
                    break;
                case 2627:
                    if (str.equals("RU")) {
                        b2 = 182;
                    }
                    break;
                case 2629:
                    if (str.equals("RW")) {
                        b2 = 183;
                    }
                    break;
                case 2638:
                    if (str.equals("SA")) {
                        b2 = 184;
                    }
                    break;
                case 2639:
                    if (str.equals("SB")) {
                        b2 = 185;
                    }
                    break;
                case 2640:
                    if (str.equals("SC")) {
                        b2 = 186;
                    }
                    break;
                case 2641:
                    if (str.equals("SD")) {
                        b2 = 187;
                    }
                    break;
                case 2642:
                    if (str.equals("SE")) {
                        b2 = PSSSigner.TRAILER_IMPLICIT;
                    }
                    break;
                case 2644:
                    if (str.equals("SG")) {
                        b2 = 189;
                    }
                    break;
                case 2645:
                    if (str.equals("SH")) {
                        b2 = 190;
                    }
                    break;
                case 2646:
                    if (str.equals("SI")) {
                        b2 = 191;
                    }
                    break;
                case 2647:
                    if (str.equals("SJ")) {
                        b2 = h.a.f24176e;
                    }
                    break;
                case 2648:
                    if (str.equals("SK")) {
                        b2 = h.a.f24177f;
                    }
                    break;
                case 2649:
                    if (str.equals("SL")) {
                        b2 = h.a.g;
                    }
                    break;
                case 2650:
                    if (str.equals("SM")) {
                        b2 = h.a.f24178h;
                    }
                    break;
                case 2651:
                    if (str.equals("SN")) {
                        b2 = h.a.f24179i;
                    }
                    break;
                case 2652:
                    if (str.equals("SO")) {
                        b2 = h.a.f24180j;
                    }
                    break;
                case 2655:
                    if (str.equals("SR")) {
                        b2 = h.a.f24181k;
                    }
                    break;
                case 2656:
                    if (str.equals("SS")) {
                        b2 = h.a.l;
                    }
                    break;
                case 2657:
                    if (str.equals("ST")) {
                        b2 = h.a.m;
                    }
                    break;
                case 2659:
                    if (str.equals("SV")) {
                        b2 = h.a.n;
                    }
                    break;
                case 2661:
                    if (str.equals("SX")) {
                        b2 = h.a.o;
                    }
                    break;
                case 2662:
                    if (str.equals("SY")) {
                        b2 = h.a.p;
                    }
                    break;
                case 2663:
                    if (str.equals("SZ")) {
                        b2 = h.a.q;
                    }
                    break;
                case 2671:
                    if (str.equals("TC")) {
                        b2 = h.a.r;
                    }
                    break;
                case 2672:
                    if (str.equals("TD")) {
                        b2 = h.a.s;
                    }
                    break;
                case 2675:
                    if (str.equals("TG")) {
                        b2 = h.a.t;
                    }
                    break;
                case 2676:
                    if (str.equals("TH")) {
                        b2 = h.a.u;
                    }
                    break;
                case 2678:
                    if (str.equals("TJ")) {
                        b2 = h.a.v;
                    }
                    break;
                case 2680:
                    if (str.equals("TL")) {
                        b2 = h.a.w;
                    }
                    break;
                case 2681:
                    if (str.equals("TM")) {
                        b2 = h.a.x;
                    }
                    break;
                case 2682:
                    if (str.equals("TN")) {
                        b2 = h.a.y;
                    }
                    break;
                case 2683:
                    if (str.equals("TO")) {
                        b2 = h.a.z;
                    }
                    break;
                case 2686:
                    if (str.equals("TR")) {
                        b2 = h.a.A;
                    }
                    break;
                case 2688:
                    if (str.equals("TT")) {
                        b2 = h.a.B;
                    }
                    break;
                case 2690:
                    if (str.equals("TV")) {
                        b2 = h.a.C;
                    }
                    break;
                case 2691:
                    if (str.equals("TW")) {
                        b2 = h.a.D;
                    }
                    break;
                case 2694:
                    if (str.equals("TZ")) {
                        b2 = h.a.E;
                    }
                    break;
                case 2700:
                    if (str.equals("UA")) {
                        b2 = h.a.F;
                    }
                    break;
                case 2706:
                    if (str.equals("UG")) {
                        b2 = h.a.G;
                    }
                    break;
                case 2718:
                    if (str.equals("US")) {
                        b2 = h.a.H;
                    }
                    break;
                case 2724:
                    if (str.equals("UY")) {
                        b2 = h.a.I;
                    }
                    break;
                case 2725:
                    if (str.equals("UZ")) {
                        b2 = h.a.J;
                    }
                    break;
                case 2731:
                    if (str.equals("VA")) {
                        b2 = h.a.K;
                    }
                    break;
                case 2733:
                    if (str.equals("VC")) {
                        b2 = 225;
                    }
                    break;
                case 2735:
                    if (str.equals("VE")) {
                        b2 = 226;
                    }
                    break;
                case 2737:
                    if (str.equals("VG")) {
                        b2 = 227;
                    }
                    break;
                case 2739:
                    if (str.equals("VI")) {
                        b2 = 228;
                    }
                    break;
                case 2744:
                    if (str.equals("VN")) {
                        b2 = 229;
                    }
                    break;
                case 2751:
                    if (str.equals("VU")) {
                        b2 = 230;
                    }
                    break;
                case 2767:
                    if (str.equals("WF")) {
                        b2 = 231;
                    }
                    break;
                case 2780:
                    if (str.equals("WS")) {
                        b2 = 232;
                    }
                    break;
                case 2803:
                    if (str.equals("XK")) {
                        b2 = 233;
                    }
                    break;
                case 2828:
                    if (str.equals("YE")) {
                        b2 = 234;
                    }
                    break;
                case 2843:
                    if (str.equals("YT")) {
                        b2 = 235;
                    }
                    break;
                case 2855:
                    if (str.equals("ZA")) {
                        b2 = 236;
                    }
                    break;
                case 2867:
                    if (str.equals("ZM")) {
                        b2 = 237;
                    }
                    break;
                case 2877:
                    if (str.equals("ZW")) {
                        b2 = 238;
                    }
                    break;
            }
            switch (b2) {
                case 0:
                case 4:
                case 17:
                case 29:
                case 50:
                case 57:
                case 113:
                case 116:
                case 202:
                case 225:
                    iArr = new int[]{1, 2, 0, 0, 2, 2};
                    break;
                case 1:
                    iArr = new int[]{1, 4, 2, 3, 4, 1};
                    break;
                case 2:
                case 204:
                    iArr = new int[]{4, 4, 3, 4, 2, 2};
                    break;
                case 3:
                case 41:
                    iArr = new int[]{2, 4, 3, 4, 2, 2};
                    break;
                case 5:
                    iArr = new int[]{1, 1, 1, 2, 2, 2};
                    break;
                case 6:
                case 165:
                    iArr = new int[]{2, 3, 2, 3, 2, 2};
                    break;
                case 7:
                    iArr = new int[]{3, 4, 4, 3, 2, 2};
                    break;
                case 8:
                case 63:
                case 162:
                case 186:
                case 190:
                    iArr = new int[]{4, 2, 2, 2, 2, 2};
                    break;
                case 9:
                    iArr = new int[]{2, 2, 2, 2, 1, 2};
                    break;
                case 10:
                    iArr = new int[]{2, 2, 3, 3, 2, 2};
                    break;
                case 11:
                case 61:
                case 93:
                case 102:
                case CertificateBody.profileType /* 127 */:
                case 145:
                case 188:
                    iArr = new int[]{0, 0, 0, 0, 0, 2};
                    break;
                case 12:
                    iArr = new int[]{0, 3, 1, 1, 3, 0};
                    break;
                case 13:
                    iArr = new int[]{2, 2, 3, 4, 2, 2};
                    break;
                case 14:
                case EACTags.TRANSACTION_DATE /* 51 */:
                case 121:
                case 144:
                case 172:
                case 195:
                case BERTags.FLAGS /* 224 */:
                    iArr = new int[]{0, 2, 2, 2, 2, 2};
                    break;
                case 15:
                case 55:
                case 128:
                case 194:
                    iArr = new int[]{4, 2, 3, 3, 2, 2};
                    break;
                case 16:
                case 106:
                case 214:
                    iArr = new int[]{1, 1, 1, 1, 2, 2};
                    break;
                case 18:
                    iArr = new int[]{2, 1, 3, 2, 4, 2};
                    break;
                case 19:
                    iArr = new int[]{0, 0, 1, 0, 1, 2};
                    break;
                case 20:
                case 187:
                case 203:
                case 206:
                    iArr = new int[]{4, 3, 4, 4, 2, 2};
                    break;
                case 21:
                case 175:
                case 191:
                    iArr = new int[]{0, 0, 0, 0, 1, 2};
                    break;
                case 22:
                    iArr = new int[]{1, 3, 1, 3, 4, 2};
                    break;
                case 23:
                case 84:
                case 92:
                case 154:
                case 226:
                case 234:
                    iArr = new int[]{4, 4, 4, 4, 2, 2};
                    break;
                case 24:
                    iArr = new int[]{4, 4, 2, 3, 2, 2};
                    break;
                case 25:
                case 141:
                case 177:
                    iArr = new int[]{1, 2, 2, 2, 2, 2};
                    break;
                case 26:
                    iArr = new int[]{0, 2, 0, 0, 2, 2};
                    break;
                case 27:
                    iArr = new int[]{3, 2, 0, 0, 2, 2};
                    break;
                case 28:
                    iArr = new int[]{1, 2, 4, 4, 2, 2};
                    break;
                case 30:
                    iArr = new int[]{1, 1, 1, 1, 2, 4};
                    break;
                case 31:
                    iArr = new int[]{3, 2, 1, 1, 2, 2};
                    break;
                case 32:
                    iArr = new int[]{3, 1, 2, 2, 3, 2};
                    break;
                case 33:
                    iArr = new int[]{3, 2, 1, 0, 2, 2};
                    break;
                case 34:
                    iArr = new int[]{1, 2, 3, 3, 2, 2};
                    break;
                case 35:
                case EACTags.CURRENCY_CODE /* 42 */:
                    iArr = new int[]{2, 2, 2, 1, 2, 2};
                    break;
                case 36:
                case 219:
                    iArr = new int[]{0, 2, 1, 2, 3, 3};
                    break;
                case 37:
                case 137:
                    iArr = new int[]{3, 3, 2, 2, 2, 2};
                    break;
                case 38:
                    iArr = new int[]{4, 2, 4, 2, 2, 2};
                    break;
                case 39:
                case 62:
                case 134:
                    iArr = new int[]{3, 4, 3, 3, 2, 2};
                    break;
                case 40:
                    iArr = new int[]{0, 1, 0, 0, 0, 2};
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                case 208:
                    iArr = new int[]{0, 1, 2, 2, 2, 2};
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                case 143:
                    iArr = new int[]{4, 3, 3, 4, 2, 2};
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    iArr = new int[]{2, 0, 1, 1, 3, 1};
                    break;
                case 46:
                    iArr = new int[]{2, 3, 3, 2, 2, 2};
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                case 157:
                    iArr = new int[]{2, 4, 4, 4, 2, 2};
                    break;
                case 48:
                case 111:
                case 161:
                case 210:
                    iArr = new int[]{4, 2, 4, 4, 2, 2};
                    break;
                case 49:
                    iArr = new int[]{2, 3, 0, 1, 2, 2};
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    iArr = new int[]{1, 0, 1, 0, 0, 2};
                    break;
                case EACTags.SEX /* 53 */:
                    iArr = new int[]{0, 0, 2, 0, 1, 2};
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    iArr = new int[]{0, 1, 4, 2, 2, 1};
                    break;
                case 56:
                    iArr = new int[]{0, 0, 2, 0, 0, 2};
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                case 123:
                    iArr = new int[]{3, 4, 4, 4, 2, 2};
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                case 209:
                    iArr = new int[]{3, 3, 4, 4, 2, 2};
                    break;
                case 60:
                    iArr = new int[]{1, 3, 2, 1, 2, 2};
                    break;
                case 64:
                    iArr = new int[]{0, 0, 0, 0, 1, 0};
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    iArr = new int[]{4, 3, 4, 4, 4, 2};
                    break;
                case EACTags.ADDRESS /* 66 */:
                    iArr = new int[]{0, 0, 0, 1, 0, 2};
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    iArr = new int[]{3, 2, 2, 3, 2, 2};
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                case 155:
                case 192:
                    iArr = new int[]{3, 2, 2, 2, 2, 2};
                    break;
                case EACTags.DISPLAY_IMAGE /* 69 */:
                    iArr = new int[]{4, 2, 4, 0, 2, 2};
                    break;
                case 70:
                    iArr = new int[]{0, 2, 2, 0, 2, 2};
                    break;
                case EACTags.MESSAGE_REFERENCE /* 71 */:
                    iArr = new int[]{1, 1, 1, 1, 0, 2};
                    break;
                case 72:
                    iArr = new int[]{3, 4, 0, 0, 2, 2};
                    break;
                case 73:
                    iArr = new int[]{1, 1, 3, 2, 2, 2};
                    break;
                case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                    iArr = new int[]{2, 2, 0, 0, 2, 2};
                    break;
                case EACTags.DEPRECATED /* 75 */:
                    iArr = new int[]{1, 1, 0, 2, 2, 2};
                    break;
                case 76:
                    iArr = new int[]{3, 2, 3, 3, 2, 2};
                    break;
                case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                    iArr = new int[]{0, 2, 1, 1, 2, 2};
                    break;
                case 78:
                    iArr = new int[]{3, 3, 3, 2, 2, 2};
                    break;
                case 79:
                case 97:
                case 104:
                    iArr = new int[]{0, 2, 0, 1, 2, 2};
                    break;
                case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                case 130:
                    iArr = new int[]{1, 2, 2, 0, 2, 2};
                    break;
                case EACTags.ANSWER_TO_RESET /* 81 */:
                case 199:
                    iArr = new int[]{4, 3, 2, 4, 2, 2};
                    break;
                case EACTags.HISTORICAL_BYTES /* 82 */:
                    iArr = new int[]{3, 4, 4, 2, 2, 2};
                    break;
                case 83:
                    iArr = new int[]{2, 1, 1, 3, 2, 2};
                    break;
                case 85:
                    iArr = new int[]{1, 0, 0, 0, 1, 2};
                    break;
                case 86:
                    iArr = new int[]{2, 1, 2, 1, 2, 2};
                    break;
                case 87:
                    iArr = new int[]{2, 2, 4, 3, 3, 2};
                    break;
                case 88:
                    iArr = new int[]{4, 4, 1, 2, 2, 2};
                    break;
                case 89:
                    iArr = new int[]{3, 1, 1, 3, 2, 2};
                    break;
                case Sink.ORIENTATION_90 /* 90 */:
                    iArr = new int[]{0, 1, 0, 1, 1, 0};
                    break;
                case 91:
                case 115:
                    iArr = new int[]{1, 0, 0, 0, 0, 2};
                    break;
                case 94:
                    iArr = new int[]{3, 1, 3, 3, 2, 4};
                    break;
                case 95:
                    iArr = new int[]{1, 1, 1, 1, 1, 2};
                    break;
                case 96:
                    iArr = new int[]{1, 2, 2, 3, 4, 2};
                    break;
                case 98:
                    iArr = new int[]{1, 1, 3, 2, 2, 3};
                    break;
                case 99:
                    iArr = new int[]{3, 2, 2, 0, 2, 2};
                    break;
                case 100:
                    iArr = new int[]{3, 2, 3, 2, 2, 2};
                    break;
                case 101:
                    iArr = new int[]{4, 2, 3, 3, 4, 3};
                    break;
                case 103:
                    iArr = new int[]{0, 1, 1, 2, 1, 2};
                    break;
                case 105:
                    iArr = new int[]{2, 4, 3, 1, 2, 2};
                    break;
                case 107:
                    iArr = new int[]{0, 3, 2, 3, 4, 2};
                    break;
                case 108:
                    iArr = new int[]{3, 2, 1, 1, 1, 2};
                    break;
                case 109:
                    iArr = new int[]{2, 1, 1, 2, 2, 2};
                    break;
                case 110:
                    iArr = new int[]{1, 0, 4, 2, 2, 2};
                    break;
                case 112:
                case 230:
                    iArr = new int[]{4, 3, 3, 2, 2, 2};
                    break;
                case 114:
                    iArr = new int[]{0, 2, 2, 4, 4, 4};
                    break;
                case 117:
                    iArr = new int[]{2, 1, 2, 2, 3, 2};
                    break;
                case 118:
                    iArr = new int[]{1, 2, 1, 3, 2, 2};
                    break;
                case 119:
                    iArr = new int[]{3, 1, 1, 2, 2, 2};
                    break;
                case 120:
                    iArr = new int[]{2, 2, 1, 1, 2, 2};
                    break;
                case 122:
                case 138:
                    iArr = new int[]{3, 2, 3, 3, 4, 2};
                    break;
                case 124:
                case 168:
                    iArr = new int[]{4, 3, 3, 3, 2, 2};
                    break;
                case 125:
                    iArr = new int[]{0, 1, 0, 1, 0, 2};
                    break;
                case 126:
                    iArr = new int[]{4, 0, 3, 2, 1, 3};
                    break;
                case 129:
                    iArr = new int[]{3, 3, 1, 1, 2, 2};
                    break;
                case 131:
                    iArr = new int[]{1, 0, 0, 0, 2, 2};
                    break;
                case 132:
                    iArr = new int[]{2, 0, 0, 1, 3, 2};
                    break;
                case 133:
                    iArr = new int[]{1, 2, 2, 3, 2, 2};
                    break;
                case 135:
                case Primes.SMALL_FACTOR_LIMIT /* 211 */:
                case 216:
                case 231:
                    iArr = new int[]{4, 2, 2, 4, 2, 2};
                    break;
                case 136:
                    iArr = new int[]{1, 0, 0, 1, 3, 2};
                    break;
                case 139:
                    iArr = new int[]{2, 0, 2, 2, 2, 2};
                    break;
                case 140:
                    iArr = new int[]{0, 2, 4, 4, 3, 1};
                    break;
                case 142:
                    iArr = new int[]{2, 1, 2, 3, 2, 2};
                    break;
                case 146:
                    iArr = new int[]{3, 1, 0, 2, 2, 2};
                    break;
                case 147:
                    iArr = new int[]{3, 2, 1, 3, 4, 2};
                    break;
                case 148:
                    iArr = new int[]{3, 2, 2, 1, 2, 2};
                    break;
                case 149:
                    iArr = new int[]{2, 4, 4, 4, 3, 2};
                    break;
                case 150:
                    iArr = new int[]{1, 0, 4, 1, 1, 0};
                    break;
                case 151:
                case 232:
                    iArr = new int[]{3, 1, 2, 2, 2, 2};
                    break;
                case 152:
                    iArr = new int[]{3, 4, 3, 2, 2, 2};
                    break;
                case 153:
                case 235:
                    iArr = new int[]{2, 3, 3, 4, 2, 2};
                    break;
                case 156:
                    iArr = new int[]{3, 4, 2, 1, 2, 2};
                    break;
                case 158:
                    iArr = new int[]{2, 1, 4, 3, 0, 4};
                    break;
                case 159:
                    iArr = new int[]{0, 0, 3, 0, 0, 2};
                    break;
                case 160:
                    iArr = new int[]{2, 2, 4, 3, 2, 2};
                    break;
                case 163:
                    iArr = new int[]{0, 0, 1, 2, 4, 2};
                    break;
                case 164:
                    iArr = new int[]{2, 3, 1, 2, 4, 2};
                    break;
                case 166:
                    iArr = new int[]{1, 2, 4, 4, 3, 2};
                    break;
                case 167:
                    iArr = new int[]{2, 2, 3, 1, 2, 2};
                    break;
                case 169:
                    iArr = new int[]{2, 1, 2, 3, 2, 1};
                    break;
                case 170:
                    iArr = new int[]{3, 3, 3, 3, 2, 2};
                    break;
                case 171:
                    iArr = new int[]{1, 0, 2, 2, 4, 4};
                    break;
                case 173:
                    iArr = new int[]{2, 0, 2, 1, 2, 0};
                    break;
                case 174:
                    iArr = new int[]{3, 4, 1, 3, 2, 2};
                    break;
                case 176:
                    iArr = new int[]{2, 2, 4, 1, 2, 2};
                    break;
                case 178:
                    iArr = new int[]{1, 4, 4, 4, 4, 2};
                    break;
                case 179:
                    iArr = new int[]{0, 3, 2, 3, 1, 2};
                    break;
                case Sink.ORIENTATION_180 /* 180 */:
                    iArr = new int[]{0, 0, 1, 1, 3, 2};
                    break;
                case 181:
                    iArr = new int[]{1, 0, 0, 1, 2, 2};
                    break;
                case 182:
                    iArr = new int[]{1, 0, 0, 1, 3, 3};
                    break;
                case 183:
                    iArr = new int[]{3, 3, 2, 0, 2, 2};
                    break;
                case 184:
                    iArr = new int[]{3, 1, 1, 2, 2, 0};
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 185 */:
                case 238:
                    iArr = new int[]{4, 2, 4, 3, 2, 2};
                    break;
                case 189:
                    iArr = new int[]{2, 3, 3, 3, 1, 1};
                    break;
                case 193:
                    iArr = new int[]{0, 1, 1, 1, 2, 2};
                    break;
                case 196:
                    iArr = new int[]{4, 4, 3, 2, 2, 2};
                    break;
                case 197:
                    iArr = new int[]{2, 2, 3, 4, 4, 2};
                    break;
                case 198:
                    iArr = new int[]{2, 4, 4, 1, 2, 2};
                    break;
                case 200:
                    iArr = new int[]{2, 2, 1, 2, 2, 2};
                    break;
                case 201:
                    iArr = new int[]{2, 3, 2, 1, 2, 2};
                    break;
                case 205:
                    iArr = new int[]{3, 2, 1, 2, 2, 2};
                    break;
                case 207:
                    iArr = new int[]{3, 4, 1, 0, 2, 2};
                    break;
                case 212:
                    iArr = new int[]{3, 1, 1, 1, 2, 2};
                    break;
                case 213:
                    iArr = new int[]{3, 2, 4, 3, 2, 2};
                    break;
                case 215:
                    iArr = new int[]{2, 4, 1, 0, 2, 2};
                    break;
                case 217:
                    iArr = new int[]{0, 0, 0, 0, 0, 0};
                    break;
                case com.google.android.gms.dynamite.descriptors.com.google.android.gms.tagmanager.ModuleDescriptor.MODULE_VERSION /* 218 */:
                    iArr = new int[]{3, 4, 2, 1, 3, 2};
                    break;
                case 220:
                    iArr = new int[]{3, 3, 2, 3, 4, 2};
                    break;
                case 221:
                    iArr = new int[]{2, 2, 4, 1, 3, 1};
                    break;
                case 222:
                    iArr = new int[]{2, 1, 1, 2, 1, 2};
                    break;
                case 223:
                    iArr = new int[]{1, 2, 3, 4, 3, 2};
                    break;
                case 227:
                    iArr = new int[]{2, 2, 1, 1, 2, 4};
                    break;
                case 228:
                    iArr = new int[]{0, 2, 1, 2, 2, 2};
                    break;
                case 229:
                    iArr = new int[]{0, 0, 1, 2, 2, 2};
                    break;
                case 233:
                    iArr = new int[]{1, 2, 1, 1, 2, 2};
                    break;
                case 236:
                    iArr = new int[]{2, 4, 2, 1, 1, 2};
                    break;
                case 237:
                    iArr = new int[]{4, 4, 4, 3, 2, 2};
                    break;
                default:
                    iArr = new int[]{2, 2, 2, 2, 2, 2};
                    break;
            }
            if (i2 == 2) {
                jLongValue = ((Long) p.get(iArr[0])).longValue();
            } else if (i2 == 3) {
                jLongValue = ((Long) q.get(iArr[1])).longValue();
            } else if (i2 == 4) {
                jLongValue = ((Long) r.get(iArr[2])).longValue();
            } else if (i2 == 5) {
                jLongValue = ((Long) s.get(iArr[3])).longValue();
            } else if (i2 == 7) {
                jLongValue = ((Long) p.get(iArr[0])).longValue();
            } else if (i2 != 9) {
                jLongValue = i2 != 10 ? 1000000L : ((Long) t.get(iArr[4])).longValue();
            } else {
                jLongValue = ((Long) u.get(iArr[5])).longValue();
            }
            lValueOf = Long.valueOf(jLongValue);
        }
        if (lValueOf == null) {
            lValueOf = 1000000L;
        }
        return lValueOf.longValue();
    }

    public final void i(int i2, long j2, long j3) {
        final int i3;
        final long j4;
        final long j5;
        if (i2 == 0 && j2 == 0 && j3 == this.m) {
            return;
        }
        this.m = j3;
        for (final BandwidthMeter.EventListener.EventDispatcher.HandlerAndListener handlerAndListener : this.f15813c.f15751a) {
            if (handlerAndListener.f15754c) {
                i3 = i2;
                j4 = j2;
                j5 = j3;
            } else {
                i3 = i2;
                j4 = j2;
                j5 = j3;
                handlerAndListener.f15752a.post(new Runnable() { // from class: androidx.media3.exoplayer.upstream.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        handlerAndListener.f15753b.x(i3, j4, j5);
                    }
                });
            }
            i2 = i3;
            j2 = j4;
            j3 = j5;
        }
    }
}
