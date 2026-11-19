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
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000bB'\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"LCause;", "Lcom/squareup/wire/Message;", "", "", "human_readable", "LMemoryError;", "memory_error", "Lokio/ByteString;", "unknownFields", "<init>", "(Ljava/lang/String;LMemoryError;Lokio/ByteString;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Cause extends Message {
    public static final Cause$Companion$ADAPTER$1 g;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f9e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MemoryError f10f;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LCause$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LCause;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        g = new Cause$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(Cause.class), "type.googleapis.com/Cause", Syntax.PROTO_3, null, "tombstone.proto");
    }

    public /* synthetic */ Cause(String str, MemoryError memoryError, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? null : memoryError, (i2 & 4) != 0 ? ByteString.f77399f : byteString);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cause)) {
            return false;
        }
        Cause cause = (Cause) obj;
        return Intrinsics.c(b(), cause.b()) && Intrinsics.c(this.f9e, cause.f9e) && Intrinsics.c(this.f10f, cause.f10f);
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iB = fc.b(b().hashCode() * 37, 37, this.f9e);
        MemoryError memoryError = this.f10f;
        int iHashCode = iB + (memoryError != null ? memoryError.hashCode() : 0);
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("human_readable=".concat(Internal.d(this.f9e)));
        MemoryError memoryError = this.f10f;
        if (memoryError != null) {
            arrayList.add("memory_error=" + memoryError);
        }
        return CollectionsKt.K(arrayList, ", ", "Cause{", "}", null, 56);
    }

    public Cause() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Cause(String str, MemoryError memoryError, ByteString byteString) {
        super(g, byteString);
        str.getClass();
        byteString.getClass();
        this.f9e = str;
        this.f10f = memoryError;
    }
}
