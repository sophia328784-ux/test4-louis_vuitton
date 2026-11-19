package kotlin.random;

import defpackage.md;
import java.io.InvalidObjectException;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0000\u0018\u0000 \u00132\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\u0014B9\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\fB\u0019\b\u0010\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lkotlin/random/XorWowRandom;", "Lkotlin/random/Random;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "x", "y", "z", "w", "v", "addend", "<init>", "(IIIIII)V", "seed1", "seed2", "(II)V", "", "readResolve", "()Ljava/lang/Object;", "j", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class XorWowRandom extends Random implements Serializable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Companion f71943j = new Companion(null);
    private static final long serialVersionUID = 0;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f71944e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f71945f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f71946h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f71947i;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/random/XorWowRandom$Companion;", "", "", "serialVersionUID", "J", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public XorWowRandom(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.d = i2;
        this.f71944e = i3;
        this.f71945f = i4;
        this.g = i5;
        this.f71946h = i6;
        this.f71947i = i7;
        f();
        for (int i8 = 0; i8 < 64; i8++) {
            d();
        }
    }

    private final Object readResolve() throws Throwable {
        try {
            f();
            return this;
        } catch (Throwable th) {
            Throwable thInitCause = new InvalidObjectException(th.getMessage()).initCause(th);
            thInitCause.getClass();
            throw thInitCause;
        }
    }

    @Override // kotlin.random.Random
    public final int a(int i2) {
        return (d() >>> (32 - i2)) & ((-i2) >> 31);
    }

    @Override // kotlin.random.Random
    public final int d() {
        int i2 = this.d;
        int i3 = i2 ^ (i2 >>> 2);
        this.d = this.f71944e;
        this.f71944e = this.f71945f;
        this.f71945f = this.g;
        int i4 = this.f71946h;
        this.g = i4;
        int i5 = ((i3 ^ (i3 << 1)) ^ i4) ^ (i4 << 4);
        this.f71946h = i5;
        int i6 = this.f71947i + 362437;
        this.f71947i = i6;
        return i5 + i6;
    }

    public final void f() {
        if ((this.f71946h | this.d | this.f71944e | this.f71945f | this.g) != 0) {
            return;
        }
        md.n("Initial state must have at least one non-zero element.");
    }

    public XorWowRandom(int i2, int i3) {
        this(i2, i3, 0, 0, ~i2, (i2 << 10) ^ (i3 >>> 4));
    }
}
