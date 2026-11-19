package androidx.media3.exoplayer.trackselection;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.accessibility.CaptioningManager;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.Label;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.RendererConfiguration;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.util.SpatializerWrapper;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.ComparisonChain;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Ordering;
import com.google.common.collect.UnmodifiableListIterator;
import com.google.common.primitives.Ints;
import defpackage.et;
import defpackage.x5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
public class DefaultTrackSelector extends MappingTrackSelector implements RendererCapabilities.Listener {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Ordering f15687k = Ordering.b(new x5(7));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f15688c;
    public final Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ExoTrackSelection.Factory f15689e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Parameters f15690f;
    public Thread g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SpatializerWrapper f15691h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AudioAttributes f15692i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Boolean f15693j;

    public static final class AudioTrackInfo extends TrackInfo<AudioTrackInfo> implements Comparable<AudioTrackInfo> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f15694f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f15695h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Parameters f15696i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f15697j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f15698k;
        public final int l;
        public final int m;
        public final int n;
        public final boolean o;
        public final boolean p;
        public final int q;
        public final int r;
        public final boolean s;
        public final int t;
        public final int u;
        public final int v;
        public final int w;
        public final boolean x;
        public final boolean y;
        public final boolean z;

        /* JADX WARN: Code duplicated, block: B:120:0x0190  */
        /* JADX WARN: Code duplicated, block: B:49:0x00b1  */
        /* JADX WARN: Code duplicated, block: B:85:0x013a  */
        /* JADX WARN: Code duplicated, block: B:86:0x013c  */
        /* JADX WARN: Code duplicated, block: B:89:0x0145  */
        /* JADX WARN: Code duplicated, block: B:90:0x0147  */
        /* JADX WARN: Multi-variable type inference failed */
        public AudioTrackInfo(int i2, TrackGroup trackGroup, int i3, Parameters parameters, int i4, boolean z, Predicate<Format> predicate, int i5) {
            int i6;
            int iP;
            boolean z2;
            int iP2;
            boolean z3;
            boolean z4;
            boolean z5;
            super(i2, trackGroup, i3);
            this.f15696i = parameters;
            boolean z6 = parameters.z0;
            ImmutableList immutableList = parameters.v;
            ImmutableList immutableList2 = parameters.q;
            int i7 = z6 ? 24 : 16;
            int i8 = 0;
            this.o = false;
            this.f15695h = DefaultTrackSelector.r(this.f15714e.d);
            this.f15697j = RendererCapabilities.k(i4, false);
            int i9 = 0;
            while (true) {
                i6 = Integer.MAX_VALUE;
                if (i9 >= immutableList2.size()) {
                    iP = 0;
                    i9 = Integer.MAX_VALUE;
                    break;
                } else {
                    iP = DefaultTrackSelector.p(this.f15714e, (String) immutableList2.get(i9), false);
                    if (iP > 0) {
                        break;
                    } else {
                        i9++;
                    }
                }
            }
            this.l = i9;
            this.f15698k = iP;
            int i10 = this.f15714e.f13759f;
            int i11 = parameters.s;
            this.m = (i10 == 0 || i10 != i11) ? Integer.bitCount(i10 & i11) : Integer.MAX_VALUE;
            this.n = DefaultTrackSelector.j(this.f15714e, parameters.r);
            Format format = this.f15714e;
            int i12 = format.f13759f;
            this.p = i12 == 0 || (i12 & 1) != 0;
            this.s = (format.f13758e & 1) != 0;
            String str = format.o;
            if (str != null) {
                switch (str) {
                    case "audio/eac3-joc":
                    case "audio/ac4":
                    case "audio/iamf":
                        z2 = true;
                        break;
                    default:
                        z2 = false;
                        break;
                }
            } else {
                z2 = false;
            }
            this.z = z2;
            int i13 = format.G;
            this.t = i13;
            this.u = format.H;
            int i14 = format.f13762j;
            this.v = i14;
            this.g = (i14 == -1 || i14 <= parameters.u) && (i13 == -1 || i13 <= parameters.t) && predicate.apply(format);
            String[] strArrSplit = Resources.getSystem().getConfiguration().getLocales().toLanguageTags().split(",", -1);
            for (int i15 = 0; i15 < strArrSplit.length; i15++) {
                strArrSplit[i15] = Util.S(strArrSplit[i15]);
            }
            int i16 = 0;
            while (true) {
                if (i16 < strArrSplit.length) {
                    iP2 = DefaultTrackSelector.p(this.f15714e, strArrSplit[i16], false);
                    if (iP2 <= 0) {
                        i16++;
                    }
                } else {
                    iP2 = 0;
                    i16 = Integer.MAX_VALUE;
                }
            }
            this.q = i16;
            this.r = iP2;
            for (int i17 = 0; i17 < immutableList.size(); i17++) {
                String str2 = this.f15714e.o;
                if (str2 != null && str2.equals(immutableList.get(i17))) {
                    i6 = i17;
                    this.w = i6;
                    if ((i4 & KyberEngine.KyberPolyBytes) == 128) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    this.x = z3;
                    if ((i4 & 64) == 64) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    this.y = z4;
                    Format format2 = this.f15714e;
                    boolean z7 = this.g;
                    Parameters parameters2 = this.f15696i;
                    z5 = parameters2.B0;
                    TrackSelectionParameters.AudioOffloadPreferences audioOffloadPreferences = parameters2.w;
                    if (RendererCapabilities.k(i4, z5) && ((z7 || parameters2.y0) && (audioOffloadPreferences.f13995a != 2 || DefaultTrackSelector.s(parameters2, i4, format2)))) {
                        if (RendererCapabilities.k(i4, false) || !z7 || format2.f13762j == -1 || parameters2.G || parameters2.F || ((!parameters2.C0 && z) || audioOffloadPreferences.f13995a == 2 || (i7 & i4) == 0)) {
                            i8 = 1;
                        } else {
                            i8 = 2;
                        }
                    }
                    this.f15694f = i8;
                }
            }
            this.w = i6;
            if ((i4 & KyberEngine.KyberPolyBytes) == 128) {
                z3 = true;
            } else {
                z3 = false;
            }
            this.x = z3;
            if ((i4 & 64) == 64) {
                z4 = true;
            } else {
                z4 = false;
            }
            this.y = z4;
            Format format3 = this.f15714e;
            boolean z8 = this.g;
            Parameters parameters3 = this.f15696i;
            z5 = parameters3.B0;
            TrackSelectionParameters.AudioOffloadPreferences audioOffloadPreferences2 = parameters3.w;
            if (RendererCapabilities.k(i4, z5)) {
                if (RendererCapabilities.k(i4, false)) {
                    i8 = 1;
                } else {
                    i8 = 1;
                }
            }
            this.f15694f = i8;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final int a() {
            return this.f15694f;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final boolean b(TrackInfo trackInfo) {
            int i2;
            String str;
            AudioTrackInfo audioTrackInfo = (AudioTrackInfo) trackInfo;
            Format format = audioTrackInfo.f15714e;
            this.f15696i.getClass();
            Format format2 = this.f15714e;
            int i3 = format2.G;
            if (i3 == -1 || i3 != format.G) {
                return false;
            }
            return (this.o || ((str = format2.o) != null && TextUtils.equals(str, format.o))) && (i2 = format2.H) != -1 && i2 == format.H && this.x == audioTrackInfo.x && this.y == audioTrackInfo.y;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final int compareTo(AudioTrackInfo audioTrackInfo) {
            boolean z = this.f15697j;
            boolean z2 = this.g;
            Ordering orderingE = (z2 && z) ? DefaultTrackSelector.f15687k : DefaultTrackSelector.f15687k.e();
            boolean z3 = audioTrackInfo.f15697j;
            int i2 = audioTrackInfo.v;
            ComparisonChain comparisonChainB = ComparisonChain.f33575a.c(z, z3).b(Integer.valueOf(this.l), Integer.valueOf(audioTrackInfo.l), Ordering.c().e()).a(this.f15698k, audioTrackInfo.f15698k).a(this.m, audioTrackInfo.m).b(Integer.valueOf(this.n), Integer.valueOf(audioTrackInfo.n), Ordering.c().e()).c(this.s, audioTrackInfo.s).c(this.p, audioTrackInfo.p).b(Integer.valueOf(this.q), Integer.valueOf(audioTrackInfo.q), Ordering.c().e()).a(this.r, audioTrackInfo.r).c(z2, audioTrackInfo.g).b(Integer.valueOf(this.w), Integer.valueOf(audioTrackInfo.w), Ordering.c().e());
            boolean z4 = this.f15696i.F;
            int i3 = this.v;
            if (z4) {
                comparisonChainB = comparisonChainB.b(Integer.valueOf(i3), Integer.valueOf(i2), DefaultTrackSelector.f15687k.e());
            }
            ComparisonChain comparisonChainB2 = comparisonChainB.c(this.x, audioTrackInfo.x).c(this.y, audioTrackInfo.y).c(this.z, audioTrackInfo.z).b(Integer.valueOf(this.t), Integer.valueOf(audioTrackInfo.t), orderingE).b(Integer.valueOf(this.u), Integer.valueOf(audioTrackInfo.u), orderingE);
            if (Objects.equals(this.f15695h, audioTrackInfo.f15695h)) {
                comparisonChainB2 = comparisonChainB2.b(Integer.valueOf(i3), Integer.valueOf(i2), orderingE);
            }
            return comparisonChainB2.e();
        }
    }

    public static final class ImageTrackInfo extends TrackInfo<ImageTrackInfo> implements Comparable<ImageTrackInfo> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f15699f;
        public final int g;

        public ImageTrackInfo(int i2, TrackGroup trackGroup, int i3, Parameters parameters, int i4) {
            int i5;
            super(i2, trackGroup, i3);
            this.f15699f = RendererCapabilities.k(i4, parameters.B0) ? 1 : 0;
            Format format = this.f15714e;
            int i6 = format.v;
            int i7 = -1;
            if (i6 != -1 && (i5 = format.w) != -1) {
                i7 = i6 * i5;
            }
            this.g = i7;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final int a() {
            return this.f15699f;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final /* bridge */ /* synthetic */ boolean b(TrackInfo trackInfo) {
            return false;
        }

        @Override // java.lang.Comparable
        public final int compareTo(ImageTrackInfo imageTrackInfo) {
            return Integer.compare(this.g, imageTrackInfo.g);
        }
    }

    public static final class OtherTrackScore implements Comparable<OtherTrackScore> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f15700b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f15701c;

        public OtherTrackScore(Format format, int i2) {
            this.f15700b = (format.f13758e & 1) != 0;
            this.f15701c = RendererCapabilities.k(i2, false);
        }

        @Override // java.lang.Comparable
        public final int compareTo(OtherTrackScore otherTrackScore) {
            OtherTrackScore otherTrackScore2 = otherTrackScore;
            return ComparisonChain.f33575a.c(this.f15701c, otherTrackScore2.f15701c).c(this.f15700b, otherTrackScore2.f15700b).e();
        }
    }

    public static final class TextTrackInfo extends TrackInfo<TextTrackInfo> implements Comparable<TextTrackInfo> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f15707f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f15708h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f15709i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f15710j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f15711k;
        public final int l;
        public final int m;
        public final int n;
        public final boolean o;

        /* JADX WARN: Multi-variable type inference failed */
        public TextTrackInfo(int i2, TrackGroup trackGroup, int i3, Parameters parameters, int i4, String str, String str2) {
            int iP;
            super(i2, trackGroup, i3);
            int i5 = 0;
            this.g = RendererCapabilities.k(i4, false);
            int i6 = this.f15714e.f13758e;
            int i7 = parameters.C;
            ImmutableList immutableList = parameters.y;
            int i8 = i6 & (~i7);
            this.f15708h = (i8 & 1) != 0;
            this.f15709i = (i8 & 2) != 0;
            ImmutableList immutableListA = str2 != null ? ImmutableList.A(str2) : immutableList.isEmpty() ? ImmutableList.A("") : immutableList;
            int i9 = 0;
            while (true) {
                if (i9 >= immutableListA.size()) {
                    iP = 0;
                    i9 = Integer.MAX_VALUE;
                    break;
                } else {
                    iP = DefaultTrackSelector.p(this.f15714e, (String) immutableListA.get(i9), parameters.D);
                    if (iP > 0) {
                        break;
                    } else {
                        i9++;
                    }
                }
            }
            this.f15710j = i9;
            this.f15711k = iP;
            int i10 = str2 != null ? 1088 : parameters.A;
            int i11 = this.f15714e.f13759f;
            Ordering ordering = DefaultTrackSelector.f15687k;
            int iBitCount = (i11 == 0 || i11 != i10) ? Integer.bitCount(i10 & i11) : Integer.MAX_VALUE;
            this.l = iBitCount;
            Format format = this.f15714e;
            this.o = (1088 & format.f13759f) != 0;
            int iJ = DefaultTrackSelector.j(format, parameters.z);
            this.m = iJ;
            int iP2 = DefaultTrackSelector.p(this.f15714e, str, DefaultTrackSelector.r(str) == null);
            this.n = iP2;
            boolean z = iP > 0 || (immutableList.isEmpty() && iBitCount > 0) || ((immutableList.isEmpty() && iJ != Integer.MAX_VALUE) || this.f15708h || ((this.f15709i && iP2 > 0) || parameters.x));
            if (RendererCapabilities.k(i4, parameters.B0) && z) {
                i5 = 1;
            }
            this.f15707f = i5;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final int a() {
            return this.f15707f;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final /* bridge */ /* synthetic */ boolean b(TrackInfo trackInfo) {
            return false;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final int compareTo(TextTrackInfo textTrackInfo) {
            ComparisonChain comparisonChainB = ComparisonChain.f33575a.c(this.g, textTrackInfo.g).b(Integer.valueOf(this.f15710j), Integer.valueOf(textTrackInfo.f15710j), Ordering.c().e());
            int i2 = textTrackInfo.f15711k;
            int i3 = this.f15711k;
            ComparisonChain comparisonChainA = comparisonChainB.a(i3, i2);
            int i4 = textTrackInfo.l;
            int i5 = this.l;
            ComparisonChain comparisonChainA2 = comparisonChainA.a(i5, i4).b(Integer.valueOf(this.m), Integer.valueOf(textTrackInfo.m), Ordering.c().e()).c(this.f15708h, textTrackInfo.f15708h).b(Boolean.valueOf(this.f15709i), Boolean.valueOf(textTrackInfo.f15709i), i3 == 0 ? Ordering.c() : Ordering.c().e()).a(this.n, textTrackInfo.n);
            if (i5 == 0) {
                comparisonChainA2 = comparisonChainA2.d(this.o, textTrackInfo.o);
            }
            return comparisonChainA2.e();
        }
    }

    public static abstract class TrackInfo<T extends TrackInfo<T>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f15712b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final TrackGroup f15713c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Format f15714e;

        public interface Factory<T extends TrackInfo<T>> {
            List a(TrackGroup trackGroup, int[] iArr, int i2);
        }

        public TrackInfo(int i2, TrackGroup trackGroup, int i3) {
            this.f15712b = i2;
            this.f15713c = trackGroup;
            this.d = i3;
            this.f15714e = trackGroup.d[i3];
        }

        public abstract int a();

        public abstract boolean b(TrackInfo trackInfo);
    }

    public static final class VideoTrackInfo extends TrackInfo<VideoTrackInfo> {
        public final String A;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f15715f;
        public final Parameters g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f15716h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f15717i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f15718j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f15719k;
        public final int l;
        public final int m;
        public final int n;
        public final int o;
        public final int p;
        public final int q;
        public final boolean r;
        public final int s;
        public final boolean t;
        public final int u;
        public final boolean v;
        public final boolean w;
        public final boolean x;
        public final int y;
        public final boolean z;

        /* JADX WARN: Code duplicated, block: B:137:0x0194  */
        /* JADX WARN: Code duplicated, block: B:25:0x0044  */
        /* JADX WARN: Code duplicated, block: B:45:0x0072  */
        /* JADX WARN: Multi-variable type inference failed */
        public VideoTrackInfo(int i2, TrackGroup trackGroup, int i3, Parameters parameters, int i4, String str, int i5, boolean z) {
            boolean z2;
            boolean z3;
            int i6;
            int iP;
            int i7;
            boolean z4;
            String strC;
            int i8;
            Format format;
            int i9;
            int i10;
            int i11;
            Format format2;
            int i12;
            int i13;
            int i14;
            super(i2, trackGroup, i3);
            this.g = parameters;
            boolean z5 = parameters.x0;
            ImmutableList immutableList = parameters.m;
            ImmutableList immutableList2 = parameters.o;
            int i15 = z5 ? 24 : 16;
            int i16 = 0;
            this.t = false;
            if (!z || (((i12 = (format2 = this.f15714e).v) != -1 && i12 > parameters.f13984a) || ((i13 = format2.w) != -1 && i13 > parameters.f13985b))) {
                z2 = false;
            } else {
                float f2 = format2.z;
                if ((f2 == -1.0f || f2 <= parameters.f13986c) && ((i14 = format2.f13762j) == -1 || i14 <= parameters.d)) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            }
            this.f15715f = z2;
            if (!z || (((i9 = (format = this.f15714e).v) != -1 && i9 < parameters.f13987e) || ((i10 = format.w) != -1 && i10 < parameters.f13988f))) {
                z3 = false;
            } else {
                float f3 = format.z;
                if ((f3 == -1.0f || f3 >= parameters.g) && ((i11 = format.f13762j) == -1 || i11 >= parameters.f13989h)) {
                    z3 = true;
                } else {
                    z3 = false;
                }
            }
            this.f15716h = z3;
            this.f15717i = RendererCapabilities.k(i4, false);
            Format format3 = this.f15714e;
            float f4 = format3.z;
            this.f15718j = f4 != -1.0f && f4 >= 10.0f;
            this.f15719k = format3.f13762j;
            int i17 = format3.v;
            this.l = (i17 == -1 || (i8 = format3.w) == -1) ? -1 : i17 * i8;
            int i18 = 0;
            while (true) {
                i6 = Integer.MAX_VALUE;
                if (i18 >= immutableList2.size()) {
                    iP = 0;
                    i18 = Integer.MAX_VALUE;
                    break;
                } else {
                    iP = DefaultTrackSelector.p(this.f15714e, (String) immutableList2.get(i18), false);
                    if (iP > 0) {
                        break;
                    } else {
                        i18++;
                    }
                }
            }
            this.n = i18;
            this.o = iP;
            int i19 = this.f15714e.f13759f;
            int i20 = parameters.p;
            Ordering ordering = DefaultTrackSelector.f15687k;
            this.p = (i19 == 0 || i19 != i20) ? Integer.bitCount(i19 & i20) : Integer.MAX_VALUE;
            int i21 = this.f15714e.f13759f;
            this.r = i21 == 0 || (i21 & 1) != 0;
            this.s = DefaultTrackSelector.p(this.f15714e, str, DefaultTrackSelector.r(str) == null);
            Format format4 = this.f15714e;
            String str2 = format4.o;
            int i22 = i4 & KyberEngine.KyberPolyBytes;
            if (i22 == 256 && (strC = MediaCodecUtil.c(format4)) != null) {
                str2 = strC;
            }
            for (int i23 = 0; i23 < immutableList.size(); i23++) {
                if (str2 != null && str2.equals(immutableList.get(i23))) {
                    i6 = i23;
                    break;
                }
            }
            this.m = i6;
            this.q = DefaultTrackSelector.j(this.f15714e, parameters.n);
            this.v = i22 == 128 || i22 == 256;
            boolean z6 = i22 == 128;
            this.w = z6;
            this.x = (i4 & 64) == 64;
            this.A = str2;
            if (str2 != null) {
                i7 = 4;
                switch (str2) {
                    case "video/dolby-vision":
                        i7 = 5;
                        break;
                    case "video/av01":
                        break;
                    case "video/hevc":
                        i7 = 3;
                        break;
                    case "video/avc":
                        i7 = 1;
                        break;
                    case "video/x-vnd.on2.vp9":
                        i7 = 2;
                        break;
                    default:
                        i7 = 0;
                        break;
                }
            } else {
                i7 = 0;
            }
            this.y = i7;
            if (z6) {
                ColorInfo colorInfo = this.f15714e.E;
                if (colorInfo != null) {
                    int i24 = colorInfo.f13727c;
                    z4 = (i24 == 7 || i24 == 6) ? true : z4;
                } else {
                    ColorInfo colorInfo2 = ColorInfo.f13721h;
                }
                z4 = false;
            } else {
                z4 = false;
            }
            this.z = z4;
            boolean z7 = this.f15715f;
            Parameters parameters2 = this.g;
            Format format5 = this.f15714e;
            if ((format5.f13759f & 16384) == 0 && RendererCapabilities.k(i4, parameters2.B0) && (z7 || parameters2.w0)) {
                i16 = (!RendererCapabilities.k(i4, false) || !this.f15716h || !z7 || format5.f13762j == -1 || parameters2.G || parameters2.F || (i15 & i4) == 0) ? 1 : 2;
            }
            this.u = i16;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final int a() {
            return this.u;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final boolean b(TrackInfo trackInfo) {
            VideoTrackInfo videoTrackInfo = (VideoTrackInfo) trackInfo;
            if (!this.t && !Objects.equals(this.A, videoTrackInfo.A)) {
                return false;
            }
            this.g.getClass();
            return this.v == videoTrackInfo.v && this.x == videoTrackInfo.x;
        }
    }

    public DefaultTrackSelector(TrackSelectionParameters trackSelectionParameters, ExoTrackSelection.Factory factory, Context context) {
        this.f15688c = new Object();
        this.d = context != null ? context.getApplicationContext() : null;
        this.f15689e = factory;
        if (trackSelectionParameters instanceof Parameters) {
            this.f15690f = (Parameters) trackSelectionParameters;
        } else {
            Parameters parameters = Parameters.F0;
            parameters.getClass();
            Parameters.Builder builder = new Parameters.Builder(parameters);
            builder.e(trackSelectionParameters);
            this.f15690f = new Parameters(builder);
        }
        this.f15692i = AudioAttributes.f13689i;
        if (this.f15690f.A0 && context == null) {
            Log.g("Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int j(Format format, ImmutableList immutableList) {
        for (int i2 = 0; i2 < immutableList.size(); i2++) {
            for (int i3 = 0; i3 < format.f13757c.size(); i3++) {
                if (((Label) format.f13757c.get(i3)).f13782b.equals(immutableList.get(i2))) {
                    return i2;
                }
            }
        }
        return Integer.MAX_VALUE;
    }

    public static void k(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, Parameters parameters, ExoTrackSelection.Definition[] definitionArr) {
        int i2 = mappedTrackInfo.f15725a;
        for (int i3 = 0; i3 < i2; i3++) {
            TrackGroupArray trackGroupArray = mappedTrackInfo.f15727c[i3];
            Map map = (Map) parameters.D0.get(i3);
            if (map != null && map.containsKey(trackGroupArray)) {
                Map map2 = (Map) parameters.D0.get(i3);
                ExoTrackSelection.Definition definition = null;
                SelectionOverride selectionOverride = map2 != null ? (SelectionOverride) map2.get(trackGroupArray) : null;
                if (selectionOverride != null) {
                    int[] iArr = selectionOverride.f15705b;
                    if (iArr.length != 0) {
                        definition = new ExoTrackSelection.Definition(trackGroupArray.a(selectionOverride.f15704a), iArr, selectionOverride.f15706c);
                    }
                }
                definitionArr[i3] = definition;
            }
        }
    }

    public static void l(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, Parameters parameters, ExoTrackSelection.Definition[] definitionArr) {
        for (int i2 = 0; i2 < mappedTrackInfo.f15725a; i2++) {
            int i3 = mappedTrackInfo.f15726b[i2];
            if (parameters.E0.get(i2) || parameters.I.contains(Integer.valueOf(i3))) {
                definitionArr[i2] = null;
            }
        }
    }

    public static void m(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, TrackSelectionParameters trackSelectionParameters, ExoTrackSelection.Definition[] definitionArr) {
        int i2 = mappedTrackInfo.f15725a;
        TrackGroupArray[] trackGroupArrayArr = mappedTrackInfo.f15727c;
        HashMap map = new HashMap();
        for (int i3 = 0; i3 < i2; i3++) {
            n(trackGroupArrayArr[i3], trackSelectionParameters, map);
        }
        n(mappedTrackInfo.f15729f, trackSelectionParameters, map);
        for (int i4 = 0; i4 < i2; i4++) {
            TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) map.get(Integer.valueOf(mappedTrackInfo.f15726b[i4]));
            if (trackSelectionOverride != null) {
                TrackGroup trackGroup = trackSelectionOverride.f13982a;
                ImmutableList immutableList = trackSelectionOverride.f13983b;
                definitionArr[i4] = (immutableList.isEmpty() || trackGroupArrayArr[i4].b(trackGroup) == -1) ? null : new ExoTrackSelection.Definition(trackGroup, Ints.g(immutableList));
            }
        }
    }

    public static void n(TrackGroupArray trackGroupArray, TrackSelectionParameters trackSelectionParameters, HashMap map) {
        for (int i2 = 0; i2 < trackGroupArray.f15636a; i2++) {
            TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) trackSelectionParameters.H.get(trackGroupArray.a(i2));
            if (trackSelectionOverride != null) {
                TrackGroup trackGroup = trackSelectionOverride.f13982a;
                TrackSelectionOverride trackSelectionOverride2 = (TrackSelectionOverride) map.get(Integer.valueOf(trackGroup.f13979c));
                if (trackSelectionOverride2 == null || (trackSelectionOverride2.f13983b.isEmpty() && !trackSelectionOverride.f13983b.isEmpty())) {
                    map.put(Integer.valueOf(trackGroup.f13979c), trackSelectionOverride);
                }
            }
        }
    }

    public static Pair o(ExoTrackSelection.Definition[] definitionArr, int i2) {
        for (int i3 = 0; i3 < definitionArr.length; i3++) {
            ExoTrackSelection.Definition definition = definitionArr[i3];
            if (definition != null && definition.f15720a.f13979c == i2) {
                return Pair.create(definition, Integer.valueOf(i3));
            }
        }
        return null;
    }

    public static int p(Format format, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(format.d)) {
            return 4;
        }
        String strR = r(str);
        String strR2 = r(format.d);
        if (strR2 == null || strR == null) {
            return (z && strR2 == null) ? 1 : 0;
        }
        if (strR2.startsWith(strR) || strR.startsWith(strR2)) {
            return 3;
        }
        String str2 = Util.f14242a;
        return strR2.split("-", 2)[0].equals(strR.split("-", 2)[0]) ? 2 : 0;
    }

    public static String r(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    public static boolean s(Parameters parameters, int i2, Format format) {
        if ((i2 & 3584) == 0) {
            return false;
        }
        TrackSelectionParameters.AudioOffloadPreferences audioOffloadPreferences = parameters.w;
        if (audioOffloadPreferences.f13997c && (i2 & 2048) == 0) {
            return false;
        }
        if (audioOffloadPreferences.f13996b) {
            boolean z = (format.J == 0 && format.K == 0) ? false : true;
            boolean z2 = (i2 & 1024) != 0;
            if (z && !z2) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004c  */
    public static ExoTrackSelection.Definition t(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) {
        if (parameters.w.f13995a != 2) {
            int i2 = 0;
            TrackGroup trackGroup = null;
            OtherTrackScore otherTrackScore = null;
            for (int i3 = 0; i3 < trackGroupArray.f15636a; i3++) {
                TrackGroup trackGroupA = trackGroupArray.a(i3);
                int[] iArr2 = iArr[i3];
                for (int i4 = 0; i4 < trackGroupA.f13977a; i4++) {
                    if (RendererCapabilities.k(iArr2[i4], parameters.B0)) {
                        OtherTrackScore otherTrackScore2 = new OtherTrackScore(trackGroupA.d[i4], iArr2[i4]);
                        if (otherTrackScore != null) {
                            if (ComparisonChain.f33575a.c(otherTrackScore2.f15701c, otherTrackScore.f15701c).c(otherTrackScore2.f15700b, otherTrackScore.f15700b).e() > 0) {
                                trackGroup = trackGroupA;
                                i2 = i4;
                                otherTrackScore = otherTrackScore2;
                            }
                        } else {
                            trackGroup = trackGroupA;
                            i2 = i4;
                            otherTrackScore = otherTrackScore2;
                        }
                    }
                }
            }
            if (trackGroup != null) {
                return new ExoTrackSelection.Definition(trackGroup, i2);
            }
        }
        return null;
    }

    public static Pair u(int i2, MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, TrackInfo.Factory factory, Comparator comparator) {
        int i3;
        RandomAccess randomAccessA;
        MappingTrackSelector.MappedTrackInfo mappedTrackInfo2 = mappedTrackInfo;
        ArrayList arrayList = new ArrayList();
        int i4 = mappedTrackInfo2.f15725a;
        int i5 = 0;
        while (i5 < i4) {
            if (i2 == mappedTrackInfo2.f15726b[i5]) {
                TrackGroupArray trackGroupArray = mappedTrackInfo2.f15727c[i5];
                for (int i6 = 0; i6 < trackGroupArray.f15636a; i6++) {
                    TrackGroup trackGroupA = trackGroupArray.a(i6);
                    List listA = factory.a(trackGroupA, iArr[i5][i6], i5);
                    int i7 = trackGroupA.f13977a;
                    boolean[] zArr = new boolean[i7];
                    int i8 = 0;
                    while (i8 < i7) {
                        TrackInfo trackInfo = (TrackInfo) listA.get(i8);
                        int iA = trackInfo.a();
                        if (zArr[i8] || iA == 0) {
                            i3 = i4;
                        } else {
                            if (iA == 1) {
                                randomAccessA = ImmutableList.A(trackInfo);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(trackInfo);
                                int i9 = i8 + 1;
                                while (i9 < i7) {
                                    TrackInfo trackInfo2 = (TrackInfo) listA.get(i9);
                                    int i10 = i4;
                                    if (trackInfo2.a() == 2 && trackInfo.b(trackInfo2)) {
                                        arrayList2.add(trackInfo2);
                                        zArr[i9] = true;
                                    }
                                    i9++;
                                    i4 = i10;
                                }
                                randomAccessA = arrayList2;
                            }
                            i3 = i4;
                            arrayList.add(randomAccessA);
                        }
                        i8++;
                        i4 = i3;
                    }
                }
            }
            i5++;
            mappedTrackInfo2 = mappedTrackInfo;
            i4 = i4;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i11 = 0; i11 < list.size(); i11++) {
            iArr2[i11] = ((TrackInfo) list.get(i11)).d;
        }
        TrackInfo trackInfo3 = (TrackInfo) list.get(0);
        return Pair.create(new ExoTrackSelection.Definition(trackInfo3.f15713c, iArr2), Integer.valueOf(trackInfo3.f15712b));
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities.Listener
    public final void a(Renderer renderer) {
        synchronized (this.f15688c) {
            this.f15690f.getClass();
        }
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public final TrackSelectionParameters b() {
        Parameters parameters;
        synchronized (this.f15688c) {
            parameters = this.f15690f;
        }
        return parameters;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public final RendererCapabilities.Listener c() {
        return this;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public final void e() {
        SpatializerWrapper spatializerWrapper;
        synchronized (this.f15688c) {
            try {
                Thread thread = this.g;
                if (thread != null) {
                    Preconditions.p("DefaultTrackSelector is accessed on the wrong thread.", thread == Thread.currentThread());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (Build.VERSION.SDK_INT >= 32 && (spatializerWrapper = this.f15691h) != null) {
            spatializerWrapper.e();
            this.f15691h = null;
        }
        super.e();
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public final void g(AudioAttributes audioAttributes) {
        if (this.f15692i.equals(audioAttributes)) {
            return;
        }
        this.f15692i = audioAttributes;
        q();
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public final void h(TrackSelectionParameters trackSelectionParameters) {
        Parameters parameters;
        if (trackSelectionParameters instanceof Parameters) {
            v((Parameters) trackSelectionParameters);
        }
        synchronized (this.f15688c) {
            parameters = this.f15690f;
        }
        Parameters.Builder builder = new Parameters.Builder(parameters);
        builder.e(trackSelectionParameters);
        v(new Parameters(builder));
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0095 A[PHI: r13
      0x0095: PHI (r13v1 android.util.Pair) = (r13v0 android.util.Pair), (r13v22 android.util.Pair) binds: [B:19:0x005f, B:30:0x0082] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.media3.exoplayer.trackselection.MappingTrackSelector
    public final Pair i(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, final int[] iArr2, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
        final Parameters parameters;
        int i2;
        final String str;
        TrackGroupArray[] trackGroupArrayArr;
        int[] iArr3;
        final String languageTag;
        Pair pairU;
        CaptioningManager captioningManager;
        Locale locale;
        Pair pairU2;
        final boolean z;
        Context context;
        synchronized (this.f15688c) {
            this.g = Thread.currentThread();
            parameters = this.f15690f;
        }
        if (this.f15693j == null && (context = this.d) != null) {
            this.f15693j = Boolean.valueOf(Util.N(context));
        }
        if (parameters.A0 && Build.VERSION.SDK_INT >= 32 && this.f15691h == null) {
            this.f15691h = new SpatializerWrapper(this.d, new et(this, 2), this.f15693j);
        }
        int i3 = mappedTrackInfo.f15725a;
        ExoTrackSelection.Definition[] definitionArr = new ExoTrackSelection.Definition[i3];
        m(mappedTrackInfo, parameters, definitionArr);
        k(mappedTrackInfo, parameters, definitionArr);
        l(mappedTrackInfo, parameters, definitionArr);
        Context context2 = this.d;
        int i4 = mappedTrackInfo.f15725a;
        TrackGroupArray[] trackGroupArrayArr2 = mappedTrackInfo.f15727c;
        int[] iArr4 = mappedTrackInfo.f15726b;
        Pair pairO = o(definitionArr, 1);
        if (pairO == null) {
            int i5 = 0;
            while (true) {
                if (i5 >= i4) {
                    z = false;
                    break;
                }
                if (2 == iArr4[i5] && trackGroupArrayArr2[i5].f15636a > 0) {
                    z = true;
                    break;
                }
                i5++;
            }
            pairO = u(1, mappedTrackInfo, iArr, new TrackInfo.Factory() { // from class: androidx.media3.exoplayer.trackselection.d
                @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
                public final List a(TrackGroup trackGroup, int[] iArr5, int i6) {
                    Ordering ordering = DefaultTrackSelector.f15687k;
                    final DefaultTrackSelector defaultTrackSelector = this.f15741a;
                    final DefaultTrackSelector.Parameters parameters2 = parameters;
                    Predicate predicate = new Predicate() { // from class: gt
                        /* JADX WARN: Code duplicated, block: B:42:0x006a A[FALL_THROUGH] */
                        @Override // com.google.common.base.Predicate
                        public final boolean apply(Object obj) {
                            DefaultTrackSelector defaultTrackSelector2;
                            Boolean bool;
                            SpatializerWrapper spatializerWrapper;
                            SpatializerWrapper spatializerWrapper2;
                            Format format = (Format) obj;
                            Ordering ordering2 = DefaultTrackSelector.f15687k;
                            if (parameters2.A0 && ((bool = (defaultTrackSelector2 = defaultTrackSelector).f15693j) == null || !bool.booleanValue())) {
                                int i7 = format.G;
                                if (i7 != -1 && i7 > 2) {
                                    String str2 = format.o;
                                    if (str2 != null) {
                                        switch (str2) {
                                            case "audio/eac3-joc":
                                            case "audio/ac3":
                                            case "audio/ac4":
                                            case "audio/eac3":
                                                if (Build.VERSION.SDK_INT >= 32 && (spatializerWrapper2 = defaultTrackSelector2.f15691h) != null && spatializerWrapper2.f15861b) {
                                                }
                                            default:
                                                if (Build.VERSION.SDK_INT >= 32) {
                                                    break;
                                                }
                                                return false;
                                        }
                                    } else if (Build.VERSION.SDK_INT >= 32 || (spatializerWrapper = defaultTrackSelector2.f15691h) == null || !spatializerWrapper.f15861b || !spatializerWrapper.c() || !defaultTrackSelector2.f15691h.d() || !defaultTrackSelector2.f15691h.a(defaultTrackSelector2.f15692i, format)) {
                                        return false;
                                    }
                                }
                            }
                            return true;
                        }
                    };
                    int i7 = iArr2[i6];
                    UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                    ImmutableList.Builder builder = new ImmutableList.Builder();
                    for (int i8 = 0; i8 < trackGroup.f13977a; i8++) {
                        builder.e(new DefaultTrackSelector.AudioTrackInfo(i6, trackGroup, i8, parameters2, iArr5[i8], z, predicate, i7));
                    }
                    return builder.j();
                }
            }, new b(2));
            if (pairO != null) {
                i2 = 0;
                definitionArr[((Integer) pairO.second).intValue()] = (ExoTrackSelection.Definition) pairO.first;
            } else {
                i2 = 0;
            }
        } else {
            i2 = 0;
        }
        if (pairO == null) {
            str = null;
        } else {
            ExoTrackSelection.Definition definition = (ExoTrackSelection.Definition) pairO.first;
            str = definition.f15720a.d[definition.f15721b[i2]].d;
        }
        Pair pairO2 = o(definitionArr, 2);
        Pair pairO3 = o(definitionArr, 4);
        if (pairO2 == null && pairO3 == null) {
            if (parameters.w.f13995a == 2) {
                pairU2 = null;
            } else {
                final Point pointX = (!parameters.f13992k || context2 == null) ? null : Util.x(context2);
                pairU2 = u(2, mappedTrackInfo, iArr, new TrackInfo.Factory() { // from class: androidx.media3.exoplayer.trackselection.c
                    /* JADX WARN: Code duplicated, block: B:28:0x004a  */
                    @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
                    public final List a(TrackGroup trackGroup, int[] iArr5, int i6) {
                        int i7;
                        int i8;
                        int i9;
                        int i10;
                        TrackGroup trackGroup2 = trackGroup;
                        Ordering ordering = DefaultTrackSelector.f15687k;
                        int i11 = iArr2[i6];
                        DefaultTrackSelector.Parameters parameters2 = parameters;
                        Point point = pointX;
                        int i12 = point != null ? point.x : parameters2.f13990i;
                        int i13 = point != null ? point.y : parameters2.f13991j;
                        boolean z2 = parameters2.l;
                        if (i12 == Integer.MAX_VALUE || i13 == Integer.MAX_VALUE) {
                            i7 = Integer.MAX_VALUE;
                        } else {
                            int i14 = Integer.MAX_VALUE;
                            for (int i15 = 0; i15 < trackGroup2.f13977a; i15++) {
                                Format format = trackGroup2.d[i15];
                                int i16 = format.v;
                                int i17 = format.w;
                                if (i16 > 0 && i17 > 0) {
                                    if (!z2) {
                                        i9 = i13;
                                        i10 = i12;
                                    } else if ((i16 > i17) != (i12 > i13)) {
                                        i10 = i13;
                                        i9 = i12;
                                    } else {
                                        i9 = i13;
                                        i10 = i12;
                                    }
                                    int i18 = i16 * i9;
                                    int i19 = i17 * i10;
                                    Point point2 = i18 >= i19 ? new Point(i10, Util.g(i19, i16)) : new Point(Util.g(i18, i17), i9);
                                    int i20 = format.v;
                                    int i21 = i20 * i17;
                                    if (i20 >= ((int) (point2.x * 0.98f)) && i17 >= ((int) (point2.y * 0.98f)) && i21 < i14) {
                                        i14 = i21;
                                    }
                                }
                            }
                            i7 = i14;
                        }
                        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                        ImmutableList.Builder builder = new ImmutableList.Builder();
                        int i22 = 0;
                        while (i22 < trackGroup2.f13977a) {
                            Format format2 = trackGroup2.d[i22];
                            int i23 = format2.v;
                            int i24 = (i23 == -1 || (i8 = format2.w) == -1) ? -1 : i23 * i8;
                            builder.e(new DefaultTrackSelector.VideoTrackInfo(i6, trackGroup2, i22, parameters2, iArr5[i22], str, i11, i7 == Integer.MAX_VALUE || (i24 != -1 && i24 <= i7)));
                            i22++;
                            trackGroup2 = trackGroup;
                        }
                        return builder.j();
                    }
                }, new b(1));
            }
            Pair pairU3 = ((parameters.E || pairU2 == null) && parameters.w.f13995a != 2) ? u(4, mappedTrackInfo, iArr, new TrackInfo.Factory() { // from class: androidx.media3.exoplayer.trackselection.a
                @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
                public final List a(TrackGroup trackGroup, int[] iArr5, int i6) {
                    Ordering ordering = DefaultTrackSelector.f15687k;
                    UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                    ImmutableList.Builder builder = new ImmutableList.Builder();
                    for (int i7 = 0; i7 < trackGroup.f13977a; i7++) {
                        builder.e(new DefaultTrackSelector.ImageTrackInfo(i6, trackGroup, i7, parameters, iArr5[i7]));
                    }
                    return builder.j();
                }
            }, new b(i2)) : null;
            if (pairU3 != null) {
                definitionArr[((Integer) pairU3.second).intValue()] = (ExoTrackSelection.Definition) pairU3.first;
            } else if (pairU2 != null) {
                definitionArr[((Integer) pairU2.second).intValue()] = (ExoTrackSelection.Definition) pairU2.first;
            }
        }
        if (o(definitionArr, 3) == null) {
            if (parameters.w.f13995a == 2) {
                pairU = null;
            } else {
                if (!parameters.B || context2 == null || (captioningManager = (CaptioningManager) context2.getSystemService("captioning")) == null || !captioningManager.isEnabled() || (locale = captioningManager.getLocale()) == null) {
                    languageTag = null;
                } else {
                    String str2 = Util.f14242a;
                    languageTag = locale.toLanguageTag();
                }
                pairU = u(3, mappedTrackInfo, iArr, new TrackInfo.Factory() { // from class: androidx.media3.exoplayer.trackselection.e
                    @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
                    public final List a(TrackGroup trackGroup, int[] iArr5, int i6) {
                        Ordering ordering = DefaultTrackSelector.f15687k;
                        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                        ImmutableList.Builder builder = new ImmutableList.Builder();
                        for (int i7 = 0; i7 < trackGroup.f13977a; i7++) {
                            builder.e(new DefaultTrackSelector.TextTrackInfo(i6, trackGroup, i7, parameters, iArr5[i7], str, languageTag));
                        }
                        return builder.j();
                    }
                }, new b(3));
            }
            if (pairU != null) {
                definitionArr[((Integer) pairU.second).intValue()] = (ExoTrackSelection.Definition) pairU.first;
            }
        }
        int iO = RendererCapabilities.o(0, 0, 0, 0);
        if (parameters.w.f13995a == 2) {
            trackGroupArrayArr = trackGroupArrayArr2;
            iArr3 = iArr4;
        } else {
            int i6 = ImmutableSet.d;
            ImmutableSet.Builder builder = new ImmutableSet.Builder();
            for (int i7 = 0; i7 < i3; i7++) {
                ExoTrackSelection.Definition definition2 = definitionArr[i7];
                if (definition2 != null) {
                    TrackGroup trackGroup = definition2.f15720a;
                    if (!parameters.E0.get(i7) && !parameters.I.contains(Integer.valueOf(trackGroup.f13979c))) {
                        builder.a(trackGroup.f13978b);
                        int i8 = 0;
                        while (true) {
                            int[] iArr5 = definition2.f15721b;
                            if (i8 < iArr5.length) {
                                String str3 = trackGroup.d[iArr5[i8]].m;
                                if (str3 != null) {
                                    builder.a(str3);
                                }
                                i8++;
                            }
                        }
                    }
                }
            }
            ImmutableSet immutableSetK = builder.k();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i9 = 0;
            while (i9 < i4) {
                if (iArr4[i9] == 5) {
                    TrackGroupArray trackGroupArray = trackGroupArrayArr2[i9];
                    int i10 = 0;
                    while (i10 < trackGroupArray.f15636a) {
                        TrackGroup trackGroupA = trackGroupArray.a(i10);
                        arrayList.add(trackGroupA);
                        TrackGroupArray[] trackGroupArrayArr3 = trackGroupArrayArr2;
                        int[] iArr6 = (int[]) iArr[i9][i10].clone();
                        int[] iArr7 = iArr4;
                        int i11 = i9;
                        for (int i12 = 0; i12 < iArr6.length; i12++) {
                            String str4 = trackGroupA.d[i12].m;
                            if (str4 != null && !immutableSetK.contains(str4)) {
                                iArr6[i12] = iO;
                            }
                        }
                        arrayList2.add(iArr6);
                        i10++;
                        iArr4 = iArr7;
                        trackGroupArrayArr2 = trackGroupArrayArr3;
                        i9 = i11;
                    }
                }
                i9++;
                iArr4 = iArr4;
                trackGroupArrayArr2 = trackGroupArrayArr2;
            }
            trackGroupArrayArr = trackGroupArrayArr2;
            iArr3 = iArr4;
            int size = arrayList.size();
            TrackGroup[] trackGroupArr = new TrackGroup[size];
            String str5 = Util.f14242a;
            Preconditions.q(arrayList.size() == size);
            arrayList.toArray(trackGroupArr);
            TrackGroupArray trackGroupArray2 = new TrackGroupArray(trackGroupArr);
            int size2 = arrayList2.size();
            int[][] iArr8 = new int[size2][];
            Preconditions.q(arrayList2.size() == size2);
            arrayList2.toArray(iArr8);
            for (int i13 = 0; i13 < i4; i13++) {
                if (iArr3[i13] == 5) {
                    ExoTrackSelection.Definition definitionT = t(trackGroupArray2, iArr8, parameters);
                    definitionArr[i13] = definitionT;
                    if (definitionT == null) {
                        break;
                    }
                    Arrays.fill(iArr8[trackGroupArray2.b(definitionT.f15720a)], iO);
                }
            }
        }
        for (int i14 = 0; i14 < i4; i14++) {
            int i15 = iArr3[i14];
            if (i15 != 2 && i15 != 1) {
                if (i15 != 3) {
                    if (i15 != 4 && i15 != 5 && definitionArr[i14] == null) {
                        definitionArr[i14] = t(trackGroupArrayArr[i14], iArr[i14], parameters);
                    }
                }
            }
        }
        m(mappedTrackInfo, parameters, definitionArr);
        k(mappedTrackInfo, parameters, definitionArr);
        l(mappedTrackInfo, parameters, definitionArr);
        ExoTrackSelection.Factory factory = this.f15689e;
        BandwidthMeter bandwidthMeter = this.f15731b;
        bandwidthMeter.getClass();
        ExoTrackSelection[] exoTrackSelectionArrA = factory.a(definitionArr, bandwidthMeter);
        RendererConfiguration[] rendererConfigurationArr = new RendererConfiguration[i3];
        for (int i16 = 0; i16 < i3; i16++) {
            rendererConfigurationArr[i16] = (parameters.E0.get(i16) || parameters.I.contains(Integer.valueOf(mappedTrackInfo.f15726b[i16])) || (mappedTrackInfo.f15726b[i16] != -2 && exoTrackSelectionArrA[i16] == null)) ? null : RendererConfiguration.f14777c;
        }
        if (parameters.w.f13995a != 0) {
            int i17 = -1;
            int i18 = 0;
            for (int i19 = 0; i19 < mappedTrackInfo.f15725a; i19++) {
                int i20 = mappedTrackInfo.f15726b[i19];
                ExoTrackSelection exoTrackSelection = exoTrackSelectionArrA[i19];
                if (i20 == 1 || exoTrackSelection == null) {
                    if (i20 == 1 && exoTrackSelection != null && exoTrackSelection.length() == 1) {
                        if (s(parameters, iArr[i19][mappedTrackInfo.f15727c[i19].b(exoTrackSelection.m())][exoTrackSelection.f(0)], exoTrackSelection.s())) {
                            i18++;
                            i17 = i19;
                        }
                    }
                }
            }
            if (i18 == 1) {
                int i21 = parameters.w.f13996b ? 1 : 2;
                RendererConfiguration rendererConfiguration = rendererConfigurationArr[i17];
                rendererConfigurationArr[i17] = new RendererConfiguration(i21, rendererConfiguration != null && rendererConfiguration.f14779b);
            }
        }
        return Pair.create(rendererConfigurationArr, exoTrackSelectionArrA);
    }

    public final void q() {
        boolean z;
        TrackSelector.InvalidationListener invalidationListener;
        SpatializerWrapper spatializerWrapper;
        synchronized (this.f15688c) {
            try {
                z = this.f15690f.A0 && Build.VERSION.SDK_INT >= 32 && (spatializerWrapper = this.f15691h) != null && spatializerWrapper.f15861b;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z || (invalidationListener = this.f15730a) == null) {
            return;
        }
        invalidationListener.a();
    }

    public final void v(Parameters parameters) {
        boolean zEquals;
        synchronized (this.f15688c) {
            zEquals = this.f15690f.equals(parameters);
            this.f15690f = parameters;
        }
        if (zEquals) {
            return;
        }
        if (parameters.A0 && this.d == null) {
            Log.g("Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
        TrackSelector.InvalidationListener invalidationListener = this.f15730a;
        if (invalidationListener != null) {
            invalidationListener.a();
        }
    }

    public static final class SelectionOverride {
        public static final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f15702e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f15703f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15704a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f15705b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15706c;

        static {
            String str = Util.f14242a;
            d = Integer.toString(0, 36);
            f15702e = Integer.toString(1, 36);
            f15703f = Integer.toString(2, 36);
        }

        public SelectionOverride(int i2, int[] iArr, int i3) {
            this.f15704a = i2;
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.f15705b = iArrCopyOf;
            this.f15706c = i3;
            Arrays.sort(iArrCopyOf);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && SelectionOverride.class == obj.getClass()) {
                SelectionOverride selectionOverride = (SelectionOverride) obj;
                if (this.f15704a == selectionOverride.f15704a && Arrays.equals(this.f15705b, selectionOverride.f15705b) && this.f15706c == selectionOverride.f15706c) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return ((Arrays.hashCode(this.f15705b) + (this.f15704a * 31)) * 31) + this.f15706c;
        }

        public SelectionOverride(int i2, int... iArr) {
            this(i2, iArr, 0);
        }
    }

    public DefaultTrackSelector(Context context, ExoTrackSelection.Factory factory) {
        this(context, Parameters.F0, factory);
    }

    public DefaultTrackSelector(Context context, TrackSelectionParameters trackSelectionParameters) {
        this(context, trackSelectionParameters, new AdaptiveTrackSelection.Factory());
    }

    @Deprecated
    public DefaultTrackSelector(TrackSelectionParameters trackSelectionParameters, ExoTrackSelection.Factory factory) {
        this(trackSelectionParameters, factory, (Context) null);
    }

    public DefaultTrackSelector(Context context, TrackSelectionParameters trackSelectionParameters, ExoTrackSelection.Factory factory) {
        this(trackSelectionParameters, factory, context);
    }

    public DefaultTrackSelector(Context context) {
        this(context, new AdaptiveTrackSelection.Factory());
    }

    public static final class Parameters extends TrackSelectionParameters {
        public static final Parameters F0 = new Parameters(new Builder());
        public static final String G0;
        public static final String H0;
        public static final String I0;
        public static final String J0;
        public static final String K0;
        public static final String L0;
        public static final String M0;
        public static final String N0;
        public static final String O0;
        public static final String P0;
        public static final String Q0;
        public static final String R0;
        public static final String S0;
        public static final String T0;
        public static final String U0;
        public static final String V0;
        public static final String W0;
        public static final String X0;
        public static final String Y0;
        public final boolean A0;
        public final boolean B0;
        public final boolean C0;
        public final SparseArray D0;
        public final SparseBooleanArray E0;
        public final boolean w0;
        public final boolean x0;
        public final boolean y0;
        public final boolean z0;

        static {
            String str = Util.f14242a;
            G0 = Integer.toString(1000, 36);
            H0 = Integer.toString(1001, 36);
            I0 = Integer.toString(1002, 36);
            J0 = Integer.toString(1003, 36);
            K0 = Integer.toString(1004, 36);
            L0 = Integer.toString(1005, 36);
            M0 = Integer.toString(1006, 36);
            N0 = Integer.toString(1007, 36);
            O0 = Integer.toString(1008, 36);
            P0 = Integer.toString(1009, 36);
            Q0 = Integer.toString(1010, 36);
            R0 = Integer.toString(1011, 36);
            S0 = Integer.toString(1012, 36);
            T0 = Integer.toString(1013, 36);
            U0 = Integer.toString(1014, 36);
            V0 = Integer.toString(1015, 36);
            W0 = Integer.toString(1016, 36);
            X0 = Integer.toString(1017, 36);
            Y0 = Integer.toString(1018, 36);
        }

        public Parameters(Builder builder) {
            super(builder);
            this.w0 = builder.J;
            this.x0 = builder.K;
            this.y0 = builder.L;
            this.z0 = builder.M;
            this.A0 = builder.N;
            this.B0 = builder.O;
            this.C0 = builder.P;
            this.D0 = builder.Q;
            this.E0 = builder.R;
        }

        @Override // androidx.media3.common.TrackSelectionParameters
        public final TrackSelectionParameters.Builder a() {
            return new Builder(this);
        }

        @Override // androidx.media3.common.TrackSelectionParameters
        public final Bundle c() {
            Bundle bundleC = super.c();
            bundleC.putBoolean(G0, this.w0);
            bundleC.putBoolean(H0, false);
            bundleC.putBoolean(I0, this.x0);
            bundleC.putBoolean(U0, false);
            bundleC.putBoolean(J0, this.y0);
            bundleC.putBoolean(K0, false);
            bundleC.putBoolean(L0, false);
            bundleC.putBoolean(M0, false);
            bundleC.putBoolean(V0, false);
            bundleC.putBoolean(Y0, this.z0);
            bundleC.putBoolean(W0, this.A0);
            bundleC.putBoolean(N0, this.B0);
            bundleC.putBoolean(O0, false);
            bundleC.putBoolean(P0, this.C0);
            bundleC.putBoolean(X0, false);
            ArrayList arrayList = new ArrayList();
            ArrayList<TrackGroupArray> arrayList2 = new ArrayList();
            SparseArray sparseArray = new SparseArray();
            int i2 = 0;
            while (true) {
                SparseArray sparseArray2 = this.D0;
                if (i2 >= sparseArray2.size()) {
                    break;
                }
                int iKeyAt = sparseArray2.keyAt(i2);
                for (Map.Entry entry : ((Map) sparseArray2.valueAt(i2)).entrySet()) {
                    SelectionOverride selectionOverride = (SelectionOverride) entry.getValue();
                    if (selectionOverride != null) {
                        sparseArray.put(arrayList2.size(), selectionOverride);
                    }
                    arrayList2.add((TrackGroupArray) entry.getKey());
                    arrayList.add(Integer.valueOf(iKeyAt));
                }
                bundleC.putIntArray(Q0, Ints.g(arrayList));
                ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>(arrayList2.size());
                for (TrackGroupArray trackGroupArray : arrayList2) {
                    trackGroupArray.getClass();
                    Bundle bundle = new Bundle();
                    String str = TrackGroupArray.f15635e;
                    ImmutableList immutableList = trackGroupArray.f15637b;
                    ArrayList<? extends Parcelable> arrayList4 = new ArrayList<>(immutableList.size());
                    Iterator<E> it = immutableList.iterator();
                    while (it.hasNext()) {
                        arrayList4.add(((TrackGroup) it.next()).d());
                    }
                    bundle.putParcelableArrayList(str, arrayList4);
                    arrayList3.add(bundle);
                }
                bundleC.putParcelableArrayList(R0, arrayList3);
                SparseArray<? extends Parcelable> sparseArray3 = new SparseArray<>(sparseArray.size());
                for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                    int iKeyAt2 = sparseArray.keyAt(i3);
                    SelectionOverride selectionOverride2 = (SelectionOverride) sparseArray.valueAt(i3);
                    selectionOverride2.getClass();
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt(SelectionOverride.d, selectionOverride2.f15704a);
                    bundle2.putIntArray(SelectionOverride.f15702e, selectionOverride2.f15705b);
                    bundle2.putInt(SelectionOverride.f15703f, selectionOverride2.f15706c);
                    sparseArray3.put(iKeyAt2, bundle2);
                }
                bundleC.putSparseParcelableArray(S0, sparseArray3);
                i2++;
            }
            SparseBooleanArray sparseBooleanArray = this.E0;
            int[] iArr = new int[sparseBooleanArray.size()];
            for (int i4 = 0; i4 < sparseBooleanArray.size(); i4++) {
                iArr[i4] = sparseBooleanArray.keyAt(i4);
            }
            bundleC.putIntArray(T0, iArr);
            return bundleC;
        }

        @Override // androidx.media3.common.TrackSelectionParameters
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Parameters.class == obj.getClass()) {
                Parameters parameters = (Parameters) obj;
                if (super.equals(parameters) && this.w0 == parameters.w0 && this.x0 == parameters.x0 && this.y0 == parameters.y0 && this.z0 == parameters.z0 && this.A0 == parameters.A0 && this.B0 == parameters.B0 && this.C0 == parameters.C0) {
                    SparseBooleanArray sparseBooleanArray = parameters.E0;
                    SparseBooleanArray sparseBooleanArray2 = this.E0;
                    int size = sparseBooleanArray2.size();
                    if (sparseBooleanArray.size() == size) {
                        for (int i2 = 0; i2 < size; i2++) {
                            if (sparseBooleanArray.indexOfKey(sparseBooleanArray2.keyAt(i2)) >= 0) {
                            }
                        }
                        SparseArray sparseArray = parameters.D0;
                        SparseArray sparseArray2 = this.D0;
                        int size2 = sparseArray2.size();
                        if (sparseArray.size() == size2) {
                            for (int i3 = 0; i3 < size2; i3++) {
                                int iIndexOfKey = sparseArray.indexOfKey(sparseArray2.keyAt(i3));
                                if (iIndexOfKey >= 0) {
                                    Map map = (Map) sparseArray2.valueAt(i3);
                                    Map map2 = (Map) sparseArray.valueAt(iIndexOfKey);
                                    if (map2.size() == map.size()) {
                                        for (Map.Entry entry : map.entrySet()) {
                                            TrackGroupArray trackGroupArray = (TrackGroupArray) entry.getKey();
                                            if (!map2.containsKey(trackGroupArray) || !Objects.equals(entry.getValue(), map2.get(trackGroupArray))) {
                                            }
                                        }
                                    }
                                }
                            }
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        @Override // androidx.media3.common.TrackSelectionParameters
        public final int hashCode() {
            return (((((((((((((((super.hashCode() + 31) * 31) + (this.w0 ? 1 : 0)) * 961) + (this.x0 ? 1 : 0)) * 961) + (this.y0 ? 1 : 0)) * 28629151) + (this.z0 ? 1 : 0)) * 31) + (this.A0 ? 1 : 0)) * 31) + (this.B0 ? 1 : 0)) * 961) + (this.C0 ? 1 : 0)) * 31;
        }

        public static final class Builder extends TrackSelectionParameters.Builder {
            public final boolean J;
            public final boolean K;
            public final boolean L;
            public final boolean M;
            public final boolean N;
            public final boolean O;
            public final boolean P;
            public final SparseArray Q;
            public final SparseBooleanArray R;

            public Builder(Parameters parameters) {
                e(parameters);
                this.J = parameters.w0;
                this.K = parameters.x0;
                this.L = parameters.y0;
                this.M = parameters.z0;
                this.N = parameters.A0;
                this.O = parameters.B0;
                this.P = parameters.C0;
                SparseArray sparseArray = parameters.D0;
                SparseArray sparseArray2 = new SparseArray();
                for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                    sparseArray2.put(sparseArray.keyAt(i2), new HashMap((Map) sparseArray.valueAt(i2)));
                }
                this.Q = sparseArray2;
                this.R = parameters.E0.clone();
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final void a(TrackSelectionOverride trackSelectionOverride) {
                this.H.put(trackSelectionOverride.f13982a, trackSelectionOverride);
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters b() {
                return new Parameters(this);
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder c() {
                super.c();
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder d(int i2) {
                super.d(i2);
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder g(Set set) {
                super.g(set);
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder h() {
                this.C = -3;
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder i(TrackSelectionOverride trackSelectionOverride) {
                super.i(trackSelectionOverride);
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder j() {
                super.j();
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder k(String[] strArr) {
                super.k(strArr);
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder l() {
                super.l();
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder m(int i2, boolean z) {
                super.m(i2, z);
                return this;
            }

            public Builder() {
                this.Q = new SparseArray();
                this.R = new SparseBooleanArray();
                this.J = true;
                this.K = true;
                this.L = true;
                this.M = true;
                this.N = true;
                this.O = true;
                this.P = true;
            }

            @Deprecated
            public Builder(Context context) {
                this();
            }
        }
    }
}
