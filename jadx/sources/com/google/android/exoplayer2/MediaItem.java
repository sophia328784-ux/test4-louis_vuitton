package com.google.android.exoplayer2;

import android.net.Uri;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.tr;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class MediaItem implements Bundleable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LocalConfiguration f28153c;
    public final LiveConfiguration d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MediaMetadata f28154e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ClippingProperties f28155f;
    public final RequestMetadata g;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f28156a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Uri f28157b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ClippingConfiguration.Builder f28158c = new ClippingConfiguration.Builder();
        public final DrmConfiguration.Builder d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f28159e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ImmutableList f28160f;
        public final LiveConfiguration.Builder g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final RequestMetadata f28161h;

        public Builder() {
            DrmConfiguration.Builder builder = new DrmConfiguration.Builder();
            builder.f28165b = ImmutableMap.h();
            builder.f28166c = ImmutableList.x();
            this.d = builder;
            this.f28159e = Collections.EMPTY_LIST;
            this.f28160f = ImmutableList.x();
            this.g = new LiveConfiguration.Builder();
            this.f28161h = RequestMetadata.f28174b;
        }

        public final MediaItem a() {
            LocalConfiguration localConfiguration;
            DrmConfiguration.Builder builder = this.d;
            builder.getClass();
            Uri uri = this.f28157b;
            if (uri != null) {
                localConfiguration = new LocalConfiguration(uri, builder.f28164a != null ? new DrmConfiguration(builder) : null, this.f28159e, this.f28160f);
            } else {
                localConfiguration = null;
            }
            String str = this.f28156a;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            this.f28158c.getClass();
            ClippingProperties clippingProperties = new ClippingProperties();
            this.g.getClass();
            return new MediaItem(str2, clippingProperties, localConfiguration, new LiveConfiguration(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, -3.4028235E38f, -3.4028235E38f), MediaMetadata.f28184b, this.f28161h);
        }
    }

    public static class ClippingConfiguration implements Bundleable {

        public static final class Builder {
        }

        static {
            new Builder();
            Util.e(0);
            Util.e(1);
            Util.e(2);
            Util.e(3);
            Util.e(4);
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ClippingConfiguration);
        }

        public final int hashCode() {
            return Integer.MIN_VALUE;
        }
    }

    @Deprecated
    public static final class ClippingProperties extends ClippingConfiguration {
        static {
            new ClippingConfiguration.Builder();
        }
    }

    public static final class DrmConfiguration implements Bundleable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final UUID f28162b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImmutableMap f28163c;
        public final ImmutableList d;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final UUID f28164a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public ImmutableMap f28165b = ImmutableMap.h();

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public ImmutableList f28166c = ImmutableList.x();

            public Builder(UUID uuid) {
                this.f28164a = uuid;
            }
        }

        static {
            tr.v(0, 1, 2, 3, 4);
            Util.e(5);
            Util.e(6);
            Util.e(7);
        }

        public DrmConfiguration(Builder builder) {
            builder.getClass();
            UUID uuid = builder.f28164a;
            uuid.getClass();
            this.f28162b = uuid;
            this.f28163c = builder.f28165b;
            this.d = builder.f28166c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DrmConfiguration)) {
                return false;
            }
            DrmConfiguration drmConfiguration = (DrmConfiguration) obj;
            return this.f28162b.equals(drmConfiguration.f28162b) && Util.a(this.f28163c, drmConfiguration.f28163c) && this.d.equals(drmConfiguration.d) && Arrays.equals((byte[]) null, (byte[]) null);
        }

        public final int hashCode() {
            return Arrays.hashCode((byte[]) null) + ((this.d.hashCode() + ((this.f28163c.hashCode() + (this.f28162b.hashCode() * 961)) * 923521)) * 31);
        }
    }

    public static final class LiveConfiguration implements Bundleable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f28167b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f28168c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f28169e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float f28170f;

        public static final class Builder {
        }

        static {
            new Builder();
            new LiveConfiguration(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, -3.4028235E38f, -3.4028235E38f);
            tr.v(0, 1, 2, 3, 4);
        }

        @Deprecated
        public LiveConfiguration(long j2, long j3, long j4, float f2, float f3) {
            this.f28167b = j2;
            this.f28168c = j3;
            this.d = j4;
            this.f28169e = f2;
            this.f28170f = f3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LiveConfiguration)) {
                return false;
            }
            LiveConfiguration liveConfiguration = (LiveConfiguration) obj;
            return this.f28167b == liveConfiguration.f28167b && this.f28168c == liveConfiguration.f28168c && this.d == liveConfiguration.d && this.f28169e == liveConfiguration.f28169e && this.f28170f == liveConfiguration.f28170f;
        }

        public final int hashCode() {
            long j2 = this.f28167b;
            long j3 = this.f28168c;
            int i2 = ((((int) (j2 ^ (j2 >>> 32))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31;
            long j4 = this.d;
            int i3 = (i2 + ((int) ((j4 >>> 32) ^ j4))) * 31;
            float f2 = this.f28169e;
            int iFloatToIntBits = (i3 + (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? Float.floatToIntBits(f2) : 0)) * 31;
            float f3 = this.f28170f;
            return iFloatToIntBits + (f3 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? Float.floatToIntBits(f3) : 0);
        }
    }

    public static final class LocalConfiguration implements Bundleable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f28171b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final DrmConfiguration f28172c;
        public final List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ImmutableList f28173e;

        static {
            tr.v(0, 1, 2, 3, 4);
            Util.e(5);
            Util.e(6);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public LocalConfiguration(Uri uri, DrmConfiguration drmConfiguration, List list, ImmutableList immutableList) {
            this.f28171b = uri;
            this.f28172c = drmConfiguration;
            this.d = list;
            this.f28173e = immutableList;
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            for (int i2 = 0; i2 < immutableList.size(); i2++) {
                SubtitleConfiguration subtitleConfiguration = (SubtitleConfiguration) immutableList.get(i2);
                SubtitleConfiguration.Builder builder2 = new SubtitleConfiguration.Builder();
                builder2.f28179a = subtitleConfiguration.f28175b;
                builder2.f28180b = subtitleConfiguration.f28176c;
                builder2.f28181c = subtitleConfiguration.d;
                builder2.d = subtitleConfiguration.f28177e;
                builder2.f28182e = subtitleConfiguration.f28178f;
                builder2.f28183f = subtitleConfiguration.g;
                builder.e(new Subtitle(builder2));
            }
            builder.j();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LocalConfiguration)) {
                return false;
            }
            LocalConfiguration localConfiguration = (LocalConfiguration) obj;
            return this.f28171b.equals(localConfiguration.f28171b) && Util.a(this.f28172c, localConfiguration.f28172c) && this.d.equals(localConfiguration.d) && this.f28173e.equals(localConfiguration.f28173e);
        }

        public final int hashCode() {
            int iHashCode = this.f28171b.hashCode() * 961;
            DrmConfiguration drmConfiguration = this.f28172c;
            return (this.f28173e.hashCode() + ((this.d.hashCode() + ((iHashCode + (drmConfiguration == null ? 0 : drmConfiguration.hashCode())) * 961)) * 961)) * 31;
        }
    }

    public static final class RequestMetadata implements Bundleable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final RequestMetadata f28174b;

        public static final class Builder {
        }

        static {
            new Builder();
            f28174b = new RequestMetadata();
            Util.e(0);
            Util.e(1);
            Util.e(2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RequestMetadata)) {
                return false;
            }
            int i2 = Util.f28451a;
            return true;
        }

        public final int hashCode() {
            return 0;
        }
    }

    static {
        new Builder().a();
        Util.e(0);
        Util.e(1);
        Util.e(2);
        Util.e(3);
        Util.e(4);
        Util.e(5);
    }

    public MediaItem(String str, ClippingProperties clippingProperties, LocalConfiguration localConfiguration, LiveConfiguration liveConfiguration, MediaMetadata mediaMetadata, RequestMetadata requestMetadata) {
        this.f28152b = str;
        this.f28153c = localConfiguration;
        this.d = liveConfiguration;
        this.f28154e = mediaMetadata;
        this.f28155f = clippingProperties;
        this.g = requestMetadata;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaItem)) {
            return false;
        }
        MediaItem mediaItem = (MediaItem) obj;
        return Util.a(this.f28152b, mediaItem.f28152b) && this.f28155f.equals(mediaItem.f28155f) && Util.a(this.f28153c, mediaItem.f28153c) && this.d.equals(mediaItem.d) && Util.a(this.f28154e, mediaItem.f28154e) && Util.a(this.g, mediaItem.g);
    }

    public final int hashCode() {
        int iHashCode = this.f28152b.hashCode() * 31;
        LocalConfiguration localConfiguration = this.f28153c;
        int iHashCode2 = (this.f28154e.hashCode() + ((((this.d.hashCode() + ((iHashCode + (localConfiguration != null ? localConfiguration.hashCode() : 0)) * 31)) * 31) - Integer.MIN_VALUE) * 31)) * 31;
        this.g.getClass();
        return iHashCode2;
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

    public static class SubtitleConfiguration implements Bundleable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f28175b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f28176c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f28177e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f28178f;
        public final String g;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public Uri f28179a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f28180b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f28181c;
            public int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f28182e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f28183f;

            public Builder(Uri uri) {
                this.f28179a = uri;
            }
        }

        static {
            tr.v(0, 1, 2, 3, 4);
            Util.e(5);
            Util.e(6);
        }

        public SubtitleConfiguration(Builder builder) {
            this.f28175b = builder.f28179a;
            this.f28176c = builder.f28180b;
            this.d = builder.f28181c;
            this.f28177e = builder.d;
            this.f28178f = builder.f28182e;
            this.g = builder.f28183f;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SubtitleConfiguration)) {
                return false;
            }
            SubtitleConfiguration subtitleConfiguration = (SubtitleConfiguration) obj;
            return this.f28175b.equals(subtitleConfiguration.f28175b) && Util.a(this.f28176c, subtitleConfiguration.f28176c) && Util.a(this.d, subtitleConfiguration.d) && this.f28177e == subtitleConfiguration.f28177e && this.f28178f == subtitleConfiguration.f28178f && Util.a(this.g, subtitleConfiguration.g);
        }

        public final int hashCode() {
            int iHashCode = this.f28175b.hashCode() * 31;
            String str = this.f28176c;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.d;
            int iHashCode3 = (((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f28177e) * 31) + this.f28178f) * 31;
            String str3 = this.g;
            return (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        }

        public SubtitleConfiguration(Uri uri, String str, String str2, int i2, int i3, String str3) {
            this.f28175b = uri;
            this.f28176c = str;
            this.d = str2;
            this.f28177e = i2;
            this.f28178f = i3;
            this.g = str3;
        }
    }
}
