package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 kotlin.reflect.jvm.internal.impl.builtins.UnsignedType[], still in use, count: 1, list:
  (r0v1 kotlin.reflect.jvm.internal.impl.builtins.UnsignedType[]) from 0x004b: INVOKE (r0v1 kotlin.reflect.jvm.internal.impl.builtins.UnsignedType[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
public final class UnsignedType {
    UBYTE(ClassId.Companion.a("kotlin/UByte", false)),
    USHORT(ClassId.Companion.a("kotlin/UShort", false)),
    UINT(ClassId.Companion.a("kotlin/UInt", false)),
    ULONG(ClassId.Companion.a("kotlin/ULong", false));

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final ClassId arrayClassId;
    private final ClassId classId;
    private final Name typeName;

    static {
        ClassId.d.getClass();
        $ENTRIES = EnumEntriesKt.a(unsignedTypeArr);
    }

    public UnsignedType(ClassId classId) {
        super(str, i);
        this.classId = classId;
        Name nameF = classId.f();
        this.typeName = nameF;
        this.arrayClassId = new ClassId(classId.f73675a, Name.e(nameF.b() + "Array"));
    }

    public static UnsignedType valueOf(String str) {
        return (UnsignedType) Enum.valueOf(UnsignedType.class, str);
    }

    public static UnsignedType[] values() {
        return (UnsignedType[]) $VALUES.clone();
    }

    public final ClassId a() {
        return this.arrayClassId;
    }

    public final ClassId b() {
        return this.classId;
    }

    public final Name c() {
        return this.typeName;
    }
}
