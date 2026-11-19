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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013Bk\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"LMemoryMapping;", "Lcom/squareup/wire/Message;", "", "", "begin_address", "end_address", "offset", "", "read", "write", "execute", "", "mapping_name", "build_id", "load_bias", "Lokio/ByteString;", "unknownFields", "<init>", "(JJJZZZLjava/lang/String;Ljava/lang/String;JLokio/ByteString;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MemoryMapping extends Message {
    public static final MemoryMapping$Companion$ADAPTER$1 n;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f43e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f44f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f45h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f46i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f47j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f48k;
    public final String l;
    public final long m;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LMemoryMapping$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LMemoryMapping;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        n = new MemoryMapping$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(MemoryMapping.class), "type.googleapis.com/MemoryMapping", Syntax.PROTO_3, null, "tombstone.proto");
    }

    public /* synthetic */ MemoryMapping(long j2, long j3, long j4, boolean z, boolean z2, boolean z3, String str, String str2, long j5, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0L : j2, (i2 & 2) != 0 ? 0L : j3, (i2 & 4) != 0 ? 0L : j4, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? false : z2, (i2 & 32) == 0 ? z3 : false, (i2 & 64) != 0 ? "" : str, (i2 & 128) == 0 ? str2 : "", (i2 & 256) == 0 ? j5 : 0L, (i2 & 512) != 0 ? ByteString.f77399f : byteString);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MemoryMapping)) {
            return false;
        }
        MemoryMapping memoryMapping = (MemoryMapping) obj;
        return Intrinsics.c(b(), memoryMapping.b()) && this.f43e == memoryMapping.f43e && this.f44f == memoryMapping.f44f && this.g == memoryMapping.g && this.f45h == memoryMapping.f45h && this.f46i == memoryMapping.f46i && this.f47j == memoryMapping.f47j && Intrinsics.c(this.f48k, memoryMapping.f48k) && Intrinsics.c(this.l, memoryMapping.l) && this.m == memoryMapping.m;
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = Long.hashCode(this.m) + fc.b(fc.b(o60.b(o60.b(o60.b(fc.a(fc.a(fc.a(b().hashCode() * 37, 37, this.f43e), 37, this.f44f), 37, this.g), 37, this.f45h), 37, this.f46i), 37, this.f47j), 37, this.f48k), 37, this.l);
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("begin_address=" + this.f43e);
        arrayList.add("end_address=" + this.f44f);
        arrayList.add("offset=" + this.g);
        arrayList.add("read=" + this.f45h);
        arrayList.add("write=" + this.f46i);
        arrayList.add("execute=" + this.f47j);
        arrayList.add("mapping_name=".concat(Internal.d(this.f48k)));
        arrayList.add("build_id=".concat(Internal.d(this.l)));
        arrayList.add("load_bias=" + this.m);
        return CollectionsKt.K(arrayList, ", ", "MemoryMapping{", "}", null, 56);
    }

    public MemoryMapping() {
        this(0L, 0L, 0L, false, false, false, null, null, 0L, null, 1023, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MemoryMapping(long j2, long j3, long j4, boolean z, boolean z2, boolean z3, String str, String str2, long j5, ByteString byteString) {
        super(n, byteString);
        str.getClass();
        str2.getClass();
        byteString.getClass();
        this.f43e = j2;
        this.f44f = j3;
        this.g = j4;
        this.f45h = z;
        this.f46i = z2;
        this.f47j = z3;
        this.f48k = str;
        this.l = str2;
        this.m = j5;
    }
}
