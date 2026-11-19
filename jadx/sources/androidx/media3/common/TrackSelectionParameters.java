package androidx.media3.common;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.media3.common.util.Util;
import com.google.common.base.MoreObjects;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.UnmodifiableListIterator;
import com.google.common.primitives.Ints;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class TrackSelectionParameters {
    public static final TrackSelectionParameters J = new TrackSelectionParameters(new Builder());
    public static final String K;
    public static final String L;
    public static final String M;
    public static final String N;
    public static final String O;
    public static final String P;
    public static final String Q;
    public static final String R;
    public static final String S;
    public static final String T;
    public static final String U;
    public static final String V;
    public static final String W;
    public static final String X;
    public static final String Y;
    public static final String Z;
    public static final String a0;
    public static final String b0;
    public static final String c0;
    public static final String d0;
    public static final String e0;
    public static final String f0;
    public static final String g0;
    public static final String h0;
    public static final String i0;
    public static final String j0;
    public static final String k0;
    public static final String l0;
    public static final String m0;
    public static final String n0;
    public static final String o0;
    public static final String p0;
    public static final String q0;
    public static final String r0;
    public static final String s0;
    public static final String t0;
    public static final String u0;
    public static final String v0;
    public final int A;
    public final boolean B;
    public final int C;
    public final boolean D;
    public final boolean E;
    public final boolean F;
    public final boolean G;
    public final ImmutableMap H;
    public final ImmutableSet I;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13986c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f13987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f13988f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f13989h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f13990i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f13991j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f13992k;
    public final boolean l;
    public final ImmutableList m;
    public final ImmutableList n;
    public final ImmutableList o;
    public final int p;
    public final ImmutableList q;
    public final ImmutableList r;
    public final int s;
    public final int t;
    public final int u;
    public final ImmutableList v;
    public final AudioOffloadPreferences w;
    public final boolean x;
    public final ImmutableList y;
    public final ImmutableList z;

    public static final class AudioOffloadPreferences {
        public static final AudioOffloadPreferences d = new AudioOffloadPreferences(new Builder());

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f13993e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f13994f;
        public static final String g;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13995a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f13996b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f13997c;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface AudioOffloadMode {
        }

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f13998a = 0;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f13999b = false;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f14000c = false;
        }

        static {
            String str = Util.f14242a;
            f13993e = Integer.toString(1, 36);
            f13994f = Integer.toString(2, 36);
            g = Integer.toString(3, 36);
        }

        public AudioOffloadPreferences(Builder builder) {
            this.f13995a = builder.f13998a;
            this.f13996b = builder.f13999b;
            this.f13997c = builder.f14000c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && AudioOffloadPreferences.class == obj.getClass()) {
                AudioOffloadPreferences audioOffloadPreferences = (AudioOffloadPreferences) obj;
                if (this.f13995a == audioOffloadPreferences.f13995a && this.f13996b == audioOffloadPreferences.f13996b && this.f13997c == audioOffloadPreferences.f13997c) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return ((((this.f13995a + 31) * 31) + (this.f13996b ? 1 : 0)) * 31) + (this.f13997c ? 1 : 0);
        }
    }

    static {
        String str = Util.f14242a;
        K = Integer.toString(1, 36);
        L = Integer.toString(2, 36);
        M = Integer.toString(3, 36);
        N = Integer.toString(4, 36);
        O = Integer.toString(5, 36);
        P = Integer.toString(6, 36);
        Q = Integer.toString(7, 36);
        R = Integer.toString(8, 36);
        S = Integer.toString(9, 36);
        T = Integer.toString(10, 36);
        U = Integer.toString(11, 36);
        V = Integer.toString(12, 36);
        W = Integer.toString(13, 36);
        X = Integer.toString(14, 36);
        Y = Integer.toString(15, 36);
        Z = Integer.toString(16, 36);
        a0 = Integer.toString(17, 36);
        b0 = Integer.toString(18, 36);
        c0 = Integer.toString(19, 36);
        d0 = Integer.toString(20, 36);
        e0 = Integer.toString(21, 36);
        f0 = Integer.toString(22, 36);
        g0 = Integer.toString(23, 36);
        h0 = Integer.toString(24, 36);
        i0 = Integer.toString(25, 36);
        j0 = Integer.toString(26, 36);
        k0 = Integer.toString(27, 36);
        l0 = Integer.toString(28, 36);
        m0 = Integer.toString(29, 36);
        n0 = Integer.toString(30, 36);
        o0 = Integer.toString(31, 36);
        p0 = Integer.toString(32, 36);
        q0 = Integer.toString(33, 36);
        r0 = Integer.toString(34, 36);
        s0 = Integer.toString(35, 36);
        t0 = Integer.toString(36, 36);
        u0 = Integer.toString(37, 36);
        v0 = Integer.toString(38, 36);
    }

    public TrackSelectionParameters(Builder builder) {
        this.f13984a = builder.f14001a;
        this.f13985b = builder.f14002b;
        this.f13986c = builder.f14003c;
        this.d = builder.d;
        this.f13987e = builder.f14004e;
        this.f13988f = builder.f14005f;
        this.g = builder.g;
        this.f13989h = builder.f14006h;
        this.f13990i = builder.f14007i;
        this.f13991j = builder.f14008j;
        this.f13992k = builder.f14009k;
        this.l = builder.l;
        this.m = builder.m;
        this.n = builder.n;
        this.o = builder.o;
        this.p = builder.p;
        this.q = builder.q;
        this.s = builder.s;
        this.t = builder.t;
        this.r = builder.r;
        this.u = builder.u;
        this.v = builder.v;
        this.w = builder.w;
        this.x = builder.x;
        this.y = builder.y;
        this.A = builder.z;
        this.B = builder.A;
        this.z = builder.B;
        this.C = builder.C;
        this.D = builder.D;
        this.E = builder.E;
        this.F = builder.F;
        this.G = builder.G;
        this.H = ImmutableMap.c(builder.H);
        this.I = ImmutableSet.s(builder.I);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static TrackSelectionParameters b(Bundle bundle) {
        AudioOffloadPreferences audioOffloadPreferences;
        ImmutableList immutableListJ;
        Builder builder = new Builder();
        TrackSelectionParameters trackSelectionParameters = J;
        builder.f14001a = bundle.getInt(P, trackSelectionParameters.f13984a);
        builder.f14002b = bundle.getInt(Q, trackSelectionParameters.f13985b);
        builder.f14003c = bundle.getInt(R, trackSelectionParameters.f13986c);
        builder.d = bundle.getInt(S, trackSelectionParameters.d);
        builder.f14004e = bundle.getInt(T, trackSelectionParameters.f13987e);
        builder.f14005f = bundle.getInt(U, trackSelectionParameters.f13988f);
        builder.g = bundle.getInt(V, trackSelectionParameters.g);
        builder.f14006h = bundle.getInt(W, trackSelectionParameters.f13989h);
        builder.f14007i = bundle.getInt(X, trackSelectionParameters.f13990i);
        int i2 = bundle.getInt(Y, trackSelectionParameters.f13991j);
        builder.f14008j = i2;
        builder.f14009k = builder.f14007i == Integer.MAX_VALUE && i2 == Integer.MAX_VALUE && bundle.getBoolean(q0, trackSelectionParameters.f13992k);
        builder.l = bundle.getBoolean(Z, trackSelectionParameters.l);
        builder.m = ImmutableList.u((String[]) MoreObjects.a(bundle.getStringArray(a0), new String[0]));
        builder.n = ImmutableList.u((String[]) MoreObjects.a(bundle.getStringArray(t0), new String[0]));
        builder.o = ImmutableList.u((String[]) MoreObjects.a(bundle.getStringArray(p0), new String[0]));
        builder.p = bundle.getInt(i0, trackSelectionParameters.p);
        builder.q = Builder.f((String[]) MoreObjects.a(bundle.getStringArray(K), new String[0]));
        builder.r = ImmutableList.u((String[]) MoreObjects.a(bundle.getStringArray(u0), new String[0]));
        builder.s = bundle.getInt(L, trackSelectionParameters.s);
        builder.t = bundle.getInt(b0, trackSelectionParameters.t);
        builder.u = bundle.getInt(c0, trackSelectionParameters.u);
        builder.v = ImmutableList.u((String[]) MoreObjects.a(bundle.getStringArray(d0), new String[0]));
        Bundle bundle2 = bundle.getBundle(n0);
        if (bundle2 != null) {
            AudioOffloadPreferences audioOffloadPreferences2 = AudioOffloadPreferences.d;
            AudioOffloadPreferences.Builder builder2 = new AudioOffloadPreferences.Builder();
            String str = AudioOffloadPreferences.f13993e;
            AudioOffloadPreferences audioOffloadPreferences3 = AudioOffloadPreferences.d;
            builder2.f13998a = bundle2.getInt(str, audioOffloadPreferences3.f13995a);
            builder2.f13999b = bundle2.getBoolean(AudioOffloadPreferences.f13994f, audioOffloadPreferences3.f13996b);
            builder2.f14000c = bundle2.getBoolean(AudioOffloadPreferences.g, audioOffloadPreferences3.f13997c);
            audioOffloadPreferences = new AudioOffloadPreferences(builder2);
        } else {
            AudioOffloadPreferences.Builder builder3 = new AudioOffloadPreferences.Builder();
            AudioOffloadPreferences audioOffloadPreferences4 = AudioOffloadPreferences.d;
            builder3.f13998a = bundle.getInt(k0, audioOffloadPreferences4.f13995a);
            builder3.f13999b = bundle.getBoolean(l0, audioOffloadPreferences4.f13996b);
            builder3.f14000c = bundle.getBoolean(m0, audioOffloadPreferences4.f13997c);
            audioOffloadPreferences = new AudioOffloadPreferences(builder3);
        }
        builder.w = audioOffloadPreferences;
        builder.x = bundle.getBoolean(s0, trackSelectionParameters.x);
        builder.y = Builder.f((String[]) MoreObjects.a(bundle.getStringArray(M), new String[0]));
        builder.z = bundle.getInt(N, trackSelectionParameters.A);
        builder.A = builder.y.isEmpty() && builder.z == 0 && bundle.getBoolean(r0, trackSelectionParameters.B);
        builder.C = bundle.getInt(j0, trackSelectionParameters.C);
        builder.B = ImmutableList.u((String[]) MoreObjects.a(bundle.getStringArray(v0), new String[0]));
        builder.D = bundle.getBoolean(O, trackSelectionParameters.D);
        builder.E = bundle.getBoolean(o0, trackSelectionParameters.E);
        builder.F = bundle.getBoolean(e0, trackSelectionParameters.F);
        builder.G = bundle.getBoolean(f0, trackSelectionParameters.G);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(g0);
        if (parcelableArrayList == null) {
            immutableListJ = ImmutableList.x();
        } else {
            ImmutableList.Builder builder4 = new ImmutableList.Builder();
            for (int i3 = 0; i3 < parcelableArrayList.size(); i3++) {
                Bundle bundle3 = (Bundle) parcelableArrayList.get(i3);
                bundle3.getClass();
                Bundle bundle4 = bundle3.getBundle(TrackSelectionOverride.f13981c);
                bundle4.getClass();
                TrackGroup trackGroupA = TrackGroup.a(bundle4);
                int[] intArray = bundle3.getIntArray(TrackSelectionOverride.d);
                intArray.getClass();
                builder4.e(new TrackSelectionOverride(trackGroupA, (List<Integer>) Ints.a(intArray)));
            }
            immutableListJ = builder4.j();
        }
        builder.H = new HashMap();
        for (int i4 = 0; i4 < immutableListJ.size(); i4++) {
            TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) immutableListJ.get(i4);
            builder.H.put(trackSelectionOverride.f13982a, trackSelectionOverride);
        }
        int[] iArr = (int[]) MoreObjects.a(bundle.getIntArray(h0), new int[0]);
        builder.I = new HashSet();
        for (int i5 : iArr) {
            builder.I.add(Integer.valueOf(i5));
        }
        return new TrackSelectionParameters(builder);
    }

    public Builder a() {
        Builder builder = new Builder();
        builder.e(this);
        return builder;
    }

    public Bundle c() {
        Bundle bundle = new Bundle();
        bundle.putInt(P, this.f13984a);
        bundle.putInt(Q, this.f13985b);
        bundle.putInt(R, this.f13986c);
        bundle.putInt(S, this.d);
        bundle.putInt(T, this.f13987e);
        bundle.putInt(U, this.f13988f);
        bundle.putInt(V, this.g);
        bundle.putInt(W, this.f13989h);
        bundle.putInt(X, this.f13990i);
        bundle.putInt(Y, this.f13991j);
        bundle.putBoolean(q0, this.f13992k);
        bundle.putBoolean(Z, this.l);
        bundle.putStringArray(a0, (String[]) this.m.toArray(new String[0]));
        bundle.putStringArray(p0, (String[]) this.o.toArray(new String[0]));
        bundle.putStringArray(t0, (String[]) this.n.toArray(new String[0]));
        bundle.putInt(i0, this.p);
        bundle.putStringArray(K, (String[]) this.q.toArray(new String[0]));
        bundle.putInt(L, this.s);
        bundle.putInt(b0, this.t);
        bundle.putInt(c0, this.u);
        bundle.putStringArray(u0, (String[]) this.r.toArray(new String[0]));
        bundle.putStringArray(d0, (String[]) this.v.toArray(new String[0]));
        bundle.putBoolean(s0, this.x);
        bundle.putStringArray(M, (String[]) this.y.toArray(new String[0]));
        bundle.putInt(N, this.A);
        bundle.putBoolean(r0, this.B);
        bundle.putStringArray(v0, (String[]) this.z.toArray(new String[0]));
        bundle.putInt(j0, this.C);
        bundle.putBoolean(O, this.D);
        AudioOffloadPreferences audioOffloadPreferences = this.w;
        bundle.putInt(k0, audioOffloadPreferences.f13995a);
        boolean z = audioOffloadPreferences.f13996b;
        bundle.putBoolean(l0, z);
        boolean z2 = audioOffloadPreferences.f13997c;
        bundle.putBoolean(m0, z2);
        Bundle bundle2 = new Bundle();
        bundle2.putInt(AudioOffloadPreferences.f13993e, audioOffloadPreferences.f13995a);
        bundle2.putBoolean(AudioOffloadPreferences.f13994f, z);
        bundle2.putBoolean(AudioOffloadPreferences.g, z2);
        bundle.putBundle(n0, bundle2);
        bundle.putBoolean(o0, this.E);
        bundle.putBoolean(e0, this.F);
        bundle.putBoolean(f0, this.G);
        ImmutableCollection<TrackSelectionOverride> immutableCollectionValues = this.H.values();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(immutableCollectionValues.size());
        for (TrackSelectionOverride trackSelectionOverride : immutableCollectionValues) {
            trackSelectionOverride.getClass();
            Bundle bundle3 = new Bundle();
            bundle3.putBundle(TrackSelectionOverride.f13981c, trackSelectionOverride.f13982a.d());
            bundle3.putIntArray(TrackSelectionOverride.d, Ints.g(trackSelectionOverride.f13983b));
            arrayList.add(bundle3);
        }
        bundle.putParcelableArrayList(g0, arrayList);
        bundle.putIntArray(h0, Ints.g(this.I));
        return bundle;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            TrackSelectionParameters trackSelectionParameters = (TrackSelectionParameters) obj;
            if (this.f13984a == trackSelectionParameters.f13984a && this.f13985b == trackSelectionParameters.f13985b && this.f13986c == trackSelectionParameters.f13986c && this.d == trackSelectionParameters.d && this.f13987e == trackSelectionParameters.f13987e && this.f13988f == trackSelectionParameters.f13988f && this.g == trackSelectionParameters.g && this.f13989h == trackSelectionParameters.f13989h && this.l == trackSelectionParameters.l && this.f13990i == trackSelectionParameters.f13990i && this.f13991j == trackSelectionParameters.f13991j && this.f13992k == trackSelectionParameters.f13992k && this.m.equals(trackSelectionParameters.m) && this.n.equals(trackSelectionParameters.n) && this.o.equals(trackSelectionParameters.o) && this.p == trackSelectionParameters.p && this.q.equals(trackSelectionParameters.q) && this.s == trackSelectionParameters.s && this.t == trackSelectionParameters.t && this.r.equals(trackSelectionParameters.r) && this.u == trackSelectionParameters.u && this.v.equals(trackSelectionParameters.v) && this.w.equals(trackSelectionParameters.w) && this.x == trackSelectionParameters.x && this.z.equals(trackSelectionParameters.z) && this.y.equals(trackSelectionParameters.y) && this.A == trackSelectionParameters.A && this.B == trackSelectionParameters.B && this.C == trackSelectionParameters.C && this.D == trackSelectionParameters.D && this.E == trackSelectionParameters.E && this.F == trackSelectionParameters.F && this.G == trackSelectionParameters.G) {
                ImmutableMap immutableMap = trackSelectionParameters.H;
                ImmutableMap immutableMap2 = this.H;
                immutableMap2.getClass();
                if (Maps.a(immutableMap2, immutableMap) && this.I.equals(trackSelectionParameters.I)) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        return this.I.hashCode() + ((this.H.hashCode() + ((((((((((((this.z.hashCode() + ((((((this.y.hashCode() + ((((this.w.hashCode() + ((this.v.hashCode() + ((((this.r.hashCode() + ((((((this.q.hashCode() + ((((this.o.hashCode() + ((this.n.hashCode() + ((this.m.hashCode() + ((((((((((((((((((((((((this.f13984a + 31) * 31) + this.f13985b) * 31) + this.f13986c) * 31) + this.d) * 31) + this.f13987e) * 31) + this.f13988f) * 31) + this.g) * 31) + this.f13989h) * 31) + (this.l ? 1 : 0)) * 31) + this.f13990i) * 31) + this.f13991j) * 31) + (this.f13992k ? 1 : 0)) * 31)) * 31)) * 31)) * 31) + this.p) * 31)) * 31) + this.s) * 31) + this.t) * 31)) * 31) + this.u) * 31)) * 31)) * 31) + (this.x ? 1 : 0)) * 31)) * 31) + this.A) * 31) + (this.B ? 1 : 0)) * 31)) * 31) + this.C) * 31) + (this.D ? 1 : 0)) * 31) + (this.E ? 1 : 0)) * 31) + (this.F ? 1 : 0)) * 31) + (this.G ? 1 : 0)) * 31)) * 31);
    }

    public static class Builder {
        public boolean A;
        public ImmutableList B;
        public int C;
        public boolean D;
        public boolean E;
        public boolean F;
        public boolean G;
        public HashMap H;
        public HashSet I;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f14001a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14002b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14003c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f14004e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f14005f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f14006h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f14007i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f14008j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f14009k;
        public boolean l;
        public ImmutableList m;
        public ImmutableList n;
        public ImmutableList o;
        public int p;
        public ImmutableList q;
        public ImmutableList r;
        public int s;
        public int t;
        public int u;
        public ImmutableList v;
        public AudioOffloadPreferences w;
        public boolean x;
        public ImmutableList y;
        public int z;

        public Builder() {
            this.f14001a = Integer.MAX_VALUE;
            this.f14002b = Integer.MAX_VALUE;
            this.f14003c = Integer.MAX_VALUE;
            this.d = Integer.MAX_VALUE;
            this.f14007i = Integer.MAX_VALUE;
            this.f14008j = Integer.MAX_VALUE;
            this.f14009k = true;
            this.l = true;
            this.m = ImmutableList.x();
            this.n = ImmutableList.x();
            this.o = ImmutableList.x();
            this.p = 0;
            this.q = ImmutableList.x();
            this.r = ImmutableList.x();
            this.s = 0;
            this.t = Integer.MAX_VALUE;
            this.u = Integer.MAX_VALUE;
            this.v = ImmutableList.x();
            this.w = AudioOffloadPreferences.d;
            this.x = false;
            this.y = ImmutableList.x();
            this.z = 0;
            this.A = true;
            this.B = ImmutableList.x();
            this.C = 0;
            this.D = false;
            this.E = false;
            this.F = false;
            this.G = false;
            this.H = new HashMap();
            this.I = new HashSet();
        }

        public static ImmutableList f(String[] strArr) {
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            for (String str : strArr) {
                str.getClass();
                builder.e(Util.S(str));
            }
            return builder.j();
        }

        public void a(TrackSelectionOverride trackSelectionOverride) {
            this.H.put(trackSelectionOverride.f13982a, trackSelectionOverride);
        }

        public TrackSelectionParameters b() {
            return new TrackSelectionParameters(this);
        }

        public Builder c() {
            this.H.clear();
            return this;
        }

        public Builder d(int i2) {
            Iterator it = this.H.values().iterator();
            while (it.hasNext()) {
                if (((TrackSelectionOverride) it.next()).f13982a.f13979c == i2) {
                    it.remove();
                }
            }
            return this;
        }

        public final void e(TrackSelectionParameters trackSelectionParameters) {
            this.f14001a = trackSelectionParameters.f13984a;
            this.f14002b = trackSelectionParameters.f13985b;
            this.f14003c = trackSelectionParameters.f13986c;
            this.d = trackSelectionParameters.d;
            this.f14004e = trackSelectionParameters.f13987e;
            this.f14005f = trackSelectionParameters.f13988f;
            this.g = trackSelectionParameters.g;
            this.f14006h = trackSelectionParameters.f13989h;
            this.f14007i = trackSelectionParameters.f13990i;
            this.f14008j = trackSelectionParameters.f13991j;
            this.f14009k = trackSelectionParameters.f13992k;
            this.l = trackSelectionParameters.l;
            this.n = trackSelectionParameters.n;
            this.m = trackSelectionParameters.m;
            this.o = trackSelectionParameters.o;
            this.p = trackSelectionParameters.p;
            this.q = trackSelectionParameters.q;
            this.s = trackSelectionParameters.s;
            this.r = trackSelectionParameters.r;
            this.t = trackSelectionParameters.t;
            this.u = trackSelectionParameters.u;
            this.v = trackSelectionParameters.v;
            this.w = trackSelectionParameters.w;
            this.x = trackSelectionParameters.x;
            this.y = trackSelectionParameters.y;
            this.z = trackSelectionParameters.A;
            this.A = trackSelectionParameters.B;
            this.B = trackSelectionParameters.z;
            this.C = trackSelectionParameters.C;
            this.D = trackSelectionParameters.D;
            this.E = trackSelectionParameters.E;
            this.F = trackSelectionParameters.F;
            this.G = trackSelectionParameters.G;
            this.I = new HashSet(trackSelectionParameters.I);
            this.H = new HashMap(trackSelectionParameters.H);
        }

        public Builder g(Set set) {
            this.I.clear();
            this.I.addAll(set);
            return this;
        }

        public Builder h() {
            this.C = -3;
            return this;
        }

        public Builder i(TrackSelectionOverride trackSelectionOverride) {
            TrackGroup trackGroup = trackSelectionOverride.f13982a;
            d(trackGroup.f13979c);
            this.H.put(trackGroup, trackSelectionOverride);
            return this;
        }

        public Builder j() {
            return k(new String[0]);
        }

        public Builder k(String... strArr) {
            this.y = f(strArr);
            this.A = false;
            return this;
        }

        public Builder l() {
            this.z = 0;
            this.A = false;
            return this;
        }

        public Builder m(int i2, boolean z) {
            HashSet hashSet = this.I;
            if (z) {
                hashSet.add(Integer.valueOf(i2));
                return this;
            }
            hashSet.remove(Integer.valueOf(i2));
            return this;
        }

        @Deprecated
        public Builder(Context context) {
            this();
        }
    }
}
