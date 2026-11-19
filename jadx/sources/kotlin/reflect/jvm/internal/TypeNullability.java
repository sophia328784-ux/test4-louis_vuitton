package kotlin.reflect.jvm.internal;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/reflect/jvm/internal/TypeNullability;", "", "NOT_NULL", "NULLABLE", "FLEXIBLE", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TypeNullability {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TypeNullability[] $VALUES;
    public static final TypeNullability FLEXIBLE;
    public static final TypeNullability NOT_NULL;
    public static final TypeNullability NULLABLE;

    static {
        TypeNullability typeNullability = new TypeNullability("NOT_NULL", 0);
        NOT_NULL = typeNullability;
        TypeNullability typeNullability2 = new TypeNullability("NULLABLE", 1);
        NULLABLE = typeNullability2;
        TypeNullability typeNullability3 = new TypeNullability("FLEXIBLE", 2);
        FLEXIBLE = typeNullability3;
        TypeNullability[] typeNullabilityArr = {typeNullability, typeNullability2, typeNullability3};
        $VALUES = typeNullabilityArr;
        $ENTRIES = EnumEntriesKt.a(typeNullabilityArr);
    }

    public static TypeNullability valueOf(String str) {
        return (TypeNullability) Enum.valueOf(TypeNullability.class, str);
    }

    public static TypeNullability[] values() {
        return (TypeNullability[]) $VALUES.clone();
    }
}
