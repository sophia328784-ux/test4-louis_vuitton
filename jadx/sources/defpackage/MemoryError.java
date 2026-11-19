package defpackage;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\r\u000e\u000fB1\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"LMemoryError;", "Lcom/squareup/wire/Message;", "", "LMemoryError$Tool;", "tool", "LMemoryError$Type;", "type", "LHeapObject;", "heap", "Lokio/ByteString;", "unknownFields", "<init>", "(LMemoryError$Tool;LMemoryError$Type;LHeapObject;Lokio/ByteString;)V", "Companion", "Tool", "Type", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MemoryError extends Message {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final MemoryError$Companion$ADAPTER$1 f40h;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Tool f41e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Type f42f;
    public final HeapObject g;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LMemoryError$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LMemoryError;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v2 MemoryError$Tool[], still in use, count: 1, list:
      (r1v2 MemoryError$Tool[]) from 0x001a: INVOKE (r1v2 MemoryError$Tool[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \b2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002:\u0001\bR\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"LMemoryError$Tool;", "Lcom/squareup/wire/WireEnum;", "", "", "value", "I", "getValue", "()I", "Companion", "GWP_ASAN", "SCUDO", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Tool implements WireEnum {
        GWP_ASAN(0),
        SCUDO(1);

        private static final /* synthetic */ EnumEntries $ENTRIES;
        public static final ProtoAdapter<Tool> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        private final int value;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"LMemoryError$Tool$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LMemoryError$Tool;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            Tool tool = GWP_ASAN;
            $ENTRIES = EnumEntriesKt.a(toolArr);
            INSTANCE = new Companion(null);
            ADAPTER = new MemoryError$Tool$Companion$ADAPTER$1(Reflection.f71922a.b(Tool.class), Syntax.PROTO_3, tool);
        }

        public Tool(int i2) {
            super(str, i);
            this.value = i2;
        }

        public static Tool valueOf(String str) {
            return (Tool) Enum.valueOf(Tool.class, str);
        }

        public static Tool[] values() {
            return (Tool[]) $VALUES.clone();
        }

        @Override // com.squareup.wire.WireEnum
        public final int getValue() {
            return this.value;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v2 MemoryError$Type[], still in use, count: 1, list:
      (r1v2 MemoryError$Type[]) from 0x0042: INVOKE (r1v2 MemoryError$Type[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u0000 \b2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002:\u0001\bR\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"LMemoryError$Type;", "Lcom/squareup/wire/WireEnum;", "", "", "value", "I", "getValue", "()I", "Companion", "UNKNOWN", "USE_AFTER_FREE", "DOUBLE_FREE", "INVALID_FREE", "BUFFER_OVERFLOW", "BUFFER_UNDERFLOW", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Type implements WireEnum {
        UNKNOWN(0),
        USE_AFTER_FREE(1),
        DOUBLE_FREE(2),
        INVALID_FREE(3),
        BUFFER_OVERFLOW(4),
        BUFFER_UNDERFLOW(5);

        private static final /* synthetic */ EnumEntries $ENTRIES;
        public static final ProtoAdapter<Type> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        private final int value;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"LMemoryError$Type$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LMemoryError$Type;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            Type type = UNKNOWN;
            $ENTRIES = EnumEntriesKt.a(typeArr);
            INSTANCE = new Companion(null);
            ADAPTER = new MemoryError$Type$Companion$ADAPTER$1(Reflection.f71922a.b(Type.class), Syntax.PROTO_3, type);
        }

        public Type(int i2) {
            super(str, i);
            this.value = i2;
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }

        @Override // com.squareup.wire.WireEnum
        public final int getValue() {
            return this.value;
        }
    }

    static {
        new Companion(null);
        f40h = new MemoryError$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(MemoryError.class), "type.googleapis.com/MemoryError", Syntax.PROTO_3, null, "tombstone.proto");
    }

    public /* synthetic */ MemoryError(Tool tool, Type type, HeapObject heapObject, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? Tool.GWP_ASAN : tool, (i2 & 2) != 0 ? Type.UNKNOWN : type, (i2 & 4) != 0 ? null : heapObject, (i2 & 8) != 0 ? ByteString.f77399f : byteString);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MemoryError)) {
            return false;
        }
        MemoryError memoryError = (MemoryError) obj;
        return Intrinsics.c(b(), memoryError.b()) && this.f41e == memoryError.f41e && this.f42f == memoryError.f42f && Intrinsics.c(this.g, memoryError.g);
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = (this.f42f.hashCode() + ((this.f41e.hashCode() + (b().hashCode() * 37)) * 37)) * 37;
        HeapObject heapObject = this.g;
        int iHashCode2 = iHashCode + (heapObject != null ? heapObject.hashCode() : 0);
        this.d = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("tool=" + this.f41e);
        arrayList.add("type=" + this.f42f);
        HeapObject heapObject = this.g;
        if (heapObject != null) {
            arrayList.add("heap=" + heapObject);
        }
        return CollectionsKt.K(arrayList, ", ", "MemoryError{", "}", null, 56);
    }

    public MemoryError() {
        this(null, null, null, null, 15, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MemoryError(Tool tool, Type type, HeapObject heapObject, ByteString byteString) {
        super(f40h, byteString);
        tool.getClass();
        type.getClass();
        byteString.getClass();
        this.f41e = tool;
        this.f42f = type;
        this.g = heapObject;
    }
}
