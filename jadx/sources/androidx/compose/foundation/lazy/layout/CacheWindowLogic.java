package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import androidx.collection.IntIntMapKt;
import androidx.collection.IntObjectMapKt;
import androidx.collection.IntSetKt;
import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import defpackage.xh;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b!\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;", "", "Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;", "cacheWindow", "", "enableInitialPrefetch", "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;Z)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class CacheWindowLogic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyLayoutCacheWindow f5391a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f5392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableIntObjectMap f5393c;
    public final MutableIntSet d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableIntIntMap f5394e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableIntObjectMap f5395f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5396h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5397i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5398j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5399k;
    public int l;
    public int m;
    public boolean n;
    public int o;

    public CacheWindowLogic(LazyLayoutCacheWindow lazyLayoutCacheWindow, boolean z) {
        this.f5391a = lazyLayoutCacheWindow;
        this.f5392b = z;
        this.f5393c = IntObjectMapKt.a();
        this.d = IntSetKt.a();
        int i2 = IntIntMapKt.f3253a;
        this.f5394e = new MutableIntIntMap(0, 1, null);
        this.f5395f = IntObjectMapKt.a();
        this.f5396h = -1;
        this.f5398j = Integer.MAX_VALUE;
        this.f5399k = Integer.MIN_VALUE;
    }

    public final int f(CacheWindowScope cacheWindowScope, int i2, boolean z) {
        List list;
        List list2;
        MutableIntObjectMap mutableIntObjectMap = this.f5395f;
        if (mutableIntObjectMap.a(i2)) {
            Object objB = mutableIntObjectMap.b(i2);
            objB.getClass();
            return ((CachedItem) objB).f5402b;
        }
        MutableIntObjectMap mutableIntObjectMap2 = this.f5393c;
        int i3 = 0;
        if (mutableIntObjectMap2.a(i2)) {
            if (!z || (list2 = (List) mutableIntObjectMap2.b(i2)) == null) {
                return -1;
            }
            int size = list2.size();
            while (i3 < size) {
                ((LazyLayoutPrefetchState.PrefetchHandle) list2.get(i3)).c();
                i3++;
            }
            return -1;
        }
        mutableIntObjectMap2.i(i2, cacheWindowScope.b(i2, new xh(this, cacheWindowScope, 0)));
        if (!z || (list = (List) mutableIntObjectMap2.b(i2)) == null) {
            return -1;
        }
        int size2 = list.size();
        while (i3 < size2) {
            ((LazyLayoutPrefetchState.PrefetchHandle) list.get(i3)).c();
            i3++;
        }
        return -1;
    }

    public final boolean g() {
        return (this.f5398j == Integer.MAX_VALUE || this.f5399k == Integer.MIN_VALUE) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0057  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void h(CacheWindowScope cacheWindowScope, int i2, int i3) {
        int i4;
        CachedItem.NoKey noKey = CachedItem.f5400c;
        MutableIntObjectMap mutableIntObjectMap = this.f5395f;
        CachedItem cachedItem = (CachedItem) mutableIntObjectMap.b(i2);
        if (cachedItem != null) {
            cachedItem.f5402b = i3;
            cachedItem.f5401a = noKey;
        } else {
            cachedItem = new CachedItem(noKey, i3);
        }
        mutableIntObjectMap.i(i2, cachedItem);
        if (i2 > this.f5399k) {
            this.f5399k = i2;
            this.m -= i3;
        } else if (i2 < this.f5398j) {
            this.f5398j = i2;
            this.l -= i3;
        }
        if (Math.signum(this.g) <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            if (this.m > 0) {
                i4 = this.f5399k + 1;
            } else {
                i4 = -1;
            }
        } else if (Math.signum(this.g) <= Call.Parameters.DEFAULT_CAMERA_ZOOM || this.l <= 0) {
            i4 = -1;
        } else {
            i4 = this.f5398j - 1;
        }
        if (i4 > 0 && cacheWindowScope.g(i4) != -1 && cacheWindowScope.g(i4) < this.o) {
            this.f5393c.i(i4, cacheWindowScope.b(i4, new xh(this, cacheWindowScope, 1)));
        }
        n();
    }

    public final void i(CacheWindowScope cacheWindowScope, int i2, int i3, int i4, int i5, int i6, float f2, boolean z) {
        int i7;
        boolean z2 = Math.signum(f2) == Math.signum(this.g);
        if (!z) {
            if (!z2 || this.n) {
                this.l = i4 - i6;
                this.f5398j = i2;
            } else {
                int iC = MathKt.c(Math.abs(f2)) + this.l;
                int i8 = i4 - i6;
                if (iC > i8) {
                    iC = i8;
                }
                this.l = iC;
            }
            while (this.l > 0 && (i7 = this.f5398j) > 0) {
                int iF = f(cacheWindowScope, this.f5398j - 1, i7 + (-1) == i2 + (-1) && ((f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? 1 : (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0 : -1)) != 0) && Math.abs(f2) >= ((float) i6));
                if (iF == -1) {
                    return;
                }
                this.f5398j--;
                this.l -= iF;
            }
            return;
        }
        if (!z2 || this.n) {
            this.m = i4 - i5;
            this.f5399k = i3;
        } else {
            int iC2 = MathKt.c(Math.abs(f2)) + this.m;
            int i9 = i4 - i5;
            if (iC2 > i9) {
                iC2 = i9;
            }
            this.m = iC2;
        }
        while (this.m > 0 && cacheWindowScope.g(this.f5399k) != -1 && cacheWindowScope.g(this.f5399k) < this.o - 1) {
            int iF2 = f(cacheWindowScope, this.f5399k + 1, this.f5399k + 1 == i3 + 1 && ((f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? 1 : (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0 : -1)) != 0) && Math.abs(f2) >= ((float) i5));
            if (iF2 == -1) {
                return;
            }
            this.f5399k++;
            this.m -= iF2;
        }
    }

    public final void j(CacheWindowScope cacheWindowScope, float f2) {
        int i2;
        int i3;
        n();
        boolean zA = cacheWindowScope.a();
        LazyLayoutCacheWindow lazyLayoutCacheWindow = this.f5391a;
        if (zA) {
            cacheWindowScope.k();
            if (cacheWindowScope.getDensity() != null) {
                lazyLayoutCacheWindow.getClass();
            }
            this.o = cacheWindowScope.d();
            int iC = cacheWindowScope.c();
            int iH = cacheWindowScope.h();
            int iD = cacheWindowScope.d();
            int i4 = cacheWindowScope.i();
            int iL = cacheWindowScope.l();
            MutableIntObjectMap mutableIntObjectMap = this.f5395f;
            if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                this.l = 0 - i4;
                this.f5398j = iC;
                while (this.l > 0 && (i3 = this.f5398j) > 0 && mutableIntObjectMap.a(i3 - 1)) {
                    Object objB = mutableIntObjectMap.b(this.f5398j - 1);
                    objB.getClass();
                    int i5 = ((CachedItem) objB).f5402b;
                    this.f5398j--;
                    this.l -= i5;
                }
                l(0, this.f5398j - 1);
            } else {
                this.m = 0 - iL;
                this.f5399k = iH;
                while (this.m > 0 && (i2 = this.f5399k) < iD - 1 && mutableIntObjectMap.a(i2 + 1)) {
                    Object objB2 = mutableIntObjectMap.b(this.f5399k + 1);
                    objB2.getClass();
                    int i6 = ((CachedItem) objB2).f5402b;
                    this.f5399k++;
                    this.m -= i6;
                }
                l(this.f5399k + 1, iD - 1);
            }
        }
        if (cacheWindowScope.a()) {
            cacheWindowScope.k();
            int iA = cacheWindowScope.getDensity() != null ? lazyLayoutCacheWindow.a() : 0;
            int iC2 = cacheWindowScope.c();
            int iH2 = cacheWindowScope.h();
            int i7 = cacheWindowScope.i();
            boolean z = false;
            int iL2 = cacheWindowScope.l();
            if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                z = true;
            }
            i(cacheWindowScope, iC2, iH2, iA, iL2, i7, f2, z);
        }
        this.g = f2;
        n();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void k(CacheWindowScope cacheWindowScope) {
        CacheWindowLogic cacheWindowLogic;
        CacheWindowScope cacheWindowScope2;
        int iA;
        boolean z = this.f5397i;
        LazyLayoutCacheWindow lazyLayoutCacheWindow = this.f5391a;
        if (!z && this.f5392b) {
            if (cacheWindowScope.getDensity() != null) {
                cacheWindowScope.k();
                iA = lazyLayoutCacheWindow.a();
            } else {
                iA = 0;
            }
            if (iA != 0) {
                this.n = true;
            }
            this.f5397i = true;
        }
        int i2 = this.f5396h;
        if (i2 != -1 && i2 != cacheWindowScope.d()) {
            this.n = true;
            if (cacheWindowScope.a()) {
                int i3 = this.f5398j;
                if (i3 < 0) {
                    i3 = 0;
                }
                this.f5398j = i3;
                int iM = cacheWindowScope.m();
                if (iM != -1) {
                    int i4 = this.f5399k;
                    if (i4 <= iM) {
                        iM = i4;
                    }
                    this.f5399k = iM;
                }
                if (this.g <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    l(cacheWindowScope.h(), this.o - 1);
                } else {
                    l(0, cacheWindowScope.c());
                }
            }
        }
        this.o = cacheWindowScope.d();
        if (cacheWindowScope.a()) {
            int iF = cacheWindowScope.f();
            for (int i5 = 0; i5 < iF; i5++) {
                int iE = cacheWindowScope.e(i5);
                Object objN = cacheWindowScope.n(i5);
                int iJ = cacheWindowScope.j(i5);
                if (iE != -1) {
                    MutableIntObjectMap mutableIntObjectMap = this.f5395f;
                    if (mutableIntObjectMap.a(iE)) {
                        Object objB = mutableIntObjectMap.b(iE);
                        objB.getClass();
                        int i6 = ((CachedItem) objB).f5402b;
                        Object objB2 = mutableIntObjectMap.b(iE);
                        objB2.getClass();
                        Object obj = ((CachedItem) objB2).f5401a;
                        if (i6 != iJ || !Intrinsics.c(obj, objN)) {
                            this.n = true;
                        }
                    }
                    CachedItem cachedItem = (CachedItem) mutableIntObjectMap.b(iE);
                    if (cachedItem != null) {
                        cachedItem.f5402b = iJ;
                        cachedItem.f5401a = objN;
                    } else {
                        cachedItem = new CachedItem(objN, iJ);
                    }
                    mutableIntObjectMap.i(iE, cachedItem);
                    this.f5398j = Math.min(this.f5398j, iE);
                    this.f5399k = Math.max(this.f5399k, iE);
                    List list = (List) this.f5393c.g(iE);
                    if (list != null) {
                        int size = list.size();
                        for (int i7 = 0; i7 < size; i7++) {
                            ((LazyLayoutPrefetchState.PrefetchHandle) list.get(i7)).cancel();
                        }
                    }
                }
            }
            if (this.n) {
                boolean z2 = this.g <= Call.Parameters.DEFAULT_CAMERA_ZOOM;
                if (cacheWindowScope.a()) {
                    cacheWindowScope.k();
                    cacheWindowLogic = this;
                    cacheWindowScope2 = cacheWindowScope;
                    cacheWindowLogic.i(cacheWindowScope2, cacheWindowScope.c(), cacheWindowScope.h(), cacheWindowScope.getDensity() != null ? lazyLayoutCacheWindow.a() : 0, cacheWindowScope.l(), cacheWindowScope.i(), Call.Parameters.DEFAULT_CAMERA_ZOOM, z2);
                } else {
                    cacheWindowLogic = this;
                    cacheWindowScope2 = cacheWindowScope;
                }
                cacheWindowLogic.n = false;
            } else {
                cacheWindowLogic = this;
                cacheWindowScope2 = cacheWindowScope;
            }
        } else {
            cacheWindowLogic = this;
            cacheWindowScope2 = cacheWindowScope;
            cacheWindowLogic.m();
        }
        cacheWindowLogic.f5396h = cacheWindowScope2.d();
    }

    /* JADX WARN: Code duplicated, block: B:102:0x00f5 A[EDGE_INSN: B:102:0x00f5->B:59:0x00f5 BREAK  A[LOOP:4: B:45:0x00c1->B:58:0x00f2], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:17:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0056 A[LOOP:0: B:5:0x0020->B:18:0x0056, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:57:0x00f0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00f2 A[LOOP:4: B:45:0x00c1->B:58:0x00f2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:88:0x0063 A[EDGE_INSN: B:88:0x0063->B:20:0x0063 BREAK  A[LOOP:0: B:5:0x0020->B:18:0x0056], SYNTHETIC] */
    public final void l(int i2, int i3) {
        char c2;
        long j2;
        long j3;
        long j4;
        char c3;
        int[] iArr;
        long[] jArr;
        int i4;
        char c4;
        int i5;
        MutableIntSet mutableIntSet = this.d;
        mutableIntSet.c();
        MutableIntObjectMap mutableIntObjectMap = this.f5393c;
        int[] iArr2 = mutableIntObjectMap.f3259b;
        long[] jArr2 = mutableIntObjectMap.f3258a;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i6 = 0;
            j2 = 128;
            j3 = 255;
            while (true) {
                long j5 = jArr2[i6];
                c2 = 7;
                j4 = -9187201950435737472L;
                if ((((~j5) << 7) & j5 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i6 != length) {
                        break;
                        break;
                    }
                    i6++;
                } else {
                    int i7 = 8 - ((~(i6 - length)) >>> 31);
                    for (int i8 = 0; i8 < i7; i8++) {
                        if ((j5 & 255) < 128 && i2 <= (i5 = iArr2[(i6 << 3) + i8]) && i5 <= i3) {
                            mutableIntSet.b(i5);
                        }
                        j5 >>= 8;
                    }
                    if (i7 != 8) {
                        break;
                    } else if (i6 != length) {
                        break;
                    } else {
                        i6++;
                    }
                }
            }
        } else {
            c2 = 7;
            j2 = 128;
            j3 = 255;
            j4 = -9187201950435737472L;
        }
        MutableIntIntMap mutableIntIntMap = this.f5394e;
        int[] iArr3 = mutableIntIntMap.f3250b;
        long[] jArr3 = mutableIntIntMap.f3249a;
        int length2 = jArr3.length - 2;
        if (length2 >= 0) {
            int i9 = 0;
            while (true) {
                long j6 = jArr3[i9];
                if ((((~j6) << c2) & j6 & j4) != j4) {
                    int i10 = 8 - ((~(i9 - length2)) >>> 31);
                    int i11 = 0;
                    while (i11 < i10) {
                        if ((j6 & j3) < j2) {
                            c4 = c2;
                            int i12 = iArr3[(i9 << 3) + i11];
                            if (i2 <= i12 && i12 <= i3) {
                                mutableIntSet.b(i12);
                            }
                        } else {
                            c4 = c2;
                        }
                        j6 >>= 8;
                        i11++;
                        c2 = c4;
                    }
                    c3 = c2;
                    if (i10 != 8) {
                        break;
                    }
                } else {
                    c3 = c2;
                }
                if (i9 == length2) {
                    break;
                }
                i9++;
                c2 = c3;
            }
        } else {
            c3 = c2;
        }
        MutableIntObjectMap mutableIntObjectMap2 = this.f5395f;
        int[] iArr4 = mutableIntObjectMap2.f3259b;
        long[] jArr4 = mutableIntObjectMap2.f3258a;
        int length3 = jArr4.length - 2;
        if (length3 >= 0) {
            int i13 = 0;
            while (true) {
                long j7 = jArr4[i13];
                if ((((~j7) << c3) & j7 & j4) == j4) {
                    if (i13 != length3) {
                        break;
                        break;
                    }
                    i13++;
                } else {
                    int i14 = 8 - ((~(i13 - length3)) >>> 31);
                    for (int i15 = 0; i15 < i14; i15++) {
                        if ((j7 & j3) < j2 && i2 <= (i4 = iArr4[(i13 << 3) + i15]) && i4 <= i3) {
                            mutableIntSet.b(i4);
                        }
                        j7 >>= 8;
                    }
                    if (i14 != 8) {
                        break;
                    } else if (i13 != length3) {
                        break;
                    } else {
                        i13++;
                    }
                }
            }
        }
        int[] iArr5 = mutableIntSet.f3264b;
        long[] jArr5 = mutableIntSet.f3263a;
        int length4 = jArr5.length - 2;
        if (length4 < 0) {
            return;
        }
        int i16 = 0;
        while (true) {
            long j8 = jArr5[i16];
            if ((((~j8) << c3) & j8 & j4) != j4) {
                int i17 = 8 - ((~(i16 - length4)) >>> 31);
                int i18 = 0;
                while (i18 < i17) {
                    if ((j8 & j3) < j2) {
                        int i19 = iArr5[(i16 << 3) + i18];
                        List list = (List) mutableIntObjectMap.g(i19);
                        if (list != null) {
                            int size = list.size();
                            for (int i20 = 0; i20 < size; i20++) {
                                ((LazyLayoutPrefetchState.PrefetchHandle) list.get(i20)).cancel();
                            }
                        }
                        int iA = mutableIntIntMap.a(i19);
                        if (iA >= 0) {
                            mutableIntIntMap.f3252e--;
                            long[] jArr6 = mutableIntIntMap.f3249a;
                            int i21 = mutableIntIntMap.d;
                            int i22 = iA >> 3;
                            int i23 = (iA & 7) << 3;
                            long j9 = (jArr6[i22] & (~(j3 << i23))) | (254 << i23);
                            jArr6[i22] = j9;
                            jArr6[(((iA - 7) & i21) + (i21 & 7)) >> 3] = j9;
                        }
                        mutableIntObjectMap2.g(i19);
                    } else {
                        iArr5 = iArr5;
                        jArr5 = jArr5;
                    }
                    j8 >>= 8;
                    i18++;
                    iArr5 = iArr5;
                    jArr5 = jArr5;
                }
                iArr = iArr5;
                jArr = jArr5;
                if (i17 != 8) {
                    return;
                }
            } else {
                iArr = iArr5;
                jArr = jArr5;
            }
            if (i16 == length4) {
                return;
            }
            i16++;
            iArr5 = iArr;
            jArr5 = jArr;
        }
    }

    public final void m() {
        this.f5398j = Integer.MAX_VALUE;
        this.f5399k = Integer.MIN_VALUE;
        this.l = 0;
        this.m = 0;
        this.n = false;
        this.f5394e.c();
        this.f5395f.c();
        MutableIntObjectMap mutableIntObjectMap = this.f5393c;
        long[] jArr = mutableIntObjectMap.f3258a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        int i5 = (i2 << 3) + i4;
                        int i6 = mutableIntObjectMap.f3259b[i5];
                        List list = (List) mutableIntObjectMap.f3260c[i5];
                        int size = list.size();
                        for (int i7 = 0; i7 < size; i7++) {
                            ((LazyLayoutPrefetchState.PrefetchHandle) list.get(i7)).cancel();
                        }
                        mutableIntObjectMap.h(i5);
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    public final void n() {
        Trace.setCounter("prefetchWindowStartExtraSpace", this.l);
        Trace.setCounter("prefetchWindowEndExtraSpace", this.m);
        Trace.setCounter("prefetchWindowStartIndex", this.f5398j);
        Trace.setCounter("prefetchWindowEndIndex", this.f5399k);
    }

    public /* synthetic */ CacheWindowLogic(LazyLayoutCacheWindow lazyLayoutCacheWindow, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(lazyLayoutCacheWindow, (i2 & 2) != 0 ? true : z);
    }
}
