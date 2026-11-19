package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 kotlin.reflect.jvm.internal.impl.builtins.UnsignedArrayType[], still in use, count: 1, list:
  (r0v1 kotlin.reflect.jvm.internal.impl.builtins.UnsignedArrayType[]) from 0x004b: INVOKE (r0v1 kotlin.reflect.jvm.internal.impl.builtins.UnsignedArrayType[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
public final class UnsignedArrayType {
    UBYTEARRAY(ClassId.Companion.a("kotlin/UByteArray", false)),
    USHORTARRAY(ClassId.Companion.a("kotlin/UShortArray", false)),
    UINTARRAY(ClassId.Companion.a("kotlin/UIntArray", false)),
    ULONGARRAY(ClassId.Companion.a("kotlin/ULongArray", false));

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final ClassId classId;
    private final Name typeName;

    static {
        ClassId.d.getClass();
        $ENTRIES = EnumEntriesKt.a(unsignedArrayTypeArr);
    }

    public UnsignedArrayType(ClassId classId) {
        super(str, i);
        this.classId = classId;
        this.typeName = classId.f();
    }

    public static UnsignedArrayType valueOf(String str) {
        return (UnsignedArrayType) Enum.valueOf(UnsignedArrayType.class, str);
    }

    public static UnsignedArrayType[] values() {
        return (UnsignedArrayType[]) $VALUES.clone();
    }

    public final Name a() {
        return this.typeName;
    }
}
