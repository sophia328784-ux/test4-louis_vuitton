package androidx.media3.common;

import android.net.Uri;
import android.os.Bundle;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.uh;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class MediaItem {
    public static final MediaItem g = new Builder().a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f13783h = Integer.toString(0, 36);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f13784i = Integer.toString(1, 36);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f13785j = Integer.toString(2, 36);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f13786k = Integer.toString(3, 36);
    public static final String l = Integer.toString(4, 36);
    public static final String m = Integer.toString(5, 36);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f13787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LocalConfiguration f13788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LiveConfiguration f13789c;
    public final MediaMetadata d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ClippingProperties f13790e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RequestMetadata f13791f;

    public static final class AdsConfiguration {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f13792b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f13793a;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Uri f13794a;

            public Builder(Uri uri) {
                this.f13794a = uri;
            }
        }

        static {
            String str = Util.f14242a;
            f13792b = Integer.toString(0, 36);
        }

        public AdsConfiguration(Builder builder) {
            this.f13793a = builder.f13794a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AdsConfiguration) && this.f13793a.equals(((AdsConfiguration) obj).f13793a);
        }

        public final int hashCode() {
            return this.f13793a.hashCode() * 31;
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f13795a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Uri f13796b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f13797c;
        public String g;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public AdsConfiguration f13801i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Object f13802j;
        public MediaMetadata l;
        public ClippingConfiguration.Builder d = new ClippingConfiguration.Builder();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public DrmConfiguration.Builder f13798e = new DrmConfiguration.Builder();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public List f13799f = Collections.EMPTY_LIST;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ImmutableList f13800h = ImmutableList.x();
        public LiveConfiguration.Builder m = new LiveConfiguration.Builder();
        public RequestMetadata n = RequestMetadata.d;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public long f13803k = -9223372036854775807L;

        public final MediaItem a() {
            LocalConfiguration localConfiguration;
            DrmConfiguration.Builder builder = this.f13798e;
            Preconditions.q(builder.f13828b == null || builder.f13827a != null);
            Uri uri = this.f13796b;
            if (uri != null) {
                String str = this.f13797c;
                DrmConfiguration.Builder builder2 = this.f13798e;
                localConfiguration = new LocalConfiguration(uri, str, builder2.f13827a != null ? new DrmConfiguration(builder2) : null, this.f13801i, this.f13799f, this.g, this.f13800h, this.f13802j, this.f13803k);
            } else {
                localConfiguration = null;
            }
            String str2 = this.f13795a;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = str2;
            ClippingConfiguration.Builder builder3 = this.d;
            builder3.getClass();
            ClippingProperties clippingProperties = new ClippingProperties(builder3);
            LiveConfiguration liveConfigurationA = this.m.a();
            MediaMetadata mediaMetadata = this.l;
            if (mediaMetadata == null) {
                mediaMetadata = MediaMetadata.L;
            }
            return new MediaItem(str3, clippingProperties, localConfiguration, liveConfigurationA, mediaMetadata, this.n);
        }

        public final void b(String str) {
            this.f13796b = str == null ? null : Uri.parse(str);
        }
    }

    public static class ClippingConfiguration {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final ClippingConfiguration f13804i = new ClippingConfiguration(new Builder());

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final String f13805j = Integer.toString(0, 36);

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final String f13806k = Integer.toString(1, 36);
        public static final String l = Integer.toString(2, 36);
        public static final String m = Integer.toString(3, 36);
        public static final String n = Integer.toString(4, 36);
        public static final String o = Integer.toString(5, 36);
        public static final String p = Integer.toString(6, 36);
        public static final String q = Integer.toString(7, 36);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f13807a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f13808b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f13809c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f13810e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f13811f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f13812h;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public long f13813a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public long f13814b = Long.MIN_VALUE;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f13815c;
            public boolean d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f13816e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f13817f;
        }

        public ClippingConfiguration(Builder builder) {
            this.f13807a = Util.f0(builder.f13813a);
            this.f13809c = Util.f0(builder.f13814b);
            this.f13808b = builder.f13813a;
            this.d = builder.f13814b;
            this.f13810e = builder.f13815c;
            this.f13811f = builder.d;
            this.g = builder.f13816e;
            this.f13812h = builder.f13817f;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClippingConfiguration)) {
                return false;
            }
            ClippingConfiguration clippingConfiguration = (ClippingConfiguration) obj;
            return this.f13808b == clippingConfiguration.f13808b && this.d == clippingConfiguration.d && this.f13810e == clippingConfiguration.f13810e && this.f13811f == clippingConfiguration.f13811f && this.g == clippingConfiguration.g && this.f13812h == clippingConfiguration.f13812h;
        }

        public final int hashCode() {
            long j2 = this.f13808b;
            int i2 = ((int) (j2 ^ (j2 >>> 32))) * 31;
            long j3 = this.d;
            return ((((((((i2 + ((int) ((j3 >>> 32) ^ j3))) * 31) + (this.f13810e ? 1 : 0)) * 31) + (this.f13811f ? 1 : 0)) * 31) + (this.g ? 1 : 0)) * 31) + (this.f13812h ? 1 : 0);
        }
    }

    @Deprecated
    public static final class ClippingProperties extends ClippingConfiguration {
        public static final ClippingProperties r = new ClippingProperties(new ClippingConfiguration.Builder());
    }

    public static final class LiveConfiguration {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final LiveConfiguration f13833f = new Builder().a();
        public static final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final String f13834h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final String f13835i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final String f13836j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final String f13837k;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f13838a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f13839b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f13840c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f13841e;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public long f13842a = -9223372036854775807L;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public long f13843b = -9223372036854775807L;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public long f13844c = -9223372036854775807L;
            public float d = -3.4028235E38f;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public float f13845e = -3.4028235E38f;

            public final LiveConfiguration a() {
                return new LiveConfiguration(this.f13842a, this.f13843b, this.f13844c, this.d, this.f13845e);
            }
        }

        static {
            String str = Util.f14242a;
            g = Integer.toString(0, 36);
            f13834h = Integer.toString(1, 36);
            f13835i = Integer.toString(2, 36);
            f13836j = Integer.toString(3, 36);
            f13837k = Integer.toString(4, 36);
        }

        @Deprecated
        public LiveConfiguration(long j2, long j3, long j4, float f2, float f3) {
            this.f13838a = j2;
            this.f13839b = j3;
            this.f13840c = j4;
            this.d = f2;
            this.f13841e = f3;
        }

        public static LiveConfiguration b(Bundle bundle) {
            Builder builder = new Builder();
            LiveConfiguration liveConfiguration = f13833f;
            builder.f13842a = bundle.getLong(g, liveConfiguration.f13838a);
            builder.f13843b = bundle.getLong(f13834h, liveConfiguration.f13839b);
            builder.f13844c = bundle.getLong(f13835i, liveConfiguration.f13840c);
            builder.d = bundle.getFloat(f13836j, liveConfiguration.d);
            builder.f13845e = bundle.getFloat(f13837k, liveConfiguration.f13841e);
            return builder.a();
        }

        public final Builder a() {
            Builder builder = new Builder();
            builder.f13842a = this.f13838a;
            builder.f13843b = this.f13839b;
            builder.f13844c = this.f13840c;
            builder.d = this.d;
            builder.f13845e = this.f13841e;
            return builder;
        }

        public final Bundle c() {
            Bundle bundle = new Bundle();
            LiveConfiguration liveConfiguration = f13833f;
            long j2 = liveConfiguration.f13838a;
            long j3 = this.f13838a;
            if (j3 != j2) {
                bundle.putLong(g, j3);
            }
            long j4 = liveConfiguration.f13839b;
            long j5 = this.f13839b;
            if (j5 != j4) {
                bundle.putLong(f13834h, j5);
            }
            long j6 = liveConfiguration.f13840c;
            long j7 = this.f13840c;
            if (j7 != j6) {
                bundle.putLong(f13835i, j7);
            }
            float f2 = liveConfiguration.d;
            float f3 = this.d;
            if (f3 != f2) {
                bundle.putFloat(f13836j, f3);
            }
            float f4 = liveConfiguration.f13841e;
            float f5 = this.f13841e;
            if (f5 != f4) {
                bundle.putFloat(f13837k, f5);
            }
            return bundle;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LiveConfiguration)) {
                return false;
            }
            LiveConfiguration liveConfiguration = (LiveConfiguration) obj;
            return this.f13838a == liveConfiguration.f13838a && this.f13839b == liveConfiguration.f13839b && this.f13840c == liveConfiguration.f13840c && this.d == liveConfiguration.d && this.f13841e == liveConfiguration.f13841e;
        }

        public final int hashCode() {
            long j2 = this.f13838a;
            long j3 = this.f13839b;
            int i2 = ((((int) (j2 ^ (j2 >>> 32))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31;
            long j4 = this.f13840c;
            int i3 = (i2 + ((int) ((j4 >>> 32) ^ j4))) * 31;
            float f2 = this.d;
            int iFloatToIntBits = (i3 + (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? Float.floatToIntBits(f2) : 0)) * 31;
            float f3 = this.f13841e;
            return iFloatToIntBits + (f3 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? Float.floatToIntBits(f3) : 0);
        }
    }

    public static final class LocalConfiguration {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final String f13846j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final String f13847k;
        public static final String l;
        public static final String m;
        public static final String n;
        public static final String o;
        public static final String p;
        public static final String q;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f13848a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f13849b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final DrmConfiguration f13850c;
        public final AdsConfiguration d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f13851e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f13852f;
        public final ImmutableList g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Object f13853h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f13854i;

        static {
            String str = Util.f14242a;
            f13846j = Integer.toString(0, 36);
            f13847k = Integer.toString(1, 36);
            l = Integer.toString(2, 36);
            m = Integer.toString(3, 36);
            n = Integer.toString(4, 36);
            o = Integer.toString(5, 36);
            p = Integer.toString(6, 36);
            q = Integer.toString(7, 36);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public LocalConfiguration(Uri uri, String str, DrmConfiguration drmConfiguration, AdsConfiguration adsConfiguration, List list, String str2, ImmutableList immutableList, Object obj, long j2) {
            this.f13848a = uri;
            this.f13849b = MimeTypes.p(str);
            this.f13850c = drmConfiguration;
            this.d = adsConfiguration;
            this.f13851e = list;
            this.f13852f = str2;
            this.g = immutableList;
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            for (int i2 = 0; i2 < immutableList.size(); i2++) {
                SubtitleConfiguration subtitleConfiguration = (SubtitleConfiguration) immutableList.get(i2);
                SubtitleConfiguration.Builder builder2 = new SubtitleConfiguration.Builder();
                builder2.f13872a = subtitleConfiguration.f13867a;
                builder2.f13873b = subtitleConfiguration.f13868b;
                builder2.f13874c = subtitleConfiguration.f13869c;
                builder2.d = subtitleConfiguration.d;
                builder2.f13875e = subtitleConfiguration.f13870e;
                builder2.f13876f = subtitleConfiguration.f13871f;
                builder2.g = subtitleConfiguration.g;
                builder.e(new Subtitle(builder2));
            }
            builder.j();
            this.f13853h = obj;
            this.f13854i = j2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LocalConfiguration)) {
                return false;
            }
            LocalConfiguration localConfiguration = (LocalConfiguration) obj;
            return this.f13848a.equals(localConfiguration.f13848a) && Objects.equals(this.f13849b, localConfiguration.f13849b) && Objects.equals(this.f13850c, localConfiguration.f13850c) && Objects.equals(this.d, localConfiguration.d) && this.f13851e.equals(localConfiguration.f13851e) && Objects.equals(this.f13852f, localConfiguration.f13852f) && this.g.equals(localConfiguration.g) && Objects.equals(this.f13853h, localConfiguration.f13853h) && this.f13854i == localConfiguration.f13854i;
        }

        public final int hashCode() {
            int iHashCode = this.f13848a.hashCode() * 31;
            String str = this.f13849b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            DrmConfiguration drmConfiguration = this.f13850c;
            int iHashCode3 = (iHashCode2 + (drmConfiguration == null ? 0 : drmConfiguration.hashCode())) * 31;
            AdsConfiguration adsConfiguration = this.d;
            int iHashCode4 = (this.f13851e.hashCode() + ((iHashCode3 + (adsConfiguration == null ? 0 : adsConfiguration.hashCode())) * 31)) * 31;
            String str2 = this.f13852f;
            int iHashCode5 = (this.g.hashCode() + ((iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
            Object obj = this.f13853h;
            return (int) ((((long) (iHashCode5 + (obj != null ? obj.hashCode() : 0))) * 31) + this.f13854i);
        }
    }

    public static final class RequestMetadata {
        public static final RequestMetadata d = new RequestMetadata(new Builder());

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f13855e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f13856f;
        public static final String g;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f13857a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f13858b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Bundle f13859c;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public Uri f13860a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f13861b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public Bundle f13862c;
        }

        static {
            String str = Util.f14242a;
            f13855e = Integer.toString(0, 36);
            f13856f = Integer.toString(1, 36);
            g = Integer.toString(2, 36);
        }

        public RequestMetadata(Builder builder) {
            this.f13857a = builder.f13860a;
            this.f13858b = builder.f13861b;
            this.f13859c = builder.f13862c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RequestMetadata)) {
                return false;
            }
            RequestMetadata requestMetadata = (RequestMetadata) obj;
            if (Objects.equals(this.f13857a, requestMetadata.f13857a) && Objects.equals(this.f13858b, requestMetadata.f13858b)) {
                if ((this.f13859c == null) == (requestMetadata.f13859c == null)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            Uri uri = this.f13857a;
            int iHashCode = (uri == null ? 0 : uri.hashCode()) * 31;
            String str = this.f13858b;
            return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + (this.f13859c != null ? 1 : 0);
        }
    }

    public MediaItem(String str, ClippingProperties clippingProperties, LocalConfiguration localConfiguration, LiveConfiguration liveConfiguration, MediaMetadata mediaMetadata, RequestMetadata requestMetadata) {
        this.f13787a = str;
        this.f13788b = localConfiguration;
        this.f13789c = liveConfiguration;
        this.d = mediaMetadata;
        this.f13790e = clippingProperties;
        this.f13791f = requestMetadata;
    }

    public static MediaItem b(int i2, Bundle bundle) {
        ClippingProperties clippingProperties;
        RequestMetadata requestMetadata;
        ImmutableMap immutableMapC;
        DrmConfiguration drmConfiguration;
        AdsConfiguration adsConfiguration;
        ImmutableList immutableListJ;
        LocalConfiguration localConfiguration;
        String string = bundle.getString(f13783h, "");
        string.getClass();
        Bundle bundle2 = bundle.getBundle(f13784i);
        LiveConfiguration liveConfigurationB = bundle2 == null ? LiveConfiguration.f13833f : LiveConfiguration.b(bundle2);
        Bundle bundle3 = bundle.getBundle(f13785j);
        MediaMetadata mediaMetadataB = bundle3 == null ? MediaMetadata.L : MediaMetadata.b(i2, bundle3);
        Bundle bundle4 = bundle.getBundle(f13786k);
        if (bundle4 == null) {
            clippingProperties = ClippingProperties.r;
        } else {
            ClippingConfiguration.Builder builder = new ClippingConfiguration.Builder();
            String str = ClippingConfiguration.f13805j;
            ClippingConfiguration clippingConfiguration = ClippingConfiguration.f13804i;
            long j2 = clippingConfiguration.f13807a;
            long j3 = clippingConfiguration.d;
            long j4 = clippingConfiguration.f13808b;
            long jR = Util.R(bundle4.getLong(str, j2));
            boolean z = true;
            Preconditions.g(jR >= 0);
            builder.f13813a = jR;
            long jR2 = Util.R(bundle4.getLong(ClippingConfiguration.f13806k, clippingConfiguration.f13809c));
            Preconditions.g(jR2 == Long.MIN_VALUE || jR2 >= 0);
            builder.f13814b = jR2;
            builder.f13815c = bundle4.getBoolean(ClippingConfiguration.l, clippingConfiguration.f13810e);
            builder.d = bundle4.getBoolean(ClippingConfiguration.m, clippingConfiguration.f13811f);
            builder.f13816e = bundle4.getBoolean(ClippingConfiguration.n, clippingConfiguration.g);
            builder.f13817f = bundle4.getBoolean(ClippingConfiguration.q, clippingConfiguration.f13812h);
            long j5 = bundle4.getLong(ClippingConfiguration.o, j4);
            if (j5 != j4) {
                Preconditions.g(j5 >= 0);
                builder.f13813a = j5;
            }
            long j6 = bundle4.getLong(ClippingConfiguration.p, j3);
            if (j6 != j3) {
                if (j6 != Long.MIN_VALUE && j6 < 0) {
                    z = false;
                }
                Preconditions.g(z);
                builder.f13814b = j6;
            }
            clippingProperties = new ClippingProperties(builder);
        }
        ClippingProperties clippingProperties2 = clippingProperties;
        Bundle bundle5 = bundle.getBundle(l);
        if (bundle5 == null) {
            requestMetadata = RequestMetadata.d;
        } else {
            RequestMetadata requestMetadata2 = RequestMetadata.d;
            RequestMetadata.Builder builder2 = new RequestMetadata.Builder();
            builder2.f13860a = (Uri) bundle5.getParcelable(RequestMetadata.f13855e);
            builder2.f13861b = bundle5.getString(RequestMetadata.f13856f);
            builder2.f13862c = Util.p(bundle5.getBundle(RequestMetadata.g));
            requestMetadata = new RequestMetadata(builder2);
        }
        RequestMetadata requestMetadata3 = requestMetadata;
        Bundle bundle6 = bundle.getBundle(m);
        if (bundle6 == null) {
            localConfiguration = null;
        } else {
            Bundle bundle7 = bundle6.getBundle(LocalConfiguration.l);
            if (bundle7 == null) {
                drmConfiguration = null;
            } else {
                String string2 = bundle7.getString(DrmConfiguration.f13818i);
                string2.getClass();
                UUID uuidFromString = UUID.fromString(string2);
                Uri uri = (Uri) bundle7.getParcelable(DrmConfiguration.f13819j);
                String str2 = DrmConfiguration.f13820k;
                Bundle bundle8 = Bundle.EMPTY;
                Bundle bundle9 = bundle7.getBundle(str2);
                if (bundle9 == null) {
                    bundle9 = bundle8;
                }
                if (bundle9 == bundle8) {
                    immutableMapC = ImmutableMap.h();
                } else {
                    HashMap map = new HashMap();
                    if (bundle9 != bundle8) {
                        for (String str3 : bundle9.keySet()) {
                            String string3 = bundle9.getString(str3);
                            if (string3 != null) {
                                map.put(str3, string3);
                            }
                        }
                    }
                    immutableMapC = ImmutableMap.c(map);
                }
                boolean z2 = bundle7.getBoolean(DrmConfiguration.l, false);
                boolean z3 = bundle7.getBoolean(DrmConfiguration.m, false);
                boolean z4 = bundle7.getBoolean(DrmConfiguration.n, false);
                String str4 = DrmConfiguration.o;
                ArrayList<Integer> arrayList = new ArrayList<>();
                ArrayList<Integer> integerArrayList = bundle7.getIntegerArrayList(str4);
                if (integerArrayList != null) {
                    arrayList = integerArrayList;
                }
                ImmutableList immutableListT = ImmutableList.t(arrayList);
                byte[] byteArray = bundle7.getByteArray(DrmConfiguration.p);
                DrmConfiguration.Builder builder3 = new DrmConfiguration.Builder(uuidFromString);
                builder3.f13828b = uri;
                builder3.f13829c = ImmutableMap.c(immutableMapC);
                builder3.d = z2;
                builder3.f13831f = z4;
                builder3.f13830e = z3;
                builder3.g = ImmutableList.t(immutableListT);
                builder3.f13832h = byteArray != null ? Arrays.copyOf(byteArray, byteArray.length) : null;
                drmConfiguration = new DrmConfiguration(builder3);
            }
            Bundle bundle10 = bundle6.getBundle(LocalConfiguration.m);
            if (bundle10 == null) {
                adsConfiguration = null;
            } else {
                Uri uri2 = (Uri) bundle10.getParcelable(AdsConfiguration.f13792b);
                uri2.getClass();
                adsConfiguration = new AdsConfiguration(new AdsConfiguration.Builder(uri2));
            }
            ArrayList parcelableArrayList = bundle6.getParcelableArrayList(LocalConfiguration.n);
            if (parcelableArrayList == null) {
                immutableListJ = ImmutableList.x();
            } else {
                UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                ImmutableList.Builder builder4 = new ImmutableList.Builder();
                int i3 = 0;
                while (i3 < parcelableArrayList.size()) {
                    Bundle bundle11 = (Bundle) parcelableArrayList.get(i3);
                    bundle11.getClass();
                    builder4.e(new StreamKey(bundle11.getInt(StreamKey.f13941e, 0), bundle11.getInt(StreamKey.f13942f, 0), bundle11.getInt(StreamKey.g, 0)));
                    i3++;
                    parcelableArrayList = parcelableArrayList;
                }
                immutableListJ = builder4.j();
            }
            ImmutableList immutableList = immutableListJ;
            ArrayList parcelableArrayList2 = bundle6.getParcelableArrayList(LocalConfiguration.p);
            ImmutableList immutableListX = parcelableArrayList2 == null ? ImmutableList.x() : BundleCollectionUtil.a(new uh(7), parcelableArrayList2);
            long j7 = bundle6.getLong(LocalConfiguration.q, -9223372036854775807L);
            Uri uri3 = (Uri) bundle6.getParcelable(LocalConfiguration.f13846j);
            uri3.getClass();
            localConfiguration = new LocalConfiguration(uri3, bundle6.getString(LocalConfiguration.f13847k), drmConfiguration, adsConfiguration, immutableList, bundle6.getString(LocalConfiguration.o), immutableListX, null, j7);
        }
        return new MediaItem(string, clippingProperties2, localConfiguration, liveConfigurationB, mediaMetadataB, requestMetadata3);
    }

    public final Builder a() {
        DrmConfiguration.Builder builder;
        Builder builder2 = new Builder();
        ClippingConfiguration.Builder builder3 = new ClippingConfiguration.Builder();
        ClippingProperties clippingProperties = this.f13790e;
        builder3.f13813a = clippingProperties.f13808b;
        builder3.f13814b = clippingProperties.d;
        builder3.f13815c = clippingProperties.f13810e;
        builder3.d = clippingProperties.f13811f;
        builder3.f13816e = clippingProperties.g;
        builder3.f13817f = clippingProperties.f13812h;
        builder2.d = builder3;
        builder2.f13795a = this.f13787a;
        builder2.l = this.d;
        builder2.m = this.f13789c.a();
        builder2.n = this.f13791f;
        LocalConfiguration localConfiguration = this.f13788b;
        if (localConfiguration != null) {
            builder2.g = localConfiguration.f13852f;
            builder2.f13797c = localConfiguration.f13849b;
            builder2.f13796b = localConfiguration.f13848a;
            builder2.f13799f = localConfiguration.f13851e;
            builder2.f13800h = localConfiguration.g;
            builder2.f13802j = localConfiguration.f13853h;
            DrmConfiguration drmConfiguration = localConfiguration.f13850c;
            if (drmConfiguration != null) {
                builder = new DrmConfiguration.Builder();
                builder.f13827a = drmConfiguration.f13821a;
                builder.f13828b = drmConfiguration.f13822b;
                builder.f13829c = drmConfiguration.f13823c;
                builder.d = drmConfiguration.d;
                builder.f13830e = drmConfiguration.f13824e;
                builder.f13831f = drmConfiguration.f13825f;
                builder.g = drmConfiguration.g;
                builder.f13832h = drmConfiguration.f13826h;
            } else {
                builder = new DrmConfiguration.Builder();
            }
            builder2.f13798e = builder;
            builder2.f13801i = localConfiguration.d;
            builder2.f13803k = localConfiguration.f13854i;
        }
        return builder2;
    }

    public final Bundle c(int i2, boolean z) {
        LocalConfiguration localConfiguration;
        Bundle bundle = new Bundle();
        String str = this.f13787a;
        if (!str.equals("")) {
            bundle.putString(f13783h, str);
        }
        LiveConfiguration liveConfiguration = LiveConfiguration.f13833f;
        LiveConfiguration liveConfiguration2 = this.f13789c;
        if (!liveConfiguration2.equals(liveConfiguration)) {
            bundle.putBundle(f13784i, liveConfiguration2.c());
        }
        MediaMetadata mediaMetadata = MediaMetadata.L;
        MediaMetadata mediaMetadata2 = this.d;
        if (!mediaMetadata2.equals(mediaMetadata)) {
            bundle.putBundle(f13785j, mediaMetadata2.c(i2));
        }
        ClippingConfiguration clippingConfiguration = ClippingConfiguration.f13804i;
        ClippingProperties clippingProperties = this.f13790e;
        if (!clippingProperties.equals(clippingConfiguration)) {
            Bundle bundle2 = new Bundle();
            long j2 = clippingProperties.f13807a;
            if (j2 != clippingConfiguration.f13807a) {
                bundle2.putLong(ClippingConfiguration.f13805j, j2);
            }
            long j3 = clippingProperties.f13809c;
            if (j3 != clippingConfiguration.f13809c) {
                bundle2.putLong(ClippingConfiguration.f13806k, j3);
            }
            long j4 = clippingProperties.f13808b;
            if (j4 != clippingConfiguration.f13808b) {
                bundle2.putLong(ClippingConfiguration.o, j4);
            }
            long j5 = clippingProperties.d;
            if (j5 != clippingConfiguration.d) {
                bundle2.putLong(ClippingConfiguration.p, j5);
            }
            boolean z2 = clippingProperties.f13810e;
            if (z2 != clippingConfiguration.f13810e) {
                bundle2.putBoolean(ClippingConfiguration.l, z2);
            }
            boolean z3 = clippingProperties.f13811f;
            if (z3 != clippingConfiguration.f13811f) {
                bundle2.putBoolean(ClippingConfiguration.m, z3);
            }
            boolean z4 = clippingProperties.g;
            if (z4 != clippingConfiguration.g) {
                bundle2.putBoolean(ClippingConfiguration.n, z4);
            }
            boolean z5 = clippingProperties.f13812h;
            if (z5 != clippingConfiguration.f13812h) {
                bundle2.putBoolean(ClippingConfiguration.q, z5);
            }
            bundle.putBundle(f13786k, bundle2);
        }
        RequestMetadata requestMetadata = RequestMetadata.d;
        RequestMetadata requestMetadata2 = this.f13791f;
        if (!requestMetadata2.equals(requestMetadata)) {
            Bundle bundle3 = new Bundle();
            Uri uri = requestMetadata2.f13857a;
            if (uri != null) {
                bundle3.putParcelable(RequestMetadata.f13855e, uri);
            }
            String str2 = requestMetadata2.f13858b;
            if (str2 != null) {
                bundle3.putString(RequestMetadata.f13856f, str2);
            }
            Bundle bundle4 = requestMetadata2.f13859c;
            if (bundle4 != null) {
                bundle3.putBundle(RequestMetadata.g, bundle4);
            }
            bundle.putBundle(l, bundle3);
        }
        if (z && (localConfiguration = this.f13788b) != null) {
            ImmutableList immutableList = localConfiguration.g;
            List list = localConfiguration.f13851e;
            Bundle bundle5 = new Bundle();
            bundle5.putParcelable(LocalConfiguration.f13846j, localConfiguration.f13848a);
            String str3 = localConfiguration.f13849b;
            if (str3 != null) {
                bundle5.putString(LocalConfiguration.f13847k, str3);
            }
            DrmConfiguration drmConfiguration = localConfiguration.f13850c;
            if (drmConfiguration != null) {
                String str4 = LocalConfiguration.l;
                ImmutableList immutableList2 = drmConfiguration.g;
                ImmutableMap immutableMap = drmConfiguration.f13823c;
                Bundle bundle6 = new Bundle();
                bundle6.putString(DrmConfiguration.f13818i, drmConfiguration.f13821a.toString());
                Uri uri2 = drmConfiguration.f13822b;
                if (uri2 != null) {
                    bundle6.putParcelable(DrmConfiguration.f13819j, uri2);
                }
                if (!immutableMap.isEmpty()) {
                    String str5 = DrmConfiguration.f13820k;
                    Bundle bundle7 = new Bundle();
                    Iterator it = immutableMap.entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry entry = (Map.Entry) it.next();
                        bundle7.putString((String) entry.getKey(), (String) entry.getValue());
                    }
                    bundle6.putBundle(str5, bundle7);
                }
                boolean z6 = drmConfiguration.d;
                if (z6) {
                    bundle6.putBoolean(DrmConfiguration.l, z6);
                }
                boolean z7 = drmConfiguration.f13824e;
                if (z7) {
                    bundle6.putBoolean(DrmConfiguration.m, z7);
                }
                boolean z8 = drmConfiguration.f13825f;
                if (z8) {
                    bundle6.putBoolean(DrmConfiguration.n, z8);
                }
                if (!immutableList2.isEmpty()) {
                    bundle6.putIntegerArrayList(DrmConfiguration.o, new ArrayList<>(immutableList2));
                }
                byte[] bArr = drmConfiguration.f13826h;
                if (bArr != null) {
                    bundle6.putByteArray(DrmConfiguration.p, bArr);
                }
                bundle5.putBundle(str4, bundle6);
            }
            AdsConfiguration adsConfiguration = localConfiguration.d;
            if (adsConfiguration != null) {
                String str6 = LocalConfiguration.m;
                Bundle bundle8 = new Bundle();
                bundle8.putParcelable(AdsConfiguration.f13792b, adsConfiguration.f13793a);
                bundle5.putBundle(str6, bundle8);
            }
            if (!list.isEmpty()) {
                bundle5.putParcelableArrayList(LocalConfiguration.n, BundleCollectionUtil.b(list, new uh(5)));
            }
            String str7 = localConfiguration.f13852f;
            if (str7 != null) {
                bundle5.putString(LocalConfiguration.o, str7);
            }
            if (!immutableList.isEmpty()) {
                bundle5.putParcelableArrayList(LocalConfiguration.p, BundleCollectionUtil.b(immutableList, new uh(6)));
            }
            long j6 = localConfiguration.f13854i;
            if (j6 != -9223372036854775807L) {
                bundle5.putLong(LocalConfiguration.q, j6);
            }
            bundle.putBundle(m, bundle5);
        }
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaItem)) {
            return false;
        }
        MediaItem mediaItem = (MediaItem) obj;
        return Objects.equals(this.f13787a, mediaItem.f13787a) && this.f13790e.equals(mediaItem.f13790e) && Objects.equals(this.f13788b, mediaItem.f13788b) && Objects.equals(this.f13789c, mediaItem.f13789c) && Objects.equals(this.d, mediaItem.d) && Objects.equals(this.f13791f, mediaItem.f13791f);
    }

    public final int hashCode() {
        int iHashCode = this.f13787a.hashCode() * 31;
        LocalConfiguration localConfiguration = this.f13788b;
        return this.f13791f.hashCode() + ((this.d.hashCode() + ((this.f13790e.hashCode() + ((this.f13789c.hashCode() + ((iHashCode + (localConfiguration != null ? localConfiguration.hashCode() : 0)) * 31)) * 31)) * 31)) * 31);
    }

    @Deprecated
    public static final class Subtitle extends SubtitleConfiguration {
        @Deprecated
        public Subtitle(Uri uri, String str, String str2, int i2) {
            this(uri, str, str2, i2, 0, null);
        }

        @Deprecated
        public Subtitle(Uri uri, String str, String str2) {
            this(uri, str, str2, 0);
        }

        @Deprecated
        public Subtitle(Uri uri, String str, String str2, int i2, int i3, String str3) {
            super(uri, str, str2, i2, i3, str3);
        }
    }

    public static final class DrmConfiguration {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final String f13818i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final String f13819j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final String f13820k;
        public static final String l;
        public static final String m;
        public static final String n;
        public static final String o;
        public static final String p;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final UUID f13821a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f13822b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImmutableMap f13823c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f13824e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f13825f;
        public final ImmutableList g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final byte[] f13826h;

        static {
            String str = Util.f14242a;
            f13818i = Integer.toString(0, 36);
            f13819j = Integer.toString(1, 36);
            f13820k = Integer.toString(2, 36);
            l = Integer.toString(3, 36);
            m = Integer.toString(4, 36);
            n = Integer.toString(5, 36);
            o = Integer.toString(6, 36);
            p = Integer.toString(7, 36);
        }

        public DrmConfiguration(Builder builder) {
            Preconditions.q((builder.f13831f && builder.f13828b == null) ? false : true);
            UUID uuid = builder.f13827a;
            uuid.getClass();
            this.f13821a = uuid;
            this.f13822b = builder.f13828b;
            this.f13823c = builder.f13829c;
            this.d = builder.d;
            this.f13825f = builder.f13831f;
            this.f13824e = builder.f13830e;
            this.g = builder.g;
            byte[] bArr = builder.f13832h;
            this.f13826h = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DrmConfiguration)) {
                return false;
            }
            DrmConfiguration drmConfiguration = (DrmConfiguration) obj;
            return this.f13821a.equals(drmConfiguration.f13821a) && Objects.equals(this.f13822b, drmConfiguration.f13822b) && Objects.equals(this.f13823c, drmConfiguration.f13823c) && this.d == drmConfiguration.d && this.f13825f == drmConfiguration.f13825f && this.f13824e == drmConfiguration.f13824e && this.g.equals(drmConfiguration.g) && Arrays.equals(this.f13826h, drmConfiguration.f13826h);
        }

        public final int hashCode() {
            int iHashCode = this.f13821a.hashCode() * 31;
            Uri uri = this.f13822b;
            return Arrays.hashCode(this.f13826h) + ((this.g.hashCode() + ((((((((this.f13823c.hashCode() + ((iHashCode + (uri != null ? uri.hashCode() : 0)) * 31)) * 31) + (this.d ? 1 : 0)) * 31) + (this.f13825f ? 1 : 0)) * 31) + (this.f13824e ? 1 : 0)) * 31)) * 31);
        }

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public UUID f13827a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public Uri f13828b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public ImmutableMap f13829c;
            public boolean d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f13830e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f13831f;
            public ImmutableList g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public byte[] f13832h;

            public Builder() {
                this.f13829c = ImmutableMap.h();
                this.f13830e = true;
                this.g = ImmutableList.x();
            }

            public Builder(UUID uuid) {
                this();
                this.f13827a = uuid;
            }
        }
    }

    public static class SubtitleConfiguration {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final String f13863h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final String f13864i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final String f13865j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final String f13866k;
        public static final String l;
        public static final String m;
        public static final String n;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f13867a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f13868b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f13869c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f13870e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f13871f;
        public final String g;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public Uri f13872a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f13873b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f13874c;
            public int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f13875e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f13876f;
            public String g;

            public Builder(Uri uri) {
                this.f13872a = uri;
            }
        }

        static {
            String str = Util.f14242a;
            f13863h = Integer.toString(0, 36);
            f13864i = Integer.toString(1, 36);
            f13865j = Integer.toString(2, 36);
            f13866k = Integer.toString(3, 36);
            l = Integer.toString(4, 36);
            m = Integer.toString(5, 36);
            n = Integer.toString(6, 36);
        }

        public SubtitleConfiguration(Builder builder) {
            this.f13867a = builder.f13872a;
            this.f13868b = builder.f13873b;
            this.f13869c = builder.f13874c;
            this.d = builder.d;
            this.f13870e = builder.f13875e;
            this.f13871f = builder.f13876f;
            this.g = builder.g;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SubtitleConfiguration)) {
                return false;
            }
            SubtitleConfiguration subtitleConfiguration = (SubtitleConfiguration) obj;
            return this.f13867a.equals(subtitleConfiguration.f13867a) && Objects.equals(this.f13868b, subtitleConfiguration.f13868b) && Objects.equals(this.f13869c, subtitleConfiguration.f13869c) && this.d == subtitleConfiguration.d && this.f13870e == subtitleConfiguration.f13870e && Objects.equals(this.f13871f, subtitleConfiguration.f13871f) && Objects.equals(this.g, subtitleConfiguration.g);
        }

        public final int hashCode() {
            int iHashCode = this.f13867a.hashCode() * 31;
            String str = this.f13868b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f13869c;
            int iHashCode3 = (((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.d) * 31) + this.f13870e) * 31;
            String str3 = this.f13871f;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.g;
            return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
        }

        public SubtitleConfiguration(Uri uri, String str, String str2, int i2, int i3, String str3) {
            this.f13867a = uri;
            this.f13868b = MimeTypes.p(str);
            this.f13869c = str2;
            this.d = i2;
            this.f13870e = i3;
            this.f13871f = str3;
            this.g = null;
        }
    }
}
