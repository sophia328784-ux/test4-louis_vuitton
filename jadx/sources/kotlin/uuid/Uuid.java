package kotlin.uuid;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;
import kotlin.text.HexExtensionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\u000eJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\u000b\u001a\u00020\n2\n\u0010\t\u001a\u00060\u0007j\u0002`\bH\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lkotlin/uuid/Uuid;", "", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "writeReplace", "()Ljava/lang/Object;", "Ljava/io/ObjectInputStream;", "Lkotlin/internal/ReadObjectParameterType;", "input", "", "readObject", "(Ljava/io/ObjectInputStream;)V", NBSSpanMetricUnit.Day, "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class Uuid implements Comparable<Uuid>, Serializable {

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Uuid f74597e = new Uuid(0, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f74598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f74599c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lkotlin/uuid/Uuid$Companion;", "", "", "SIZE_BYTES", "I", "SIZE_BITS", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Uuid a(long j2, long j3) {
            return (j2 == 0 && j3 == 0) ? Uuid.f74597e : new Uuid(j2, j3, null);
        }

        public static Uuid b(String str) {
            str.getClass();
            int length = str.length();
            int i2 = 0;
            if (length == 32) {
                long j2 = 0;
                while (i2 < 16) {
                    long j3 = j2 << 4;
                    char cCharAt = str.charAt(i2);
                    if ((cCharAt >>> '\b') == 0) {
                        long j4 = HexExtensionsKt.f74523b[cCharAt];
                        if (j4 >= 0) {
                            j2 = j3 | j4;
                            i2++;
                        }
                    }
                    UuidKt__UuidKt.b(i2, str, "a hexadecimal digit");
                    throw null;
                }
                long j5 = 0;
                for (int i3 = 16; i3 < 32; i3++) {
                    long j6 = j5 << 4;
                    char cCharAt2 = str.charAt(i3);
                    if ((cCharAt2 >>> '\b') == 0) {
                        long j7 = HexExtensionsKt.f74523b[cCharAt2];
                        if (j7 >= 0) {
                            j5 = j6 | j7;
                        }
                    }
                    UuidKt__UuidKt.b(i3, str, "a hexadecimal digit");
                    throw null;
                }
                Uuid.INSTANCE.getClass();
                return a(j2, j5);
            }
            if (length != 36) {
                StringBuilder sb = new StringBuilder("Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \"");
                sb.append(str.length() <= 64 ? str : str.substring(0, 64).concat("..."));
                sb.append("\" of length ");
                sb.append(str.length());
                throw new IllegalArgumentException(sb.toString());
            }
            long j8 = 0;
            while (i2 < 8) {
                long j9 = j8 << 4;
                char cCharAt3 = str.charAt(i2);
                if ((cCharAt3 >>> '\b') == 0) {
                    long j10 = HexExtensionsKt.f74523b[cCharAt3];
                    if (j10 >= 0) {
                        j8 = j9 | j10;
                        i2++;
                    }
                }
                UuidKt__UuidKt.b(i2, str, "a hexadecimal digit");
                throw null;
            }
            if (str.charAt(8) != '-') {
                UuidKt__UuidKt.b(8, str, "'-' (hyphen)");
                throw null;
            }
            long j11 = 0;
            for (int i4 = 9; i4 < 13; i4++) {
                long j12 = j11 << 4;
                char cCharAt4 = str.charAt(i4);
                if ((cCharAt4 >>> '\b') == 0) {
                    long j13 = HexExtensionsKt.f74523b[cCharAt4];
                    if (j13 >= 0) {
                        j11 = j12 | j13;
                    }
                }
                UuidKt__UuidKt.b(i4, str, "a hexadecimal digit");
                throw null;
            }
            if (str.charAt(13) != '-') {
                UuidKt__UuidKt.b(13, str, "'-' (hyphen)");
                throw null;
            }
            long j14 = 0;
            for (int i5 = 14; i5 < 18; i5++) {
                long j15 = j14 << 4;
                char cCharAt5 = str.charAt(i5);
                if ((cCharAt5 >>> '\b') == 0) {
                    long j16 = HexExtensionsKt.f74523b[cCharAt5];
                    if (j16 >= 0) {
                        j14 = j15 | j16;
                    }
                }
                UuidKt__UuidKt.b(i5, str, "a hexadecimal digit");
                throw null;
            }
            if (str.charAt(18) != '-') {
                UuidKt__UuidKt.b(18, str, "'-' (hyphen)");
                throw null;
            }
            long j17 = 0;
            for (int i6 = 19; i6 < 23; i6++) {
                long j18 = j17 << 4;
                char cCharAt6 = str.charAt(i6);
                if ((cCharAt6 >>> '\b') == 0) {
                    long j19 = HexExtensionsKt.f74523b[cCharAt6];
                    if (j19 >= 0) {
                        j17 = j18 | j19;
                    }
                }
                UuidKt__UuidKt.b(i6, str, "a hexadecimal digit");
                throw null;
            }
            if (str.charAt(23) != '-') {
                UuidKt__UuidKt.b(23, str, "'-' (hyphen)");
                throw null;
            }
            long j20 = 0;
            for (int i7 = 24; i7 < 36; i7++) {
                long j21 = j20 << 4;
                char cCharAt7 = str.charAt(i7);
                if ((cCharAt7 >>> '\b') == 0) {
                    long j22 = HexExtensionsKt.f74523b[cCharAt7];
                    if (j22 >= 0) {
                        j20 = j21 | j22;
                    }
                }
                UuidKt__UuidKt.b(i7, str, "a hexadecimal digit");
                throw null;
            }
            Uuid.INSTANCE.getClass();
            return a((j8 << 32) | (j11 << 16) | j14, (j17 << 48) | j20);
        }
    }

    public Uuid(long j2, long j3) {
        this.f74598b = j2;
        this.f74599c = j3;
    }

    private final void readObject(ObjectInputStream input) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object writeReplace() {
        return new UuidSerialized(this.f74598b, this.f74599c);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Uuid uuid) {
        Uuid uuid2 = uuid;
        uuid2.getClass();
        long j2 = uuid2.f74598b;
        long j3 = this.f74598b;
        if (j3 != j2) {
            ULong.Companion companion = ULong.INSTANCE;
            return Long.compareUnsigned(j3, j2);
        }
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.compareUnsigned(this.f74599c, uuid2.f74599c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Uuid)) {
            return false;
        }
        Uuid uuid = (Uuid) obj;
        return this.f74598b == uuid.f74598b && this.f74599c == uuid.f74599c;
    }

    public final int hashCode() {
        return Long.hashCode(this.f74598b ^ this.f74599c);
    }

    public final String toString() {
        byte[] bArr = new byte[36];
        UuidKt__UuidJVMKt.a(this.f74598b, bArr, 0, 0, 4);
        bArr[8] = 45;
        UuidKt__UuidJVMKt.a(this.f74598b, bArr, 9, 4, 6);
        bArr[13] = 45;
        UuidKt__UuidJVMKt.a(this.f74598b, bArr, 14, 6, 8);
        bArr[18] = 45;
        UuidKt__UuidJVMKt.a(this.f74599c, bArr, 19, 0, 2);
        bArr[23] = 45;
        UuidKt__UuidJVMKt.a(this.f74599c, bArr, 24, 2, 8);
        return new String(bArr, Charsets.UTF_8);
    }

    public /* synthetic */ Uuid(long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, j3);
    }
}
