package androidx.navigation.serialization;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0017\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0018"}, d2 = {"Landroidx/navigation/serialization/InternalType;", "", "INT", "INT_NULLABLE", "BOOL", "BOOL_NULLABLE", "DOUBLE", "DOUBLE_NULLABLE", "FLOAT", "FLOAT_NULLABLE", "LONG", "LONG_NULLABLE", "STRING", "STRING_NULLABLE", "INT_ARRAY", "BOOL_ARRAY", "DOUBLE_ARRAY", "FLOAT_ARRAY", "LONG_ARRAY", "ARRAY", "LIST", "ENUM", "ENUM_NULLABLE", "UNKNOWN", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class InternalType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ InternalType[] $VALUES;
    public static final InternalType ARRAY;
    public static final InternalType BOOL;
    public static final InternalType BOOL_ARRAY;
    public static final InternalType BOOL_NULLABLE;
    public static final InternalType DOUBLE;
    public static final InternalType DOUBLE_ARRAY;
    public static final InternalType DOUBLE_NULLABLE;
    public static final InternalType ENUM;
    public static final InternalType ENUM_NULLABLE;
    public static final InternalType FLOAT;
    public static final InternalType FLOAT_ARRAY;
    public static final InternalType FLOAT_NULLABLE;
    public static final InternalType INT;
    public static final InternalType INT_ARRAY;
    public static final InternalType INT_NULLABLE;
    public static final InternalType LIST;
    public static final InternalType LONG;
    public static final InternalType LONG_ARRAY;
    public static final InternalType LONG_NULLABLE;
    public static final InternalType STRING;
    public static final InternalType STRING_NULLABLE;
    public static final InternalType UNKNOWN;

    static {
        InternalType internalType = new InternalType("INT", 0);
        INT = internalType;
        InternalType internalType2 = new InternalType("INT_NULLABLE", 1);
        INT_NULLABLE = internalType2;
        InternalType internalType3 = new InternalType("BOOL", 2);
        BOOL = internalType3;
        InternalType internalType4 = new InternalType("BOOL_NULLABLE", 3);
        BOOL_NULLABLE = internalType4;
        InternalType internalType5 = new InternalType("DOUBLE", 4);
        DOUBLE = internalType5;
        InternalType internalType6 = new InternalType("DOUBLE_NULLABLE", 5);
        DOUBLE_NULLABLE = internalType6;
        InternalType internalType7 = new InternalType("FLOAT", 6);
        FLOAT = internalType7;
        InternalType internalType8 = new InternalType("FLOAT_NULLABLE", 7);
        FLOAT_NULLABLE = internalType8;
        InternalType internalType9 = new InternalType("LONG", 8);
        LONG = internalType9;
        InternalType internalType10 = new InternalType("LONG_NULLABLE", 9);
        LONG_NULLABLE = internalType10;
        InternalType internalType11 = new InternalType("STRING", 10);
        STRING = internalType11;
        InternalType internalType12 = new InternalType("STRING_NULLABLE", 11);
        STRING_NULLABLE = internalType12;
        InternalType internalType13 = new InternalType("INT_ARRAY", 12);
        INT_ARRAY = internalType13;
        InternalType internalType14 = new InternalType("BOOL_ARRAY", 13);
        BOOL_ARRAY = internalType14;
        InternalType internalType15 = new InternalType("DOUBLE_ARRAY", 14);
        DOUBLE_ARRAY = internalType15;
        InternalType internalType16 = new InternalType("FLOAT_ARRAY", 15);
        FLOAT_ARRAY = internalType16;
        InternalType internalType17 = new InternalType("LONG_ARRAY", 16);
        LONG_ARRAY = internalType17;
        InternalType internalType18 = new InternalType("ARRAY", 17);
        ARRAY = internalType18;
        InternalType internalType19 = new InternalType("LIST", 18);
        LIST = internalType19;
        InternalType internalType20 = new InternalType("ENUM", 19);
        ENUM = internalType20;
        InternalType internalType21 = new InternalType("ENUM_NULLABLE", 20);
        ENUM_NULLABLE = internalType21;
        InternalType internalType22 = new InternalType("UNKNOWN", 21);
        UNKNOWN = internalType22;
        InternalType[] internalTypeArr = {internalType, internalType2, internalType3, internalType4, internalType5, internalType6, internalType7, internalType8, internalType9, internalType10, internalType11, internalType12, internalType13, internalType14, internalType15, internalType16, internalType17, internalType18, internalType19, internalType20, internalType21, internalType22};
        $VALUES = internalTypeArr;
        $ENTRIES = EnumEntriesKt.a(internalTypeArr);
    }

    public static InternalType valueOf(String str) {
        return (InternalType) Enum.valueOf(InternalType.class, str);
    }

    public static InternalType[] values() {
        return (InternalType[]) $VALUES.clone();
    }
}
