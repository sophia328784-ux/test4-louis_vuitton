package defpackage;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.Syntax;
import com.squareup.wire.internal.Internal;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fBE\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\f\u001a\u00020\b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"LMemoryDump;", "Lcom/squareup/wire/Message;", "", "", "register_name", "mapping_name", "", "begin_address", "Lokio/ByteString;", "memory", "LArmMTEMetadata;", "arm_mte_metadata", "unknownFields", "<init>", "(Ljava/lang/String;Ljava/lang/String;JLokio/ByteString;LArmMTEMetadata;Lokio/ByteString;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MemoryDump extends Message {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final MemoryDump$Companion$ADAPTER$1 f35j;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f36e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f37f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ByteString f38h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArmMTEMetadata f39i;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LMemoryDump$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LMemoryDump;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f35j = new MemoryDump$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(MemoryDump.class), "type.googleapis.com/MemoryDump", Syntax.PROTO_3, null, "tombstone.proto");
    }

    public /* synthetic */ MemoryDump(String str, String str2, long j2, ByteString byteString, ArmMTEMetadata armMTEMetadata, ByteString byteString2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? 0L : j2, (i2 & 8) != 0 ? ByteString.f77399f : byteString, (i2 & 16) != 0 ? null : armMTEMetadata, (i2 & 32) != 0 ? ByteString.f77399f : byteString2);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MemoryDump)) {
            return false;
        }
        MemoryDump memoryDump = (MemoryDump) obj;
        return Intrinsics.c(b(), memoryDump.b()) && Intrinsics.c(this.f36e, memoryDump.f36e) && Intrinsics.c(this.f37f, memoryDump.f37f) && this.g == memoryDump.g && Intrinsics.c(this.f38h, memoryDump.f38h) && Intrinsics.c(this.f39i, memoryDump.f39i);
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = (this.f38h.hashCode() + fc.a(fc.b(fc.b(b().hashCode() * 37, 37, this.f36e), 37, this.f37f), 37, this.g)) * 37;
        ArmMTEMetadata armMTEMetadata = this.f39i;
        int iHashCode2 = iHashCode + (armMTEMetadata != null ? armMTEMetadata.hashCode() : 0);
        this.d = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("register_name=".concat(Internal.d(this.f36e)));
        arrayList.add("mapping_name=".concat(Internal.d(this.f37f)));
        arrayList.add("begin_address=" + this.g);
        arrayList.add("memory=" + this.f38h);
        ArmMTEMetadata armMTEMetadata = this.f39i;
        if (armMTEMetadata != null) {
            arrayList.add("arm_mte_metadata=" + armMTEMetadata);
        }
        return CollectionsKt.K(arrayList, ", ", "MemoryDump{", "}", null, 56);
    }

    public MemoryDump() {
        this(null, null, 0L, null, null, null, 63, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MemoryDump(String str, String str2, long j2, ByteString byteString, ArmMTEMetadata armMTEMetadata, ByteString byteString2) {
        super(f35j, byteString2);
        str.getClass();
        str2.getClass();
        byteString.getClass();
        byteString2.getClass();
        this.f36e = str;
        this.f37f = str2;
        this.g = j2;
        this.f38h = byteString;
        this.f39i = armMTEMetadata;
    }
}
