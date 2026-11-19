package com.dynatrace.agent.compose.userinteraction.utils;

import defpackage.v40;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/compose/userinteraction/utils/MeasurePolicyType;", "", "ROW", "COLUMN", "BOX", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MeasurePolicyType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MeasurePolicyType[] $VALUES;
    public static final MeasurePolicyType BOX;
    public static final MeasurePolicyType COLUMN;
    public static final MeasurePolicyType ROW;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f26699a;

        static {
            int[] iArr = new int[MeasurePolicyType.values().length];
            try {
                iArr[MeasurePolicyType.ROW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MeasurePolicyType.COLUMN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MeasurePolicyType.BOX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f26699a = iArr;
        }
    }

    static {
        MeasurePolicyType measurePolicyType = new MeasurePolicyType("ROW", 0);
        ROW = measurePolicyType;
        MeasurePolicyType measurePolicyType2 = new MeasurePolicyType("COLUMN", 1);
        COLUMN = measurePolicyType2;
        MeasurePolicyType measurePolicyType3 = new MeasurePolicyType("BOX", 2);
        BOX = measurePolicyType3;
        MeasurePolicyType[] measurePolicyTypeArr = {measurePolicyType, measurePolicyType2, measurePolicyType3};
        $VALUES = measurePolicyTypeArr;
        $ENTRIES = EnumEntriesKt.a(measurePolicyTypeArr);
    }

    public static MeasurePolicyType valueOf(String str) {
        return (MeasurePolicyType) Enum.valueOf(MeasurePolicyType.class, str);
    }

    public static MeasurePolicyType[] values() {
        return (MeasurePolicyType[]) $VALUES.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        int i2 = WhenMappings.f26699a[ordinal()];
        if (i2 == 1) {
            return "Row";
        }
        if (i2 == 2) {
            return "Column";
        }
        if (i2 == 3) {
            return "Box";
        }
        v40.g();
        return null;
    }
}
