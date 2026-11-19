package androidx.media3.extractor.text.ssa;

import android.graphics.Color;
import android.graphics.PointF;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import defpackage.cj;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
final class SsaStyle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f16803c;
    public final Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f16804e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f16805f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f16806h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f16807i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f16808j;

    public static final class Format {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16809a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16810b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f16811c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f16812e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f16813f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f16814h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f16815i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f16816j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f16817k;

        public Format(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
            this.f16809a = i2;
            this.f16810b = i3;
            this.f16811c = i4;
            this.d = i5;
            this.f16812e = i6;
            this.f16813f = i7;
            this.g = i8;
            this.f16814h = i9;
            this.f16815i = i10;
            this.f16816j = i11;
            this.f16817k = i12;
        }
    }

    public static final class Overrides {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Pattern f16818a = Pattern.compile("\\{([^}]*)\\}");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Pattern f16819b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Pattern f16820c;
        public static final Pattern d;

        static {
            String str = Util.f14242a;
            Locale locale = Locale.US;
            f16819b = Pattern.compile(String.format(locale, "\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
            f16820c = Pattern.compile(String.format(locale, "\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
            d = Pattern.compile("\\\\an(\\d+)");
        }

        public static PointF a(String str) {
            String strGroup;
            String strGroup2;
            Matcher matcher = f16819b.matcher(str);
            Matcher matcher2 = f16820c.matcher(str);
            boolean zFind = matcher.find();
            boolean zFind2 = matcher2.find();
            if (zFind) {
                if (zFind2) {
                    Log.f("Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + str + "'");
                }
                strGroup = matcher.group(1);
                strGroup2 = matcher.group(2);
            } else {
                if (!zFind2) {
                    return null;
                }
                strGroup = matcher2.group(1);
                strGroup2 = matcher2.group(2);
            }
            strGroup.getClass();
            float f2 = Float.parseFloat(strGroup.trim());
            strGroup2.getClass();
            return new PointF(f2, Float.parseFloat(strGroup2.trim()));
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface SsaAlignment {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface SsaBorderStyle {
    }

    public SsaStyle(String str, int i2, Integer num, Integer num2, float f2, boolean z, boolean z2, boolean z3, boolean z4, int i3) {
        this.f16801a = str;
        this.f16802b = i2;
        this.f16803c = num;
        this.d = num2;
        this.f16804e = f2;
        this.f16805f = z;
        this.g = z2;
        this.f16806h = z3;
        this.f16807i = z4;
        this.f16808j = i3;
    }

    public static int a(String str) {
        try {
            int i2 = Integer.parseInt(str.trim());
            switch (i2) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    return i2;
                default:
                    cj.y("Ignoring unknown alignment: ", str);
                    return -1;
            }
        } catch (NumberFormatException unused) {
        }
    }

    public static boolean b(String str) {
        try {
            int i2 = Integer.parseInt(str);
            return i2 == 1 || i2 == -1;
        } catch (NumberFormatException e2) {
            Log.h("Failed to parse boolean value: '" + str + "'", e2);
            return false;
        }
    }

    public static Integer c(String str) {
        try {
            long j2 = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            Preconditions.g(j2 <= BodyPartID.bodyIdMax);
            return Integer.valueOf(Color.argb(Ints.b(((j2 >> 24) & 255) ^ 255), Ints.b(j2 & 255), Ints.b((j2 >> 8) & 255), Ints.b((j2 >> 16) & 255)));
        } catch (IllegalArgumentException e2) {
            Log.h("Failed to parse color expression: '" + str + "'", e2);
            return null;
        }
    }
}
