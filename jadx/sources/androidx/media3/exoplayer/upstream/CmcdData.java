package androidx.media3.exoplayer.upstream;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSpec;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.UnmodifiableIterator;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.ct0;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Pattern;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class CmcdData {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Joiner f15758f = new Joiner(",");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CmcdObject f15759a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CmcdRequest f15760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CmcdSession f15761c;
    public final CmcdStatus d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f15762e;

    public static final class CmcdObject {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15763a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f15764b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f15765c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ImmutableList f15766e;

        public static final class Builder {
            public String d;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f15767a = -2147483647;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f15768b = -2147483647;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public long f15769c = -9223372036854775807L;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public ImmutableList f15770e = ImmutableList.x();
        }

        public CmcdObject(Builder builder) {
            this.f15763a = builder.f15767a;
            this.f15764b = builder.f15768b;
            this.f15765c = builder.f15769c;
            this.d = builder.d;
            this.f15766e = builder.f15770e;
        }
    }

    public static final class CmcdRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f15771a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15772b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f15773c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f15774e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f15775f;
        public final ImmutableList g;

        public static final class Builder {
            public boolean d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f15779e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f15780f;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public long f15776a = -9223372036854775807L;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public long f15777b = -2147483647L;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public long f15778c = -9223372036854775807L;
            public ImmutableList g = ImmutableList.x();
        }

        public CmcdRequest(Builder builder) {
            this.f15771a = builder.f15776a;
            this.f15772b = builder.f15777b;
            this.f15773c = builder.f15778c;
            this.d = builder.d;
            this.f15774e = builder.f15779e;
            this.f15775f = builder.f15780f;
            this.g = builder.g;
        }
    }

    public static final class CmcdSession {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f15781a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f15782b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f15783c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f15784e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ImmutableList f15785f;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f15786a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f15787b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f15788c;
            public String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public float f15789e = -3.4028235E38f;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public ImmutableList f15790f = ImmutableList.x();
        }

        public CmcdSession(Builder builder) {
            this.f15781a = builder.f15786a;
            this.f15782b = builder.f15787b;
            this.f15783c = builder.f15788c;
            this.d = builder.d;
            this.f15784e = builder.f15789e;
            this.f15785f = builder.f15790f;
        }
    }

    public static final class CmcdStatus {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15791a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f15792b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImmutableList f15793c;

        public static final class Builder {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f15795b;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f15794a = -2147483647;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public ImmutableList f15796c = ImmutableList.x();
        }

        public CmcdStatus(Builder builder) {
            this.f15791a = builder.f15794a;
            this.f15792b = builder.f15795b;
            this.f15793c = builder.f15796c;
        }
    }

    public static final class Factory {
        public static final Pattern m = Pattern.compile(".*-.*");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CmcdConfiguration f15797a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f15798b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ExoTrackSelection f15799c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Boolean f15801f;
        public boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f15802h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f15804j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f15805k;
        public String l;
        public long d = -9223372036854775807L;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f15800e = -3.4028235E38f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f15803i = -9223372036854775807L;

        public Factory(CmcdConfiguration cmcdConfiguration, String str) {
            this.f15797a = cmcdConfiguration;
            this.f15798b = str;
        }

        public final CmcdData a() {
            long j2;
            int i2;
            int iG;
            long jA;
            long j3;
            long j4;
            String str;
            boolean zEquals = Objects.equals(this.f15804j, NBSSpanMetricUnit.Minute);
            if (!zEquals) {
                Preconditions.m(this.f15799c, "Track selection must be set");
            }
            if (this.f15804j == null) {
                ExoTrackSelection exoTrackSelection = this.f15799c;
                exoTrackSelection.getClass();
                Format formatS = exoTrackSelection.s();
                String strB = MimeTypes.b(formatS.f13763k);
                String strJ = MimeTypes.j(formatS.f13763k);
                if (strB == null || strJ == null) {
                    int i3 = MimeTypes.i(formatS.o);
                    if (i3 == -1) {
                        i3 = MimeTypes.i(formatS.n);
                    }
                    str = i3 == 1 ? "a" : i3 == 2 ? "v" : null;
                } else {
                    str = "av";
                }
                this.f15804j = str;
            }
            String str2 = this.f15804j;
            boolean z = Objects.equals(str2, "a") || Objects.equals(str2, "v") || Objects.equals(str2, "av");
            if (z) {
                Preconditions.p("Buffered duration must be set", this.d != -9223372036854775807L);
                Preconditions.p("Chunk duration must be set", this.f15803i != -9223372036854775807L);
            }
            CmcdConfiguration cmcdConfiguration = this.f15797a;
            CmcdConfiguration.RequestConfig requestConfig = cmcdConfiguration.f15757c;
            CmcdConfiguration.RequestConfig requestConfig2 = cmcdConfiguration.f15757c;
            requestConfig.getClass();
            ImmutableListMultimap immutableListMultimapN = ImmutableListMultimap.n();
            ImmutableMap immutableMap = immutableListMultimapN.f33602f;
            UnmodifiableIterator it = immutableMap.keySet().iterator();
            while (it.hasNext()) {
                for (String str3 : immutableListMultimapN.get((String) it.next())) {
                    String str4 = Util.f14242a;
                    Preconditions.q(m.matcher(str3.split("=", -1)[0]).matches());
                }
            }
            if (zEquals) {
                j2 = -2147483647L;
                i2 = -2147483647;
                iG = -2147483647;
                jA = -2147483647L;
            } else {
                ExoTrackSelection exoTrackSelection2 = this.f15799c;
                exoTrackSelection2.getClass();
                int iMax = exoTrackSelection2.s().f13762j;
                int iG2 = Util.g(iMax, 1000);
                j2 = -2147483647L;
                TrackGroup trackGroupM = exoTrackSelection2.m();
                for (int i4 = 0; i4 < trackGroupM.f13977a; i4++) {
                    iMax = Math.max(iMax, trackGroupM.d[i4].f13762j);
                }
                iG = Util.g(iMax, 1000);
                jA = exoTrackSelection2.a() != -2147483647L ? (exoTrackSelection2.a() + 999) / 1000 : -2147483647L;
                requestConfig2.getClass();
                i2 = iG2;
            }
            CmcdObject.Builder builder = new CmcdObject.Builder();
            requestConfig2.getClass();
            Preconditions.g(i2 >= 0 || i2 == -2147483647);
            builder.f15767a = i2;
            requestConfig2.getClass();
            Preconditions.g(iG >= 0 || iG == -2147483647);
            builder.f15768b = iG;
            if (z) {
                requestConfig2.getClass();
                j3 = -9223372036854775807L;
                long jF0 = Util.f0(this.f15803i);
                Preconditions.g(jF0 >= 0 || jF0 == -9223372036854775807L);
                builder.f15769c = jF0;
            } else {
                j3 = -9223372036854775807L;
            }
            requestConfig2.getClass();
            builder.d = this.f15804j;
            if (immutableMap.containsKey("CMCD-Object")) {
                builder.f15770e = ImmutableList.t(immutableListMultimapN.get("CMCD-Object"));
            }
            CmcdRequest.Builder builder2 = new CmcdRequest.Builder();
            if (z) {
                requestConfig2.getClass();
                j4 = 50;
                long jF1 = Util.f0(this.d);
                if (jF1 == j3) {
                    builder2.f15776a = jF1;
                } else {
                    if (jF1 < 0) {
                        ct0.c();
                        return null;
                    }
                    builder2.f15776a = ((jF1 + 50) / 100) * 100;
                }
                requestConfig2.getClass();
                long jF2 = Util.f0((long) (this.d / this.f15800e));
                if (jF2 == j3) {
                    builder2.f15778c = jF2;
                } else {
                    if (jF2 < 0) {
                        ct0.c();
                        return null;
                    }
                    builder2.f15778c = ((jF2 + 50) / 100) * 100;
                }
            } else {
                j4 = 50;
            }
            requestConfig2.getClass();
            if (jA == j2) {
                builder2.f15777b = jA;
            } else {
                if (jA < 0) {
                    ct0.c();
                    return null;
                }
                builder2.f15777b = ((jA + j4) / 100) * 100;
            }
            requestConfig2.getClass();
            builder2.d = this.g || this.f15802h;
            requestConfig2.getClass();
            String str5 = this.f15805k;
            builder2.f15779e = str5 == null ? null : Uri.encode(str5);
            requestConfig2.getClass();
            builder2.f15780f = this.l;
            if (immutableMap.containsKey("CMCD-Request")) {
                builder2.g = ImmutableList.t(immutableListMultimapN.get("CMCD-Request"));
            }
            CmcdSession.Builder builder3 = new CmcdSession.Builder();
            requestConfig2.getClass();
            String str6 = cmcdConfiguration.f15756b;
            Preconditions.g(str6 == null || str6.length() <= 64);
            builder3.f15786a = str6;
            requestConfig2.getClass();
            String str7 = cmcdConfiguration.f15755a;
            Preconditions.g(str7 == null || str7.length() <= 64);
            builder3.f15787b = str7;
            requestConfig2.getClass();
            builder3.f15788c = this.f15798b;
            if (this.f15801f != null) {
                requestConfig2.getClass();
                Boolean bool = this.f15801f;
                bool.getClass();
                builder3.d = bool.booleanValue() ? com.batch.android.b.b.d : "v";
            }
            requestConfig2.getClass();
            float f2 = this.f15800e;
            Preconditions.g(f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM || f2 == -3.4028235E38f);
            builder3.f15789e = f2;
            if (immutableMap.containsKey("CMCD-Session")) {
                builder3.f15790f = ImmutableList.t(immutableListMultimapN.get("CMCD-Session"));
            }
            CmcdStatus.Builder builder4 = new CmcdStatus.Builder();
            requestConfig2.getClass();
            builder4.f15794a = -2147483647;
            requestConfig2.getClass();
            builder4.f15795b = this.g;
            if (immutableMap.containsKey("CMCD-Status")) {
                builder4.f15796c = ImmutableList.t(immutableListMultimapN.get("CMCD-Status"));
            }
            return new CmcdData(new CmcdObject(builder), new CmcdRequest(builder2), new CmcdSession(builder3), new CmcdStatus(builder4), cmcdConfiguration.d);
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ObjectType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StreamType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StreamingFormat {
    }

    public CmcdData(CmcdObject cmcdObject, CmcdRequest cmcdRequest, CmcdSession cmcdSession, CmcdStatus cmcdStatus, int i2) {
        this.f15759a = cmcdObject;
        this.f15760b = cmcdRequest;
        this.f15761c = cmcdSession;
        this.d = cmcdStatus;
        this.f15762e = i2;
    }

    public final DataSpec a(DataSpec dataSpec) {
        ArrayListMultimap arrayListMultimap = new ArrayListMultimap();
        CmcdObject cmcdObject = this.f15759a;
        String str = cmcdObject.d;
        long j2 = cmcdObject.f15765c;
        int i2 = cmcdObject.f15764b;
        ArrayList arrayList = new ArrayList();
        int i3 = cmcdObject.f15763a;
        if (i3 != -2147483647) {
            arrayList.add("br=" + i3);
        }
        if (i2 != -2147483647) {
            arrayList.add("tb=" + i2);
        }
        if (j2 != -9223372036854775807L) {
            arrayList.add("d=" + j2);
        }
        if (!TextUtils.isEmpty(str)) {
            arrayList.add("ot=" + str);
        }
        arrayList.addAll(cmcdObject.f15766e);
        if (!arrayList.isEmpty()) {
            arrayListMultimap.q("CMCD-Object", arrayList);
        }
        CmcdRequest cmcdRequest = this.f15760b;
        String str2 = cmcdRequest.f15775f;
        String str3 = cmcdRequest.f15774e;
        long j3 = cmcdRequest.f15773c;
        long j4 = cmcdRequest.f15772b;
        ArrayList arrayList2 = new ArrayList();
        long j5 = cmcdRequest.f15771a;
        if (j5 != -9223372036854775807L) {
            arrayList2.add("bl=" + j5);
        }
        if (j4 != -2147483647L) {
            arrayList2.add("mtp=" + j4);
        }
        if (j3 != -9223372036854775807) {
            arrayList2.add("dl=" + j3);
        }
        if (cmcdRequest.d) {
            arrayList2.add("su");
        }
        if (!TextUtils.isEmpty(str3)) {
            String str4 = Util.f14242a;
            Locale locale = Locale.US;
            arrayList2.add("nor=\"" + str3 + "\"");
        }
        if (!TextUtils.isEmpty(str2)) {
            String str5 = Util.f14242a;
            Locale locale2 = Locale.US;
            arrayList2.add("nrr=\"" + str2 + "\"");
        }
        arrayList2.addAll(cmcdRequest.g);
        if (!arrayList2.isEmpty()) {
            arrayListMultimap.q("CMCD-Request", arrayList2);
        }
        CmcdSession cmcdSession = this.f15761c;
        String str6 = cmcdSession.d;
        String str7 = cmcdSession.f15783c;
        String str8 = cmcdSession.f15782b;
        ArrayList arrayList3 = new ArrayList();
        String str9 = cmcdSession.f15781a;
        if (!TextUtils.isEmpty(str9)) {
            String str10 = Util.f14242a;
            Locale locale3 = Locale.US;
            arrayList3.add("cid=\"" + str9 + "\"");
        }
        if (!TextUtils.isEmpty(str8)) {
            String str11 = Util.f14242a;
            Locale locale4 = Locale.US;
            arrayList3.add("sid=\"" + str8 + "\"");
        }
        if (!TextUtils.isEmpty(str7)) {
            arrayList3.add("sf=" + str7);
        }
        if (!TextUtils.isEmpty(str6)) {
            arrayList3.add("st=" + str6);
        }
        float f2 = cmcdSession.f15784e;
        if (f2 != -3.4028235E38f && f2 != 1.0f) {
            Object[] objArr = {"pr", Float.valueOf(f2)};
            String str12 = Util.f14242a;
            arrayList3.add(String.format(Locale.US, "%s=%.2f", objArr));
        }
        arrayList3.addAll(cmcdSession.f15785f);
        if (!arrayList3.isEmpty()) {
            arrayListMultimap.q("CMCD-Session", arrayList3);
        }
        ArrayList arrayList4 = new ArrayList();
        CmcdStatus cmcdStatus = this.d;
        int i4 = cmcdStatus.f15791a;
        if (i4 != -2147483647) {
            arrayList4.add("rtp=" + i4);
        }
        if (cmcdStatus.f15792b) {
            arrayList4.add("bs");
        }
        arrayList4.addAll(cmcdStatus.f15793c);
        if (!arrayList4.isEmpty()) {
            arrayListMultimap.q("CMCD-Status", arrayList4);
        }
        int i5 = this.f15762e;
        Joiner joiner = f15758f;
        if (i5 != 0) {
            ArrayList arrayList5 = new ArrayList();
            Iterator it = arrayListMultimap.h().values().iterator();
            while (it.hasNext()) {
                arrayList5.addAll((Collection) it.next());
            }
            Collections.sort(arrayList5);
            Uri.Builder builderAppendQueryParameter = dataSpec.f14390a.buildUpon().appendQueryParameter("CMCD", joiner.b(arrayList5));
            DataSpec.Builder builderA = dataSpec.a();
            builderA.f14397a = builderAppendQueryParameter.build();
            return builderA.a();
        }
        ImmutableMap.Builder builder = new ImmutableMap.Builder();
        for (String str13 : arrayListMultimap.keySet()) {
            List list = arrayListMultimap.get((Object) str13);
            Collections.sort(list);
            builder.d(str13, joiner.b(list));
        }
        ImmutableMap immutableMapA = builder.a(true);
        HashMap map = new HashMap(dataSpec.f14393e);
        map.putAll(immutableMapA);
        return new DataSpec(dataSpec.f14390a, dataSpec.f14391b, dataSpec.f14392c, dataSpec.d, map, dataSpec.f14394f, dataSpec.g, dataSpec.f14395h, dataSpec.f14396i);
    }
}
