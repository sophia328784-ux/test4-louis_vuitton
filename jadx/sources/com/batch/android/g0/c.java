package com.batch.android.g0;

import android.graphics.Typeface;
import android.text.TextPaint;
import android.widget.ImageView;
import android.widget.TextView;
import defpackage.d21;
import defpackage.md;
import defpackage.tr;
import defpackage.v40;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f23324b;

    public interface b {

        public static final class a {
            public static boolean a(b bVar) {
                return false;
            }
        }

        boolean isEmpty();
    }

    public interface f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f23339a = a.f23340a;

        public static final class b {
            public static int a(f fVar) {
                if (fVar.b()) {
                    return 3;
                }
                if (fVar.e()) {
                    return 1;
                }
                return fVar.g() ? 2 : 0;
            }

            public static boolean b(f fVar) {
                return fVar.h().contains(com.batch.android.g0.d.c.BOLD);
            }

            public static boolean c(f fVar) {
                return fVar.e() && fVar.g();
            }

            public static boolean d(f fVar) {
                return fVar.h().contains(com.batch.android.g0.d.c.ITALIC);
            }

            public static boolean e(f fVar) {
                return fVar.h().contains(com.batch.android.g0.d.c.STROKE);
            }

            public static boolean f(f fVar) {
                return fVar.h().contains(com.batch.android.g0.d.c.UNDERLINE);
            }
        }

        static void a(Typeface typeface) {
            f23339a.a(typeface);
        }

        static void b(Typeface typeface) {
            f23339a.b(typeface);
        }

        static Typeface f() {
            return f23339a.c();
        }

        static Typeface i() {
            return f23339a.a();
        }

        int a();

        boolean b();

        boolean c();

        boolean d();

        boolean e();

        boolean g();

        Set<com.batch.android.g0.d.c> h();

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            static final /* synthetic */ a f23340a = new a();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private static Typeface f23341b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private static Typeface f23342c;

            private a() {
            }

            @JvmStatic
            public static /* synthetic */ void d() {
            }

            public final void a(TextView textView, f fVar) {
                textView.getClass();
                fVar.getClass();
                Typeface typeface = fVar.e() ? f23342c : f23341b;
                if (typeface != null) {
                    textView.setTypeface(Typeface.create(typeface, fVar.a()));
                } else {
                    textView.setTypeface(textView.getTypeface(), fVar.a());
                }
                TextPaint paint = textView.getPaint();
                paint.setUnderlineText(fVar.c());
                paint.setStrikeThruText(fVar.d());
            }

            public final void b(Typeface typeface) {
                f23341b = typeface;
            }

            public final Typeface c() {
                return f23341b;
            }

            @JvmStatic
            public static /* synthetic */ void b() {
            }

            public final void a(Typeface typeface) {
                f23342c = typeface;
            }

            public final Typeface a() {
                return f23342c;
            }
        }
    }

    public enum j {
        TEXT,
        BUTTON,
        IMAGE,
        DIVIDER,
        COLUMNS,
        SPACER,
        WEBVIEW;


        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final /* synthetic */ EnumEntries f23362j = EnumEntriesKt.a(a());

        public static EnumEntries<j> b() {
            return f23362j;
        }
    }

    private c(j jVar) {
        this.f23324b = jVar;
    }

    public final j j() {
        return this.f23324b;
    }

    public /* synthetic */ c(j jVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(jVar);
    }

    public static final class e implements b, Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f23338b;

        public /* synthetic */ e(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? true : z);
        }

        public static /* synthetic */ e a(e eVar, boolean z, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                z = eVar.f23338b;
            }
            return eVar.a(z);
        }

        public final boolean b() {
            return this.f23338b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof e) && this.f23338b == ((e) obj).f23338b;
        }

        public int hashCode() {
            boolean z = this.f23338b;
            if (z) {
                return 1;
            }
            return z ? 1 : 0;
        }

        @Override // com.batch.android.g0.c.b
        public boolean isEmpty() {
            return this.f23338b;
        }

        public String toString() {
            return d21.q(new StringBuilder("EmptySpacer(empty="), this.f23338b, ')');
        }

        public e(boolean z) {
            this.f23338b = z;
        }

        public e() {
            this(false, 1, null);
        }

        public final e a(boolean z) {
            return new e(z);
        }

        public final boolean a() {
            return this.f23338b;
        }
    }

    public static final class h extends c implements b, Serializable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.batch.android.g0.d.g f23350c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(com.batch.android.g0.d.g gVar) {
            super(j.SPACER, null);
            gVar.getClass();
            this.f23350c = gVar;
        }

        public static /* synthetic */ h a(h hVar, com.batch.android.g0.d.g gVar, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                gVar = hVar.f23350c;
            }
            return hVar.a(gVar);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof h) && Intrinsics.c(this.f23350c, ((h) obj).f23350c);
        }

        public int hashCode() {
            return this.f23350c.hashCode();
        }

        @Override // com.batch.android.g0.c.b
        public boolean isEmpty() {
            return b.a.a(this);
        }

        public final com.batch.android.g0.d.g k() {
            return this.f23350c;
        }

        public final com.batch.android.g0.d.g l() {
            return this.f23350c;
        }

        public String toString() {
            return "Spacer(height=" + this.f23350c + ')';
        }

        public final h a(com.batch.android.g0.d.g gVar) {
            gVar.getClass();
            return new h(gVar);
        }
    }

    public static final class k extends c implements Serializable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f23363c;
        private final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f23364e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f23365f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(String str, int i2, boolean z, boolean z2) {
            super(j.WEBVIEW, null);
            str.getClass();
            this.f23363c = str;
            this.d = i2;
            this.f23364e = z;
            this.f23365f = z2;
        }

        public static /* synthetic */ k a(k kVar, String str, int i2, boolean z, boolean z2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                str = kVar.f23363c;
            }
            if ((i3 & 2) != 0) {
                i2 = kVar.d;
            }
            if ((i3 & 4) != 0) {
                z = kVar.f23364e;
            }
            if ((i3 & 8) != 0) {
                z2 = kVar.f23365f;
            }
            return kVar.a(str, i2, z, z2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return Intrinsics.c(this.f23363c, kVar.f23363c) && this.d == kVar.d && this.f23364e == kVar.f23364e && this.f23365f == kVar.f23365f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v4, types: [int] */
        /* JADX WARN: Type inference failed for: r0v6, types: [int] */
        /* JADX WARN: Type inference failed for: r2v2, types: [int] */
        /* JADX WARN: Type inference failed for: r2v3 */
        /* JADX WARN: Type inference failed for: r2v4 */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v1, types: [int] */
        /* JADX WARN: Type inference failed for: r3v2 */
        public int hashCode() {
            int iB = tr.b(this.d, this.f23363c.hashCode() * 31, 31);
            boolean z = this.f23364e;
            ?? r2 = z;
            if (z) {
                r2 = 1;
            }
            int i2 = (iB + r2) * 31;
            boolean z2 = this.f23365f;
            return i2 + (z2 ? 1 : z2);
        }

        public final String k() {
            return this.f23363c;
        }

        public final int l() {
            return this.d;
        }

        public final boolean m() {
            return this.f23364e;
        }

        public final boolean n() {
            return this.f23365f;
        }

        public final boolean o() {
            return this.f23365f;
        }

        public final String p() {
            return this.f23363c;
        }

        public final boolean q() {
            return this.f23364e;
        }

        public final int r() {
            return this.d;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("WebView(id=");
            sb.append(this.f23363c);
            sb.append(", timeout=");
            sb.append(this.d);
            sb.append(", openDeeplinksInApp=");
            sb.append(this.f23364e);
            sb.append(", devMode=");
            return d21.q(sb, this.f23365f, ')');
        }

        public final k a(String str, int i2, boolean z, boolean z2) {
            str.getClass();
            return new k(str, i2, z, z2);
        }
    }

    /* JADX INFO: renamed from: com.batch.android.g0.c$c, reason: collision with other inner class name */
    public static final class C0050c extends c implements Serializable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float[] f23332c;
        private final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final com.batch.android.g0.d.f f23333e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final com.batch.android.g0.d.i f23334f;
        private final List<b> g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C0050c(float[] fArr, int i2, com.batch.android.g0.d.f fVar, com.batch.android.g0.d.i iVar, List<? extends b> list) {
            super(j.COLUMNS, null);
            fArr.getClass();
            fVar.getClass();
            iVar.getClass();
            list.getClass();
            this.f23332c = fArr;
            this.d = i2;
            this.f23333e = fVar;
            this.f23334f = iVar;
            this.g = list;
            if (list.size() != fArr.length) {
                md.n("Number of ratios must match the number of children");
                throw null;
            }
            List listP = CollectionsKt.P(Float.valueOf(1.0f), Float.valueOf(100.0f));
            float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            for (float f3 : fArr) {
                f2 += f3;
            }
            if (listP.contains(Float.valueOf(f2))) {
                return;
            }
            md.n("Sum of ratio must be 1 or 100");
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ C0050c a(C0050c c0050c, float[] fArr, int i2, com.batch.android.g0.d.f fVar, com.batch.android.g0.d.i iVar, List list, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                fArr = c0050c.f23332c;
            }
            if ((i3 & 2) != 0) {
                i2 = c0050c.d;
            }
            if ((i3 & 4) != 0) {
                fVar = c0050c.f23333e;
            }
            if ((i3 & 8) != 0) {
                iVar = c0050c.f23334f;
            }
            if ((i3 & 16) != 0) {
                list = c0050c.g;
            }
            List list2 = list;
            com.batch.android.g0.d.f fVar2 = fVar;
            return c0050c.a(fArr, i2, fVar2, iVar, list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!C0050c.class.equals(obj != null ? obj.getClass() : null)) {
                return false;
            }
            obj.getClass();
            C0050c c0050c = (C0050c) obj;
            return Intrinsics.c(this.g, c0050c.g) && Arrays.equals(this.f23332c, c0050c.f23332c) && this.d == c0050c.d && Intrinsics.c(this.f23333e, c0050c.f23333e) && this.f23334f == c0050c.f23334f;
        }

        public int hashCode() {
            return this.f23334f.hashCode() + ((this.f23333e.hashCode() + ((((Arrays.hashCode(this.f23332c) + (this.g.hashCode() * 31)) * 31) + this.d) * 31)) * 31);
        }

        public final float[] k() {
            return this.f23332c;
        }

        public final int l() {
            return this.d;
        }

        public final com.batch.android.g0.d.f m() {
            return this.f23333e;
        }

        public final com.batch.android.g0.d.i n() {
            return this.f23334f;
        }

        public final List<b> o() {
            return this.g;
        }

        public final List<b> p() {
            return this.g;
        }

        public final com.batch.android.g0.d.i q() {
            return this.f23334f;
        }

        public final com.batch.android.g0.d.f r() {
            return this.f23333e;
        }

        public final float[] s() {
            return this.f23332c;
        }

        public final int t() {
            return this.d;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Columns(ratios=");
            sb.append(Arrays.toString(this.f23332c));
            sb.append(", spacing=");
            sb.append(this.d);
            sb.append(", margins=");
            sb.append(this.f23333e);
            sb.append(", contentAlign=");
            sb.append(this.f23334f);
            sb.append(", children=");
            return tr.m(sb, this.g, ')');
        }

        public final boolean u() {
            List<b> list = this.g;
            if ((list instanceof Collection) && list.isEmpty()) {
                return false;
            }
            for (b bVar : list) {
                if ((bVar instanceof g) && ((g) bVar).q().f()) {
                    return true;
                }
                if ((bVar instanceof h) && ((h) bVar).l().f()) {
                    return true;
                }
            }
            return false;
        }

        public final C0050c a(float[] fArr, int i2, com.batch.android.g0.d.f fVar, com.batch.android.g0.d.i iVar, List<? extends b> list) {
            fArr.getClass();
            fVar.getClass();
            iVar.getClass();
            list.getClass();
            return new C0050c(fArr, i2, fVar, iVar, list);
        }
    }

    public static final class d extends c implements b, Serializable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f23335c;
        private final com.batch.android.g0.d.h d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final com.batch.android.g0.d.g f23336e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final com.batch.android.g0.d.e f23337f;
        private final com.batch.android.g0.d.f g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(int i2, com.batch.android.g0.d.h hVar, com.batch.android.g0.d.g gVar, com.batch.android.g0.d.e eVar, com.batch.android.g0.d.f fVar) {
            super(j.DIVIDER, null);
            hVar.getClass();
            gVar.getClass();
            eVar.getClass();
            fVar.getClass();
            this.f23335c = i2;
            this.d = hVar;
            this.f23336e = gVar;
            this.f23337f = eVar;
            this.g = fVar;
        }

        public static /* synthetic */ d a(d dVar, int i2, com.batch.android.g0.d.h hVar, com.batch.android.g0.d.g gVar, com.batch.android.g0.d.e eVar, com.batch.android.g0.d.f fVar, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i2 = dVar.f23335c;
            }
            if ((i3 & 2) != 0) {
                hVar = dVar.d;
            }
            if ((i3 & 4) != 0) {
                gVar = dVar.f23336e;
            }
            if ((i3 & 8) != 0) {
                eVar = dVar.f23337f;
            }
            if ((i3 & 16) != 0) {
                fVar = dVar.g;
            }
            com.batch.android.g0.d.f fVar2 = fVar;
            com.batch.android.g0.d.g gVar2 = gVar;
            return dVar.a(i2, hVar, gVar2, eVar, fVar2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f23335c == dVar.f23335c && Intrinsics.c(this.d, dVar.d) && Intrinsics.c(this.f23336e, dVar.f23336e) && this.f23337f == dVar.f23337f && Intrinsics.c(this.g, dVar.g);
        }

        public int hashCode() {
            return this.g.hashCode() + ((this.f23337f.hashCode() + ((this.f23336e.hashCode() + ((this.d.hashCode() + (Integer.hashCode(this.f23335c) * 31)) * 31)) * 31)) * 31);
        }

        @Override // com.batch.android.g0.c.b
        public boolean isEmpty() {
            return b.a.a(this);
        }

        public final int k() {
            return this.f23335c;
        }

        public final com.batch.android.g0.d.h l() {
            return this.d;
        }

        public final com.batch.android.g0.d.g m() {
            return this.f23336e;
        }

        public final com.batch.android.g0.d.e n() {
            return this.f23337f;
        }

        public final com.batch.android.g0.d.f o() {
            return this.g;
        }

        public final com.batch.android.g0.d.e p() {
            return this.f23337f;
        }

        public final com.batch.android.g0.d.h q() {
            return this.d;
        }

        public final com.batch.android.g0.d.f r() {
            return this.g;
        }

        public final int s() {
            return this.f23335c;
        }

        public final com.batch.android.g0.d.g t() {
            return this.f23336e;
        }

        public String toString() {
            return "Divider(thickness=" + this.f23335c + ", color=" + this.d + ", width=" + this.f23336e + ", align=" + this.f23337f + ", margins=" + this.g + ')';
        }

        public final d a(int i2, com.batch.android.g0.d.h hVar, com.batch.android.g0.d.g gVar, com.batch.android.g0.d.e eVar, com.batch.android.g0.d.f fVar) {
            hVar.getClass();
            gVar.getClass();
            eVar.getClass();
            fVar.getClass();
            return new d(i2, hVar, gVar, eVar, fVar);
        }
    }

    public static final class g extends c implements b, Serializable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f23343c;
        private final com.batch.android.g0.d.g d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final com.batch.android.g0.d.f f23344e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final a f23345f;
        private final com.batch.android.g0.d.b g;

        public enum a {
            FIT,
            FILL;


            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private static final /* synthetic */ EnumEntries f23348e = EnumEntriesKt.a(a());

            /* JADX INFO: renamed from: com.batch.android.g0.c$g$a$a, reason: collision with other inner class name */
            public /* synthetic */ class C0051a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final /* synthetic */ int[] f23349a;

                static {
                    int[] iArr = new int[a.values().length];
                    try {
                        iArr[a.FIT.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[a.FILL.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    f23349a = iArr;
                }
            }

            public static EnumEntries<a> b() {
                return f23348e;
            }

            public final ImageView.ScaleType c() {
                int i2 = C0051a.f23349a[ordinal()];
                if (i2 == 1) {
                    return ImageView.ScaleType.FIT_CENTER;
                }
                if (i2 == 2) {
                    return ImageView.ScaleType.CENTER_CROP;
                }
                v40.g();
                return null;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, com.batch.android.g0.d.g gVar, com.batch.android.g0.d.f fVar, a aVar, com.batch.android.g0.d.b bVar) {
            super(j.IMAGE, null);
            str.getClass();
            gVar.getClass();
            fVar.getClass();
            aVar.getClass();
            bVar.getClass();
            this.f23343c = str;
            this.d = gVar;
            this.f23344e = fVar;
            this.f23345f = aVar;
            this.g = bVar;
        }

        public static /* synthetic */ g a(g gVar, String str, com.batch.android.g0.d.g gVar2, com.batch.android.g0.d.f fVar, a aVar, com.batch.android.g0.d.b bVar, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = gVar.f23343c;
            }
            if ((i2 & 2) != 0) {
                gVar2 = gVar.d;
            }
            if ((i2 & 4) != 0) {
                fVar = gVar.f23344e;
            }
            if ((i2 & 8) != 0) {
                aVar = gVar.f23345f;
            }
            if ((i2 & 16) != 0) {
                bVar = gVar.g;
            }
            com.batch.android.g0.d.b bVar2 = bVar;
            com.batch.android.g0.d.f fVar2 = fVar;
            return gVar.a(str, gVar2, fVar2, aVar, bVar2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return Intrinsics.c(this.f23343c, gVar.f23343c) && Intrinsics.c(this.d, gVar.d) && Intrinsics.c(this.f23344e, gVar.f23344e) && this.f23345f == gVar.f23345f && Intrinsics.c(this.g, gVar.g);
        }

        public int hashCode() {
            return this.g.hashCode() + ((this.f23345f.hashCode() + ((this.f23344e.hashCode() + ((this.d.hashCode() + (this.f23343c.hashCode() * 31)) * 31)) * 31)) * 31);
        }

        @Override // com.batch.android.g0.c.b
        public boolean isEmpty() {
            return b.a.a(this);
        }

        public final String k() {
            return this.f23343c;
        }

        public final com.batch.android.g0.d.g l() {
            return this.d;
        }

        public final com.batch.android.g0.d.f m() {
            return this.f23344e;
        }

        public final a n() {
            return this.f23345f;
        }

        public final com.batch.android.g0.d.b o() {
            return this.g;
        }

        public final a p() {
            return this.f23345f;
        }

        public final com.batch.android.g0.d.g q() {
            return this.d;
        }

        public final String r() {
            return this.f23343c;
        }

        public final com.batch.android.g0.d.f s() {
            return this.f23344e;
        }

        public final com.batch.android.g0.d.b t() {
            return this.g;
        }

        public String toString() {
            return "Image(id=" + this.f23343c + ", height=" + this.d + ", margins=" + this.f23344e + ", aspectRatio=" + this.f23345f + ", radius=" + this.g + ')';
        }

        public final g a(String str, com.batch.android.g0.d.g gVar, com.batch.android.g0.d.f fVar, a aVar, com.batch.android.g0.d.b bVar) {
            str.getClass();
            gVar.getClass();
            fVar.getClass();
            aVar.getClass();
            bVar.getClass();
            return new g(str, gVar, fVar, aVar, bVar);
        }
    }

    public static final class i extends c implements f, b, Serializable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f23351c;
        private final com.batch.android.g0.d.h d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final com.batch.android.g0.d.f f23352e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final com.batch.android.g0.d.e f23353f;
        private final Set<com.batch.android.g0.d.c> g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int f23354h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final int f23355i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public i(String str, com.batch.android.g0.d.h hVar, com.batch.android.g0.d.f fVar, com.batch.android.g0.d.e eVar, Set<? extends com.batch.android.g0.d.c> set, int i2, int i3) {
            super(j.TEXT, null);
            str.getClass();
            hVar.getClass();
            fVar.getClass();
            eVar.getClass();
            set.getClass();
            this.f23351c = str;
            this.d = hVar;
            this.f23352e = fVar;
            this.f23353f = eVar;
            this.g = set;
            this.f23354h = i2;
            this.f23355i = i3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ i a(i iVar, String str, com.batch.android.g0.d.h hVar, com.batch.android.g0.d.f fVar, com.batch.android.g0.d.e eVar, Set set, int i2, int i3, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                str = iVar.f23351c;
            }
            if ((i4 & 2) != 0) {
                hVar = iVar.d;
            }
            if ((i4 & 4) != 0) {
                fVar = iVar.f23352e;
            }
            if ((i4 & 8) != 0) {
                eVar = iVar.f23353f;
            }
            if ((i4 & 16) != 0) {
                set = iVar.g;
            }
            if ((i4 & 32) != 0) {
                i2 = iVar.f23354h;
            }
            if ((i4 & 64) != 0) {
                i3 = iVar.f23355i;
            }
            int i5 = i2;
            int i6 = i3;
            Set set2 = set;
            com.batch.android.g0.d.f fVar2 = fVar;
            return iVar.a(str, hVar, fVar2, eVar, set2, i5, i6);
        }

        @Override // com.batch.android.g0.c.f
        public boolean b() {
            return f.b.c(this);
        }

        @Override // com.batch.android.g0.c.f
        public boolean c() {
            return f.b.f(this);
        }

        @Override // com.batch.android.g0.c.f
        public boolean d() {
            return f.b.e(this);
        }

        @Override // com.batch.android.g0.c.f
        public boolean e() {
            return f.b.b(this);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return Intrinsics.c(this.f23351c, iVar.f23351c) && Intrinsics.c(this.d, iVar.d) && Intrinsics.c(this.f23352e, iVar.f23352e) && this.f23353f == iVar.f23353f && Intrinsics.c(this.g, iVar.g) && this.f23354h == iVar.f23354h && this.f23355i == iVar.f23355i;
        }

        @Override // com.batch.android.g0.c.f
        public boolean g() {
            return f.b.d(this);
        }

        @Override // com.batch.android.g0.c.f
        public Set<com.batch.android.g0.d.c> h() {
            return this.g;
        }

        public int hashCode() {
            return Integer.hashCode(this.f23355i) + tr.b(this.f23354h, (this.g.hashCode() + ((this.f23353f.hashCode() + ((this.f23352e.hashCode() + ((this.d.hashCode() + (this.f23351c.hashCode() * 31)) * 31)) * 31)) * 31)) * 31, 31);
        }

        @Override // com.batch.android.g0.c.b
        public boolean isEmpty() {
            return b.a.a(this);
        }

        public final String k() {
            return this.f23351c;
        }

        public final com.batch.android.g0.d.h l() {
            return this.d;
        }

        public final com.batch.android.g0.d.f m() {
            return this.f23352e;
        }

        public final com.batch.android.g0.d.e n() {
            return this.f23353f;
        }

        public final Set<com.batch.android.g0.d.c> o() {
            return this.g;
        }

        public final int p() {
            return this.f23354h;
        }

        public final int q() {
            return this.f23355i;
        }

        public final com.batch.android.g0.d.h r() {
            return this.d;
        }

        public final int s() {
            return this.f23354h;
        }

        public final String t() {
            return this.f23351c;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Text(id=");
            sb.append(this.f23351c);
            sb.append(", color=");
            sb.append(this.d);
            sb.append(", margins=");
            sb.append(this.f23352e);
            sb.append(", textAlignment=");
            sb.append(this.f23353f);
            sb.append(", fontDecorations=");
            sb.append(this.g);
            sb.append(", fontSize=");
            sb.append(this.f23354h);
            sb.append(", maxLines=");
            return tr.k(sb, this.f23355i, ')');
        }

        public final com.batch.android.g0.d.f u() {
            return this.f23352e;
        }

        public final int v() {
            return this.f23355i;
        }

        public final com.batch.android.g0.d.e w() {
            return this.f23353f;
        }

        public final i a(String str, com.batch.android.g0.d.h hVar, com.batch.android.g0.d.f fVar, com.batch.android.g0.d.e eVar, Set<? extends com.batch.android.g0.d.c> set, int i2, int i3) {
            str.getClass();
            hVar.getClass();
            fVar.getClass();
            eVar.getClass();
            set.getClass();
            return new i(str, hVar, fVar, eVar, set, i2, i3);
        }

        @Override // com.batch.android.g0.c.f
        public int a() {
            return f.b.a(this);
        }
    }

    public static final class a extends c implements f, b, Serializable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f23325c;
        private final com.batch.android.g0.d.h d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final com.batch.android.g0.d.h f23326e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final com.batch.android.g0.d.f f23327f;
        private final com.batch.android.g0.d.f g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final com.batch.android.g0.d.g f23328h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final com.batch.android.g0.d.e f23329i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final com.batch.android.g0.d.b f23330j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final com.batch.android.g0.d.a f23331k;
        private final com.batch.android.g0.d.e l;
        private final Set<com.batch.android.g0.d.c> m;
        private final int n;
        private final int o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(String str, com.batch.android.g0.d.h hVar, com.batch.android.g0.d.h hVar2, com.batch.android.g0.d.f fVar, com.batch.android.g0.d.f fVar2, com.batch.android.g0.d.g gVar, com.batch.android.g0.d.e eVar, com.batch.android.g0.d.b bVar, com.batch.android.g0.d.a aVar, com.batch.android.g0.d.e eVar2, Set<? extends com.batch.android.g0.d.c> set, int i2, int i3) {
            super(j.BUTTON, null);
            str.getClass();
            hVar.getClass();
            hVar2.getClass();
            fVar.getClass();
            fVar2.getClass();
            eVar.getClass();
            bVar.getClass();
            eVar2.getClass();
            set.getClass();
            this.f23325c = str;
            this.d = hVar;
            this.f23326e = hVar2;
            this.f23327f = fVar;
            this.g = fVar2;
            this.f23328h = gVar;
            this.f23329i = eVar;
            this.f23330j = bVar;
            this.f23331k = aVar;
            this.l = eVar2;
            this.m = set;
            this.n = i2;
            this.o = i3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ a a(a aVar, String str, com.batch.android.g0.d.h hVar, com.batch.android.g0.d.h hVar2, com.batch.android.g0.d.f fVar, com.batch.android.g0.d.f fVar2, com.batch.android.g0.d.g gVar, com.batch.android.g0.d.e eVar, com.batch.android.g0.d.b bVar, com.batch.android.g0.d.a aVar2, com.batch.android.g0.d.e eVar2, Set set, int i2, int i3, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                str = aVar.f23325c;
            }
            return aVar.a(str, (i4 & 2) != 0 ? aVar.d : hVar, (i4 & 4) != 0 ? aVar.f23326e : hVar2, (i4 & 8) != 0 ? aVar.f23327f : fVar, (i4 & 16) != 0 ? aVar.g : fVar2, (i4 & 32) != 0 ? aVar.f23328h : gVar, (i4 & 64) != 0 ? aVar.f23329i : eVar, (i4 & 128) != 0 ? aVar.f23330j : bVar, (i4 & 256) != 0 ? aVar.f23331k : aVar2, (i4 & 512) != 0 ? aVar.l : eVar2, (i4 & 1024) != 0 ? aVar.m : set, (i4 & 2048) != 0 ? aVar.n : i2, (i4 & 4096) != 0 ? aVar.o : i3);
        }

        public final int A() {
            return this.n;
        }

        public final String B() {
            return this.f23325c;
        }

        public final com.batch.android.g0.d.f C() {
            return this.f23327f;
        }

        public final int D() {
            return this.o;
        }

        public final com.batch.android.g0.d.f E() {
            return this.g;
        }

        public final com.batch.android.g0.d.b F() {
            return this.f23330j;
        }

        public final com.batch.android.g0.d.e G() {
            return this.l;
        }

        public final com.batch.android.g0.d.h H() {
            return this.f23326e;
        }

        public final com.batch.android.g0.d.g I() {
            return this.f23328h;
        }

        @Override // com.batch.android.g0.c.f
        public boolean b() {
            return f.b.c(this);
        }

        @Override // com.batch.android.g0.c.f
        public boolean c() {
            return f.b.f(this);
        }

        @Override // com.batch.android.g0.c.f
        public boolean d() {
            return f.b.e(this);
        }

        @Override // com.batch.android.g0.c.f
        public boolean e() {
            return f.b.b(this);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f23325c, aVar.f23325c) && Intrinsics.c(this.d, aVar.d) && Intrinsics.c(this.f23326e, aVar.f23326e) && Intrinsics.c(this.f23327f, aVar.f23327f) && Intrinsics.c(this.g, aVar.g) && Intrinsics.c(this.f23328h, aVar.f23328h) && this.f23329i == aVar.f23329i && Intrinsics.c(this.f23330j, aVar.f23330j) && Intrinsics.c(this.f23331k, aVar.f23331k) && this.l == aVar.l && Intrinsics.c(this.m, aVar.m) && this.n == aVar.n && this.o == aVar.o;
        }

        @Override // com.batch.android.g0.c.f
        public boolean g() {
            return f.b.d(this);
        }

        @Override // com.batch.android.g0.c.f
        public Set<com.batch.android.g0.d.c> h() {
            return this.m;
        }

        public int hashCode() {
            int iHashCode = (this.g.hashCode() + ((this.f23327f.hashCode() + ((this.f23326e.hashCode() + ((this.d.hashCode() + (this.f23325c.hashCode() * 31)) * 31)) * 31)) * 31)) * 31;
            com.batch.android.g0.d.g gVar = this.f23328h;
            int iHashCode2 = (this.f23330j.hashCode() + ((this.f23329i.hashCode() + ((iHashCode + (gVar == null ? 0 : gVar.hashCode())) * 31)) * 31)) * 31;
            com.batch.android.g0.d.a aVar = this.f23331k;
            return Integer.hashCode(this.o) + tr.b(this.n, (this.m.hashCode() + ((this.l.hashCode() + ((iHashCode2 + (aVar != null ? aVar.hashCode() : 0)) * 31)) * 31)) * 31, 31);
        }

        @Override // com.batch.android.g0.c.b
        public boolean isEmpty() {
            return b.a.a(this);
        }

        public final String k() {
            return this.f23325c;
        }

        public final com.batch.android.g0.d.e l() {
            return this.l;
        }

        public final Set<com.batch.android.g0.d.c> m() {
            return this.m;
        }

        public final int n() {
            return this.n;
        }

        public final int o() {
            return this.o;
        }

        public final com.batch.android.g0.d.h p() {
            return this.d;
        }

        public final com.batch.android.g0.d.h q() {
            return this.f23326e;
        }

        public final com.batch.android.g0.d.f r() {
            return this.f23327f;
        }

        public final com.batch.android.g0.d.f s() {
            return this.g;
        }

        public final com.batch.android.g0.d.g t() {
            return this.f23328h;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Button(id=");
            sb.append(this.f23325c);
            sb.append(", backgroundColor=");
            sb.append(this.d);
            sb.append(", textColor=");
            sb.append(this.f23326e);
            sb.append(", margins=");
            sb.append(this.f23327f);
            sb.append(", paddings=");
            sb.append(this.g);
            sb.append(", width=");
            sb.append(this.f23328h);
            sb.append(", align=");
            sb.append(this.f23329i);
            sb.append(", radius=");
            sb.append(this.f23330j);
            sb.append(", border=");
            sb.append(this.f23331k);
            sb.append(", textAlignment=");
            sb.append(this.l);
            sb.append(", fontDecorations=");
            sb.append(this.m);
            sb.append(", fontSize=");
            sb.append(this.n);
            sb.append(", maxLines=");
            return tr.k(sb, this.o, ')');
        }

        public final com.batch.android.g0.d.e u() {
            return this.f23329i;
        }

        public final com.batch.android.g0.d.b v() {
            return this.f23330j;
        }

        public final com.batch.android.g0.d.a w() {
            return this.f23331k;
        }

        public final com.batch.android.g0.d.e x() {
            return this.f23329i;
        }

        public final com.batch.android.g0.d.h y() {
            return this.d;
        }

        public final com.batch.android.g0.d.a z() {
            return this.f23331k;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ a(String str, com.batch.android.g0.d.h hVar, com.batch.android.g0.d.h hVar2, com.batch.android.g0.d.f fVar, com.batch.android.g0.d.f fVar2, com.batch.android.g0.d.g gVar, com.batch.android.g0.d.e eVar, com.batch.android.g0.d.b bVar, com.batch.android.g0.d.a aVar, com.batch.android.g0.d.e eVar2, Set set, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            com.batch.android.g0.d.b bVar2;
            if ((i4 & 128) != 0) {
                bVar2 = new com.batch.android.g0.d.b(null, 1, 0 == true ? 1 : 0);
            } else {
                bVar2 = bVar;
            }
            this(str, hVar, hVar2, fVar, fVar2, gVar, eVar, bVar2, aVar, eVar2, set, i2, i3);
        }

        public final a a(String str, com.batch.android.g0.d.h hVar, com.batch.android.g0.d.h hVar2, com.batch.android.g0.d.f fVar, com.batch.android.g0.d.f fVar2, com.batch.android.g0.d.g gVar, com.batch.android.g0.d.e eVar, com.batch.android.g0.d.b bVar, com.batch.android.g0.d.a aVar, com.batch.android.g0.d.e eVar2, Set<? extends com.batch.android.g0.d.c> set, int i2, int i3) {
            str.getClass();
            hVar.getClass();
            hVar2.getClass();
            fVar.getClass();
            fVar2.getClass();
            eVar.getClass();
            bVar.getClass();
            eVar2.getClass();
            set.getClass();
            return new a(str, hVar, hVar2, fVar, fVar2, gVar, eVar, bVar, aVar, eVar2, set, i2, i3);
        }

        @Override // com.batch.android.g0.c.f
        public int a() {
            return f.b.a(this);
        }
    }
}
