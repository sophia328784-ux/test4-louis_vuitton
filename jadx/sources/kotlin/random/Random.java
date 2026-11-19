package kotlin.random;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.b21;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.internal.jdk8.JDK8PlatformImplementations;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.random.jdk8.PlatformThreadLocalRandom;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b'\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lkotlin/random/Random;", "", "<init>", "()V", NBSSpanMetricUnit.Bit, "Default", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class Random {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AbstractPlatformRandom f71941c;

    /* JADX INFO: renamed from: kotlin.random.Random$Default, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\u000fJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\u000b\u001a\u00020\n2\n\u0010\t\u001a\u00060\u0007j\u0002`\bH\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lkotlin/random/Random$Default;", "Lkotlin/random/Random;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "writeReplace", "()Ljava/lang/Object;", "Ljava/io/ObjectInputStream;", "Lkotlin/internal/ReadObjectParameterType;", "input", "", "readObject", "(Ljava/io/ObjectInputStream;)V", "defaultRandom", "Lkotlin/random/Random;", "Serialized", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion extends Random implements Serializable {

        /* JADX INFO: renamed from: kotlin.random.Random$Default$Serialized */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlin/random/Random$Default$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "readResolve", "()Ljava/lang/Object;", "", "serialVersionUID", "J", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final class Serialized implements Serializable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final Serialized f71942b = new Serialized();
            private static final long serialVersionUID = 0;

            private final Object readResolve() {
                return Random.INSTANCE;
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        private final void readObject(ObjectInputStream input) throws InvalidObjectException {
            throw new InvalidObjectException("Deserialization is supported via proxy only");
        }

        private final Object writeReplace() {
            return Serialized.f71942b;
        }

        @Override // kotlin.random.Random
        public final int a(int i2) {
            return Random.f71941c.a(i2);
        }

        @Override // kotlin.random.Random
        public final double b() {
            return Random.f71941c.b();
        }

        @Override // kotlin.random.Random
        public final double c() {
            throw null;
        }

        @Override // kotlin.random.Random
        public final int d() {
            return Random.f71941c.d();
        }

        @Override // kotlin.random.Random
        public final int e(int i2, int i3) {
            return Random.f71941c.e(i2, i3);
        }
    }

    static {
        PlatformImplementationsKt.f71866a.getClass();
        f71941c = JDK8PlatformImplementations.c(34) ? new PlatformThreadLocalRandom() : new FallbackThreadLocalRandom();
    }

    public abstract int a(int i2);

    public double b() {
        return ((((long) a(26)) << 27) + ((long) a(27))) / 9.007199254740992E15d;
    }

    public double c() {
        double dB;
        if (!Double.isInfinite(4.0d) || Math.abs(-2.0d) > Double.MAX_VALUE || Math.abs(2.0d) > Double.MAX_VALUE) {
            dB = (-2.0d) + (b() * 4.0d);
        } else {
            double dB2 = b() * 2.0d;
            dB = (-2.0d) + dB2 + dB2;
        }
        return dB >= 2.0d ? Math.nextAfter(2.0d, Double.NEGATIVE_INFINITY) : dB;
    }

    public int d() {
        return a(32);
    }

    public int e(int i2, int i3) {
        int iD;
        int i4;
        int iA;
        if (i3 <= i2) {
            b21.n("Random range is empty: [" + Integer.valueOf(i2) + ", " + Integer.valueOf(i3) + ").");
            return 0;
        }
        int i5 = i3 - i2;
        if (i5 > 0 || i5 == Integer.MIN_VALUE) {
            if (((-i5) & i5) == i5) {
                iA = a(31 - Integer.numberOfLeadingZeros(i5));
            } else {
                do {
                    iD = d() >>> 1;
                    i4 = iD % i5;
                } while ((i5 - 1) + (iD - i4) < 0);
                iA = i4;
            }
            return i2 + iA;
        }
        while (true) {
            int iD2 = d();
            if (i2 <= iD2 && iD2 < i3) {
                return iD2;
            }
        }
    }
}
