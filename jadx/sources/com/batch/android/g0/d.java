package com.batch.android.g0;

import android.content.Context;
import defpackage.fc;
import defpackage.md;
import defpackage.v40;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {

    public enum c {
        BOLD,
        ITALIC,
        UNDERLINE,
        STROKE;

        private static final /* synthetic */ EnumEntries g = EnumEntriesKt.a(a());

        public static EnumEntries<c> b() {
            return g;
        }
    }

    /* JADX INFO: renamed from: com.batch.android.g0.d$d, reason: collision with other inner class name */
    public enum EnumC0052d {
        MODAL,
        FULLSCREEN,
        WEBVIEW;


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final /* synthetic */ EnumEntries f23377f = EnumEntriesKt.a(a());

        public static EnumEntries<EnumC0052d> b() {
            return f23377f;
        }
    }

    public enum e {
        LEFT,
        CENTER,
        RIGHT;


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final /* synthetic */ EnumEntries f23381f = EnumEntriesKt.a(a());

        public /* synthetic */ class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f23382a;

            static {
                int[] iArr = new int[e.values().length];
                try {
                    iArr[e.LEFT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[e.CENTER.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[e.RIGHT.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f23382a = iArr;
            }
        }

        public static EnumEntries<e> b() {
            return f23381f;
        }

        public final int c() {
            int i2 = a.f23382a[ordinal()];
            if (i2 == 1) {
                return 8388611;
            }
            if (i2 == 2) {
                return 1;
            }
            if (i2 == 3) {
                return 8388613;
            }
            v40.g();
            return 0;
        }
    }

    public enum i {
        TOP,
        CENTER,
        BOTTOM;


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final /* synthetic */ EnumEntries f23400f = EnumEntriesKt.a(a());

        public /* synthetic */ class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f23401a;

            static {
                int[] iArr = new int[i.values().length];
                try {
                    iArr[i.TOP.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[i.CENTER.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[i.BOTTOM.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f23401a = iArr;
            }
        }

        public static EnumEntries<i> b() {
            return f23400f;
        }

        public final int c() {
            int i2 = a.f23401a[ordinal()];
            if (i2 == 1) {
                return 48;
            }
            if (i2 == 2) {
                return 16;
            }
            if (i2 == 3) {
                return 80;
            }
            v40.g();
            return 0;
        }
    }

    public static final class g implements Serializable {
        public static final a d = new a(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final String f23385e = "auto";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final String f23386f = "fill";
        private static final String g = "%";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final String f23387h = "px";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f23388b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private b f23389c;

        public enum b {
            PIXEL,
            PERCENTAGE,
            AUTO,
            FILL;

            private static final /* synthetic */ EnumEntries g = EnumEntriesKt.a(a());

            public static EnumEntries<b> b() {
                return g;
            }
        }

        public /* synthetic */ class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f23394a;

            static {
                int[] iArr = new int[b.values().length];
                try {
                    iArr[b.PERCENTAGE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[b.PIXEL.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[b.AUTO.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[b.FILL.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                f23394a = iArr;
            }
        }

        public g(String str) {
            b bVar;
            str.getClass();
            this.f23388b = str;
            if (StringsKt.p(str, g, false)) {
                bVar = b.PERCENTAGE;
            } else if (StringsKt.p(str, f23387h, false)) {
                bVar = b.PIXEL;
            } else if (str.equals(f23385e)) {
                bVar = b.AUTO;
            } else {
                if (!str.equals(f23386f)) {
                    md.n("Invalid size value: ".concat(str));
                    throw null;
                }
                bVar = b.FILL;
            }
            this.f23389c = bVar;
        }

        public static /* synthetic */ g a(g gVar, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = gVar.f23388b;
            }
            return gVar.a(str);
        }

        public final float b() {
            int i2 = c.f23394a[this.f23389c.ordinal()];
            if (i2 == 1) {
                return Float.parseFloat(StringsKt.F(this.f23388b, g));
            }
            if (i2 == 2) {
                return Float.parseFloat(StringsKt.F(this.f23388b, f23387h));
            }
            if (i2 != 3 && i2 != 4) {
                v40.g();
            }
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }

        public final b c() {
            return this.f23389c;
        }

        public final String d() {
            return this.f23388b;
        }

        public final boolean e() {
            return this.f23389c == b.AUTO;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof g) && Intrinsics.c(this.f23388b, ((g) obj).f23388b);
        }

        public final boolean f() {
            return this.f23389c == b.FILL;
        }

        public final boolean g() {
            return this.f23389c == b.PERCENTAGE;
        }

        public final boolean h() {
            return this.f23389c == b.PIXEL;
        }

        public int hashCode() {
            return this.f23388b.hashCode();
        }

        public String toString() {
            return fc.l(new StringBuilder("Size(value="), this.f23388b, ')');
        }

        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        public final g a(String str) {
            str.getClass();
            return new g(str);
        }

        public final String a() {
            return this.f23388b;
        }

        public final void a(b bVar) {
            bVar.getClass();
            this.f23389c = bVar;
        }
    }

    public static final class a implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f23366b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final h f23367c;

        public a(int i2, h hVar) {
            hVar.getClass();
            this.f23366b = i2;
            this.f23367c = hVar;
        }

        public static /* synthetic */ a a(a aVar, int i2, h hVar, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i2 = aVar.f23366b;
            }
            if ((i3 & 2) != 0) {
                hVar = aVar.f23367c;
            }
            return aVar.a(i2, hVar);
        }

        public final h b() {
            return this.f23367c;
        }

        public final h c() {
            return this.f23367c;
        }

        public final int d() {
            return this.f23366b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f23366b == aVar.f23366b && Intrinsics.c(this.f23367c, aVar.f23367c);
        }

        public int hashCode() {
            return this.f23367c.hashCode() + (Integer.hashCode(this.f23366b) * 31);
        }

        public String toString() {
            return "Border(width=" + this.f23366b + ", color=" + this.f23367c + ')';
        }

        public /* synthetic */ a(int i2, h hVar, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? 0 : i2, hVar);
        }

        public final a a(int i2, h hVar) {
            hVar.getClass();
            return new a(i2, hVar);
        }

        public final int a() {
            return this.f23366b;
        }
    }

    public static final class f implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int[] f23383b;

        public static final class a extends Lambda implements Function0<Integer> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f23384b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(int i2) {
                super(0);
                this.f23384b = i2;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Integer mo47invoke() {
                return Integer.valueOf(this.f23384b);
            }
        }

        public f(int i2) {
            this(CollectionsKt.x0(SequencesKt.x(SequencesKt.w(SequencesKt.l(new a(i2))))));
        }

        public static /* synthetic */ f a(f fVar, int[] iArr, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                iArr = fVar.f23383b;
            }
            return fVar.a(iArr);
        }

        public final float b() {
            return this.f23383b[2];
        }

        public final float c() {
            return this.f23383b[3];
        }

        public final boolean d() {
            for (int i2 : this.f23383b) {
                if (i2 != 0) {
                    return false;
                }
            }
            return true;
        }

        public final float e() {
            return this.f23383b[1];
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!f.class.equals(obj != null ? obj.getClass() : null)) {
                return false;
            }
            obj.getClass();
            return Arrays.equals(this.f23383b, ((f) obj).f23383b);
        }

        public final float f() {
            return this.f23383b[0];
        }

        public final int[] g() {
            return this.f23383b;
        }

        public int hashCode() {
            return Arrays.hashCode(this.f23383b);
        }

        public String toString() {
            return "Margin(value=" + Arrays.toString(this.f23383b) + ')';
        }

        public final f a(int[] iArr) {
            iArr.getClass();
            return new f(iArr);
        }

        public final int[] a() {
            return this.f23383b;
        }

        public f(int[] iArr) {
            iArr.getClass();
            this.f23383b = iArr;
        }

        public /* synthetic */ f(int[] iArr, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? new int[]{0, 0, 0, 0} : iArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public f() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public f(int i2, int i3) {
            this(new int[]{i2, i3, i2, i3});
        }

        public f(int i2, int i3, int i4, int i5) {
            this(new int[]{i2, i3, i4, i5});
        }
    }

    public static final class b implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int[] f23368b;

        public static final class a extends Lambda implements Function0<Integer> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f23369b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(int i2) {
                super(0);
                this.f23369b = i2;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Integer mo47invoke() {
                return Integer.valueOf(this.f23369b);
            }
        }

        public b(int i2) {
            this(CollectionsKt.x0(SequencesKt.x(SequencesKt.w(SequencesKt.l(new a(i2))))));
        }

        public final float[] a(Context context) {
            context.getClass();
            float[] fArrD = d();
            ArrayList arrayList = new ArrayList(fArrD.length);
            for (float f2 : fArrD) {
                arrayList.add(Float.valueOf(com.batch.android.o0.b.a(context.getResources(), Float.valueOf(f2))));
            }
            return CollectionsKt.v0(arrayList);
        }

        public final float b() {
            return this.f23368b[3];
        }

        public final float c() {
            return this.f23368b[2];
        }

        public final float[] d() {
            return new float[]{e(), e(), f(), f(), c(), c(), b(), b()};
        }

        public final float e() {
            return this.f23368b[0];
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!b.class.equals(obj != null ? obj.getClass() : null)) {
                return false;
            }
            obj.getClass();
            return Arrays.equals(this.f23368b, ((b) obj).f23368b);
        }

        public final float f() {
            return this.f23368b[1];
        }

        public final int[] g() {
            return this.f23368b;
        }

        public int hashCode() {
            return Arrays.hashCode(this.f23368b);
        }

        public String toString() {
            return "CornerRadius(value=" + Arrays.toString(this.f23368b) + ')';
        }

        public b(int[] iArr) {
            iArr.getClass();
            this.f23368b = iArr;
        }

        public /* synthetic */ b(int[] iArr, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? new int[]{4, 4, 4, 4} : iArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public b(int i2, int i3) {
            this(new int[]{i2, i3, i2, i3});
        }

        public b(int i2, int i3, int i4, int i5) {
            this(new int[]{i2, i3, i4, i5});
        }

        public final b a(int[] iArr) {
            iArr.getClass();
            return new b(iArr);
        }

        public static /* synthetic */ b a(b bVar, int[] iArr, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                iArr = bVar.f23368b;
            }
            return bVar.a(iArr);
        }

        public final int[] a() {
            return this.f23368b;
        }
    }

    public static final class h implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f23395b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f23396c;

        public h(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f23395b = str;
            this.f23396c = str2;
        }

        public final String a(Context context) {
            context.getClass();
            int i2 = context.getResources().getConfiguration().uiMode & 48;
            String str = (i2 == 16 || i2 != 32) ? this.f23395b : this.f23396c;
            String strE = com.batch.android.o0.b.e(str);
            strE.getClass();
            return strE;
        }

        public final String b() {
            return this.f23396c;
        }

        public final String c() {
            return this.f23396c;
        }

        public final String d() {
            return this.f23395b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return Intrinsics.c(this.f23395b, hVar.f23395b) && Intrinsics.c(this.f23396c, hVar.f23396c);
        }

        public int hashCode() {
            return this.f23396c.hashCode() + (this.f23395b.hashCode() * 31);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ThemeColors(light=");
            sb.append(this.f23395b);
            sb.append(", dark=");
            return fc.l(sb, this.f23396c, ')');
        }

        public final h a(String str, String str2) {
            str.getClass();
            str2.getClass();
            return new h(str, str2);
        }

        public static /* synthetic */ h a(h hVar, String str, String str2, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = hVar.f23395b;
            }
            if ((i2 & 2) != 0) {
                str2 = hVar.f23396c;
            }
            return hVar.a(str, str2);
        }

        public final String a() {
            return this.f23395b;
        }
    }
}
