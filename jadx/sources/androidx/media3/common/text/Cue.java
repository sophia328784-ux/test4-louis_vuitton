package androidx.media3.common.text;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.media3.common.util.Util;
import com.batch.android.q0.b;
import com.google.common.base.Preconditions;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class Cue {
    public static final String A;
    public static final String B;
    public static final String C;
    public static final String D;
    public static final String E;
    public static final String F;
    public static final String G;
    public static final String H;
    public static final String I;
    public static final String J;
    public static final String K;
    public static final String L;
    public static final String s;
    public static final String t;
    public static final String u;
    public static final String v;
    public static final String w;
    public static final String x;
    public static final String y;
    public static final String z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f14093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Layout.Alignment f14094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Layout.Alignment f14095c;
    public final Bitmap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f14096e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f14097f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f14098h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f14099i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f14100j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f14101k;
    public final boolean l;
    public final int m;
    public final int n;
    public final float o;
    public final int p;
    public final float q;
    public final int r;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface AnchorType {
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public CharSequence f14102a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Bitmap f14103b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Layout.Alignment f14104c = null;
        public Layout.Alignment d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f14105e = -3.4028235E38f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f14106f = Integer.MIN_VALUE;
        public int g = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f14107h = -3.4028235E38f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f14108i = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f14109j = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f14110k = -3.4028235E38f;
        public float l = -3.4028235E38f;
        public float m = -3.4028235E38f;
        public boolean n = false;
        public int o = b.v;
        public int p = Integer.MIN_VALUE;
        public float q;
        public int r;

        public final Cue a() {
            return new Cue(this.f14102a, this.f14104c, this.d, this.f14103b, this.f14105e, this.f14106f, this.g, this.f14107h, this.f14108i, this.f14109j, this.f14110k, this.l, this.m, this.n, this.o, this.p, this.q, this.r);
        }

        public final void b(CharSequence charSequence) {
            this.f14102a = charSequence;
            this.f14103b = null;
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface LineType {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface TextSizeType {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface VerticalType {
    }

    static {
        Builder builder = new Builder();
        builder.f14102a = "";
        builder.f14103b = null;
        builder.a();
        String str = Util.f14242a;
        s = Integer.toString(0, 36);
        t = Integer.toString(17, 36);
        u = Integer.toString(1, 36);
        v = Integer.toString(2, 36);
        w = Integer.toString(3, 36);
        x = Integer.toString(18, 36);
        y = Integer.toString(4, 36);
        z = Integer.toString(5, 36);
        A = Integer.toString(6, 36);
        B = Integer.toString(7, 36);
        C = Integer.toString(8, 36);
        D = Integer.toString(9, 36);
        E = Integer.toString(10, 36);
        F = Integer.toString(11, 36);
        G = Integer.toString(12, 36);
        H = Integer.toString(13, 36);
        I = Integer.toString(14, 36);
        J = Integer.toString(15, 36);
        K = Integer.toString(16, 36);
        L = Integer.toString(19, 36);
    }

    public Cue(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f2, int i2, int i3, float f3, int i4, int i5, float f4, float f5, float f6, boolean z2, int i6, int i7, float f7, int i8) {
        if (charSequence == null) {
            bitmap.getClass();
        } else {
            Preconditions.g(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.f14093a = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.f14093a = charSequence.toString();
        } else {
            this.f14093a = null;
        }
        this.f14094b = alignment;
        this.f14095c = alignment2;
        this.d = bitmap;
        this.f14096e = f2;
        this.f14097f = i2;
        this.g = i3;
        this.f14098h = f3;
        this.f14099i = i4;
        this.f14100j = f5;
        this.f14101k = f6;
        this.l = z2;
        this.m = i6;
        this.n = i5;
        this.o = f4;
        this.p = i7;
        this.q = f7;
        this.r = i8;
    }

    public static Cue b(Bundle bundle) {
        Builder builder = new Builder();
        CharSequence charSequence = bundle.getCharSequence(s);
        if (charSequence != null) {
            builder.b(charSequence);
            ArrayList<Bundle> parcelableArrayList = bundle.getParcelableArrayList(t);
            if (parcelableArrayList != null) {
                SpannableString spannableStringValueOf = SpannableString.valueOf(charSequence);
                for (Bundle bundle2 : parcelableArrayList) {
                    int i2 = bundle2.getInt(CustomSpanBundler.f14116a);
                    int i3 = bundle2.getInt(CustomSpanBundler.f14117b);
                    int i4 = bundle2.getInt(CustomSpanBundler.f14118c);
                    int i5 = bundle2.getInt(CustomSpanBundler.d, -1);
                    Bundle bundle3 = bundle2.getBundle(CustomSpanBundler.f14119e);
                    if (i5 == 1) {
                        bundle3.getClass();
                        String string = bundle3.getString(RubySpan.f14120c);
                        string.getClass();
                        spannableStringValueOf.setSpan(new RubySpan(string, bundle3.getInt(RubySpan.d)), i2, i3, i4);
                    } else if (i5 == 2) {
                        bundle3.getClass();
                        spannableStringValueOf.setSpan(new TextEmphasisSpan(bundle3.getInt(TextEmphasisSpan.d), bundle3.getInt(TextEmphasisSpan.f14123e), bundle3.getInt(TextEmphasisSpan.f14124f)), i2, i3, i4);
                    } else if (i5 == 3) {
                        spannableStringValueOf.setSpan(new HorizontalTextInVerticalContextSpan(), i2, i3, i4);
                    } else if (i5 == 4) {
                        bundle3.getClass();
                        String string2 = bundle3.getString(VoiceSpan.f14128b);
                        string2.getClass();
                        spannableStringValueOf.setSpan(new VoiceSpan(string2), i2, i3, i4);
                    }
                }
                builder.b(spannableStringValueOf);
            }
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(u);
        if (alignment != null) {
            builder.f14104c = alignment;
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(v);
        if (alignment2 != null) {
            builder.d = alignment2;
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(w);
        if (bitmap != null) {
            builder.f14103b = bitmap;
            builder.f14102a = null;
        } else {
            byte[] byteArray = bundle.getByteArray(x);
            if (byteArray != null) {
                builder.f14103b = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
                builder.f14102a = null;
            }
        }
        String str = y;
        if (bundle.containsKey(str)) {
            String str2 = z;
            if (bundle.containsKey(str2)) {
                float f2 = bundle.getFloat(str);
                int i6 = bundle.getInt(str2);
                builder.f14105e = f2;
                builder.f14106f = i6;
            }
        }
        String str3 = A;
        if (bundle.containsKey(str3)) {
            builder.g = bundle.getInt(str3);
        }
        String str4 = B;
        if (bundle.containsKey(str4)) {
            builder.f14107h = bundle.getFloat(str4);
        }
        String str5 = C;
        if (bundle.containsKey(str5)) {
            builder.f14108i = bundle.getInt(str5);
        }
        String str6 = E;
        if (bundle.containsKey(str6)) {
            String str7 = D;
            if (bundle.containsKey(str7)) {
                float f3 = bundle.getFloat(str6);
                int i7 = bundle.getInt(str7);
                builder.f14110k = f3;
                builder.f14109j = i7;
            }
        }
        String str8 = F;
        if (bundle.containsKey(str8)) {
            builder.l = bundle.getFloat(str8);
        }
        String str9 = G;
        if (bundle.containsKey(str9)) {
            builder.m = bundle.getFloat(str9);
        }
        String str10 = H;
        if (bundle.containsKey(str10)) {
            builder.o = bundle.getInt(str10);
            builder.n = true;
        }
        if (!bundle.getBoolean(I, false)) {
            builder.n = false;
        }
        String str11 = J;
        if (bundle.containsKey(str11)) {
            builder.p = bundle.getInt(str11);
        }
        String str12 = K;
        if (bundle.containsKey(str12)) {
            builder.q = bundle.getFloat(str12);
        }
        String str13 = L;
        if (bundle.containsKey(str13)) {
            builder.r = bundle.getInt(str13);
        }
        return builder.a();
    }

    public final Builder a() {
        Builder builder = new Builder();
        builder.f14102a = this.f14093a;
        builder.f14103b = this.d;
        builder.f14104c = this.f14094b;
        builder.d = this.f14095c;
        builder.f14105e = this.f14096e;
        builder.f14106f = this.f14097f;
        builder.g = this.g;
        builder.f14107h = this.f14098h;
        builder.f14108i = this.f14099i;
        builder.f14109j = this.n;
        builder.f14110k = this.o;
        builder.l = this.f14100j;
        builder.m = this.f14101k;
        builder.n = this.l;
        builder.o = this.m;
        builder.p = this.p;
        builder.q = this.q;
        builder.r = this.r;
        return builder;
    }

    public final Bundle c() {
        Bundle bundle = new Bundle();
        CharSequence charSequence = this.f14093a;
        if (charSequence != null) {
            bundle.putCharSequence(s, charSequence);
            if (charSequence instanceof Spanned) {
                Spanned spanned = (Spanned) charSequence;
                String str = CustomSpanBundler.f14116a;
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                for (RubySpan rubySpan : (RubySpan[]) spanned.getSpans(0, spanned.length(), RubySpan.class)) {
                    rubySpan.getClass();
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(RubySpan.f14120c, rubySpan.f14121a);
                    bundle2.putInt(RubySpan.d, rubySpan.f14122b);
                    arrayList.add(CustomSpanBundler.a(spanned, rubySpan, 1, bundle2));
                }
                for (TextEmphasisSpan textEmphasisSpan : (TextEmphasisSpan[]) spanned.getSpans(0, spanned.length(), TextEmphasisSpan.class)) {
                    textEmphasisSpan.getClass();
                    Bundle bundle3 = new Bundle();
                    bundle3.putInt(TextEmphasisSpan.d, textEmphasisSpan.f14125a);
                    bundle3.putInt(TextEmphasisSpan.f14123e, textEmphasisSpan.f14126b);
                    bundle3.putInt(TextEmphasisSpan.f14124f, textEmphasisSpan.f14127c);
                    arrayList.add(CustomSpanBundler.a(spanned, textEmphasisSpan, 2, bundle3));
                }
                for (HorizontalTextInVerticalContextSpan horizontalTextInVerticalContextSpan : (HorizontalTextInVerticalContextSpan[]) spanned.getSpans(0, spanned.length(), HorizontalTextInVerticalContextSpan.class)) {
                    arrayList.add(CustomSpanBundler.a(spanned, horizontalTextInVerticalContextSpan, 3, null));
                }
                for (VoiceSpan voiceSpan : (VoiceSpan[]) spanned.getSpans(0, spanned.length(), VoiceSpan.class)) {
                    voiceSpan.getClass();
                    Bundle bundle4 = new Bundle();
                    bundle4.putString(VoiceSpan.f14128b, voiceSpan.f14129a);
                    arrayList.add(CustomSpanBundler.a(spanned, voiceSpan, 4, bundle4));
                }
                if (!arrayList.isEmpty()) {
                    bundle.putParcelableArrayList(t, arrayList);
                }
            }
        }
        bundle.putSerializable(u, this.f14094b);
        bundle.putSerializable(v, this.f14095c);
        bundle.putFloat(y, this.f14096e);
        bundle.putInt(z, this.f14097f);
        bundle.putInt(A, this.g);
        bundle.putFloat(B, this.f14098h);
        bundle.putInt(C, this.f14099i);
        bundle.putInt(D, this.n);
        bundle.putFloat(E, this.o);
        bundle.putFloat(F, this.f14100j);
        bundle.putFloat(G, this.f14101k);
        bundle.putBoolean(I, this.l);
        bundle.putInt(H, this.m);
        bundle.putInt(J, this.p);
        bundle.putFloat(K, this.q);
        bundle.putInt(L, this.r);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Cue.class != obj.getClass()) {
            return false;
        }
        Cue cue = (Cue) obj;
        if (!TextUtils.equals(this.f14093a, cue.f14093a) || this.f14094b != cue.f14094b || this.f14095c != cue.f14095c) {
            return false;
        }
        Bitmap bitmap = cue.d;
        Bitmap bitmap2 = this.d;
        if (bitmap2 == null) {
            if (bitmap != null) {
                return false;
            }
        } else if (bitmap == null || !bitmap2.sameAs(bitmap)) {
            return false;
        }
        return this.f14096e == cue.f14096e && this.f14097f == cue.f14097f && this.g == cue.g && this.f14098h == cue.f14098h && this.f14099i == cue.f14099i && this.f14100j == cue.f14100j && this.f14101k == cue.f14101k && this.l == cue.l && this.m == cue.m && this.n == cue.n && this.o == cue.o && this.p == cue.p && this.q == cue.q && this.r == cue.r;
    }

    public final int hashCode() {
        return Objects.hash(this.f14093a, this.f14094b, this.f14095c, this.d, Float.valueOf(this.f14096e), Integer.valueOf(this.f14097f), Integer.valueOf(this.g), Float.valueOf(this.f14098h), Integer.valueOf(this.f14099i), Float.valueOf(this.f14100j), Float.valueOf(this.f14101k), Boolean.valueOf(this.l), Integer.valueOf(this.m), Integer.valueOf(this.n), Float.valueOf(this.o), Integer.valueOf(this.p), Float.valueOf(this.q), Integer.valueOf(this.r));
    }
}
