package kotlin.time;

import com.sightcall.advancedannotations.domain.parser.TextParser;
import defpackage.md;
import io.jsonwebtoken.JwtParser;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\u0013B\u0019\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u0011\u001a\u00020\u00102\n\u0010\u000f\u001a\u00060\rj\u0002`\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lkotlin/time/Instant;", "", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "epochSeconds", "", "nanosecondsOfSecond", "<init>", "(JI)V", "", "writeReplace", "()Ljava/lang/Object;", "Ljava/io/ObjectInputStream;", "Lkotlin/internal/ReadObjectParameterType;", "input", "", "readObject", "(Ljava/io/ObjectInputStream;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class Instant implements Comparable<Instant>, Serializable {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Instant f74574e = new Instant(-31557014167219200L, 0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Instant f74575f = new Instant(31556889864403199L, 999999999);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f74576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f74577c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/time/Instant$Companion;", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Instant a(int i2, long j2) {
            long j3 = i2;
            long j4 = j3 / 1000000000;
            if ((j3 ^ 1000000000) < 0 && j4 * 1000000000 != j3) {
                j4--;
            }
            long j5 = j2 + j4;
            if ((j2 ^ j5) < 0 && (j4 ^ j2) >= 0) {
                if (j2 > 0) {
                    Instant.d.getClass();
                    return Instant.f74575f;
                }
                Instant.d.getClass();
                return Instant.f74574e;
            }
            if (j5 < -31557014167219200L) {
                return Instant.f74574e;
            }
            if (j5 > 31556889864403199L) {
                return Instant.f74575f;
            }
            long j6 = j3 % 1000000000;
            return new Instant(j5, (int) (j6 + ((((j6 ^ 1000000000) & ((-j6) | j6)) >> 63) & 1000000000)));
        }
    }

    public Instant(long j2, int i2) {
        this.f74576b = j2;
        this.f74577c = i2;
        if (-31557014167219200L > j2 || j2 >= 31556889864403200L) {
            md.n("Instant exceeds minimum or maximum instant");
            throw null;
        }
    }

    private final void readObject(ObjectInputStream input) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object writeReplace() {
        Clock clock = InstantJvmKt.f74578a;
        return new InstantSerialized(this.f74576b, this.f74577c);
    }

    public final long a() {
        long j2 = this.f74576b;
        int i2 = this.f74577c;
        long j3 = 1000;
        if (j2 >= 0) {
            if (j2 != 1) {
                if (j2 != 0) {
                    long j4 = j2 * 1000;
                    if (j4 / 1000 != j2) {
                        return Long.MAX_VALUE;
                    }
                    j3 = j4;
                } else {
                    j3 = 0;
                }
            }
            long j5 = i2 / 1000000;
            long j6 = j3 + j5;
            if ((j3 ^ j6) >= 0 || (j5 ^ j3) < 0) {
                return j6;
            }
            return Long.MAX_VALUE;
        }
        long j7 = j2 + 1;
        if (j7 != 1) {
            if (j7 != 0) {
                long j8 = j7 * 1000;
                if (j8 / 1000 != j7) {
                    return Long.MIN_VALUE;
                }
                j3 = j8;
            } else {
                j3 = 0;
            }
        }
        long j9 = (i2 / 1000000) - 1000;
        long j10 = j3 + j9;
        if ((j3 ^ j10) >= 0 || (j9 ^ j3) < 0) {
            return j10;
        }
        return Long.MIN_VALUE;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        instant2.getClass();
        int iE = Intrinsics.e(this.f74576b, instant2.f74576b);
        return iE != 0 ? iE : Intrinsics.d(this.f74577c, instant2.f74577c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Instant)) {
            return false;
        }
        Instant instant = (Instant) obj;
        return this.f74576b == instant.f74576b && this.f74577c == instant.f74577c;
    }

    public final int hashCode() {
        return (this.f74577c * 51) + Long.hashCode(this.f74576b);
    }

    public final String toString() {
        long j2;
        int[] iArr;
        StringBuilder sb = new StringBuilder();
        UnboundLocalDateTime.f74591h.getClass();
        long j3 = this.f74576b;
        long j4 = j3 / 86400;
        if ((j3 ^ 86400) < 0 && j4 * 86400 != j3) {
            j4--;
        }
        long j5 = j3 % 86400;
        int i2 = (int) (j5 + (86400 & (((j5 ^ 86400) & ((-j5) | j5)) >> 63)));
        long j6 = 719468 + j4;
        if (j6 < 0) {
            long j7 = ((j4 + 719469) / 146097) - 1;
            j2 = j7 * 400;
            j6 += (-j7) * 146097;
        } else {
            j2 = 0;
        }
        long j8 = ((400 * j6) + 591) / 146097;
        long j9 = j6 - ((j8 / 400) + (((j8 / 4) + (365 * j8)) - (j8 / 100)));
        if (j9 < 0) {
            j8--;
            j9 = j6 - ((j8 / 400) + (((j8 / 4) + (365 * j8)) - (j8 / 100)));
        }
        int i3 = (int) j9;
        int i4 = ((i3 * 5) + 2) / 153;
        int i5 = i2 / 3600;
        int i6 = i2 - (i5 * 3600);
        int i7 = i6 / 60;
        UnboundLocalDateTime unboundLocalDateTime = new UnboundLocalDateTime((int) (j8 + j2 + ((long) (i4 / 10))), ((i4 + 2) % 12) + 1, (i3 - (((i4 * 306) + 5) / 10)) + 1, i5, i7, i6 - (i7 * 60), this.f74577c);
        int i8 = unboundLocalDateTime.f74592a;
        int i9 = 0;
        if (Math.abs(i8) < 1000) {
            StringBuilder sb2 = new StringBuilder();
            if (i8 >= 0) {
                sb2.append(i8 + 10000);
                sb2.deleteCharAt(0).getClass();
            } else {
                sb2.append(i8 - 10000);
                sb2.deleteCharAt(1).getClass();
            }
            sb.append((CharSequence) sb2);
        } else {
            if (i8 >= 10000) {
                sb.append('+');
            }
            sb.append(i8);
        }
        sb.append('-');
        InstantKt.a(sb, sb, unboundLocalDateTime.f74593b);
        sb.append('-');
        InstantKt.a(sb, sb, unboundLocalDateTime.f74594c);
        sb.append(TextParser.TextInstruction);
        InstantKt.a(sb, sb, unboundLocalDateTime.d);
        sb.append(':');
        InstantKt.a(sb, sb, unboundLocalDateTime.f74595e);
        sb.append(':');
        InstantKt.a(sb, sb, unboundLocalDateTime.f74596f);
        int i10 = unboundLocalDateTime.g;
        if (i10 != 0) {
            sb.append(JwtParser.SEPARATOR_CHAR);
            while (true) {
                int i11 = i9 + 1;
                iArr = InstantKt.f74579a;
                if (i10 % iArr[i11] != 0) {
                    break;
                }
                i9 = i11;
            }
            int i12 = i9 - (i9 % 3);
            String strValueOf = String.valueOf((i10 / iArr[i12]) + iArr[9 - i12]);
            strValueOf.getClass();
            sb.append(strValueOf.substring(1));
        }
        sb.append(Matrix.MATRIX_TYPE_ZERO);
        return sb.toString();
    }
}
