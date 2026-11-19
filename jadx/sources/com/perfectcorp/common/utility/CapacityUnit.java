package com.perfectcorp.common.utility;

import okhttp3.internal.ws.RealWebSocket;

/* JADX WARN: Enum visitor error
java.lang.NullPointerException
	at jadx.core.dex.visitors.EnumVisitor.searchEnumSuperCtrInsn(EnumVisitor.java:495)
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:473)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
public abstract class CapacityUnit {
    public static final CapacityUnit BITS;
    public static final CapacityUnit BYTES;
    public static final CapacityUnit GBS;
    public static final CapacityUnit KBS;
    public static final CapacityUnit MBS;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ CapacityUnit[] f39402a;

    static {
        CapacityUnit capacityUnit = new CapacityUnit() { // from class: com.perfectcorp.common.utility.c
            @Override // com.perfectcorp.common.utility.CapacityUnit
            public final long b() {
                return 0L;
            }

            @Override // com.perfectcorp.common.utility.CapacityUnit
            public final long c(long j2) {
                return j2 / 8192;
            }
        };
        BITS = capacityUnit;
        CapacityUnit capacityUnit2 = new CapacityUnit() { // from class: com.perfectcorp.common.utility.d
            @Override // com.perfectcorp.common.utility.CapacityUnit
            public final long b() {
                return 1L;
            }

            @Override // com.perfectcorp.common.utility.CapacityUnit
            public final long c(long j2) {
                return j2 / RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
            }
        };
        BYTES = capacityUnit2;
        CapacityUnit capacityUnit3 = new CapacityUnit() { // from class: com.perfectcorp.common.utility.e
            @Override // com.perfectcorp.common.utility.CapacityUnit
            public final long b() {
                return CapacityUnit.a(1L, RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE, 9007199254740991L);
            }

            @Override // com.perfectcorp.common.utility.CapacityUnit
            public final long c(long j2) {
                return j2;
            }
        };
        KBS = capacityUnit3;
        CapacityUnit capacityUnit4 = new CapacityUnit() { // from class: com.perfectcorp.common.utility.f
            @Override // com.perfectcorp.common.utility.CapacityUnit
            public final long b() {
                return CapacityUnit.a(1L, 1048576L, 8796093022207L);
            }

            @Override // com.perfectcorp.common.utility.CapacityUnit
            public final long c(long j2) {
                return CapacityUnit.a(j2, RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE, 9007199254740991L);
            }
        };
        MBS = capacityUnit4;
        CapacityUnit capacityUnit5 = new CapacityUnit() { // from class: com.perfectcorp.common.utility.g
            @Override // com.perfectcorp.common.utility.CapacityUnit
            public final long b() {
                return CapacityUnit.a(1L, 1073741824L, 8589934591L);
            }

            @Override // com.perfectcorp.common.utility.CapacityUnit
            public final long c(long j2) {
                return CapacityUnit.a(j2, 1048576L, 8796093022207L);
            }
        };
        GBS = capacityUnit5;
        f39402a = new CapacityUnit[]{capacityUnit, capacityUnit2, capacityUnit3, capacityUnit4, capacityUnit5};
    }

    public static /* synthetic */ long a(long j2, long j3, long j4) {
        if (j2 > j4) {
            return Long.MAX_VALUE;
        }
        if (j2 < (-j4)) {
            return Long.MIN_VALUE;
        }
        return j2 * j3;
    }

    public static CapacityUnit valueOf(String str) {
        return (CapacityUnit) Enum.valueOf(CapacityUnit.class, str);
    }

    public static CapacityUnit[] values() {
        return (CapacityUnit[]) f39402a.clone();
    }

    public abstract long b();

    public abstract long c(long j2);
}
