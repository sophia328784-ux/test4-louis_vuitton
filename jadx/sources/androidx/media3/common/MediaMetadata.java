package androidx.media3.common;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.SharedMemory;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class MediaMetadata {
    public static final MediaMetadata L = new MediaMetadata(new Builder());
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
    public final CharSequence A;
    public final CharSequence B;
    public final CharSequence C;
    public final Integer D;
    public final Integer E;
    public final CharSequence F;
    public final CharSequence G;
    public final CharSequence H;
    public final Integer I;
    public final Bundle J;
    public final ImmutableList K;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f13879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CharSequence f13880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CharSequence f13881c;
    public final CharSequence d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CharSequence f13882e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CharSequence f13883f;
    public final CharSequence g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Long f13884h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Rating f13885i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Rating f13886j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final byte[] f13887k;
    public BundleableByteArray l;
    public final Integer m;
    public final Uri n;
    public final Integer o;
    public final Integer p;
    public final Integer q;
    public final Boolean r;
    public final Boolean s;
    public final Integer t;
    public final Integer u;
    public final Integer v;
    public final Integer w;
    public final Integer x;
    public final Integer y;
    public final Integer z;

    public static final class Builder {
        public CharSequence A;
        public CharSequence B;
        public Integer C;
        public Integer D;
        public CharSequence E;
        public CharSequence F;
        public CharSequence G;
        public Integer H;
        public Bundle I;
        public ImmutableList J = ImmutableList.x();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public CharSequence f13888a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public CharSequence f13889b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CharSequence f13890c;
        public CharSequence d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public CharSequence f13891e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public CharSequence f13892f;
        public CharSequence g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Long f13893h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Rating f13894i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Rating f13895j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public byte[] f13896k;
        public BundleableByteArray l;
        public Integer m;
        public Uri n;
        public Integer o;
        public Integer p;
        public Integer q;
        public Boolean r;
        public Boolean s;
        public Integer t;
        public Integer u;
        public Integer v;
        public Integer w;
        public Integer x;
        public Integer y;
        public CharSequence z;

        public final void a(int i2, byte[] bArr) {
            if (this.f13896k == null || i2 == 3 || !Objects.equals(this.m, 3)) {
                this.f13896k = (byte[]) bArr.clone();
                this.l = null;
                this.m = Integer.valueOf(i2);
            }
        }

        public final void b(byte[] bArr, Integer num) {
            this.f13896k = bArr == null ? null : (byte[]) bArr.clone();
            this.l = null;
            this.m = num;
        }

        public final void c(Long l) {
            Preconditions.g(l == null || l.longValue() >= 0);
            this.f13893h = l;
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Deprecated
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface FolderType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface MediaType {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PictureType {
    }

    static {
        String str = Util.f14242a;
        M = Integer.toString(0, 36);
        N = Integer.toString(1, 36);
        O = Integer.toString(2, 36);
        P = Integer.toString(3, 36);
        Q = Integer.toString(4, 36);
        R = Integer.toString(5, 36);
        S = Integer.toString(6, 36);
        T = Integer.toString(8, 36);
        U = Integer.toString(9, 36);
        V = Integer.toString(10, 36);
        W = Integer.toString(11, 36);
        X = Integer.toString(12, 36);
        Y = Integer.toString(13, 36);
        Z = Integer.toString(14, 36);
        a0 = Integer.toString(15, 36);
        b0 = Integer.toString(16, 36);
        c0 = Integer.toString(17, 36);
        d0 = Integer.toString(18, 36);
        e0 = Integer.toString(19, 36);
        f0 = Integer.toString(20, 36);
        g0 = Integer.toString(21, 36);
        h0 = Integer.toString(22, 36);
        i0 = Integer.toString(23, 36);
        j0 = Integer.toString(24, 36);
        k0 = Integer.toString(25, 36);
        l0 = Integer.toString(26, 36);
        m0 = Integer.toString(27, 36);
        n0 = Integer.toString(28, 36);
        o0 = Integer.toString(29, 36);
        p0 = Integer.toString(30, 36);
        q0 = Integer.toString(31, 36);
        r0 = Integer.toString(32, 36);
        s0 = Integer.toString(33, 36);
        t0 = Integer.toString(34, 36);
        u0 = Integer.toString(1000, 36);
    }

    public MediaMetadata(Builder builder) {
        Boolean boolValueOf = builder.r;
        Integer numValueOf = builder.q;
        Integer numValueOf2 = builder.H;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        if (boolValueOf != null) {
            if (!boolValueOf.booleanValue()) {
                numValueOf = -1;
            } else if (numValueOf == null || numValueOf.intValue() == -1) {
                if (numValueOf2 != null) {
                    switch (numValueOf2.intValue()) {
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                            break;
                        case 20:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        default:
                            i2 = 0;
                            break;
                        case 21:
                            i2 = 2;
                            break;
                        case 22:
                            i2 = 3;
                            break;
                        case 23:
                            i2 = 4;
                            break;
                        case 24:
                            i2 = 5;
                            break;
                        case 25:
                            i2 = 6;
                            break;
                    }
                    i4 = i2;
                }
                numValueOf = Integer.valueOf(i4);
            }
        } else if (numValueOf != null) {
            boolean z = numValueOf.intValue() != -1;
            boolValueOf = Boolean.valueOf(z);
            if (z && numValueOf2 == null) {
                switch (numValueOf.intValue()) {
                    case 1:
                        break;
                    case 2:
                        i3 = 21;
                        break;
                    case 3:
                        i3 = 22;
                        break;
                    case 4:
                        i3 = 23;
                        break;
                    case 5:
                        i3 = 24;
                        break;
                    case 6:
                        i3 = 25;
                        break;
                    default:
                        i3 = 20;
                        break;
                }
                numValueOf2 = Integer.valueOf(i3);
            }
        }
        this.f13879a = builder.f13888a;
        this.f13880b = builder.f13889b;
        this.f13881c = builder.f13890c;
        this.d = builder.d;
        this.f13882e = builder.f13891e;
        this.f13883f = builder.f13892f;
        this.g = builder.g;
        this.f13884h = builder.f13893h;
        this.f13885i = builder.f13894i;
        this.f13886j = builder.f13895j;
        this.f13887k = builder.f13896k;
        this.l = builder.l;
        this.m = builder.m;
        this.n = builder.n;
        this.o = builder.o;
        this.p = builder.p;
        this.q = numValueOf;
        this.r = boolValueOf;
        this.s = builder.s;
        Integer num = builder.t;
        this.t = num;
        this.u = num;
        this.v = builder.u;
        this.w = builder.v;
        this.x = builder.w;
        this.y = builder.x;
        this.z = builder.y;
        this.A = builder.z;
        this.B = builder.A;
        this.C = builder.B;
        this.D = builder.C;
        this.E = builder.D;
        this.F = builder.E;
        this.G = builder.F;
        this.H = builder.G;
        this.I = numValueOf2;
        this.K = builder.J;
        this.J = builder.I;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00ff  */
    public static MediaMetadata b(int i2, Bundle bundle) throws Throwable {
        Bundle bundle2;
        Bundle bundle3;
        ByteBuffer byteBufferMapReadOnly;
        Builder builder = new Builder();
        builder.f13888a = bundle.getCharSequence(M);
        builder.f13889b = bundle.getCharSequence(N);
        builder.f13890c = bundle.getCharSequence(O);
        builder.d = bundle.getCharSequence(P);
        builder.f13891e = bundle.getCharSequence(Q);
        builder.f13892f = bundle.getCharSequence(R);
        builder.g = bundle.getCharSequence(S);
        builder.n = (Uri) bundle.getParcelable(W);
        builder.z = bundle.getCharSequence(h0);
        builder.A = bundle.getCharSequence(i0);
        builder.B = bundle.getCharSequence(j0);
        builder.E = bundle.getCharSequence(m0);
        builder.F = bundle.getCharSequence(n0);
        builder.G = bundle.getCharSequence(p0);
        builder.I = Util.p(bundle.getBundle(u0));
        String str = V;
        if (bundle.containsKey(str)) {
            String str2 = o0;
            byte[] bArrA = null;
            bArrA = null;
            ByteBuffer byteBuffer = null;
            bArrA = null;
            Integer numValueOf = bundle.containsKey(str2) ? Integer.valueOf(bundle.getInt(str2)) : null;
            if (i2 >= 9) {
                Bundle bundle4 = bundle.getBundle(str);
                if (bundle4 != null) {
                    IBinder binder = bundle4.getBinder(BundleableByteArray.f13707e);
                    if (binder != null) {
                        if (binder instanceof BundleableByteArray.InProcessBinder) {
                            bArrA = BundleableByteArray.this.f13709a;
                        } else {
                            SharedMemory sharedMemory = (SharedMemory) bundle4.getParcelable(BundleableByteArray.f13708f);
                            if (sharedMemory != null) {
                                try {
                                    byteBufferMapReadOnly = sharedMemory.mapReadOnly();
                                    try {
                                        try {
                                            byte[] bArr = new byte[sharedMemory.getSize()];
                                            byteBufferMapReadOnly.get(bArr);
                                            SharedMemory.unmap(byteBufferMapReadOnly);
                                            sharedMemory.close();
                                            bArrA = bArr;
                                        } catch (Exception e2) {
                                            e = e2;
                                            Log.h("Failed to read byte array from shared memory", e);
                                            if (byteBufferMapReadOnly != null) {
                                                SharedMemory.unmap(byteBufferMapReadOnly);
                                            }
                                            sharedMemory.close();
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        byteBuffer = byteBufferMapReadOnly;
                                        if (byteBuffer != null) {
                                            SharedMemory.unmap(byteBuffer);
                                        }
                                        sharedMemory.close();
                                        throw th;
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    byteBufferMapReadOnly = null;
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (byteBuffer != null) {
                                        SharedMemory.unmap(byteBuffer);
                                    }
                                    sharedMemory.close();
                                    throw th;
                                }
                            }
                            if (bArrA == null) {
                                bArrA = BundleableByteArray.SplitArrayRetriever.a(bundle4);
                            }
                        }
                    }
                    builder.b(bArrA, numValueOf);
                }
            } else {
                builder.b(bundle.getByteArray(str), numValueOf);
            }
        }
        String str3 = T;
        if (bundle.containsKey(str3) && (bundle3 = bundle.getBundle(str3)) != null) {
            builder.f13894i = Rating.a(bundle3);
        }
        String str4 = U;
        if (bundle.containsKey(str4) && (bundle2 = bundle.getBundle(str4)) != null) {
            builder.f13895j = Rating.a(bundle2);
        }
        String str5 = s0;
        if (bundle.containsKey(str5)) {
            builder.c(Long.valueOf(bundle.getLong(str5)));
        }
        String str6 = X;
        if (bundle.containsKey(str6)) {
            builder.o = Integer.valueOf(bundle.getInt(str6));
        }
        String str7 = Y;
        if (bundle.containsKey(str7)) {
            builder.p = Integer.valueOf(bundle.getInt(str7));
        }
        String str8 = Z;
        if (bundle.containsKey(str8)) {
            builder.q = Integer.valueOf(bundle.getInt(str8));
        }
        String str9 = r0;
        if (bundle.containsKey(str9)) {
            builder.r = Boolean.valueOf(bundle.getBoolean(str9));
        }
        String str10 = a0;
        if (bundle.containsKey(str10)) {
            builder.s = Boolean.valueOf(bundle.getBoolean(str10));
        }
        String str11 = b0;
        if (bundle.containsKey(str11)) {
            builder.t = Integer.valueOf(bundle.getInt(str11));
        }
        String str12 = c0;
        if (bundle.containsKey(str12)) {
            builder.u = Integer.valueOf(bundle.getInt(str12));
        }
        String str13 = d0;
        if (bundle.containsKey(str13)) {
            builder.v = Integer.valueOf(bundle.getInt(str13));
        }
        String str14 = e0;
        if (bundle.containsKey(str14)) {
            builder.w = Integer.valueOf(bundle.getInt(str14));
        }
        String str15 = f0;
        if (bundle.containsKey(str15)) {
            builder.x = Integer.valueOf(bundle.getInt(str15));
        }
        String str16 = g0;
        if (bundle.containsKey(str16)) {
            builder.y = Integer.valueOf(bundle.getInt(str16));
        }
        String str17 = k0;
        if (bundle.containsKey(str17)) {
            builder.C = Integer.valueOf(bundle.getInt(str17));
        }
        String str18 = l0;
        if (bundle.containsKey(str18)) {
            builder.D = Integer.valueOf(bundle.getInt(str18));
        }
        String str19 = q0;
        if (bundle.containsKey(str19)) {
            builder.H = Integer.valueOf(bundle.getInt(str19));
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList(t0);
        if (stringArrayList != null) {
            builder.J = ImmutableList.t(stringArrayList);
        }
        return new MediaMetadata(builder);
    }

    public final Builder a() {
        Builder builder = new Builder();
        builder.f13888a = this.f13879a;
        builder.f13889b = this.f13880b;
        builder.f13890c = this.f13881c;
        builder.d = this.d;
        builder.f13891e = this.f13882e;
        builder.f13892f = this.f13883f;
        builder.g = this.g;
        builder.f13893h = this.f13884h;
        builder.f13894i = this.f13885i;
        builder.f13895j = this.f13886j;
        builder.f13896k = this.f13887k;
        builder.l = this.l;
        builder.m = this.m;
        builder.n = this.n;
        builder.o = this.o;
        builder.p = this.p;
        builder.q = this.q;
        builder.r = this.r;
        builder.s = this.s;
        builder.t = this.u;
        builder.u = this.v;
        builder.v = this.w;
        builder.w = this.x;
        builder.x = this.y;
        builder.y = this.z;
        builder.z = this.A;
        builder.A = this.B;
        builder.B = this.C;
        builder.C = this.D;
        builder.D = this.E;
        builder.E = this.F;
        builder.F = this.G;
        builder.G = this.H;
        builder.H = this.I;
        builder.J = this.K;
        builder.I = this.J;
        return builder;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:54:0x00cb  */
    public final Bundle c(int i2) {
        SharedMemory sharedMemoryCreate;
        Bundle bundle = new Bundle();
        CharSequence charSequence = this.f13879a;
        if (charSequence != null) {
            bundle.putCharSequence(M, charSequence);
        }
        CharSequence charSequence2 = this.f13880b;
        if (charSequence2 != null) {
            bundle.putCharSequence(N, charSequence2);
        }
        CharSequence charSequence3 = this.f13881c;
        if (charSequence3 != null) {
            bundle.putCharSequence(O, charSequence3);
        }
        CharSequence charSequence4 = this.d;
        if (charSequence4 != null) {
            bundle.putCharSequence(P, charSequence4);
        }
        CharSequence charSequence5 = this.f13882e;
        if (charSequence5 != null) {
            bundle.putCharSequence(Q, charSequence5);
        }
        CharSequence charSequence6 = this.f13883f;
        if (charSequence6 != null) {
            bundle.putCharSequence(R, charSequence6);
        }
        CharSequence charSequence7 = this.g;
        if (charSequence7 != null) {
            bundle.putCharSequence(S, charSequence7);
        }
        Long l = this.f13884h;
        if (l != null) {
            bundle.putLong(s0, l.longValue());
        }
        byte[] bArr = this.f13887k;
        if (bArr != null) {
            String str = V;
            if (i2 >= 9) {
                if (this.l == null) {
                    this.l = new BundleableByteArray(bArr);
                }
                BundleableByteArray bundleableByteArray = this.l;
                bundleableByteArray.getClass();
                Bundle bundle2 = new Bundle();
                bundle2.putBinder(BundleableByteArray.f13707e, bundleableByteArray.f13710b);
                byte[] bArr2 = bundleableByteArray.f13709a;
                if (bArr2.length <= 0) {
                    if (bundleableByteArray.d == null) {
                        bundleableByteArray.d = new BundleableByteArray.SplitArrayRetriever(bArr2);
                    }
                    BundleableByteArray.SplitArrayRetriever splitArrayRetriever = bundleableByteArray.d;
                    int i3 = BundleableByteArray.SplitArrayRetriever.f13714b;
                    splitArrayRetriever.getClass();
                    bundle2.putBinder(BundleableByteArray.g, splitArrayRetriever.f13715a);
                } else {
                    if (bundleableByteArray.f13711c == null) {
                        BundleableByteArray.SharedMemoryApi27 sharedMemoryApi27 = null;
                        try {
                            sharedMemoryCreate = SharedMemory.create("BundleableByteArray", bArr2.length);
                            try {
                                ByteBuffer byteBufferMapReadWrite = sharedMemoryCreate.mapReadWrite();
                                byteBufferMapReadWrite.put(bArr2);
                                SharedMemory.unmap(byteBufferMapReadWrite);
                                sharedMemoryCreate.setProtect(OsConstants.PROT_READ);
                                sharedMemoryApi27 = new BundleableByteArray.SharedMemoryApi27(sharedMemoryCreate);
                            } catch (Exception e2) {
                                e = e2;
                                Log.h("Failed to allocate shared memory for byte array, size=" + bArr2.length, e);
                                if (sharedMemoryCreate != null) {
                                    sharedMemoryCreate.close();
                                }
                            }
                        } catch (Exception e3) {
                            e = e3;
                            sharedMemoryCreate = null;
                        }
                        bundleableByteArray.f13711c = sharedMemoryApi27;
                    }
                    BundleableByteArray.SharedMemoryApi27 sharedMemoryApi28 = bundleableByteArray.f13711c;
                    if (sharedMemoryApi28 != null) {
                        bundle2.putParcelable(BundleableByteArray.f13708f, sharedMemoryApi28.f13713a);
                    } else {
                        if (bundleableByteArray.d == null) {
                            bundleableByteArray.d = new BundleableByteArray.SplitArrayRetriever(bArr2);
                        }
                        BundleableByteArray.SplitArrayRetriever splitArrayRetriever2 = bundleableByteArray.d;
                        int i4 = BundleableByteArray.SplitArrayRetriever.f13714b;
                        splitArrayRetriever2.getClass();
                        bundle2.putBinder(BundleableByteArray.g, splitArrayRetriever2.f13715a);
                    }
                }
                bundle.putBundle(str, bundle2);
            } else if (bArr.length <= 500000) {
                bundle.putByteArray(str, bArr);
            }
        }
        Uri uri = this.n;
        if (uri != null) {
            bundle.putParcelable(W, uri);
        }
        CharSequence charSequence8 = this.A;
        if (charSequence8 != null) {
            bundle.putCharSequence(h0, charSequence8);
        }
        CharSequence charSequence9 = this.B;
        if (charSequence9 != null) {
            bundle.putCharSequence(i0, charSequence9);
        }
        CharSequence charSequence10 = this.C;
        if (charSequence10 != null) {
            bundle.putCharSequence(j0, charSequence10);
        }
        CharSequence charSequence11 = this.F;
        if (charSequence11 != null) {
            bundle.putCharSequence(m0, charSequence11);
        }
        CharSequence charSequence12 = this.G;
        if (charSequence12 != null) {
            bundle.putCharSequence(n0, charSequence12);
        }
        CharSequence charSequence13 = this.H;
        if (charSequence13 != null) {
            bundle.putCharSequence(p0, charSequence13);
        }
        Rating rating = this.f13885i;
        if (rating != null) {
            bundle.putBundle(T, rating.c());
        }
        Rating rating2 = this.f13886j;
        if (rating2 != null) {
            bundle.putBundle(U, rating2.c());
        }
        Integer num = this.o;
        if (num != null) {
            bundle.putInt(X, num.intValue());
        }
        Integer num2 = this.p;
        if (num2 != null) {
            bundle.putInt(Y, num2.intValue());
        }
        Integer num3 = this.q;
        if (num3 != null) {
            bundle.putInt(Z, num3.intValue());
        }
        Boolean bool = this.r;
        if (bool != null) {
            bundle.putBoolean(r0, bool.booleanValue());
        }
        Boolean bool2 = this.s;
        if (bool2 != null) {
            bundle.putBoolean(a0, bool2.booleanValue());
        }
        Integer num4 = this.u;
        if (num4 != null) {
            bundle.putInt(b0, num4.intValue());
        }
        Integer num5 = this.v;
        if (num5 != null) {
            bundle.putInt(c0, num5.intValue());
        }
        Integer num6 = this.w;
        if (num6 != null) {
            bundle.putInt(d0, num6.intValue());
        }
        Integer num7 = this.x;
        if (num7 != null) {
            bundle.putInt(e0, num7.intValue());
        }
        Integer num8 = this.y;
        if (num8 != null) {
            bundle.putInt(f0, num8.intValue());
        }
        Integer num9 = this.z;
        if (num9 != null) {
            bundle.putInt(g0, num9.intValue());
        }
        Integer num10 = this.D;
        if (num10 != null) {
            bundle.putInt(k0, num10.intValue());
        }
        Integer num11 = this.E;
        if (num11 != null) {
            bundle.putInt(l0, num11.intValue());
        }
        Integer num12 = this.m;
        if (num12 != null) {
            bundle.putInt(o0, num12.intValue());
        }
        Integer num13 = this.I;
        if (num13 != null) {
            bundle.putInt(q0, num13.intValue());
        }
        ImmutableList immutableList = this.K;
        if (!immutableList.isEmpty()) {
            bundle.putStringArrayList(t0, new ArrayList<>(immutableList));
        }
        Bundle bundle3 = this.J;
        if (bundle3 != null) {
            bundle.putBundle(u0, bundle3);
        }
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && MediaMetadata.class == obj.getClass()) {
            MediaMetadata mediaMetadata = (MediaMetadata) obj;
            if (TextUtils.equals(this.f13879a, mediaMetadata.f13879a) && TextUtils.equals(this.f13880b, mediaMetadata.f13880b) && TextUtils.equals(this.f13881c, mediaMetadata.f13881c) && TextUtils.equals(this.d, mediaMetadata.d) && TextUtils.equals(this.f13882e, mediaMetadata.f13882e) && TextUtils.equals(this.f13883f, mediaMetadata.f13883f) && TextUtils.equals(this.g, mediaMetadata.g) && Objects.equals(this.f13884h, mediaMetadata.f13884h) && Objects.equals(this.f13885i, mediaMetadata.f13885i) && Objects.equals(this.f13886j, mediaMetadata.f13886j) && Arrays.equals(this.f13887k, mediaMetadata.f13887k) && Objects.equals(this.m, mediaMetadata.m) && Objects.equals(this.n, mediaMetadata.n) && Objects.equals(this.o, mediaMetadata.o) && Objects.equals(this.p, mediaMetadata.p) && Objects.equals(this.q, mediaMetadata.q) && Objects.equals(this.r, mediaMetadata.r) && Objects.equals(this.s, mediaMetadata.s) && Objects.equals(this.u, mediaMetadata.u) && Objects.equals(this.v, mediaMetadata.v) && Objects.equals(this.w, mediaMetadata.w) && Objects.equals(this.x, mediaMetadata.x) && Objects.equals(this.y, mediaMetadata.y) && Objects.equals(this.z, mediaMetadata.z) && TextUtils.equals(this.A, mediaMetadata.A) && TextUtils.equals(this.B, mediaMetadata.B) && TextUtils.equals(this.C, mediaMetadata.C) && Objects.equals(this.D, mediaMetadata.D) && Objects.equals(this.E, mediaMetadata.E) && TextUtils.equals(this.F, mediaMetadata.F) && TextUtils.equals(this.G, mediaMetadata.G) && TextUtils.equals(this.H, mediaMetadata.H) && Objects.equals(this.I, mediaMetadata.I) && Objects.equals(this.K, mediaMetadata.K)) {
                if ((this.J == null) == (mediaMetadata.J == null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f13879a, this.f13880b, this.f13881c, this.d, this.f13882e, this.f13883f, this.g, this.f13884h, this.f13885i, this.f13886j, Integer.valueOf(Arrays.hashCode(this.f13887k)), this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, this.C, this.D, this.E, this.F, this.G, this.H, this.I, Boolean.valueOf(this.J == null), this.K);
    }
}
