package kotlin.reflect.jvm.internal.impl.builtins.functions;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class FunctionClassKind {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FunctionClassKind[] $VALUES;
    public static final Companion Companion;
    public static final FunctionClassKind Function;
    public static final FunctionClassKind KFunction;
    public static final FunctionClassKind KSuspendFunction;
    public static final FunctionClassKind SuspendFunction;
    public static final FunctionClassKind UNKNOWN;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        FunctionClassKind functionClassKind = new FunctionClassKind("Function", 0);
        Function = functionClassKind;
        FunctionClassKind functionClassKind2 = new FunctionClassKind("SuspendFunction", 1);
        SuspendFunction = functionClassKind2;
        FunctionClassKind functionClassKind3 = new FunctionClassKind("KFunction", 2);
        KFunction = functionClassKind3;
        FunctionClassKind functionClassKind4 = new FunctionClassKind("KSuspendFunction", 3);
        KSuspendFunction = functionClassKind4;
        FunctionClassKind functionClassKind5 = new FunctionClassKind("UNKNOWN", 4);
        UNKNOWN = functionClassKind5;
        FunctionClassKind[] functionClassKindArr = {functionClassKind, functionClassKind2, functionClassKind3, functionClassKind4, functionClassKind5};
        $VALUES = functionClassKindArr;
        $ENTRIES = EnumEntriesKt.a(functionClassKindArr);
        Companion = new Companion(null);
    }

    public static FunctionClassKind valueOf(String str) {
        return (FunctionClassKind) Enum.valueOf(FunctionClassKind.class, str);
    }

    public static FunctionClassKind[] values() {
        return (FunctionClassKind[]) $VALUES.clone();
    }
}
