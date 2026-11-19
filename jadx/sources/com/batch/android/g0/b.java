package com.batch.android.g0;

import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f23318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final C0049b f23319c;

    public /* synthetic */ b(a aVar, C0049b c0049b, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : aVar, (i2 & 2) != 0 ? null : c0049b);
    }

    public static /* synthetic */ b a(b bVar, a aVar, C0049b c0049b, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            aVar = bVar.f23318b;
        }
        if ((i2 & 2) != 0) {
            c0049b = bVar.f23319c;
        }
        return bVar.a(aVar, c0049b);
    }

    public final C0049b b() {
        return this.f23319c;
    }

    public final a c() {
        return this.f23318b;
    }

    public final C0049b d() {
        return this.f23319c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f23318b, bVar.f23318b) && Intrinsics.c(this.f23319c, bVar.f23319c);
    }

    public int hashCode() {
        a aVar = this.f23318b;
        int iHashCode = (aVar == null ? 0 : aVar.hashCode()) * 31;
        C0049b c0049b = this.f23319c;
        return iHashCode + (c0049b != null ? c0049b.hashCode() : 0);
    }

    public String toString() {
        return "CloseOptions(auto=" + this.f23318b + ", button=" + this.f23319c + ')';
    }

    public b(a aVar, C0049b c0049b) {
        this.f23318b = aVar;
        this.f23319c = c0049b;
    }

    public static final class a implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f23320b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final d.h f23321c;

        public a(int i2, d.h hVar) {
            hVar.getClass();
            this.f23320b = i2;
            this.f23321c = hVar;
        }

        public static /* synthetic */ a a(a aVar, int i2, d.h hVar, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i2 = aVar.f23320b;
            }
            if ((i3 & 2) != 0) {
                hVar = aVar.f23321c;
            }
            return aVar.a(i2, hVar);
        }

        public final d.h b() {
            return this.f23321c;
        }

        public final d.h c() {
            return this.f23321c;
        }

        public final int d() {
            return this.f23320b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f23320b == aVar.f23320b && Intrinsics.c(this.f23321c, aVar.f23321c);
        }

        public int hashCode() {
            return this.f23321c.hashCode() + (Integer.hashCode(this.f23320b) * 31);
        }

        public String toString() {
            return "Auto(delay=" + this.f23320b + ", color=" + this.f23321c + ')';
        }

        public final a a(int i2, d.h hVar) {
            hVar.getClass();
            return new a(i2, hVar);
        }

        public final int a() {
            return this.f23320b;
        }
    }

    /* JADX INFO: renamed from: com.batch.android.g0.b$b, reason: collision with other inner class name */
    public static final class C0049b implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d.h f23322b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final d.h f23323c;

        public C0049b(d.h hVar, d.h hVar2) {
            hVar.getClass();
            hVar2.getClass();
            this.f23322b = hVar;
            this.f23323c = hVar2;
        }

        public static /* synthetic */ C0049b a(C0049b c0049b, d.h hVar, d.h hVar2, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                hVar = c0049b.f23322b;
            }
            if ((i2 & 2) != 0) {
                hVar2 = c0049b.f23323c;
            }
            return c0049b.a(hVar, hVar2);
        }

        public final d.h b() {
            return this.f23323c;
        }

        public final d.h c() {
            return this.f23323c;
        }

        public final d.h d() {
            return this.f23322b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0049b)) {
                return false;
            }
            C0049b c0049b = (C0049b) obj;
            return Intrinsics.c(this.f23322b, c0049b.f23322b) && Intrinsics.c(this.f23323c, c0049b.f23323c);
        }

        public int hashCode() {
            return this.f23323c.hashCode() + (this.f23322b.hashCode() * 31);
        }

        public String toString() {
            return "Button(color=" + this.f23322b + ", backgroundColor=" + this.f23323c + ')';
        }

        public final C0049b a(d.h hVar, d.h hVar2) {
            hVar.getClass();
            hVar2.getClass();
            return new C0049b(hVar, hVar2);
        }

        public final d.h a() {
            return this.f23322b;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public final b a(a aVar, C0049b c0049b) {
        return new b(aVar, c0049b);
    }

    public final a a() {
        return this.f23318b;
    }
}
