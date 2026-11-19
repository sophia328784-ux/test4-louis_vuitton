package defpackage;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.Syntax;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u001b\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"LArmMTEMetadata;", "Lcom/squareup/wire/Message;", "", "Lokio/ByteString;", "memory_tags", "unknownFields", "<init>", "(Lokio/ByteString;Lokio/ByteString;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ArmMTEMetadata extends Message {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ArmMTEMetadata$Companion$ADAPTER$1 f1f;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ByteString f2e;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LArmMTEMetadata$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LArmMTEMetadata;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f1f = new ArmMTEMetadata$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(ArmMTEMetadata.class), "type.googleapis.com/ArmMTEMetadata", Syntax.PROTO_3, null, "tombstone.proto");
    }

    public /* synthetic */ ArmMTEMetadata(ByteString byteString, ByteString byteString2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? ByteString.f77399f : byteString, (i2 & 2) != 0 ? ByteString.f77399f : byteString2);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ArmMTEMetadata)) {
            return false;
        }
        ArmMTEMetadata armMTEMetadata = (ArmMTEMetadata) obj;
        return Intrinsics.c(b(), armMTEMetadata.b()) && Intrinsics.c(this.f2e, armMTEMetadata.f2e);
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = this.f2e.hashCode() + (b().hashCode() * 37);
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("memory_tags=" + this.f2e);
        return CollectionsKt.K(arrayList, ", ", "ArmMTEMetadata{", "}", null, 56);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArmMTEMetadata() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArmMTEMetadata(ByteString byteString, ByteString byteString2) {
        super(f1f, byteString2);
        byteString.getClass();
        byteString2.getClass();
        this.f2e = byteString;
    }
}
