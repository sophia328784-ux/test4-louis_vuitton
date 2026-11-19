package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes4.dex */
public final class TypeMappingMode {
    public static final TypeMappingMode l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f73265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f73266b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f73267c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f73268e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TypeMappingMode f73269f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TypeMappingMode f73270h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TypeMappingMode f73271i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f73272j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f73273k;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f73274a;

        static {
            int[] iArr = new int[Variance.values().length];
            try {
                iArr[Variance.IN_VARIANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Variance.INVARIANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f73274a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        new Companion(null);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        TypeMappingMode typeMappingMode = new TypeMappingMode(z, z2, z3, z4, z5, null, false, null, null, z6, z7, 2047, null);
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        TypeMappingMode typeMappingMode2 = null;
        TypeMappingMode typeMappingMode3 = null;
        TypeMappingMode typeMappingMode4 = new TypeMappingMode(z8, z9, z6, z7, z10, null, z11, typeMappingMode2, typeMappingMode3, false, true, 1023, null);
        boolean z12 = false;
        Object[] objArr = 0 == true ? 1 : 0;
        Object[] objArr2 = 0 == true ? 1 : 0;
        TypeMappingMode typeMappingMode5 = new TypeMappingMode(z8, z9, z6, z7, z10, objArr2, z11, typeMappingMode2, typeMappingMode3, true, z12, 1535, objArr);
        Object[] objArr3 = 0 == true ? 1 : 0;
        Object[] objArr4 = 0 == true ? 1 : 0;
        new TypeMappingMode(z8, true, z6, z7, z10, objArr4, z11, typeMappingMode2, typeMappingMode3, false, z12, 2045, objArr3);
        l = new TypeMappingMode(z, z2, z3, z4, z5, typeMappingMode, false, null, null, z6, z7, 2012, 0 == true ? 1 : 0);
        new TypeMappingMode(false, false, z6, z7, false, typeMappingMode5, z11, typeMappingMode2, typeMappingMode3, true, z12, 1500, 0 == true ? 1 : 0);
        DefaultConstructorMarker defaultConstructorMarker = null;
        boolean z13 = false;
        TypeMappingMode typeMappingMode6 = null;
        TypeMappingMode typeMappingMode7 = null;
        new TypeMappingMode(z, true, z3, z4, z5, typeMappingMode, z13, typeMappingMode6, typeMappingMode7, z6, z7, 2012, defaultConstructorMarker);
        boolean z14 = false;
        new TypeMappingMode(z, z14, z3, true, z5, typeMappingMode, z13, typeMappingMode6, typeMappingMode7, z6, z7, 2007, defaultConstructorMarker);
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = true;
        boolean z18 = false;
        boolean z19 = false;
        boolean z20 = true;
        new TypeMappingMode(z15, z16, z6, z17, z18, typeMappingMode4, z11, typeMappingMode2, typeMappingMode3, z19, z20, 983, 0 == true ? 1 : 0);
        new TypeMappingMode(z15, z16, z6, z17, z18, typeMappingMode4, z11, typeMappingMode2, typeMappingMode3, z19, z20, 919, 0 == true ? 1 : 0);
        new TypeMappingMode(z, z14, true, false, z5, typeMappingMode, false, null, null, z6, false, 2008, null);
        Object[] objArr5 = 0 == true ? 1 : 0;
        new TypeMappingMode(true, true, z19, false, false, objArr5, true, null, null, false, false, 1980, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ TypeMappingMode(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, TypeMappingMode typeMappingMode, boolean z6, TypeMappingMode typeMappingMode2, TypeMappingMode typeMappingMode3, boolean z7, boolean z8, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        z = (i2 & 1) != 0 ? true : z;
        z2 = (i2 & 2) != 0 ? true : z2;
        z3 = (i2 & 4) != 0 ? false : z3;
        z4 = (i2 & 8) != 0 ? false : z4;
        z5 = (i2 & 16) != 0 ? false : z5;
        typeMappingMode = (i2 & 32) != 0 ? null : typeMappingMode;
        this(z, z2, z3, z4, z5, typeMappingMode, (i2 & 64) != 0 ? true : z6, (i2 & 128) != 0 ? typeMappingMode : typeMappingMode2, (i2 & 256) != 0 ? typeMappingMode : typeMappingMode3, (i2 & 512) != 0 ? false : z7, (i2 & 1024) != 0 ? false : z8);
    }

    public TypeMappingMode(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, TypeMappingMode typeMappingMode, boolean z6, TypeMappingMode typeMappingMode2, TypeMappingMode typeMappingMode3, boolean z7, boolean z8) {
        this.f73265a = z;
        this.f73266b = z2;
        this.f73267c = z3;
        this.d = z4;
        this.f73268e = z5;
        this.f73269f = typeMappingMode;
        this.g = z6;
        this.f73270h = typeMappingMode2;
        this.f73271i = typeMappingMode3;
        this.f73272j = z7;
        this.f73273k = z8;
    }

    public TypeMappingMode() {
        this(false, false, false, false, false, null, false, null, null, false, false, 2047, null);
    }
}
