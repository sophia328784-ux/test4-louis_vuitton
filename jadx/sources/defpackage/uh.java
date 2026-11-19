package defpackage;

import android.hardware.Camera;
import android.net.Uri;
import android.os.Bundle;
import android.util.Size;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Label;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.StreamKey;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.Tracks;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.mp4.Track;
import com.google.common.base.Function;
import com.google.common.base.MoreObjects;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.Lists;
import com.google.common.collect.Ordering;
import com.google.common.collect.UnmodifiableListIterator;
import com.google.common.net.MediaType;
import com.vuitton.core.infrastructure.perfectcorp.PfCamera;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class uh implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80315b;

    public /* synthetic */ uh(FragmentedMp4Extractor fragmentedMp4Extractor) {
        this.f80315b = 4;
    }

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        ImmutableList immutableListJ;
        int i2 = 0;
        switch (this.f80315b) {
            case 0:
                return ((Extractor) obj).c().getClass().getSimpleName();
            case 1:
                Ordering ordering = CueGroup.f14111c;
                return Integer.valueOf(((Cue) obj).r);
            case 2:
                return new DefaultAnalyticsCollector((Clock) obj);
            case 3:
                Label label = (Label) obj;
                Format format = Format.R;
                return label.f13781a + ": " + label.f13782b;
            case 4:
                return (Track) obj;
            case 5:
                StreamKey streamKey = (StreamKey) obj;
                streamKey.getClass();
                Bundle bundle = new Bundle();
                int i3 = streamKey.f13943b;
                if (i3 != 0) {
                    bundle.putInt(StreamKey.f13941e, i3);
                }
                int i4 = streamKey.f13944c;
                if (i4 != 0) {
                    bundle.putInt(StreamKey.f13942f, i4);
                }
                int i5 = streamKey.d;
                if (i5 != 0) {
                    bundle.putInt(StreamKey.g, i5);
                }
                return bundle;
            case 6:
                MediaItem.SubtitleConfiguration subtitleConfiguration = (MediaItem.SubtitleConfiguration) obj;
                subtitleConfiguration.getClass();
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable(MediaItem.SubtitleConfiguration.f13863h, subtitleConfiguration.f13867a);
                String str = subtitleConfiguration.f13868b;
                if (str != null) {
                    bundle2.putString(MediaItem.SubtitleConfiguration.f13864i, str);
                }
                String str2 = subtitleConfiguration.f13869c;
                if (str2 != null) {
                    bundle2.putString(MediaItem.SubtitleConfiguration.f13865j, str2);
                }
                int i6 = subtitleConfiguration.d;
                if (i6 != 0) {
                    bundle2.putInt(MediaItem.SubtitleConfiguration.f13866k, i6);
                }
                int i7 = subtitleConfiguration.f13870e;
                if (i7 != 0) {
                    bundle2.putInt(MediaItem.SubtitleConfiguration.l, i7);
                }
                String str3 = subtitleConfiguration.f13871f;
                if (str3 != null) {
                    bundle2.putString(MediaItem.SubtitleConfiguration.m, str3);
                }
                String str4 = subtitleConfiguration.g;
                if (str4 != null) {
                    bundle2.putString(MediaItem.SubtitleConfiguration.n, str4);
                }
                return bundle2;
            case 7:
                Bundle bundle3 = (Bundle) obj;
                Uri uri = (Uri) bundle3.getParcelable(MediaItem.SubtitleConfiguration.f13863h);
                uri.getClass();
                String string = bundle3.getString(MediaItem.SubtitleConfiguration.f13864i);
                String string2 = bundle3.getString(MediaItem.SubtitleConfiguration.f13865j);
                int i8 = bundle3.getInt(MediaItem.SubtitleConfiguration.f13866k, 0);
                int i9 = bundle3.getInt(MediaItem.SubtitleConfiguration.l, 0);
                String string3 = bundle3.getString(MediaItem.SubtitleConfiguration.m);
                String string4 = bundle3.getString(MediaItem.SubtitleConfiguration.n);
                MediaItem.SubtitleConfiguration.Builder builder = new MediaItem.SubtitleConfiguration.Builder(uri);
                builder.f13873b = MimeTypes.p(string);
                builder.f13874c = string2;
                builder.d = i8;
                builder.f13875e = i9;
                builder.f13876f = string3;
                builder.g = string4;
                return new MediaItem.SubtitleConfiguration(builder);
            case 8:
                String str5 = (String) obj;
                if (MediaType.g.k(str5) && !str5.isEmpty()) {
                    return str5;
                }
                StringBuilder sb = new StringBuilder(str5.length() + 16);
                sb.append('\"');
                while (i2 < str5.length()) {
                    char cCharAt = str5.charAt(i2);
                    if (cCharAt == '\r' || cCharAt == '\\' || cCharAt == '\"') {
                        sb.append('\\');
                    }
                    sb.append(cCharAt);
                    i2++;
                }
                sb.append('\"');
                return sb.toString();
            case 9:
                return ImmutableMultiset.q((Collection) obj);
            case 10:
                return ImmutableList.t(Lists.d(new uh(15), ((MediaPeriod) obj).p().f15637b));
            case 11:
                Track track = (Track) obj;
                int i10 = Mp4Extractor.G;
                return track;
            case 12:
                Camera.Size size = (Camera.Size) obj;
                return new PfCamera.Size(size.width, size.height);
            case 13:
                Size size2 = (Size) obj;
                return new PfCamera.Size(size2.getWidth(), size2.getHeight());
            case 14:
                Bundle bundle4 = (Bundle) obj;
                Format format2 = Format.R;
                Format.Builder builder2 = new Format.Builder();
                if (bundle4 != null) {
                    ClassLoader classLoader = BundleCollectionUtil.class.getClassLoader();
                    String str6 = Util.f14242a;
                    bundle4.setClassLoader(classLoader);
                }
                String string5 = bundle4.getString(Format.S);
                String str7 = format2.f13755a;
                if (string5 == null) {
                    string5 = str7;
                }
                builder2.f13764a = string5;
                String string6 = bundle4.getString(Format.T);
                String str8 = format2.f13756b;
                if (string6 == null) {
                    string6 = str8;
                }
                builder2.f13765b = string6;
                ArrayList parcelableArrayList = bundle4.getParcelableArrayList(Format.x0);
                if (parcelableArrayList == null) {
                    immutableListJ = ImmutableList.x();
                } else {
                    UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                    ImmutableList.Builder builder3 = new ImmutableList.Builder();
                    for (int i11 = 0; i11 < parcelableArrayList.size(); i11++) {
                        Bundle bundle5 = (Bundle) parcelableArrayList.get(i11);
                        bundle5.getClass();
                        String string7 = bundle5.getString(Label.f13780c);
                        String string8 = bundle5.getString(Label.d);
                        string8.getClass();
                        builder3.e(new Label(string7, string8));
                    }
                    immutableListJ = builder3.j();
                }
                builder2.f13766c = ImmutableList.t(immutableListJ);
                String string9 = bundle4.getString(Format.U);
                String str9 = format2.d;
                if (string9 == null) {
                    string9 = str9;
                }
                builder2.d = string9;
                builder2.f13767e = bundle4.getInt(Format.V, format2.f13758e);
                builder2.f13768f = bundle4.getInt(Format.W, format2.f13759f);
                builder2.g = bundle4.getInt(Format.y0, format2.g);
                builder2.f13769h = bundle4.getInt(Format.X, format2.f13760h);
                builder2.f13770i = bundle4.getInt(Format.Y, format2.f13761i);
                String string10 = bundle4.getString(Format.Z);
                String str10 = format2.f13763k;
                if (string10 == null) {
                    string10 = str10;
                }
                builder2.f13771j = string10;
                String string11 = bundle4.getString(Format.C0);
                String str11 = format2.m;
                if (string11 == null) {
                    string11 = str11;
                }
                builder2.l = string11;
                String string12 = bundle4.getString(Format.a0);
                String str12 = format2.n;
                if (string12 == null) {
                    string12 = str12;
                }
                builder2.m = MimeTypes.p(string12);
                String string13 = bundle4.getString(Format.b0);
                String str13 = format2.o;
                if (string13 == null) {
                    string13 = str13;
                }
                builder2.n = MimeTypes.p(string13);
                builder2.o = bundle4.getInt(Format.c0, format2.p);
                ArrayList arrayList = new ArrayList();
                while (true) {
                    byte[] byteArray = bundle4.getByteArray(Format.d0 + "_" + Integer.toString(i2, 36));
                    if (byteArray == null) {
                        builder2.q = arrayList;
                        builder2.r = (DrmInitData) bundle4.getParcelable(Format.e0);
                        builder2.s = bundle4.getLong(Format.f0, format2.t);
                        builder2.u = bundle4.getInt(Format.g0, format2.v);
                        builder2.v = bundle4.getInt(Format.h0, format2.w);
                        builder2.w = bundle4.getInt(Format.A0, format2.x);
                        builder2.x = bundle4.getInt(Format.B0, format2.y);
                        builder2.y = bundle4.getFloat(Format.i0, format2.z);
                        builder2.z = bundle4.getInt(Format.j0, format2.A);
                        builder2.A = bundle4.getFloat(Format.k0, format2.B);
                        builder2.B = bundle4.getByteArray(Format.l0);
                        builder2.C = bundle4.getInt(Format.m0, format2.D);
                        builder2.E = bundle4.getInt(Format.z0, format2.F);
                        Bundle bundle6 = bundle4.getBundle(Format.n0);
                        if (bundle6 != null) {
                            builder2.D = new ColorInfo(bundle6.getByteArray(ColorInfo.l), bundle6.getInt(ColorInfo.f13722i, -1), bundle6.getInt(ColorInfo.f13723j, -1), bundle6.getInt(ColorInfo.f13724k, -1), bundle6.getInt(ColorInfo.m, -1), bundle6.getInt(ColorInfo.n, -1));
                        }
                        builder2.F = bundle4.getInt(Format.o0, format2.G);
                        builder2.G = bundle4.getInt(Format.p0, format2.H);
                        builder2.H = bundle4.getInt(Format.q0, format2.I);
                        builder2.I = bundle4.getInt(Format.r0, format2.J);
                        builder2.J = bundle4.getInt(Format.s0, format2.K);
                        builder2.K = bundle4.getInt(Format.t0, format2.L);
                        builder2.M = bundle4.getInt(Format.v0, format2.N);
                        builder2.N = bundle4.getInt(Format.w0, format2.O);
                        builder2.O = bundle4.getInt(Format.u0, format2.P);
                        return new Format(builder2);
                    }
                    arrayList.add(byteArray);
                    i2++;
                }
                break;
            case 15:
                TrackGroupArray trackGroupArray = TrackGroupArray.d;
                return Integer.valueOf(((TrackGroup) obj).f13979c);
            case 16:
                Tracks.Group group = (Tracks.Group) obj;
                group.getClass();
                Bundle bundle7 = new Bundle();
                bundle7.putBundle(Tracks.Group.f14013f, group.f14017b.d());
                bundle7.putIntArray(Tracks.Group.g, group.d);
                bundle7.putBooleanArray(Tracks.Group.f14014h, group.f14019e);
                bundle7.putBoolean(Tracks.Group.f14015i, group.f14018c);
                return bundle7;
            default:
                Bundle bundle8 = (Bundle) obj;
                Bundle bundle9 = bundle8.getBundle(Tracks.Group.f14013f);
                bundle9.getClass();
                TrackGroup trackGroupA = TrackGroup.a(bundle9);
                int[] intArray = bundle8.getIntArray(Tracks.Group.g);
                int i12 = trackGroupA.f13977a;
                return new Tracks.Group(trackGroupA, bundle8.getBoolean(Tracks.Group.f14015i, false), (int[]) MoreObjects.a(intArray, new int[i12]), (boolean[]) MoreObjects.a(bundle8.getBooleanArray(Tracks.Group.f14014h), new boolean[i12]));
        }
    }

    public /* synthetic */ uh(int i2) {
        this.f80315b = i2;
    }
}
