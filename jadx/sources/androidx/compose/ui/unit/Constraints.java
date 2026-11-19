package androidx.compose.ui.unit;

import defpackage.cj;
import defpackage.fc;
import defpackage.os;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.internal.Constants;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/unit/Constraints;", "", "Companion", "value", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class Constraints {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f10998b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f10999a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/unit/Constraints$Companion;", "", "", "Infinity", "I", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static long a(int i2, int i3, int i4, int i5) {
            int i6 = 262142;
            int iMin = Math.min(i4, 262142);
            int iMin2 = i5 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.min(i5, 262142);
            int i7 = iMin2 == Integer.MAX_VALUE ? iMin : iMin2;
            if (i7 >= 8191) {
                if (i7 < 32767) {
                    i6 = Constants.CallType.HOST;
                } else if (i7 < 65535) {
                    i6 = 32766;
                } else {
                    if (i7 >= 262143) {
                        ConstraintsKt.l(i7);
                        os.d();
                        return 0L;
                    }
                    i6 = 8190;
                }
            }
            return ConstraintsKt.a(Math.min(i6, i2), i3 != Integer.MAX_VALUE ? Math.min(i6, i3) : Integer.MAX_VALUE, iMin, iMin2);
        }

        public static long b(int i2, int i3, int i4, int i5) {
            int i6 = 262142;
            int iMin = Math.min(i2, 262142);
            int iMin2 = i3 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.min(i3, 262142);
            int i7 = iMin2 == Integer.MAX_VALUE ? iMin : iMin2;
            if (i7 >= 8191) {
                if (i7 < 32767) {
                    i6 = Constants.CallType.HOST;
                } else if (i7 < 65535) {
                    i6 = 32766;
                } else {
                    if (i7 >= 262143) {
                        ConstraintsKt.l(i7);
                        os.d();
                        return 0L;
                    }
                    i6 = 8190;
                }
            }
            return ConstraintsKt.a(iMin, iMin2, Math.min(i6, i4), i5 != Integer.MAX_VALUE ? Math.min(i6, i5) : Integer.MAX_VALUE);
        }

        public static long c(int i2, int i3) {
            if (!((i3 >= 0) & (i2 >= 0))) {
                InlineClassHelperKt.a("width and height must be >= 0");
            }
            return ConstraintsKt.h(i2, i2, i3, i3);
        }

        public static long d(int i2) {
            if (i2 < 0) {
                InlineClassHelperKt.a("height must be >= 0");
            }
            return ConstraintsKt.h(0, Integer.MAX_VALUE, i2, i2);
        }

        public static long e(int i2) {
            if (i2 < 0) {
                InlineClassHelperKt.a("width must be >= 0");
            }
            return ConstraintsKt.h(i2, i2, 0, Integer.MAX_VALUE);
        }
    }

    public /* synthetic */ Constraints(long j2) {
        this.f10999a = j2;
    }

    public static long a(long j2, int i2, int i3, int i4, int i5, int i6) {
        if ((i6 & 1) != 0) {
            i2 = j(j2);
        }
        if ((i6 & 2) != 0) {
            i3 = h(j2);
        }
        if ((i6 & 4) != 0) {
            i4 = i(j2);
        }
        if ((i6 & 8) != 0) {
            i5 = g(j2);
        }
        if (i3 < i2 || i5 < i4 || i2 < 0 || i4 < 0) {
            InlineClassHelperKt.a("maxWidth must be >= than minWidth,\nmaxHeight must be >= than minHeight,\nminWidth and minHeight must be >= 0");
        }
        return ConstraintsKt.h(i2, i3, i4, i5);
    }

    public static final boolean b(long j2, long j3) {
        return j2 == j3;
    }

    public static final boolean c(long j2) {
        int i2 = (int) (3 & j2);
        int i3 = (((i2 & 2) >> 1) * 3) + ((i2 & 1) << 1);
        return (((int) (j2 >> (i3 + 46))) & ((1 << (18 - i3)) - 1)) != 0;
    }

    public static final boolean d(long j2) {
        int i2 = (int) (3 & j2);
        return (((int) (j2 >> 33)) & ((1 << cj.a((i2 & 2) >> 1, 3, (i2 & 1) << 1, 13)) - 1)) != 0;
    }

    public static final boolean e(long j2) {
        int i2 = (int) (3 & j2);
        int i3 = (((i2 & 2) >> 1) * 3) + ((i2 & 1) << 1);
        int i4 = (1 << (18 - i3)) - 1;
        int i5 = ((int) (j2 >> (i3 + 15))) & i4;
        int i6 = ((int) (j2 >> (i3 + 46))) & i4;
        return i5 == (i6 == 0 ? Integer.MAX_VALUE : i6 - 1);
    }

    public static final boolean f(long j2) {
        int i2 = (int) (3 & j2);
        int iA = (1 << cj.a((i2 & 2) >> 1, 3, (i2 & 1) << 1, 13)) - 1;
        int i3 = ((int) (j2 >> 2)) & iA;
        int i4 = ((int) (j2 >> 33)) & iA;
        return i3 == (i4 == 0 ? Integer.MAX_VALUE : i4 - 1);
    }

    public static final int g(long j2) {
        int i2 = (int) (3 & j2);
        int i3 = (((i2 & 2) >> 1) * 3) + ((i2 & 1) << 1);
        int i4 = ((int) (j2 >> (i3 + 46))) & ((1 << (18 - i3)) - 1);
        if (i4 == 0) {
            return Integer.MAX_VALUE;
        }
        return i4 - 1;
    }

    public static final int h(long j2) {
        int i2 = (int) (3 & j2);
        int i3 = (int) (j2 >> 33);
        int iA = i3 & ((1 << cj.a((i2 & 2) >> 1, 3, (i2 & 1) << 1, 13)) - 1);
        if (iA == 0) {
            return Integer.MAX_VALUE;
        }
        return iA - 1;
    }

    public static final int i(long j2) {
        int i2 = (int) (3 & j2);
        int i3 = (((i2 & 2) >> 1) * 3) + ((i2 & 1) << 1);
        return ((int) (j2 >> (i3 + 15))) & ((1 << (18 - i3)) - 1);
    }

    public static final int j(long j2) {
        int i2 = (int) (3 & j2);
        return ((int) (j2 >> 2)) & ((1 << cj.a((i2 & 2) >> 1, 3, (i2 & 1) << 1, 13)) - 1);
    }

    public static final boolean k(long j2) {
        int i2 = (int) (3 & j2);
        int i3 = (((i2 & 2) >> 1) * 3) + ((i2 & 1) << 1);
        return ((((int) (j2 >> 33)) & ((1 << (i3 + 13)) - 1)) - 1 == 0) | ((((int) (j2 >> (i3 + 46))) & ((1 << (18 - i3)) - 1)) - 1 == 0);
    }

    public static String l(long j2) {
        int iH = h(j2);
        String strValueOf = iH == Integer.MAX_VALUE ? "Infinity" : String.valueOf(iH);
        int iG = g(j2);
        String strValueOf2 = iG != Integer.MAX_VALUE ? String.valueOf(iG) : "Infinity";
        StringBuilder sb = new StringBuilder("Constraints(minWidth = ");
        sb.append(j(j2));
        sb.append(", maxWidth = ");
        sb.append(strValueOf);
        sb.append(", minHeight = ");
        sb.append(i(j2));
        sb.append(", maxHeight = ");
        return fc.l(sb, strValueOf2, ')');
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Constraints) {
            return this.f10999a == ((Constraints) obj).f10999a;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f10999a);
    }

    public final String toString() {
        return l(this.f10999a);
    }
}
