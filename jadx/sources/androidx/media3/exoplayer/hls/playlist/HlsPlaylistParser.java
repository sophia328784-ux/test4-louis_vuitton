package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSourceInputStream;
import androidx.media3.exoplayer.hls.HlsTrackMetadataEntry;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import androidx.media3.extractor.mp4.PsshAtomUtil;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import defpackage.b21;
import defpackage.md;
import defpackage.o60;
import defpackage.tr;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Queue;
import java.util.TreeMap;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class HlsPlaylistParser implements ParsingLoadable.Parser<HlsPlaylist> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HlsMultivariantPlaylist f15300a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HlsMediaPlaylist f15301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f15293c = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");
    public static final Pattern d = Pattern.compile("VIDEO=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Pattern f15294e = Pattern.compile("AUDIO=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Pattern f15295f = Pattern.compile("SUBTITLES=\"((?:.|\f)+?)\"");
    public static final Pattern g = Pattern.compile("CLOSED-CAPTIONS=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Pattern f15296h = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Pattern f15297i = Pattern.compile("CHANNELS=\"((?:.|\f)+?)\"");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Pattern f15298j = Pattern.compile("VIDEO-RANGE=(SDR|PQ|HLG)");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Pattern f15299k = Pattern.compile("CODECS=\"((?:.|\f)+?)\"");
    public static final Pattern l = Pattern.compile("SUPPLEMENTAL-CODECS=\"((?:.|\f)+?)\"");
    public static final Pattern m = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    public static final Pattern n = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");
    public static final Pattern o = Pattern.compile("PATHWAY-ID=\"((?:.|\f)+?)\"");
    public static final Pattern p = Pattern.compile("STABLE-VARIANT-ID=\"((?:.|\f)+?)\"");
    public static final Pattern q = Pattern.compile("STABLE-RENDITION-ID=\"((?:.|\f)+?)\"");
    public static final Pattern r = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    public static final Pattern s = Pattern.compile("DURATION=([\\d\\.]+)\\b");
    public static final Pattern t = Pattern.compile("[:,]DURATION=([\\d\\.]+)\\b");
    public static final Pattern u = Pattern.compile("PART-TARGET=([\\d\\.]+)\\b");
    public static final Pattern v = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    public static final Pattern w = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    public static final Pattern x = Pattern.compile("CAN-SKIP-UNTIL=([\\d\\.]+)\\b");
    public static final Pattern y = b("CAN-SKIP-DATERANGES");
    public static final Pattern z = Pattern.compile("SKIPPED-SEGMENTS=(\\d+)\\b");
    public static final Pattern A = Pattern.compile("[:|,]HOLD-BACK=([\\d\\.]+)\\b");
    public static final Pattern B = Pattern.compile("PART-HOLD-BACK=([\\d\\.]+)\\b");
    public static final Pattern C = b("CAN-BLOCK-RELOAD");
    public static final Pattern D = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    public static final Pattern E = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    public static final Pattern F = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    public static final Pattern G = Pattern.compile("LAST-MSN=(\\d+)\\b");
    public static final Pattern H = Pattern.compile("LAST-PART=(\\d+)\\b");
    public static final Pattern I = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    public static final Pattern J = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    public static final Pattern K = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    public static final Pattern L = Pattern.compile("BYTERANGE-START=(\\d+)\\b");
    public static final Pattern M = Pattern.compile("BYTERANGE-LENGTH=(\\d+)\\b");
    public static final Pattern N = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    public static final Pattern O = Pattern.compile("KEYFORMAT=\"((?:.|\f)+?)\"");
    public static final Pattern P = Pattern.compile("KEYFORMATVERSIONS=\"((?:.|\f)+?)\"");
    public static final Pattern Q = Pattern.compile("URI=\"((?:.|\f)+?)\"");
    public static final Pattern R = Pattern.compile("IV=([^,.*]+)");
    public static final Pattern S = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    public static final Pattern T = Pattern.compile("TYPE=(PART|MAP)");
    public static final Pattern U = Pattern.compile("LANGUAGE=\"((?:.|\f)+?)\"");
    public static final Pattern V = Pattern.compile("NAME=\"((?:.|\f)+?)\"");
    public static final Pattern W = Pattern.compile("QUERYPARAM=\"((?:.|\f)+?)\"");
    public static final Pattern X = Pattern.compile("GROUP-ID=\"((?:.|\f)+?)\"");
    public static final Pattern Y = Pattern.compile("CHARACTERISTICS=\"((?:.|\f)+?)\"");
    public static final Pattern Z = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    public static final Pattern a0 = b("AUTOSELECT");
    public static final Pattern b0 = b("DEFAULT");
    public static final Pattern c0 = b("FORCED");
    public static final Pattern d0 = b("INDEPENDENT");
    public static final Pattern e0 = b("GAP");
    public static final Pattern f0 = b("PRECISE");
    public static final Pattern g0 = Pattern.compile("VALUE=\"((?:.|\f)+?)\"");
    public static final Pattern h0 = Pattern.compile("IMPORT=\"((?:.|\f)+?)\"");
    public static final Pattern i0 = Pattern.compile("[:,]ID=\"((?:.|\f)+?)\"");
    public static final Pattern j0 = Pattern.compile("CLASS=\"((?:.|\f)+?)\"");
    public static final Pattern k0 = Pattern.compile("START-DATE=\"((?:.|\f)+?)\"");
    public static final Pattern l0 = Pattern.compile("CUE=\"((?:.|\f)+?)\"");
    public static final Pattern m0 = Pattern.compile("END-DATE=\"((?:.|\f)+?)\"");
    public static final Pattern n0 = Pattern.compile("PLANNED-DURATION=([\\d\\.]+)\\b");
    public static final Pattern o0 = b("END-ON-NEXT");
    public static final Pattern p0 = Pattern.compile("X-ASSET-URI=\"((?:.|\f)+?)\"");
    public static final Pattern q0 = Pattern.compile("X-ASSET-LIST=\"((?:.|\f)+?)\"");
    public static final Pattern r0 = Pattern.compile("X-RESUME-OFFSET=(-?[\\d\\.]+)\\b");
    public static final Pattern s0 = Pattern.compile("X-PLAYOUT-LIMIT=([\\d\\.]+)\\b");
    public static final Pattern t0 = Pattern.compile("X-SNAP=\"((?:.|\f)+?)\"");
    public static final Pattern u0 = Pattern.compile("X-RESTRICT=\"((?:.|\f)+?)\"");
    public static final Pattern v0 = Pattern.compile("X-CONTENT-MAY-VARY=\"((?:.|\f)+?)\"");
    public static final Pattern w0 = Pattern.compile("X-TIMELINE-OCCUPIES=\"((?:.|\f)+?)\"");
    public static final Pattern x0 = Pattern.compile("X-TIMELINE-STYLE=\"((?:.|\f)+?)\"");
    public static final Pattern y0 = Pattern.compile("X-SKIP-CONTROL-OFFSET=([\\d\\.]+)\\b");
    public static final Pattern z0 = Pattern.compile("X-SKIP-CONTROL-DURATION=([\\d\\.]+)\\b");
    public static final Pattern A0 = Pattern.compile("X-SKIP-CONTROL-LABEL-ID=\"((?:.|\f)+?)\"");
    public static final Pattern B0 = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");
    public static final Pattern C0 = Pattern.compile("\\b(X-[A-Z0-9-]+)=");

    public static final class DeltaUpdateException extends IOException {
    }

    public static class LineIterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BufferedReader f15302a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Queue f15303b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f15304c;

        public LineIterator(Queue<String> queue, BufferedReader bufferedReader) {
            this.f15303b = queue;
            this.f15302a = bufferedReader;
        }

        public final boolean a() throws IOException {
            String strTrim;
            if (this.f15304c != null) {
                return true;
            }
            Queue queue = this.f15303b;
            if (!queue.isEmpty()) {
                String str = (String) queue.poll();
                str.getClass();
                this.f15304c = str;
                return true;
            }
            do {
                String line = this.f15302a.readLine();
                this.f15304c = line;
                if (line == null) {
                    return false;
                }
                strTrim = line.trim();
                this.f15304c = strTrim;
            } while (strTrim.isEmpty());
            return true;
        }

        public final String b() {
            if (!a()) {
                b21.x();
                return null;
            }
            String str = this.f15304c;
            this.f15304c = null;
            return str;
        }
    }

    public static final class MatcherCache extends LinkedHashMap<Pattern, Matcher> {
        public static Matcher a(MatcherCache matcherCache, String str, Pattern pattern) {
            Matcher matcher = matcherCache.get(pattern);
            if (matcher != null) {
                matcher.reset(str);
                return matcher;
            }
            Matcher matcher2 = pattern.matcher(str);
            matcherCache.put(pattern, matcher2);
            return matcher2;
        }

        @Override // java.util.LinkedHashMap
        public final boolean removeEldestEntry(Map.Entry<Pattern, Matcher> entry) {
            return size() > 32;
        }
    }

    public HlsPlaylistParser(HlsMultivariantPlaylist hlsMultivariantPlaylist, HlsMediaPlaylist hlsMediaPlaylist) {
        this.f15300a = hlsMultivariantPlaylist;
        this.f15301b = hlsMediaPlaylist;
    }

    public static Pattern b(String str) {
        return Pattern.compile(str.concat("=(NO|YES)"));
    }

    public static DrmInitData c(String str, DrmInitData.SchemeData[] schemeDataArr) {
        DrmInitData.SchemeData[] schemeDataArr2 = new DrmInitData.SchemeData[schemeDataArr.length];
        for (int i2 = 0; i2 < schemeDataArr.length; i2++) {
            DrmInitData.SchemeData schemeData = schemeDataArr[i2];
            schemeDataArr2[i2] = new DrmInitData.SchemeData(schemeData.f13749c, schemeData.d, schemeData.f13750e, null);
        }
        return new DrmInitData(str, schemeDataArr2);
    }

    public static DrmInitData.SchemeData d(String str, String str2, HashMap map, MatcherCache matcherCache) throws ParserException {
        String strJ = j(str, P, "1", map, matcherCache);
        boolean zEquals = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2);
        Pattern pattern = Q;
        if (zEquals) {
            String strK = k(str, pattern, map, matcherCache);
            return new DrmInitData.SchemeData(C.f13719e, "video/mp4", Base64.decode(strK.substring(strK.indexOf(44)), 0));
        }
        if ("com.widevine".equals(str2)) {
            UUID uuid = C.f13719e;
            String str3 = Util.f14242a;
            return new DrmInitData.SchemeData(uuid, "hls", str.getBytes(StandardCharsets.UTF_8));
        }
        if (!"com.microsoft.playready".equals(str2) || !"1".equals(strJ)) {
            return null;
        }
        String strK2 = k(str, pattern, map, matcherCache);
        byte[] bArrDecode = Base64.decode(strK2.substring(strK2.indexOf(44)), 0);
        UUID uuid2 = C.f13720f;
        return new DrmInitData.SchemeData(uuid2, "video/mp4", PsshAtomUtil.a(uuid2, bArrDecode));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:222:0x06ff  */
    /* JADX WARN: Code duplicated, block: B:225:0x0704  */
    /* JADX WARN: Code duplicated, block: B:261:0x080c  */
    /* JADX WARN: Code duplicated, block: B:292:0x08d7 A[PHI: r38
      0x08d7: PHI (r38v42 int) = (r38v38 int), (r38v39 int), (r38v40 int), (r38v43 int) binds: [B:302:0x08fc, B:298:0x08ef, B:294:0x08e1, B:291:0x08d5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:361:0x0a25  */
    /* JADX WARN: Code duplicated, block: B:370:0x0a41  */
    /* JADX WARN: Code duplicated, block: B:384:0x0a9f  */
    /* JADX WARN: Code duplicated, block: B:627:0x0ece  */
    /* JADX WARN: Code duplicated, block: B:628:0x0ed1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:629:0x0ed3  */
    /* JADX WARN: Code duplicated, block: B:630:0x0ed6  */
    /* JADX WARN: Code duplicated, block: B:633:0x0eee  */
    /* JADX WARN: Code duplicated, block: B:634:0x0ef1  */
    /* JADX WARN: Code duplicated, block: B:646:0x0f32  */
    /* JADX WARN: Code duplicated, block: B:649:0x0f3b  */
    /* JADX WARN: Code duplicated, block: B:651:0x0f4e  */
    /* JADX WARN: Code duplicated, block: B:654:0x0f66  */
    /* JADX WARN: Code duplicated, block: B:705:0x10de  */
    /* JADX WARN: Code duplicated, block: B:756:0x0ecc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:764:0x0e9b A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public static HlsMediaPlaylist e(HlsMultivariantPlaylist hlsMultivariantPlaylist, HlsMediaPlaylist hlsMediaPlaylist, LineIterator lineIterator, Uri uri, MatcherCache matcherCache) throws DeltaUpdateException, ParserException {
        HlsMediaPlaylist.Interstitial interstitial;
        ArrayList arrayList;
        String str;
        int i2;
        String str2;
        int i3;
        HlsMediaPlaylist.Part part;
        String str3;
        ArrayList arrayList2;
        String str4;
        ArrayList arrayList3;
        LinkedHashMap linkedHashMap;
        String str5;
        int i4;
        DrmInitData drmInitData;
        DrmInitData drmInitDataC;
        int i5;
        String str6;
        ArrayList arrayList4;
        ArrayList arrayList5;
        String hexString;
        String strL;
        HlsMediaPlaylist.Segment segment;
        long j2;
        String str7;
        int i6;
        DrmInitData drmInitData2;
        HlsMediaPlaylist.Segment segment2;
        long j3;
        String str8;
        ArrayList arrayList6;
        ArrayList arrayList7;
        ArrayList arrayList8;
        int i7;
        byte b2;
        String str9;
        long j4;
        DrmInitData drmInitData3;
        DrmInitData drmInitDataC2;
        hlsMultivariantPlaylist = hlsMultivariantPlaylist;
        HlsMediaPlaylist hlsMediaPlaylist2 = hlsMediaPlaylist;
        MatcherCache matcherCache2 = matcherCache;
        String string = uri.toString();
        boolean z2 = hlsMultivariantPlaylist.f15292c;
        HlsMediaPlaylist.Segment segment3 = hlsMediaPlaylist2 != null ? hlsMediaPlaylist2.x : null;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        HlsMediaPlaylist.ServerControl serverControl = new HlsMediaPlaylist.ServerControl(-9223372036854775807L, false, -9223372036854775807L, -9223372036854775807L, false);
        TreeMap treeMap = new TreeMap();
        String str10 = "";
        int i8 = 0;
        String strJ = "";
        HlsMediaPlaylist.Segment segment4 = segment3;
        long j5 = -1;
        boolean z3 = z2;
        long j6 = -9223372036854775807L;
        long j7 = -9223372036854775807L;
        long j8 = -9223372036854775807L;
        long j9 = 0;
        long j10 = 0;
        long jR = 0;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        long jLongValue = 0;
        long j14 = 0;
        int i9 = 0;
        int i10 = 0;
        boolean z4 = false;
        boolean zG = false;
        boolean z5 = false;
        int i11 = 0;
        int i12 = 0;
        boolean z6 = false;
        int i13 = 1;
        DrmInitData drmInitDataC3 = null;
        DrmInitData drmInitData4 = null;
        String strK = null;
        String strJ2 = null;
        HlsMediaPlaylist.Part part2 = null;
        String str11 = null;
        while (true) {
            i9 = i9;
            String str12 = "POINT";
            serverControl = serverControl;
            if (!lineIterator.a()) {
                ArrayList arrayList13 = arrayList9;
                ArrayList arrayList14 = arrayList10;
                ArrayList arrayList15 = arrayList11;
                ArrayList arrayList16 = arrayList12;
                LinkedHashMap linkedHashMap3 = linkedHashMap2;
                HlsMediaPlaylist.Part part3 = part2;
                HashMap map3 = new HashMap();
                int i14 = i8;
                while (i14 < arrayList15.size()) {
                    ArrayList arrayList17 = arrayList15;
                    HlsMediaPlaylist.RenditionReport renditionReport = (HlsMediaPlaylist.RenditionReport) arrayList17.get(i14);
                    long size = renditionReport.f15261b;
                    if (size == -1) {
                        size = (j9 + ((long) arrayList13.size())) - (arrayList14.isEmpty() ? 1L : 0L);
                    }
                    int size2 = renditionReport.f15262c;
                    if (size2 == -1 && j6 != -9223372036854775807L) {
                        size2 = (arrayList14.isEmpty() ? ((HlsMediaPlaylist.Segment) Iterables.b(arrayList13)).n : arrayList14).size() - 1;
                    }
                    Uri uri2 = renditionReport.f15260a;
                    map3.put(uri2, new HlsMediaPlaylist.RenditionReport(uri2, size, size2));
                    i14++;
                    arrayList15 = arrayList17;
                }
                if (part3 != null) {
                    arrayList14.add(part3);
                }
                ArrayList arrayList18 = new ArrayList();
                Iterator it = linkedHashMap3.values().iterator();
                while (it.hasNext()) {
                    HlsMediaPlaylist.Interstitial.Builder builder = (HlsMediaPlaylist.Interstitial.Builder) it.next();
                    Uri uri3 = builder.d;
                    if ((uri3 != null || builder.f15253c == null) && (uri3 == null || builder.f15253c != null)) {
                        interstitial = null;
                    } else {
                        long j15 = builder.f15254e;
                        if (j15 != -9223372036854775807L) {
                            String str13 = builder.f15251a;
                            Uri uri4 = builder.f15253c;
                            long j16 = builder.f15255f;
                            long j17 = builder.g;
                            long j18 = builder.f15256h;
                            ArrayList arrayList19 = builder.f15257i;
                            boolean z7 = builder.f15258j;
                            long j19 = builder.f15259k;
                            long j20 = builder.l;
                            ArrayList arrayList20 = builder.m;
                            ArrayList arrayList21 = builder.n;
                            ArrayList arrayList22 = new ArrayList(builder.f15252b.values());
                            Boolean bool = builder.o;
                            boolean z8 = bool == null || bool.booleanValue();
                            String str14 = builder.p;
                            String str15 = str14 != null ? str14 : "POINT";
                            String str16 = builder.q;
                            interstitial = new HlsMediaPlaylist.Interstitial(str13, uri4, uri3, j15, j16, j17, j18, arrayList19, z7, j19, j20, arrayList20, arrayList21, arrayList22, z8, str15, str16 != null ? str16 : "HIGHLIGHT", builder.r, builder.s, builder.t);
                        } else {
                            interstitial = null;
                        }
                    }
                    if (interstitial != null) {
                        arrayList18.add(interstitial);
                    }
                    it = it;
                    map3 = map3;
                    arrayList13 = arrayList13;
                }
                HashMap map4 = map3;
                ArrayList arrayList23 = arrayList13;
                if (jR == 0 && hlsMediaPlaylist != null && hlsMediaPlaylist.p) {
                    jR = hlsMediaPlaylist.f15235h;
                }
                return new HlsMediaPlaylist(i12, uri.toString(), arrayList16, j7, zG, jR, z4, i10, j9, i13, j8, j6, z3, z5, jR != 0, drmInitDataC3, arrayList23, arrayList14, serverControl, map4, arrayList18, segment4);
            }
            String strB = lineIterator.b();
            map2 = map2;
            if (strB.startsWith("#EXT")) {
                arrayList12.add(strB);
            }
            if (strB.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                String strK2 = k(strB, w, map, matcherCache2);
                if ("VOD".equals(strK2)) {
                    i12 = 1;
                } else if ("EVENT".equals(strK2)) {
                    i12 = 2;
                }
            } else if (strB.equals("#EXT-X-I-FRAMES-ONLY")) {
                i9 = i9;
                serverControl = serverControl;
                map2 = map2;
                z6 = true;
            } else {
                if (strB.startsWith("#EXT-X-START")) {
                    arrayList = arrayList12;
                    linkedHashMap2 = linkedHashMap2;
                    long j21 = (long) (Double.parseDouble(k(strB, I, Collections.EMPTY_MAP, matcherCache2)) * 1000000.0d);
                    zG = g(matcherCache2, strB, f0);
                    j7 = j21;
                } else {
                    arrayList = arrayList12;
                    linkedHashMap2 = linkedHashMap2;
                    if (strB.startsWith("#EXT-X-SERVER-CONTROL")) {
                        double dH = h(strB, x, -9.223372036854776E18d, matcherCache2);
                        long j22 = dH == -9.223372036854776E18d ? -9223372036854775807L : (long) (dH * 1000000.0d);
                        boolean zG2 = g(matcherCache2, strB, y);
                        double dH2 = h(strB, A, -9.223372036854776E18d, matcherCache2);
                        long j23 = dH2 == -9.223372036854776E18d ? -9223372036854775807L : (long) (dH2 * 1000000.0d);
                        double dH3 = h(strB, B, -9.223372036854776E18d, matcherCache2);
                        arrayList12 = arrayList;
                        i9 = i9;
                        map2 = map2;
                        linkedHashMap2 = linkedHashMap2;
                        serverControl = new HlsMediaPlaylist.ServerControl(j22, zG2, j23, dH3 == -9.223372036854776E18d ? -9223372036854775807L : (long) (dH3 * 1000000.0d), g(matcherCache2, strB, C));
                    } else if (strB.startsWith("#EXT-X-PART-INF")) {
                        j6 = (long) (Double.parseDouble(k(strB, u, Collections.EMPTY_MAP, matcherCache2)) * 1000000.0d);
                    } else {
                        boolean zStartsWith = strB.startsWith("#EXT-X-MAP");
                        Pattern pattern = K;
                        arrayList12 = arrayList;
                        Pattern pattern2 = Q;
                        if (zStartsWith) {
                            String strK3 = k(strB, pattern2, map, matcherCache2);
                            String strJ3 = j(strB, pattern, null, map, matcherCache2);
                            if (strJ3 != null) {
                                String str17 = Util.f14242a;
                                String[] strArrSplit = strJ3.split("@", -1);
                                j5 = Long.parseLong(strArrSplit[i8]);
                                if (strArrSplit.length > 1) {
                                    j12 = Long.parseLong(strArrSplit[1]);
                                }
                            }
                            long j24 = j5;
                            long j25 = j24 == -1 ? 0L : j12;
                            if (strK != null && strJ2 == null) {
                                throw ParserException.b("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.");
                            }
                            HlsMediaPlaylist.Segment segment5 = new HlsMediaPlaylist.Segment(strK3, j25, j24, strK, strJ2);
                            String str18 = strJ2;
                            if (j24 != -1) {
                                j25 += j24;
                            }
                            j12 = j25;
                            segment4 = segment5;
                            i9 = i9;
                            j5 = -1;
                            serverControl = serverControl;
                            map2 = map2;
                            linkedHashMap2 = linkedHashMap2;
                            arrayList12 = arrayList12;
                            strJ2 = str18;
                        } else {
                            String str19 = strJ2;
                            ArrayList arrayList24 = arrayList10;
                            ArrayList arrayList25 = arrayList11;
                            if (strB.startsWith("#EXT-X-TARGETDURATION")) {
                                j8 = ((long) Integer.parseInt(k(strB, r, Collections.EMPTY_MAP, matcherCache2))) * 1000000;
                            } else if (strB.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                                j11 = Long.parseLong(k(strB, D, Collections.EMPTY_MAP, matcherCache2));
                                j9 = j11;
                                serverControl = serverControl;
                                map2 = map2;
                                linkedHashMap2 = linkedHashMap2;
                                arrayList12 = arrayList12;
                                strJ2 = str19;
                                arrayList11 = arrayList25;
                                arrayList10 = arrayList24;
                            } else if (strB.startsWith("#EXT-X-VERSION")) {
                                i13 = Integer.parseInt(k(strB, v, Collections.EMPTY_MAP, matcherCache2));
                            } else {
                                if (strB.startsWith("#EXT-X-DEFINE")) {
                                    String strJ4 = j(strB, V, null, map, matcherCache2);
                                    String strJ5 = j(strB, W, null, map, matcherCache2);
                                    if (strJ4 != null) {
                                        m(strJ4, map);
                                        map.put(strJ4, k(strB, g0, map, matcherCache2));
                                    } else if (strJ5 != null) {
                                        m(strJ5, map);
                                        String queryParameter = uri.getQueryParameter(strJ5);
                                        if (queryParameter == null) {
                                            throw ParserException.b("QUERYPARAM \"" + strJ5 + "\" not found in playlist URI");
                                        }
                                        map.put(strJ5, queryParameter);
                                    } else {
                                        String strK4 = k(strB, h0, map, matcherCache2);
                                        m(strK4, map);
                                        String str20 = (String) hlsMultivariantPlaylist.l.get(strK4);
                                        if (str20 != null) {
                                            map.put(strK4, str20);
                                        }
                                    }
                                    str = strK;
                                    i2 = i9;
                                    str2 = str10;
                                    i3 = i8;
                                    part = part2;
                                    str3 = str11;
                                    arrayList2 = arrayList24;
                                    str4 = string;
                                    arrayList3 = arrayList9;
                                    treeMap = treeMap;
                                    linkedHashMap = linkedHashMap2;
                                } else if (strB.startsWith("#EXTINF")) {
                                    jLongValue = new BigDecimal(k(strB, E, Collections.EMPTY_MAP, matcherCache2)).multiply(new BigDecimal(1000000L)).longValue();
                                    strJ = j(strB, F, str10, map, matcherCache2);
                                } else if (strB.startsWith("#EXT-X-SKIP")) {
                                    int i15 = Integer.parseInt(k(strB, z, Collections.EMPTY_MAP, matcherCache2));
                                    Preconditions.q((hlsMediaPlaylist2 == null || !arrayList9.isEmpty()) ? i8 : 1);
                                    String str21 = Util.f14242a;
                                    long j26 = hlsMediaPlaylist2.f15238k;
                                    ImmutableList immutableList = hlsMediaPlaylist2.r;
                                    int i16 = (int) (j9 - j26);
                                    int i17 = i15 + i16;
                                    if (i16 < 0 || i17 > immutableList.size()) {
                                        throw new DeltaUpdateException();
                                    }
                                    long j27 = j13;
                                    strJ2 = str19;
                                    while (i16 < i17) {
                                        HlsMediaPlaylist.Segment segment6 = (HlsMediaPlaylist.Segment) immutableList.get(i16);
                                        if (j9 != hlsMediaPlaylist2.f15238k) {
                                            int i18 = (hlsMediaPlaylist2.f15237j - i10) + segment6.f15265e;
                                            ImmutableList immutableList2 = segment6.n;
                                            ArrayList arrayList26 = new ArrayList();
                                            int i19 = i8;
                                            long j28 = j27;
                                            while (i19 < immutableList2.size()) {
                                                HlsMediaPlaylist.Part part4 = (HlsMediaPlaylist.Part) immutableList2.get(i19);
                                                arrayList26.add(new HlsMediaPlaylist.Part(part4.f15263b, part4.f15264c, part4.d, i18, j28, part4.g, part4.f15267h, part4.f15268i, part4.f15269j, part4.f15270k, part4.l, part4.m, part4.n));
                                                j28 += part4.d;
                                                i19++;
                                                str10 = str10;
                                            }
                                            str5 = str10;
                                            segment6 = new HlsMediaPlaylist.Segment(segment6.f15263b, segment6.f15264c, segment6.m, segment6.d, i18, j27, segment6.g, segment6.f15267h, segment6.f15268i, segment6.f15269j, segment6.f15270k, segment6.l, arrayList26);
                                        } else {
                                            str5 = str10;
                                        }
                                        arrayList9.add(segment6);
                                        long j29 = segment6.d;
                                        String str22 = segment6.f15268i;
                                        j27 += j29;
                                        long j30 = segment6.f15270k;
                                        if (j30 != -1) {
                                            j12 = segment6.f15269j + j30;
                                        }
                                        int i20 = segment6.f15265e;
                                        HlsMediaPlaylist.Segment segment7 = segment6.f15264c;
                                        DrmInitData drmInitData5 = segment6.g;
                                        String str23 = segment6.f15267h;
                                        if (str22 == null || !str22.equals(Long.toHexString(j11))) {
                                            strJ2 = str22;
                                        }
                                        j11++;
                                        i16++;
                                        i9 = i20;
                                        segment4 = segment7;
                                        strK = str23;
                                        drmInitData4 = drmInitData5;
                                        j10 = j27;
                                        str10 = str5;
                                    }
                                    hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                    i9 = i9;
                                    serverControl = serverControl;
                                    map2 = map2;
                                    linkedHashMap2 = linkedHashMap2;
                                    arrayList12 = arrayList12;
                                    arrayList11 = arrayList25;
                                    arrayList10 = arrayList24;
                                    j13 = j27;
                                } else {
                                    str2 = str10;
                                    if (strB.startsWith("#EXT-X-KEY")) {
                                        String strK5 = k(strB, N, map, matcherCache2);
                                        String strJ6 = j(strB, O, "identity", map, matcherCache2);
                                        if ("NONE".equals(strK5)) {
                                            treeMap.clear();
                                            drmInitData4 = null;
                                            strK = null;
                                            strJ2 = null;
                                        } else {
                                            strJ2 = j(strB, R, null, map, matcherCache2);
                                            if (!"identity".equals(strJ6)) {
                                                String str24 = str11;
                                                str11 = str24 == null ? ("SAMPLE-AES-CENC".equals(strK5) || "SAMPLE-AES-CTR".equals(strK5)) ? "cenc" : "cbcs" : str24;
                                                DrmInitData.SchemeData schemeDataD = d(strB, strJ6, map, matcherCache2);
                                                if (schemeDataD != null) {
                                                    treeMap.put(strJ6, schemeDataD);
                                                    drmInitData4 = null;
                                                }
                                                strK = null;
                                            } else if ("AES-128".equals(strK5)) {
                                                strK = k(strB, pattern2, map, matcherCache2);
                                                strJ2 = strJ2;
                                            }
                                            strK = null;
                                        }
                                        hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                        i9 = i9;
                                    } else {
                                        str11 = str11;
                                        if (strB.startsWith("#EXT-X-BYTERANGE")) {
                                            String strK6 = k(strB, J, map, matcherCache2);
                                            String str25 = Util.f14242a;
                                            String[] strArrSplit2 = strK6.split("@", -1);
                                            j5 = Long.parseLong(strArrSplit2[i8]);
                                            if (strArrSplit2.length > 1) {
                                                j12 = Long.parseLong(strArrSplit2[1]);
                                            }
                                        } else if (strB.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                                            i10 = Integer.parseInt(strB.substring(strB.indexOf(58) + 1));
                                            hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                            str11 = str11;
                                            i9 = i9;
                                            serverControl = serverControl;
                                            map2 = map2;
                                            linkedHashMap2 = linkedHashMap2;
                                            arrayList12 = arrayList12;
                                            strJ2 = str19;
                                            arrayList11 = arrayList25;
                                            arrayList10 = arrayList24;
                                            str10 = str2;
                                            z4 = true;
                                        } else if (strB.equals("#EXT-X-DISCONTINUITY")) {
                                            i9++;
                                            strJ2 = str19;
                                        } else {
                                            if (strB.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                                                if (jR == 0) {
                                                    jR = Util.R(Util.U(strB.substring(strB.indexOf(58) + 1))) - j13;
                                                }
                                            } else if (strB.equals("#EXT-X-GAP")) {
                                                hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                str11 = str11;
                                                i9 = i9;
                                                serverControl = serverControl;
                                                map2 = map2;
                                                linkedHashMap2 = linkedHashMap2;
                                                arrayList12 = arrayList12;
                                                strJ2 = str19;
                                                arrayList11 = arrayList25;
                                                arrayList10 = arrayList24;
                                                str10 = str2;
                                                i11 = 1;
                                            } else if (strB.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                                                hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                str11 = str11;
                                                i9 = i9;
                                                serverControl = serverControl;
                                                map2 = map2;
                                                linkedHashMap2 = linkedHashMap2;
                                                arrayList12 = arrayList12;
                                                strJ2 = str19;
                                                arrayList11 = arrayList25;
                                                arrayList10 = arrayList24;
                                                str10 = str2;
                                                z3 = true;
                                            } else if (strB.equals("#EXT-X-ENDLIST")) {
                                                hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                str11 = str11;
                                                i9 = i9;
                                                serverControl = serverControl;
                                                map2 = map2;
                                                linkedHashMap2 = linkedHashMap2;
                                                arrayList12 = arrayList12;
                                                strJ2 = str19;
                                                arrayList11 = arrayList25;
                                                arrayList10 = arrayList24;
                                                str10 = str2;
                                                z5 = true;
                                            } else if (strB.startsWith("#EXT-X-RENDITION-REPORT")) {
                                                long jI = i(matcherCache2, strB, G);
                                                Matcher matcherA = MatcherCache.a(matcherCache2, strB, H);
                                                if (matcherA.find()) {
                                                    String strGroup = matcherA.group(1);
                                                    strGroup.getClass();
                                                    i4 = Integer.parseInt(strGroup);
                                                } else {
                                                    i4 = -1;
                                                }
                                                arrayList25.add(new HlsMediaPlaylist.RenditionReport(Uri.parse(UriUtil.c(string, k(strB, pattern2, map, matcherCache2))), jI, i4));
                                            } else if (strB.startsWith("#EXT-X-PRELOAD-HINT")) {
                                                HlsMediaPlaylist.Part part5 = part2;
                                                if (part5 == null && "PART".equals(k(strB, T, map, matcherCache2))) {
                                                    DrmInitData drmInitData6 = drmInitData4;
                                                    String strK7 = k(strB, pattern2, map, matcherCache2);
                                                    long jI2 = i(matcherCache2, strB, L);
                                                    long jI3 = i(matcherCache2, strB, M);
                                                    String hexString2 = strK == null ? null : str19 != null ? str19 : Long.toHexString(j11);
                                                    if (drmInitData6 != null || treeMap.isEmpty()) {
                                                        drmInitData = drmInitData6;
                                                    } else {
                                                        DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[i8]);
                                                        DrmInitData drmInitData7 = new DrmInitData(str11, schemeDataArr);
                                                        if (drmInitDataC3 == null) {
                                                            drmInitDataC = c(str11, schemeDataArr);
                                                            drmInitData = drmInitData7;
                                                        } else {
                                                            drmInitData = drmInitData7;
                                                        }
                                                        if (jI2 == -1 && jI3 == -1) {
                                                            i5 = i9;
                                                            part2 = part5;
                                                        } else {
                                                            if (jI2 == -1) {
                                                                jI2 = 0;
                                                            }
                                                            long j31 = j10;
                                                            HlsMediaPlaylist.Part part6 = new HlsMediaPlaylist.Part(strK7, segment4, 0L, i9, j31, drmInitData, strK, hexString2, jI2, jI3, false, false, true);
                                                            j10 = j31;
                                                            i5 = i9;
                                                            part2 = part6;
                                                        }
                                                        arrayList11 = arrayList25;
                                                        str11 = str11;
                                                        drmInitDataC3 = drmInitDataC;
                                                        drmInitData4 = drmInitData;
                                                        i9 = i5;
                                                        strK = strK;
                                                        serverControl = serverControl;
                                                        map2 = map2;
                                                        linkedHashMap2 = linkedHashMap2;
                                                        arrayList12 = arrayList12;
                                                        strJ2 = str19;
                                                        arrayList10 = arrayList24;
                                                        str10 = str2;
                                                        i8 = 0;
                                                        hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                    }
                                                    drmInitDataC = drmInitDataC3;
                                                    if (jI2 == -1) {
                                                        if (jI2 == -1) {
                                                            jI2 = 0;
                                                        }
                                                        long j32 = j10;
                                                        HlsMediaPlaylist.Part part7 = new HlsMediaPlaylist.Part(strK7, segment4, 0L, i9, j32, drmInitData, strK, hexString2, jI2, jI3, false, false, true);
                                                        j10 = j32;
                                                        i5 = i9;
                                                        part2 = part7;
                                                    } else {
                                                        if (jI2 == -1) {
                                                            jI2 = 0;
                                                        }
                                                        long j33 = j10;
                                                        HlsMediaPlaylist.Part part8 = new HlsMediaPlaylist.Part(strK7, segment4, 0L, i9, j33, drmInitData, strK, hexString2, jI2, jI3, false, false, true);
                                                        j10 = j33;
                                                        i5 = i9;
                                                        part2 = part8;
                                                    }
                                                    arrayList11 = arrayList25;
                                                    str11 = str11;
                                                    drmInitDataC3 = drmInitDataC;
                                                    drmInitData4 = drmInitData;
                                                    i9 = i5;
                                                    strK = strK;
                                                    serverControl = serverControl;
                                                    map2 = map2;
                                                    linkedHashMap2 = linkedHashMap2;
                                                    arrayList12 = arrayList12;
                                                    strJ2 = str19;
                                                    arrayList10 = arrayList24;
                                                    str10 = str2;
                                                    i8 = 0;
                                                    hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                } else {
                                                    str = strK;
                                                    i2 = i9;
                                                    arrayList25 = arrayList25;
                                                    str4 = string;
                                                    part = part5;
                                                    str3 = str11;
                                                    arrayList3 = arrayList9;
                                                    treeMap = treeMap;
                                                    i3 = i8;
                                                    linkedHashMap = linkedHashMap2;
                                                    arrayList2 = arrayList24;
                                                }
                                            } else {
                                                str = strK;
                                                i2 = i9;
                                                DrmInitData drmInitData8 = drmInitData4;
                                                HlsMediaPlaylist.Part part9 = part2;
                                                if (strB.startsWith("#EXT-X-PART")) {
                                                    String hexString3 = str == null ? null : str19 != null ? str19 : Long.toHexString(j11);
                                                    String strK8 = k(strB, pattern2, map, matcherCache2);
                                                    long j34 = (long) (Double.parseDouble(k(strB, s, Collections.EMPTY_MAP, matcherCache2)) * 1000000.0d);
                                                    boolean zG3 = g(matcherCache2, strB, d0) | (z3 && arrayList24.isEmpty());
                                                    boolean zG4 = g(matcherCache2, strB, e0);
                                                    String strJ7 = j(strB, pattern, null, map, matcherCache2);
                                                    if (strJ7 != null) {
                                                        String str26 = Util.f14242a;
                                                        String[] strArrSplit3 = strJ7.split("@", -1);
                                                        j4 = Long.parseLong(strArrSplit3[0]);
                                                        str9 = string;
                                                        if (strArrSplit3.length > 1) {
                                                            j14 = Long.parseLong(strArrSplit3[1]);
                                                        }
                                                    } else {
                                                        str9 = string;
                                                        j4 = -1;
                                                    }
                                                    if (j4 == -1) {
                                                        j14 = 0;
                                                    }
                                                    if (drmInitData8 != null || treeMap.isEmpty()) {
                                                        drmInitData3 = drmInitData8;
                                                    } else {
                                                        DrmInitData.SchemeData[] schemeDataArr2 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                        DrmInitData drmInitData9 = new DrmInitData(str11, schemeDataArr2);
                                                        if (drmInitDataC3 == null) {
                                                            drmInitDataC2 = c(str11, schemeDataArr2);
                                                            drmInitData3 = drmInitData9;
                                                        } else {
                                                            drmInitData3 = drmInitData9;
                                                        }
                                                        long j35 = j10;
                                                        arrayList24.add(new HlsMediaPlaylist.Part(strK8, segment4, j34, i2, j35, drmInitData3, str, hexString3, j14, j4, zG4, zG3, false));
                                                        j10 = j35 + j34;
                                                        if (j4 != -1) {
                                                            j14 += j4;
                                                        }
                                                        arrayList11 = arrayList25;
                                                        str11 = str11;
                                                        drmInitDataC3 = drmInitDataC2;
                                                        arrayList10 = arrayList24;
                                                        drmInitData4 = drmInitData3;
                                                        i9 = i2;
                                                        strK = str;
                                                        string = str9;
                                                        serverControl = serverControl;
                                                        map2 = map2;
                                                        linkedHashMap2 = linkedHashMap2;
                                                        arrayList12 = arrayList12;
                                                        strJ2 = str19;
                                                        str10 = str2;
                                                        i8 = 0;
                                                        hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                        part2 = part9;
                                                    }
                                                    drmInitDataC2 = drmInitDataC3;
                                                    long j36 = j10;
                                                    arrayList24.add(new HlsMediaPlaylist.Part(strK8, segment4, j34, i2, j36, drmInitData3, str, hexString3, j14, j4, zG4, zG3, false));
                                                    j10 = j36 + j34;
                                                    if (j4 != -1) {
                                                        j14 += j4;
                                                    }
                                                    arrayList11 = arrayList25;
                                                    str11 = str11;
                                                    drmInitDataC3 = drmInitDataC2;
                                                    arrayList10 = arrayList24;
                                                    drmInitData4 = drmInitData3;
                                                    i9 = i2;
                                                    strK = str;
                                                    string = str9;
                                                    serverControl = serverControl;
                                                    map2 = map2;
                                                    linkedHashMap2 = linkedHashMap2;
                                                    arrayList12 = arrayList12;
                                                    strJ2 = str19;
                                                    str10 = str2;
                                                    i8 = 0;
                                                    hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                    part2 = part9;
                                                } else {
                                                    str4 = string;
                                                    if (strB.startsWith("#EXT-X-DATERANGE")) {
                                                        if (j(strB, j0, str2, map, matcherCache2).equals("com.apple.hls.interstitial")) {
                                                            String strK9 = k(strB, i0, map, matcherCache2);
                                                            String strJ8 = j(strB, p0, null, map, matcherCache2);
                                                            Uri uri5 = strJ8 != null ? Uri.parse(strJ8) : null;
                                                            arrayList4 = arrayList24;
                                                            String strJ9 = j(strB, q0, null, map, matcherCache2);
                                                            Uri uri6 = strJ9 != null ? Uri.parse(strJ9) : null;
                                                            drmInitData4 = drmInitData8;
                                                            String strJ10 = j(strB, k0, null, map, matcherCache2);
                                                            long jR2 = strJ10 != null ? Util.R(Util.U(strJ10)) : -9223372036854775807L;
                                                            String strJ11 = j(strB, m0, null, map, matcherCache2);
                                                            long jR3 = strJ11 != null ? Util.R(Util.U(strJ11)) : -9223372036854775807L;
                                                            ArrayList arrayList27 = new ArrayList();
                                                            str2 = str2;
                                                            String strJ12 = j(strB, l0, null, map, matcherCache2);
                                                            if (strJ12 != null) {
                                                                String str27 = Util.f14242a;
                                                                String[] strArrSplit4 = strJ12.split(",", -1);
                                                                int length = strArrSplit4.length;
                                                                int i21 = 0;
                                                                while (i21 < length) {
                                                                    int i22 = i21;
                                                                    String strTrim = strArrSplit4[i21].trim();
                                                                    strTrim.getClass();
                                                                    switch (strTrim.hashCode()) {
                                                                        case 79491:
                                                                            i7 = length;
                                                                            if (!strTrim.equals("PRE")) {
                                                                                b2 = -1;
                                                                            } else {
                                                                                b2 = 0;
                                                                            }
                                                                            break;
                                                                        case 2430593:
                                                                            i7 = length;
                                                                            if (!strTrim.equals("ONCE")) {
                                                                                b2 = -1;
                                                                            } else {
                                                                                b2 = 1;
                                                                            }
                                                                            break;
                                                                        case 2461856:
                                                                            i7 = length;
                                                                            if (!strTrim.equals("POST")) {
                                                                                b2 = -1;
                                                                            } else {
                                                                                b2 = 2;
                                                                            }
                                                                            break;
                                                                        default:
                                                                            i7 = length;
                                                                            b2 = -1;
                                                                            break;
                                                                    }
                                                                    switch (b2) {
                                                                        case 0:
                                                                        case 1:
                                                                        case 2:
                                                                            arrayList27.add(strTrim);
                                                                            break;
                                                                    }
                                                                    i21 = i22 + 1;
                                                                    length = i7;
                                                                }
                                                            }
                                                            arrayList25 = arrayList25;
                                                            double dH4 = h(strB, t, -1.0d, matcherCache2);
                                                            long j37 = dH4 >= 0.0d ? (long) (dH4 * 1000000.0d) : -9223372036854775807L;
                                                            HlsMediaPlaylist.Part part10 = part9;
                                                            double dH5 = h(strB, n0, -1.0d, matcherCache2);
                                                            long j38 = dH5 >= 0.0d ? (long) (dH5 * 1000000.0d) : -9223372036854775807L;
                                                            boolean zG5 = g(matcherCache2, strB, o0);
                                                            double dH6 = h(strB, r0, Double.MIN_VALUE, matcherCache2);
                                                            long j39 = dH6 != Double.MIN_VALUE ? (long) (dH6 * 1000000.0d) : -9223372036854775807L;
                                                            str6 = str11;
                                                            double dH7 = h(strB, s0, -1.0d, matcherCache2);
                                                            long j40 = dH7 >= 0.0d ? (long) (dH7 * 1000000.0d) : -9223372036854775807L;
                                                            ArrayList arrayList28 = new ArrayList();
                                                            String strJ13 = j(strB, t0, null, map, matcherCache2);
                                                            if (strJ13 != null) {
                                                                String str28 = Util.f14242a;
                                                                String[] strArrSplit5 = strJ13.split(",", -1);
                                                                int length2 = strArrSplit5.length;
                                                                int i23 = 0;
                                                                while (i23 < length2) {
                                                                    int i24 = i23;
                                                                    String strTrim2 = strArrSplit5[i23].trim();
                                                                    strTrim2.getClass();
                                                                    String[] strArr = strArrSplit5;
                                                                    if (strTrim2.equals("IN") || strTrim2.equals("OUT")) {
                                                                        arrayList28.add(strTrim2);
                                                                    }
                                                                    i23 = i24 + 1;
                                                                    strArrSplit5 = strArr;
                                                                }
                                                            }
                                                            ArrayList arrayList29 = new ArrayList();
                                                            String strJ14 = j(strB, u0, null, map, matcherCache2);
                                                            if (strJ14 != null) {
                                                                String str29 = Util.f14242a;
                                                                String[] strArrSplit6 = strJ14.split(",", -1);
                                                                int length3 = strArrSplit6.length;
                                                                int i25 = 0;
                                                                while (i25 < length3) {
                                                                    String[] strArr2 = strArrSplit6;
                                                                    String strTrim3 = strArrSplit6[i25].trim();
                                                                    strTrim3.getClass();
                                                                    int i26 = length3;
                                                                    if (strTrim3.equals("JUMP") || strTrim3.equals("SKIP")) {
                                                                        arrayList29.add(strTrim3);
                                                                    }
                                                                    i25++;
                                                                    length3 = i26;
                                                                    strArrSplit6 = strArr2;
                                                                }
                                                            }
                                                            String strJ15 = j(strB, v0, null, map, matcherCache2);
                                                            Boolean boolValueOf = strJ15 != null ? Boolean.valueOf(!strJ15.equals("NO")) : null;
                                                            String strJ16 = j(strB, w0, null, map, matcherCache2);
                                                            if (strJ16 == null) {
                                                                str12 = null;
                                                            } else if (strJ16.equals("RANGE")) {
                                                                str12 = "RANGE";
                                                            } else if (!strJ16.equals("POINT")) {
                                                                str12 = null;
                                                            }
                                                            String strJ17 = j(strB, x0, null, map, matcherCache2);
                                                            if (strJ17 != null) {
                                                                str8 = "PRIMARY";
                                                                if (!strJ17.equals("PRIMARY")) {
                                                                    str8 = "HIGHLIGHT";
                                                                    if (!strJ17.equals(str8)) {
                                                                        str8 = null;
                                                                    }
                                                                }
                                                            } else {
                                                                str8 = null;
                                                            }
                                                            double dH8 = h(strB, y0, -1.0d, matcherCache2);
                                                            long j41 = dH8 >= 0.0d ? (long) (dH8 * 1000000.0d) : -9223372036854775807L;
                                                            String str30 = str12;
                                                            double dH9 = h(strB, z0, -1.0d, matcherCache2);
                                                            long j42 = dH9 >= 0.0d ? (long) (dH9 * 1000000.0d) : -9223372036854775807L;
                                                            String strJ18 = j(strB, A0, null, map, matcherCache2);
                                                            ArrayList arrayList30 = new ArrayList();
                                                            String strSubstring = strB.substring(17);
                                                            Matcher matcherA2 = MatcherCache.a(matcherCache2, strSubstring, C0);
                                                            while (matcherA2.find()) {
                                                                String str31 = str30;
                                                                String strGroup2 = matcherA2.group();
                                                                strGroup2.getClass();
                                                                HlsMediaPlaylist.Part part11 = part10;
                                                                switch (strGroup2) {
                                                                    case "X-SNAP=":
                                                                    case "X-CONTENT-MAY-VARY=":
                                                                    case "X-PLAYOUT-LIMIT=":
                                                                    case "X-TIMELINE-STYLE=":
                                                                    case "X-ASSET-LIST=":
                                                                    case "X-TIMELINE-OCCUPIES=":
                                                                    case "X-SKIP-CONTROL-DURATION=":
                                                                    case "X-SKIP-CONTROL-OFFSET=":
                                                                    case "X-RESTRICT=":
                                                                    case "X-RESUME-OFFSET=":
                                                                    case "X-ASSET-URI=":
                                                                    case "X-SKIP-CONTROL-LABEL-ID=":
                                                                        arrayList27 = arrayList27;
                                                                        arrayList9 = arrayList9;
                                                                        break;
                                                                    default:
                                                                        String strG = o60.g(1, 0, strGroup2);
                                                                        String strConcat = strG.concat("=");
                                                                        int length4 = strConcat.length() + strSubstring.indexOf(strConcat);
                                                                        String strSubstring2 = strSubstring.substring(length4, (strSubstring.length() == length4 + 1 ? 1 : 2) + length4);
                                                                        arrayList30.add(strSubstring2.startsWith("\"") ? new HlsMediaPlaylist.ClientDefinedAttribute(strG, k(strSubstring, Pattern.compile(strG.concat("=\"((?:.|\f)+?)\"")), map, matcherCache2), 0) : (strSubstring2.equals("0x") || strSubstring2.equals("0X")) ? new HlsMediaPlaylist.ClientDefinedAttribute(strG, k(strSubstring, Pattern.compile(strG.concat("=(0[xX][A-F0-9]+)")), map, matcherCache2), 1) : new HlsMediaPlaylist.ClientDefinedAttribute(strG, Double.parseDouble(k(strSubstring, Pattern.compile(strG.concat("=([\\d\\.]+)\\b")), Collections.EMPTY_MAP, matcherCache2))));
                                                                        break;
                                                                }
                                                                arrayList9 = arrayList9;
                                                                str30 = str31;
                                                                matcherA2 = matcherA2;
                                                                zG5 = zG5;
                                                                arrayList27 = arrayList27;
                                                                part10 = part11;
                                                            }
                                                            String str32 = str30;
                                                            ArrayList arrayList31 = arrayList27;
                                                            part = part10;
                                                            boolean z9 = zG5;
                                                            LinkedHashMap linkedHashMap4 = linkedHashMap2;
                                                            ArrayList arrayList32 = arrayList9;
                                                            HlsMediaPlaylist.Interstitial.Builder builder2 = linkedHashMap4.containsKey(strK9) ? (HlsMediaPlaylist.Interstitial.Builder) linkedHashMap4.get(strK9) : new HlsMediaPlaylist.Interstitial.Builder(strK9);
                                                            if (uri5 == null) {
                                                                builder2.getClass();
                                                            } else {
                                                                Uri uri7 = builder2.f15253c;
                                                                if (uri7 != null) {
                                                                    Preconditions.i(uri7.equals(uri5), "Can't change assetUri from %s to %s", builder2.f15253c, uri5);
                                                                }
                                                                builder2.f15253c = uri5;
                                                            }
                                                            if (uri6 != null) {
                                                                Uri uri8 = builder2.d;
                                                                if (uri8 != null) {
                                                                    Preconditions.i(uri8.equals(uri6), "Can't change assetListUri from %s to %s", builder2.d, uri6);
                                                                }
                                                                builder2.d = uri6;
                                                            }
                                                            if (jR2 != -9223372036854775807L) {
                                                                long j43 = builder2.f15254e;
                                                                if (j43 != -9223372036854775807L) {
                                                                    Preconditions.c(j43, jR2, "Can't change startDateUnixUs from %s to %s", j43 == jR2);
                                                                }
                                                                builder2.f15254e = jR2;
                                                            }
                                                            if (jR3 != -9223372036854775807L) {
                                                                long j44 = builder2.f15255f;
                                                                if (j44 != -9223372036854775807L) {
                                                                    Preconditions.c(j44, jR3, "Can't change endDateUnixUs from %s to %s", j44 == jR3);
                                                                }
                                                                builder2.f15255f = jR3;
                                                            }
                                                            if (j37 != -9223372036854775807L) {
                                                                long j45 = builder2.g;
                                                                if (j45 != -9223372036854775807L) {
                                                                    Preconditions.c(j45, j37, "Can't change durationUs from %s to %s", j45 == j37);
                                                                }
                                                                builder2.g = j37;
                                                            }
                                                            if (j38 != -9223372036854775807L) {
                                                                long j46 = builder2.f15256h;
                                                                if (j46 != -9223372036854775807L) {
                                                                    Preconditions.c(j46, j38, "Can't change plannedDurationUs from %s to %s", j46 == j38);
                                                                }
                                                                builder2.f15256h = j38;
                                                            }
                                                            if (!arrayList31.isEmpty()) {
                                                                if (builder2.f15257i.isEmpty()) {
                                                                    arrayList8 = arrayList31;
                                                                } else {
                                                                    arrayList8 = arrayList31;
                                                                    Preconditions.h(builder2.f15257i.equals(arrayList8), "Can't change cue from " + String.join(", ", builder2.f15257i) + " to " + String.join(", ", arrayList8));
                                                                }
                                                                builder2.f15257i = arrayList8;
                                                            }
                                                            if (z9) {
                                                                builder2.f15258j = true;
                                                            }
                                                            if (j39 != -9223372036854775807L) {
                                                                long j47 = builder2.f15259k;
                                                                if (j47 != -9223372036854775807L) {
                                                                    Preconditions.c(j47, j39, "Can't change resumeOffsetUs from %s to %s", j47 == j39);
                                                                }
                                                                builder2.f15259k = j39;
                                                            }
                                                            if (j40 != -9223372036854775807L) {
                                                                long j48 = builder2.l;
                                                                if (j48 != -9223372036854775807L) {
                                                                    Preconditions.c(j48, j40, "Can't change playoutLimitUs from %s to %s", j48 == j40);
                                                                }
                                                                builder2.l = j40;
                                                            }
                                                            if (!arrayList28.isEmpty()) {
                                                                if (builder2.m.isEmpty()) {
                                                                    arrayList7 = arrayList28;
                                                                } else {
                                                                    arrayList7 = arrayList28;
                                                                    Preconditions.h(builder2.m.equals(arrayList7), "Can't change snapTypes from " + String.join(", ", builder2.m) + " to " + String.join(", ", arrayList7));
                                                                }
                                                                builder2.m = arrayList7;
                                                            }
                                                            if (!arrayList29.isEmpty()) {
                                                                if (builder2.n.isEmpty()) {
                                                                    arrayList6 = arrayList29;
                                                                } else {
                                                                    arrayList6 = arrayList29;
                                                                    Preconditions.h(builder2.n.equals(arrayList6), "Can't change restrictions from " + String.join(", ", builder2.n) + " to " + String.join(", ", arrayList6));
                                                                }
                                                                builder2.n = arrayList6;
                                                            }
                                                            HashMap map5 = builder2.f15252b;
                                                            if (!arrayList30.isEmpty()) {
                                                                int i27 = 0;
                                                                while (i27 < arrayList30.size()) {
                                                                    HlsMediaPlaylist.ClientDefinedAttribute clientDefinedAttribute = (HlsMediaPlaylist.ClientDefinedAttribute) arrayList30.get(i27);
                                                                    String str33 = clientDefinedAttribute.f15239a;
                                                                    HlsMediaPlaylist.ClientDefinedAttribute clientDefinedAttribute2 = (HlsMediaPlaylist.ClientDefinedAttribute) map5.get(str33);
                                                                    if (clientDefinedAttribute2 != null) {
                                                                        boolean zEquals = clientDefinedAttribute2.equals(clientDefinedAttribute);
                                                                        Object[] objArr = {str33, clientDefinedAttribute2.d, Double.valueOf(clientDefinedAttribute2.f15241c), clientDefinedAttribute.d, Double.valueOf(clientDefinedAttribute.f15241c)};
                                                                        if (!zEquals) {
                                                                            md.n(Strings.b("Can't change %s from %s %s to %s %s", objArr));
                                                                            return null;
                                                                        }
                                                                    }
                                                                    map5.put(str33, clientDefinedAttribute);
                                                                    i27++;
                                                                    linkedHashMap4 = linkedHashMap4;
                                                                    arrayList30 = arrayList30;
                                                                    arrayList32 = arrayList32;
                                                                }
                                                            }
                                                            arrayList5 = arrayList32;
                                                            linkedHashMap = linkedHashMap4;
                                                            if (boolValueOf != null) {
                                                                Boolean bool2 = builder2.o;
                                                                if (bool2 != null) {
                                                                    Preconditions.i(bool2.equals(boolValueOf), "Can't change contentMayVary from %s to %s", builder2.o, boolValueOf);
                                                                }
                                                                builder2.o = boolValueOf;
                                                            }
                                                            if (str32 != null) {
                                                                String str34 = builder2.p;
                                                                if (str34 != null) {
                                                                    Preconditions.i(str34.equals(str32), "Can't change timelineOccupies from %s to %s", builder2.p, str32);
                                                                }
                                                                builder2.p = str32;
                                                            }
                                                            if (str8 != null) {
                                                                String str35 = builder2.q;
                                                                if (str35 != null) {
                                                                    Preconditions.i(str35.equals(str8), "Can't change timelineStyle from %s to %s", builder2.q, str8);
                                                                }
                                                                builder2.q = str8;
                                                            }
                                                            if (j41 != -9223372036854775807L) {
                                                                long j49 = builder2.r;
                                                                if (j49 != -9223372036854775807L) {
                                                                    Preconditions.c(j49, j41, "Can't change skipControlOffsetUs from %s to %s", j49 == j41);
                                                                }
                                                                builder2.r = j41;
                                                            }
                                                            if (j42 != -9223372036854775807L) {
                                                                long j50 = builder2.s;
                                                                if (j50 != -9223372036854775807L) {
                                                                    Preconditions.c(j50, j42, "Can't change skipControlDurationUs from %s to %s", j50 == j42);
                                                                }
                                                                builder2.s = j42;
                                                            }
                                                            if (strJ18 != null) {
                                                                String str36 = builder2.t;
                                                                if (str36 != null) {
                                                                    Preconditions.i(str36.equals(strJ18), "Can't change skipControlLabelId from %s to %s", builder2.t, strJ18);
                                                                }
                                                                builder2.t = strJ18;
                                                            }
                                                            linkedHashMap.put(strK9, builder2);
                                                        } else {
                                                            str2 = str2;
                                                            arrayList25 = arrayList25;
                                                            part = part9;
                                                            str6 = str11;
                                                            arrayList4 = arrayList24;
                                                            drmInitData4 = drmInitData8;
                                                            treeMap = treeMap;
                                                            linkedHashMap = linkedHashMap2;
                                                            arrayList5 = arrayList9;
                                                            if (strB.startsWith("#")) {
                                                                if (str == null) {
                                                                    hexString = null;
                                                                } else if (str19 != null) {
                                                                    hexString = str19;
                                                                } else {
                                                                    hexString = Long.toHexString(j11);
                                                                }
                                                                long j51 = j11 + 1;
                                                                matcherCache2 = matcherCache;
                                                                strL = l(strB, map, matcherCache2);
                                                                segment = (HlsMediaPlaylist.Segment) map2.get(strL);
                                                                if (j5 == -1) {
                                                                    j2 = 0;
                                                                } else {
                                                                    if (z6) {
                                                                        segment = new HlsMediaPlaylist.Segment(strL, 0L, j12, null, null);
                                                                        map2.put(strL, segment);
                                                                    }
                                                                    j2 = j12;
                                                                }
                                                                if (drmInitData4 == null) {
                                                                    str7 = str6;
                                                                    i6 = 0;
                                                                    drmInitData2 = drmInitData4;
                                                                } else {
                                                                    str7 = str6;
                                                                    i6 = 0;
                                                                    drmInitData2 = drmInitData4;
                                                                }
                                                                if (segment4 != null) {
                                                                    segment2 = segment4;
                                                                } else {
                                                                    segment2 = segment;
                                                                }
                                                                String str37 = hexString;
                                                                j3 = j5;
                                                                long j52 = j13;
                                                                long j53 = jLongValue;
                                                                arrayList5.add(new HlsMediaPlaylist.Segment(strL, segment2, strJ, j53, i2, j52, drmInitData2, str, str37, j2, j3, i11, arrayList4));
                                                                long j54 = j52 + j53;
                                                                ArrayList arrayList33 = new ArrayList();
                                                                if (j5 != -1) {
                                                                    j2 += j3;
                                                                }
                                                                j12 = j2;
                                                                j11 = j51;
                                                                j13 = j54;
                                                                i8 = i6;
                                                                i11 = i8;
                                                                linkedHashMap2 = linkedHashMap;
                                                                i9 = i2;
                                                                drmInitData4 = drmInitData2;
                                                                strK = str;
                                                                treeMap = treeMap;
                                                                j5 = -1;
                                                                jLongValue = 0;
                                                                serverControl = serverControl;
                                                                arrayList12 = arrayList12;
                                                                strJ2 = str19;
                                                                arrayList11 = arrayList25;
                                                                strJ = str2;
                                                                hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                                hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                                arrayList9 = arrayList5;
                                                                map2 = map2;
                                                                j10 = j13;
                                                                str11 = str7;
                                                                string = str4;
                                                                part2 = part;
                                                                arrayList10 = arrayList33;
                                                                str10 = strJ;
                                                            }
                                                        }
                                                        matcherCache2 = matcherCache;
                                                        str3 = str6;
                                                        arrayList3 = arrayList5;
                                                        arrayList2 = arrayList4;
                                                        i3 = 0;
                                                    } else {
                                                        arrayList25 = arrayList25;
                                                        part = part9;
                                                        str6 = str11;
                                                        arrayList4 = arrayList24;
                                                        drmInitData4 = drmInitData8;
                                                        treeMap = treeMap;
                                                        linkedHashMap = linkedHashMap2;
                                                        arrayList5 = arrayList9;
                                                        if (strB.startsWith("#")) {
                                                            matcherCache2 = matcherCache;
                                                            str3 = str6;
                                                            arrayList3 = arrayList5;
                                                            arrayList2 = arrayList4;
                                                            i3 = 0;
                                                        } else {
                                                            if (str == null) {
                                                                hexString = null;
                                                            } else if (str19 != null) {
                                                                hexString = str19;
                                                            } else {
                                                                hexString = Long.toHexString(j11);
                                                            }
                                                            long j55 = j11 + 1;
                                                            matcherCache2 = matcherCache;
                                                            strL = l(strB, map, matcherCache2);
                                                            segment = (HlsMediaPlaylist.Segment) map2.get(strL);
                                                            if (j5 == -1) {
                                                                j2 = 0;
                                                            } else {
                                                                if (z6 && segment4 == null && segment == null) {
                                                                    segment = new HlsMediaPlaylist.Segment(strL, 0L, j12, null, null);
                                                                    map2.put(strL, segment);
                                                                }
                                                                j2 = j12;
                                                            }
                                                            if (drmInitData4 == null || treeMap.isEmpty()) {
                                                                str7 = str6;
                                                                i6 = 0;
                                                                drmInitData2 = drmInitData4;
                                                            } else {
                                                                i6 = 0;
                                                                DrmInitData.SchemeData[] schemeDataArr3 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                                str7 = str6;
                                                                DrmInitData drmInitData10 = new DrmInitData(str7, schemeDataArr3);
                                                                if (drmInitDataC3 == null) {
                                                                    drmInitDataC3 = c(str7, schemeDataArr3);
                                                                }
                                                                drmInitData2 = drmInitData10;
                                                            }
                                                            if (segment4 != null) {
                                                                segment2 = segment4;
                                                            } else {
                                                                segment2 = segment;
                                                            }
                                                            String str38 = hexString;
                                                            j3 = j5;
                                                            long j56 = j13;
                                                            long j57 = jLongValue;
                                                            arrayList5.add(new HlsMediaPlaylist.Segment(strL, segment2, strJ, j57, i2, j56, drmInitData2, str, str38, j2, j3, i11, arrayList4));
                                                            long j58 = j56 + j57;
                                                            ArrayList arrayList34 = new ArrayList();
                                                            if (j5 != -1) {
                                                                j2 += j3;
                                                            }
                                                            j12 = j2;
                                                            j11 = j55;
                                                            j13 = j58;
                                                            i8 = i6;
                                                            i11 = i8;
                                                            linkedHashMap2 = linkedHashMap;
                                                            i9 = i2;
                                                            drmInitData4 = drmInitData2;
                                                            strK = str;
                                                            treeMap = treeMap;
                                                            j5 = -1;
                                                            jLongValue = 0;
                                                            serverControl = serverControl;
                                                            arrayList12 = arrayList12;
                                                            strJ2 = str19;
                                                            arrayList11 = arrayList25;
                                                            strJ = str2;
                                                            hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                            arrayList9 = arrayList5;
                                                            map2 = map2;
                                                            j10 = j13;
                                                            str11 = str7;
                                                            string = str4;
                                                            part2 = part;
                                                            arrayList10 = arrayList34;
                                                            str10 = strJ;
                                                        }
                                                    }
                                                }
                                            }
                                            str = strK;
                                            i2 = i9;
                                            str3 = str11;
                                            treeMap = treeMap;
                                            i3 = i8;
                                            part = part2;
                                            linkedHashMap = linkedHashMap2;
                                            arrayList2 = arrayList24;
                                            str4 = string;
                                            arrayList3 = arrayList9;
                                        }
                                        i9 = i9;
                                        strJ2 = str19;
                                    }
                                    arrayList11 = arrayList25;
                                    arrayList10 = arrayList24;
                                    str10 = str2;
                                }
                                hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                hlsMediaPlaylist2 = hlsMediaPlaylist;
                                arrayList9 = arrayList3;
                                i8 = i3;
                                linkedHashMap2 = linkedHashMap;
                                strJ = strJ;
                                jLongValue = jLongValue;
                                i9 = i2;
                                strK = str;
                                i11 = i11;
                                string = str4;
                                treeMap = treeMap;
                                serverControl = serverControl;
                                arrayList12 = arrayList12;
                                strJ2 = str19;
                                arrayList11 = arrayList25;
                                part2 = part;
                                str10 = str2;
                                str11 = str3;
                                j5 = j5;
                                arrayList10 = arrayList2;
                                map2 = map2;
                            }
                            serverControl = serverControl;
                            map2 = map2;
                            linkedHashMap2 = linkedHashMap2;
                            arrayList12 = arrayList12;
                            strJ2 = str19;
                            arrayList11 = arrayList25;
                            arrayList10 = arrayList24;
                        }
                    }
                }
                linkedHashMap2 = linkedHashMap2;
                arrayList12 = arrayList;
            }
            map2 = map2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x0249  */
    /* JADX WARN: Code duplicated, block: B:102:0x024e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0254  */
    /* JADX WARN: Code duplicated, block: B:108:0x0266  */
    /* JADX WARN: Code duplicated, block: B:111:0x026f  */
    /* JADX WARN: Code duplicated, block: B:113:0x0273  */
    /* JADX WARN: Code duplicated, block: B:115:0x027d  */
    /* JADX WARN: Code duplicated, block: B:117:0x028e  */
    /* JADX WARN: Code duplicated, block: B:119:0x0294  */
    /* JADX WARN: Code duplicated, block: B:124:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:126:0x02af  */
    /* JADX WARN: Code duplicated, block: B:127:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:132:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:135:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:138:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:139:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:142:0x0314  */
    /* JADX WARN: Code duplicated, block: B:144:0x031f  */
    /* JADX WARN: Code duplicated, block: B:146:0x0325  */
    /* JADX WARN: Code duplicated, block: B:149:0x0376  */
    /* JADX WARN: Code duplicated, block: B:199:0x052f  */
    /* JADX WARN: Code duplicated, block: B:292:0x03a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:297:0x029a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:62:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:64:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:65:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:82:0x0210  */
    /* JADX WARN: Failed to find 'out' block for switch in B:216:0x055d. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v5 */
    /* JADX WARN: Type inference failed for: r26v7 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16, types: [int] */
    /* JADX WARN: Type inference failed for: r4v64 */
    public static HlsMultivariantPlaylist f(LineIterator lineIterator, Uri uri, MatcherCache matcherCache) throws IOException {
        ?? r26;
        int i2;
        int i3;
        ArrayList arrayList;
        HlsMultivariantPlaylist.Variant variant;
        String strE;
        ArrayList arrayList2;
        int i4;
        String str;
        HlsMultivariantPlaylist.Variant variant2;
        String strE2;
        HlsMultivariantPlaylist.Variant variant3;
        int i5;
        int i6;
        String str2;
        String str3;
        String strW;
        ArrayList arrayList3;
        int i7;
        int i8;
        int i9;
        ColorInfo colorInfoA;
        String[] strArrC0;
        StringBuilder sb;
        int length;
        int i10;
        ColorInfo colorInfo;
        String str4;
        String string;
        ColorInfo colorInfo2;
        String strJ;
        int i11;
        int i12;
        String strJ2;
        float f2;
        Uri uriD;
        Uri uri2;
        ArrayList arrayList4;
        HashMap map;
        ArrayList arrayList5;
        String string2 = uri.toString();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = new ArrayList();
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            boolean zA = lineIterator.a();
            Pattern pattern = Q;
            ArrayList arrayList14 = arrayList10;
            boolean zContains = z2;
            Pattern pattern2 = V;
            boolean z4 = z3;
            if (!zA) {
                ArrayList arrayList15 = arrayList6;
                HashMap map4 = map2;
                ArrayList arrayList16 = arrayList11;
                ArrayList arrayList17 = arrayList13;
                ArrayList arrayList18 = arrayList7;
                ArrayList arrayList19 = arrayList8;
                ArrayList arrayList20 = arrayList9;
                ArrayList arrayList21 = arrayList12;
                ArrayList arrayList22 = new ArrayList();
                HashSet hashSet = new HashSet();
                int i13 = 0;
                while (i13 < arrayList15.size()) {
                    HlsMultivariantPlaylist.Variant variant4 = (HlsMultivariantPlaylist.Variant) arrayList15.get(i13);
                    Uri uri3 = variant4.f15284a;
                    Format format = variant4.f15285b;
                    if (hashSet.add(uri3)) {
                        Preconditions.q(format.l == null);
                        ArrayList arrayList23 = (ArrayList) map4.get(variant4.f15284a);
                        arrayList23.getClass();
                        Metadata metadata = new Metadata(new HlsTrackMetadataEntry(null, null, arrayList23));
                        Format.Builder builderA = format.a();
                        builderA.f13772k = metadata;
                        arrayList22.add(new HlsMultivariantPlaylist.Variant(variant4.f15284a, new Format(builderA), variant4.f15286c, variant4.d, variant4.f15287e, variant4.f15288f, variant4.g, variant4.f15289h));
                    }
                    i13++;
                    hashSet = hashSet;
                    map4 = map4;
                }
                int i14 = 0;
                ArrayList arrayList24 = null;
                Format format2 = null;
                while (i14 < arrayList16.size()) {
                    ArrayList arrayList25 = arrayList16;
                    String str5 = (String) arrayList25.get(i14);
                    String strK = k(str5, X, map3, matcherCache);
                    String strK2 = k(str5, pattern2, map3, matcherCache);
                    ArrayList arrayList26 = arrayList24;
                    ArrayList arrayList27 = arrayList22;
                    String strJ3 = j(str5, q, null, map3, matcherCache);
                    Format.Builder builder = new Format.Builder();
                    builder.f13764a = tr.h(strK, ":", strK2);
                    builder.f13765b = strK2;
                    builder.m = MimeTypes.p("application/x-mpegURL");
                    boolean zG = g(matcherCache, str5, b0);
                    if (g(matcherCache, str5, c0)) {
                        r26 = zG;
                        r26 = (zG ? 1 : 0) | 2;
                    }
                    r26 = zG;
                    builder.f13767e = g(matcherCache, str5, a0) ? r26 | 4 : r26;
                    Format format3 = format2;
                    String strJ4 = j(str5, Y, null, map3, matcherCache);
                    if (TextUtils.isEmpty(strJ4)) {
                        i3 = i14;
                        i2 = 0;
                    } else {
                        String str6 = Util.f14242a;
                        String[] strArrSplit = strJ4.split(",", -1);
                        i2 = Util.m("public.accessibility.describes-video", strArrSplit) ? 512 : 0;
                        i3 = i14;
                        if (Util.m("public.accessibility.transcribes-spoken-dialog", strArrSplit)) {
                            i2 |= 4096;
                        }
                        if (Util.m("public.accessibility.describes-music-and-sound", strArrSplit)) {
                            i2 |= 1024;
                        }
                        if (Util.m("public.easy-to-read", strArrSplit)) {
                            i2 |= 8192;
                        }
                    }
                    builder.f13768f = i2;
                    builder.d = j(str5, U, null, map3, matcherCache);
                    String strJ5 = j(str5, pattern, null, map3, matcherCache);
                    Uri uriD2 = strJ5 == null ? null : UriUtil.d(string2, strJ5);
                    String str7 = string2;
                    Metadata metadata2 = new Metadata(new HlsTrackMetadataEntry(strK, strK2, Collections.EMPTY_LIST));
                    switch (k(str5, S, map3, matcherCache)) {
                        case "SUBTITLES":
                            arrayList = arrayList19;
                            int i15 = 0;
                            while (true) {
                                if (i15 < arrayList15.size()) {
                                    variant = (HlsMultivariantPlaylist.Variant) arrayList15.get(i15);
                                    if (!strK.equals(variant.f15287e)) {
                                        i15++;
                                    }
                                } else {
                                    variant = null;
                                }
                            }
                            if (variant != null) {
                                String strW2 = Util.w(3, variant.f15285b.f13763k);
                                builder.f13771j = strW2;
                                strE = MimeTypes.e(strW2);
                            } else {
                                strE = null;
                            }
                            if (strE == null) {
                                strE = "text/vtt";
                            }
                            builder.n = MimeTypes.p(strE);
                            builder.f13772k = metadata2;
                            if (uriD2 != null) {
                                arrayList2 = arrayList20;
                                arrayList2.add(new HlsMultivariantPlaylist.Rendition(uriD2, new Format(builder), strK, strK2, strJ3));
                            } else {
                                arrayList2 = arrayList20;
                                Log.g("EXT-X-MEDIA tag with missing mandatory URI attribute: skipping");
                            }
                            arrayList24 = arrayList26;
                            break;
                        case "CLOSED-CAPTIONS":
                            arrayList = arrayList19;
                            String strK3 = k(str5, Z, map3, matcherCache);
                            if (strK3.startsWith("CC")) {
                                i4 = Integer.parseInt(strK3.substring(2));
                                str = "application/cea-608";
                            } else {
                                i4 = Integer.parseInt(strK3.substring(7));
                                str = "application/cea-708";
                            }
                            ArrayList arrayList28 = arrayList26 == null ? new ArrayList() : arrayList26;
                            builder.n = MimeTypes.p(str);
                            builder.K = i4;
                            arrayList28.add(new Format(builder));
                            arrayList24 = arrayList28;
                            arrayList2 = arrayList20;
                            break;
                        case "AUDIO":
                            ArrayList arrayList29 = arrayList18;
                            int i16 = 0;
                            while (true) {
                                if (i16 < arrayList15.size()) {
                                    variant2 = (HlsMultivariantPlaylist.Variant) arrayList15.get(i16);
                                    if (!strK.equals(variant2.d)) {
                                        i16++;
                                    }
                                } else {
                                    variant2 = null;
                                }
                            }
                            if (variant2 != null) {
                                String strW3 = Util.w(1, variant2.f15285b.f13763k);
                                builder.f13771j = strW3;
                                strE2 = MimeTypes.e(strW3);
                            } else {
                                strE2 = null;
                            }
                            arrayList18 = arrayList29;
                            String strJ6 = j(str5, f15297i, null, map3, matcherCache);
                            if (strJ6 != null) {
                                String str8 = Util.f14242a;
                                builder.F = Integer.parseInt(strJ6.split("/", 2)[0]);
                                if ("audio/eac3".equals(strE2) && strJ6.endsWith("/JOC")) {
                                    builder.f13771j = "ec+3";
                                    strE2 = "audio/eac3-joc";
                                }
                            }
                            builder.n = MimeTypes.p(strE2);
                            if (uriD2 == null) {
                                arrayList = arrayList19;
                                if (variant2 != null) {
                                    Format format4 = new Format(builder);
                                    arrayList24 = arrayList26;
                                    format3 = format4;
                                    arrayList2 = arrayList20;
                                }
                                break;
                            } else {
                                builder.f13772k = metadata2;
                                arrayList = arrayList19;
                                arrayList.add(new HlsMultivariantPlaylist.Rendition(uriD2, new Format(builder), strK, strK2, strJ3));
                            }
                            arrayList2 = arrayList20;
                            arrayList24 = arrayList26;
                            break;
                        case "VIDEO":
                            int i17 = 0;
                            while (true) {
                                if (i17 < arrayList15.size()) {
                                    variant3 = (HlsMultivariantPlaylist.Variant) arrayList15.get(i17);
                                    if (!strK.equals(variant3.f15286c)) {
                                        i17++;
                                    }
                                } else {
                                    variant3 = null;
                                }
                            }
                            if (variant3 != null) {
                                Format format5 = variant3.f15285b;
                                String strW4 = Util.w(2, format5.f13763k);
                                builder.f13771j = strW4;
                                builder.n = MimeTypes.p(MimeTypes.e(strW4));
                                builder.u = format5.v;
                                builder.v = format5.w;
                                builder.y = format5.z;
                            }
                            if (uriD2 != null) {
                                builder.f13772k = metadata2;
                                arrayList18.add(new HlsMultivariantPlaylist.Rendition(uriD2, new Format(builder), strK, strK2, strJ3));
                                break;
                            }
                        default:
                            arrayList2 = arrayList20;
                            arrayList = arrayList19;
                            arrayList24 = arrayList26;
                            break;
                    }
                    i14 = i3 + 1;
                    arrayList19 = arrayList;
                    arrayList16 = arrayList25;
                    arrayList20 = arrayList2;
                    arrayList22 = arrayList27;
                    format2 = format3;
                    string2 = str7;
                }
                return new HlsMultivariantPlaylist(uri.toString(), arrayList17, arrayList22, arrayList18, arrayList19, arrayList20, arrayList14, format2, zContains ? Collections.EMPTY_LIST : arrayList24, z4, map3, arrayList21);
            }
            String strB = lineIterator.b();
            ArrayList arrayList30 = arrayList9;
            if (strB.startsWith("#EXT")) {
                arrayList13.add(strB);
            }
            boolean zStartsWith = strB.startsWith("#EXT-X-I-FRAME-STREAM-INF");
            ArrayList arrayList31 = arrayList13;
            if (strB.startsWith("#EXT-X-DEFINE")) {
                String strJ7 = j(strB, pattern2, null, map3, matcherCache);
                if (strJ7 != null) {
                    m(strJ7, map3);
                    map3.put(strJ7, k(strB, g0, map3, matcherCache));
                } else {
                    String strK4 = k(strB, W, map3, matcherCache);
                    m(strK4, map3);
                    String queryParameter = uri.getQueryParameter(strK4);
                    if (queryParameter == null) {
                        throw ParserException.b("QUERYPARAM \"" + strK4 + "\" not found in playlist URI");
                    }
                    map3.put(strK4, queryParameter);
                }
            } else {
                if (strB.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                    ArrayList arrayList32 = arrayList6;
                    map = map2;
                    arrayList4 = arrayList32;
                    arrayList11 = arrayList11;
                    arrayList7 = arrayList7;
                    arrayList8 = arrayList8;
                    arrayList12 = arrayList12;
                    z2 = zContains;
                    z3 = true;
                } else if (strB.startsWith("#EXT-X-MEDIA")) {
                    arrayList11.add(strB);
                } else if (strB.startsWith("#EXT-X-SESSION-KEY")) {
                    DrmInitData.SchemeData schemeDataD = d(strB, j(strB, O, "identity", map3, matcherCache), map3, matcherCache);
                    if (schemeDataD != null) {
                        String strK5 = k(strB, N, map3, matcherCache);
                        arrayList12.add(new DrmInitData(("SAMPLE-AES-CENC".equals(strK5) || "SAMPLE-AES-CTR".equals(strK5)) ? "cenc" : "cbcs", schemeDataD));
                    }
                } else {
                    if (strB.startsWith("#EXT-X-STREAM-INF") || zStartsWith) {
                        zContains |= strB.contains("CLOSED-CAPTIONS=NONE");
                        int i18 = zStartsWith ? 16384 : 0;
                        int i19 = Integer.parseInt(k(strB, f15296h, Collections.EMPTY_MAP, matcherCache));
                        Matcher matcherA = MatcherCache.a(matcherCache, strB, f15293c);
                        if (matcherA.find()) {
                            String strGroup = matcherA.group(1);
                            strGroup.getClass();
                            i5 = Integer.parseInt(strGroup);
                        } else {
                            i5 = -1;
                        }
                        String strJ8 = j(strB, f15298j, null, map3, matcherCache);
                        String strJ9 = j(strB, f15299k, null, map3, matcherCache);
                        String strJ10 = j(strB, l, null, map3, matcherCache);
                        if (strJ10 != null) {
                            String str9 = Util.f14242a;
                            String[] strArrSplit2 = strJ10.split(",", 2)[0].split("/", -1);
                            str2 = strArrSplit2[0];
                            if (strArrSplit2.length > 1) {
                                str3 = strArrSplit2[1];
                                map2 = map2;
                                i6 = 2;
                            } else {
                                i6 = 2;
                            }
                            strW = Util.w(i6, strJ9);
                            if (MimeTypes.l(strW, str2)) {
                                if (str2 == null) {
                                    arrayList3 = arrayList6;
                                } else {
                                    if (strJ8 != null || str3 == null) {
                                        arrayList3 = arrayList6;
                                    } else {
                                        arrayList3 = arrayList6;
                                        if ((!strJ8.equals("PQ") || str3.equals("db1p")) && ((!strJ8.equals("SDR") || str3.equals("db2g")) && (!strJ8.equals("HLG") || str3.startsWith("db4")))) {
                                        }
                                    }
                                    colorInfo2 = null;
                                }
                                if (strJ9 == null && MimeTypes.l(strJ9, str2)) {
                                    i7 = 6;
                                    if (!strJ9.startsWith("dvhe") || strJ9.startsWith("dvh1") || strJ9.startsWith("dav1")) {
                                        i8 = 1;
                                    } else {
                                        if (str3 == null) {
                                            i8 = -1;
                                            i9 = -1;
                                            i7 = -1;
                                            i7 = -1;
                                        } else if (str3.equals("db1p")) {
                                            i8 = 2;
                                        } else if (str3.startsWith("db4")) {
                                            i8 = 2;
                                            i9 = -1;
                                            i7 = 7;
                                        } else {
                                            i8 = -1;
                                            i9 = -1;
                                            i7 = -1;
                                            i7 = -1;
                                        }
                                        if (i7 == i9) {
                                            colorInfoA = null;
                                        } else {
                                            ColorInfo.Builder builder2 = new ColorInfo.Builder();
                                            builder2.f13730a = i7;
                                            builder2.f13731b = i8;
                                            builder2.f13732c = i7;
                                            colorInfoA = builder2.a();
                                        }
                                    }
                                    i9 = -1;
                                    if (i7 == i9) {
                                        colorInfoA = null;
                                    } else {
                                        ColorInfo.Builder builder3 = new ColorInfo.Builder();
                                        builder3.f13730a = i7;
                                        builder3.f13731b = i8;
                                        builder3.f13732c = i7;
                                        colorInfoA = builder3.a();
                                    }
                                } else {
                                    colorInfoA = null;
                                }
                                if (str2 == null) {
                                    str2 = strW;
                                }
                                strArrC0 = Util.c0(strJ9);
                                if (strArrC0.length == 0) {
                                    colorInfo = colorInfoA;
                                } else {
                                    sb = new StringBuilder();
                                    length = strArrC0.length;
                                    i10 = 0;
                                    while (i10 < length) {
                                        str4 = strArrC0[i10];
                                        ColorInfo colorInfo3 = colorInfoA;
                                        String[] strArr = strArrC0;
                                        if (2 == MimeTypes.i(MimeTypes.e(str4))) {
                                            if (sb.length() > 0) {
                                                sb.append(",");
                                            }
                                            sb.append(str4);
                                        }
                                        i10++;
                                        strArrC0 = strArr;
                                        colorInfoA = colorInfo3;
                                    }
                                    colorInfo = colorInfoA;
                                    string = sb.length() > 0 ? sb.toString() : null;
                                    if (string != null) {
                                        strJ9 = tr.h(str2, ",", string);
                                    } else {
                                        strJ9 = str2;
                                    }
                                    colorInfo2 = colorInfo;
                                }
                                if (string != null) {
                                    strJ9 = tr.h(str2, ",", string);
                                } else {
                                    strJ9 = str2;
                                }
                                colorInfo2 = colorInfo;
                            } else {
                                arrayList3 = arrayList6;
                                colorInfo2 = null;
                            }
                            strJ = j(strB, m, null, map3, matcherCache);
                            if (strJ != null) {
                                String[] strArrSplit3 = strJ.split("x", -1);
                                i12 = Integer.parseInt(strArrSplit3[0]);
                                i11 = Integer.parseInt(strArrSplit3[1]);
                                if (i12 > 0 || i11 <= 0) {
                                    i11 = -1;
                                    i12 = -1;
                                }
                            } else {
                                i11 = -1;
                                i12 = -1;
                            }
                            strJ2 = j(strB, n, null, map3, matcherCache);
                            if (strJ2 != null) {
                                f2 = Float.parseFloat(strJ2);
                            } else {
                                f2 = -1.0f;
                            }
                            String strJ11 = j(strB, o, null, map3, matcherCache);
                            String strJ12 = j(strB, d, null, map3, matcherCache);
                            String strJ13 = j(strB, f15294e, null, map3, matcherCache);
                            String strJ14 = j(strB, f15295f, null, map3, matcherCache);
                            String strJ15 = j(strB, g, null, map3, matcherCache);
                            String strJ16 = j(strB, p, null, map3, matcherCache);
                            if (zStartsWith) {
                                uriD = UriUtil.d(string2, k(strB, pattern, map3, matcherCache));
                            } else {
                                if (lineIterator.a()) {
                                    throw ParserException.b("#EXT-X-STREAM-INF must be followed by another line");
                                }
                                uriD = UriUtil.d(string2, l(lineIterator.b(), map3, matcherCache));
                            }
                            uri2 = uriD;
                            Format.Builder builder4 = new Format.Builder();
                            builder4.f13764a = Integer.toString(arrayList3.size());
                            builder4.m = MimeTypes.p("application/x-mpegURL");
                            builder4.f13771j = strJ9;
                            builder4.f13769h = i5;
                            builder4.f13770i = i19;
                            builder4.u = i12;
                            builder4.v = i11;
                            builder4.y = f2;
                            builder4.f13768f = i18;
                            builder4.D = colorInfo2;
                            arrayList4 = arrayList3;
                            arrayList4.add(new HlsMultivariantPlaylist.Variant(uri2, new Format(builder4), strJ12, strJ13, strJ14, strJ15, strJ11, strJ16));
                            map = map2;
                            arrayList5 = (ArrayList) map.get(uri2);
                            if (arrayList5 == null) {
                                arrayList5 = new ArrayList();
                                map.put(uri2, arrayList5);
                            }
                            arrayList5.add(new HlsTrackMetadataEntry.VariantInfo(i5, i19, strJ12, strJ13, strJ14, strJ15));
                        } else {
                            i6 = 2;
                            str2 = null;
                        }
                        str3 = null;
                        strW = Util.w(i6, strJ9);
                        if (MimeTypes.l(strW, str2)) {
                            if (str2 == null) {
                                arrayList3 = arrayList6;
                            } else {
                                if (strJ8 != null) {
                                    arrayList3 = arrayList6;
                                } else {
                                    arrayList3 = arrayList6;
                                }
                                colorInfo2 = null;
                            }
                            if (strJ9 == null) {
                                colorInfoA = null;
                            } else {
                                i7 = 6;
                                if (strJ9.startsWith("dvhe")) {
                                    i8 = 1;
                                    i9 = -1;
                                } else {
                                    i8 = 1;
                                    i9 = -1;
                                }
                                if (i7 == i9) {
                                    colorInfoA = null;
                                } else {
                                    ColorInfo.Builder builder5 = new ColorInfo.Builder();
                                    builder5.f13730a = i7;
                                    builder5.f13731b = i8;
                                    builder5.f13732c = i7;
                                    colorInfoA = builder5.a();
                                }
                            }
                            if (str2 == null) {
                                str2 = strW;
                            }
                            strArrC0 = Util.c0(strJ9);
                            if (strArrC0.length == 0) {
                                colorInfo = colorInfoA;
                            } else {
                                sb = new StringBuilder();
                                length = strArrC0.length;
                                i10 = 0;
                                while (i10 < length) {
                                    str4 = strArrC0[i10];
                                    ColorInfo colorInfo4 = colorInfoA;
                                    String[] strArr2 = strArrC0;
                                    if (2 == MimeTypes.i(MimeTypes.e(str4))) {
                                        if (sb.length() > 0) {
                                            sb.append(",");
                                        }
                                        sb.append(str4);
                                    }
                                    i10++;
                                    strArrC0 = strArr2;
                                    colorInfoA = colorInfo4;
                                }
                                colorInfo = colorInfoA;
                                if (sb.length() > 0) {
                                }
                                if (string != null) {
                                    strJ9 = tr.h(str2, ",", string);
                                } else {
                                    strJ9 = str2;
                                }
                                colorInfo2 = colorInfo;
                            }
                            if (string != null) {
                                strJ9 = tr.h(str2, ",", string);
                            } else {
                                strJ9 = str2;
                            }
                            colorInfo2 = colorInfo;
                        } else {
                            arrayList3 = arrayList6;
                            colorInfo2 = null;
                        }
                        strJ = j(strB, m, null, map3, matcherCache);
                        if (strJ != null) {
                            String[] strArrSplit4 = strJ.split("x", -1);
                            i12 = Integer.parseInt(strArrSplit4[0]);
                            i11 = Integer.parseInt(strArrSplit4[1]);
                            if (i12 > 0) {
                                i11 = -1;
                                i12 = -1;
                            } else {
                                i11 = -1;
                                i12 = -1;
                            }
                        } else {
                            i11 = -1;
                            i12 = -1;
                        }
                        strJ2 = j(strB, n, null, map3, matcherCache);
                        if (strJ2 != null) {
                            f2 = Float.parseFloat(strJ2);
                        } else {
                            f2 = -1.0f;
                        }
                        String strJ17 = j(strB, o, null, map3, matcherCache);
                        String strJ18 = j(strB, d, null, map3, matcherCache);
                        String strJ19 = j(strB, f15294e, null, map3, matcherCache);
                        String strJ110 = j(strB, f15295f, null, map3, matcherCache);
                        String strJ111 = j(strB, g, null, map3, matcherCache);
                        String strJ112 = j(strB, p, null, map3, matcherCache);
                        if (zStartsWith) {
                            uriD = UriUtil.d(string2, k(strB, pattern, map3, matcherCache));
                        } else {
                            if (lineIterator.a()) {
                                throw ParserException.b("#EXT-X-STREAM-INF must be followed by another line");
                            }
                            uriD = UriUtil.d(string2, l(lineIterator.b(), map3, matcherCache));
                        }
                        uri2 = uriD;
                        Format.Builder builder6 = new Format.Builder();
                        builder6.f13764a = Integer.toString(arrayList3.size());
                        builder6.m = MimeTypes.p("application/x-mpegURL");
                        builder6.f13771j = strJ9;
                        builder6.f13769h = i5;
                        builder6.f13770i = i19;
                        builder6.u = i12;
                        builder6.v = i11;
                        builder6.y = f2;
                        builder6.f13768f = i18;
                        builder6.D = colorInfo2;
                        arrayList4 = arrayList3;
                        arrayList4.add(new HlsMultivariantPlaylist.Variant(uri2, new Format(builder6), strJ18, strJ19, strJ110, strJ111, strJ17, strJ112));
                        map = map2;
                        arrayList5 = (ArrayList) map.get(uri2);
                        if (arrayList5 == null) {
                            arrayList5 = new ArrayList();
                            map.put(uri2, arrayList5);
                        }
                        arrayList5.add(new HlsTrackMetadataEntry.VariantInfo(i5, i19, strJ18, strJ19, strJ110, strJ111));
                    }
                    z2 = zContains;
                    z3 = z4;
                }
                HashMap map5 = map;
                arrayList6 = arrayList4;
                map2 = map5;
                arrayList10 = arrayList14;
                arrayList9 = arrayList30;
                arrayList13 = arrayList31;
                arrayList12 = arrayList12;
                arrayList8 = arrayList8;
                arrayList7 = arrayList7;
                arrayList11 = arrayList11;
            }
            ArrayList arrayList33 = arrayList6;
            map = map2;
            arrayList4 = arrayList33;
            arrayList12 = arrayList12;
            z2 = zContains;
            z3 = z4;
            HashMap map6 = map;
            arrayList6 = arrayList4;
            map2 = map6;
            arrayList10 = arrayList14;
            arrayList9 = arrayList30;
            arrayList13 = arrayList31;
            arrayList12 = arrayList12;
            arrayList8 = arrayList8;
            arrayList7 = arrayList7;
            arrayList11 = arrayList11;
        }
    }

    public static boolean g(MatcherCache matcherCache, String str, Pattern pattern) {
        Matcher matcherA = MatcherCache.a(matcherCache, str, pattern);
        if (matcherA.find()) {
            return "YES".equals(matcherA.group(1));
        }
        return false;
    }

    public static double h(String str, Pattern pattern, double d2, MatcherCache matcherCache) {
        Matcher matcherA = MatcherCache.a(matcherCache, str, pattern);
        if (!matcherA.find()) {
            return d2;
        }
        String strGroup = matcherA.group(1);
        strGroup.getClass();
        return Double.parseDouble(strGroup);
    }

    public static long i(MatcherCache matcherCache, String str, Pattern pattern) {
        Matcher matcherA = MatcherCache.a(matcherCache, str, pattern);
        if (!matcherA.find()) {
            return -1L;
        }
        String strGroup = matcherA.group(1);
        strGroup.getClass();
        return Long.parseLong(strGroup);
    }

    public static String j(String str, Pattern pattern, String str2, Map map, MatcherCache matcherCache) {
        Matcher matcherA = MatcherCache.a(matcherCache, str, pattern);
        if (matcherA.find()) {
            str2 = matcherA.group(1);
            str2.getClass();
        }
        return (map.isEmpty() || str2 == null) ? str2 : l(str2, map, matcherCache);
    }

    public static String k(String str, Pattern pattern, Map map, MatcherCache matcherCache) throws ParserException {
        String strJ = j(str, pattern, null, map, matcherCache);
        if (strJ != null) {
            return strJ;
        }
        throw ParserException.b("Couldn't match " + pattern.pattern() + " in " + str);
    }

    public static String l(String str, Map map, MatcherCache matcherCache) {
        Matcher matcherA = MatcherCache.a(matcherCache, str, B0);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcherA.find()) {
            String strGroup = matcherA.group(1);
            if (map.containsKey(strGroup)) {
                matcherA.appendReplacement(stringBuffer, Matcher.quoteReplacement((String) map.get(strGroup)));
            }
        }
        matcherA.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public static void m(String str, HashMap map) throws ParserException {
        if (map.containsKey(str)) {
            throw ParserException.b("duplicate variable name \"" + str + "\"");
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0049 A[Catch: all -> 0x009b, TryCatch #0 {all -> 0x009b, blocks: (B:3:0x0019, B:5:0x0022, B:7:0x002a, B:10:0x0033, B:31:0x0072, B:33:0x0078, B:36:0x0083, B:38:0x008b, B:43:0x009d, B:45:0x00a5, B:47:0x00ad, B:49:0x00b5, B:51:0x00bd, B:53:0x00c5, B:55:0x00cd, B:57:0x00d5, B:60:0x00de, B:61:0x00e2, B:66:0x0100, B:67:0x0106, B:13:0x003a, B:15:0x0040, B:19:0x0049, B:22:0x0052, B:24:0x005b, B:26:0x0061, B:28:0x0067, B:29:0x006c), top: B:70:0x0019 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x0052 A[Catch: all -> 0x009b, LOOP:2: B:17:0x0046->B:22:0x0052, LOOP_END, TryCatch #0 {all -> 0x009b, blocks: (B:3:0x0019, B:5:0x0022, B:7:0x002a, B:10:0x0033, B:31:0x0072, B:33:0x0078, B:36:0x0083, B:38:0x008b, B:43:0x009d, B:45:0x00a5, B:47:0x00ad, B:49:0x00b5, B:51:0x00bd, B:53:0x00c5, B:55:0x00cd, B:57:0x00d5, B:60:0x00de, B:61:0x00e2, B:66:0x0100, B:67:0x0106, B:13:0x003a, B:15:0x0040, B:19:0x0049, B:22:0x0052, B:24:0x005b, B:26:0x0061, B:28:0x0067, B:29:0x006c), top: B:70:0x0019 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x0051 A[SYNTHETIC] */
    @Override // androidx.media3.exoplayer.upstream.ParsingLoadable.Parser
    public final Object a(Uri uri, DataSourceInputStream dataSourceInputStream) throws ParserException {
        int i2;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(dataSourceInputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        MatcherCache matcherCache = new MatcherCache(16, 0.75f, true);
        try {
            int i3 = bufferedReader.read();
            boolean zM = false;
            if (i3 == 239) {
                if (bufferedReader.read() == 187 && bufferedReader.read() == 191) {
                    i3 = bufferedReader.read();
                    while (i3 != -1) {
                        i3 = bufferedReader.read();
                    }
                    i2 = 0;
                    while (true) {
                        if (i2 < 7) {
                            while (i3 != -1) {
                                i3 = bufferedReader.read();
                            }
                            zM = Util.M(i3);
                            break;
                        }
                        if (i3 != "#EXTM3U".charAt(i2)) {
                            break;
                            break;
                        }
                        i3 = bufferedReader.read();
                        i2++;
                    }
                }
            } else {
                while (i3 != -1 && Character.isWhitespace(i3)) {
                    i3 = bufferedReader.read();
                }
                i2 = 0;
                while (true) {
                    if (i2 < 7) {
                        while (i3 != -1 && Character.isWhitespace(i3) && !Util.M(i3)) {
                            i3 = bufferedReader.read();
                        }
                        zM = Util.M(i3);
                        break;
                    }
                    if (i3 != "#EXTM3U".charAt(i2)) {
                        break;
                    }
                    i3 = bufferedReader.read();
                    i2++;
                }
            }
            if (!zM) {
                throw ParserException.b("Input does not start with the #EXTM3U header.");
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    Util.h(bufferedReader);
                    throw ParserException.b("Failed to parse the playlist, could not identify any tags.");
                }
                String strTrim = line.trim();
                if (!strTrim.isEmpty()) {
                    if (strTrim.startsWith("#EXT-X-STREAM-INF")) {
                        arrayDeque.add(strTrim);
                        HlsMultivariantPlaylist hlsMultivariantPlaylistF = f(new LineIterator(arrayDeque, bufferedReader), uri, matcherCache);
                        Util.h(bufferedReader);
                        return hlsMultivariantPlaylistF;
                    }
                    if (!strTrim.startsWith("#EXT-X-TARGETDURATION") && !strTrim.startsWith("#EXT-X-MEDIA-SEQUENCE") && !strTrim.startsWith("#EXTINF") && !strTrim.startsWith("#EXT-X-KEY") && !strTrim.startsWith("#EXT-X-BYTERANGE") && !strTrim.equals("#EXT-X-DISCONTINUITY") && !strTrim.equals("#EXT-X-DISCONTINUITY-SEQUENCE") && !strTrim.equals("#EXT-X-ENDLIST")) {
                        arrayDeque.add(strTrim);
                    }
                    arrayDeque.add(strTrim);
                    HlsMediaPlaylist hlsMediaPlaylistE = e(this.f15300a, this.f15301b, new LineIterator(arrayDeque, bufferedReader), uri, matcherCache);
                    Util.h(bufferedReader);
                    return hlsMediaPlaylistE;
                }
            }
        } catch (Throwable th) {
            Util.h(bufferedReader);
            throw th;
        }
    }

    public HlsPlaylistParser() {
        this(HlsMultivariantPlaylist.n, null);
    }
}
