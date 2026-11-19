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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000eB9\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"LFD;", "Lcom/squareup/wire/Message;", "", "", "fd", "", "path", "owner", "", "tag", "Lokio/ByteString;", "unknownFields", "<init>", "(ILjava/lang/String;Ljava/lang/String;JLokio/ByteString;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FD extends Message {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final FD$Companion$ADAPTER$1 f13i;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f14e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f15f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f16h;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LFD$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LFD;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f13i = new FD$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(FD.class), "type.googleapis.com/FD", Syntax.PROTO_3, null, "tombstone.proto");
    }

    public /* synthetic */ FD(int i2, String str, String str2, long j2, ByteString byteString, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i2, (i3 & 2) != 0 ? "" : str, (i3 & 4) != 0 ? "" : str2, (i3 & 8) != 0 ? 0L : j2, (i3 & 16) != 0 ? ByteString.f77399f : byteString);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FD)) {
            return false;
        }
        FD fd = (FD) obj;
        return Intrinsics.c(b(), fd.b()) && this.f14e == fd.f14e && Intrinsics.c(this.f15f, fd.f15f) && Intrinsics.c(this.g, fd.g) && this.f16h == fd.f16h;
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = Long.hashCode(this.f16h) + fc.b(fc.b(tr.b(this.f14e, b().hashCode() * 37, 37), 37, this.f15f), 37, this.g);
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("fd=" + this.f14e);
        arrayList.add("path=".concat(Internal.d(this.f15f)));
        arrayList.add("owner=".concat(Internal.d(this.g)));
        arrayList.add("tag=" + this.f16h);
        return CollectionsKt.K(arrayList, ", ", "FD{", "}", null, 56);
    }

    public FD() {
        this(0, null, null, 0L, null, 31, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FD(int i2, String str, String str2, long j2, ByteString byteString) {
        super(f13i, byteString);
        str.getClass();
        str2.getClass();
        byteString.getClass();
        this.f14e = i2;
        this.f15f = str;
        this.g = str2;
        this.f16h = j2;
    }
}
