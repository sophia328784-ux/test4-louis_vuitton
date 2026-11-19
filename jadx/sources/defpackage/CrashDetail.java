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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\tB%\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"LCrashDetail;", "Lcom/squareup/wire/Message;", "", "Lokio/ByteString;", "name", "data_", "unknownFields", "<init>", "(Lokio/ByteString;Lokio/ByteString;Lokio/ByteString;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CrashDetail extends Message {
    public static final CrashDetail$Companion$ADAPTER$1 g;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ByteString f11e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ByteString f12f;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LCrashDetail$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LCrashDetail;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        g = new CrashDetail$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(CrashDetail.class), "type.googleapis.com/CrashDetail", Syntax.PROTO_3, null, "tombstone.proto");
    }

    public /* synthetic */ CrashDetail(ByteString byteString, ByteString byteString2, ByteString byteString3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? ByteString.f77399f : byteString, (i2 & 2) != 0 ? ByteString.f77399f : byteString2, (i2 & 4) != 0 ? ByteString.f77399f : byteString3);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashDetail)) {
            return false;
        }
        CrashDetail crashDetail = (CrashDetail) obj;
        return Intrinsics.c(b(), crashDetail.b()) && Intrinsics.c(this.f11e, crashDetail.f11e) && Intrinsics.c(this.f12f, crashDetail.f12f);
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = this.f12f.hashCode() + ((this.f11e.hashCode() + (b().hashCode() * 37)) * 37);
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("name=" + this.f11e);
        arrayList.add("data_=" + this.f12f);
        return CollectionsKt.K(arrayList, ", ", "CrashDetail{", "}", null, 56);
    }

    public CrashDetail() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CrashDetail(ByteString byteString, ByteString byteString2, ByteString byteString3) {
        super(g, byteString3);
        byteString.getClass();
        byteString2.getClass();
        byteString3.getClass();
        this.f11e = byteString;
        this.f12f = byteString2;
    }
}
