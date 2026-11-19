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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011Ba\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"LBacktraceFrame;", "Lcom/squareup/wire/Message;", "", "", "rel_pc", "pc", "sp", "", "function_name", "function_offset", "file_name", "file_map_offset", "build_id", "Lokio/ByteString;", "unknownFields", "<init>", "(JJJLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Lokio/ByteString;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BacktraceFrame extends Message {
    public static final BacktraceFrame$Companion$ADAPTER$1 m;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f3e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f4f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f5h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f6i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f7j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f8k;
    public final String l;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LBacktraceFrame$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "LBacktraceFrame;", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "", "serialVersionUID", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        m = new BacktraceFrame$Companion$ADAPTER$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(BacktraceFrame.class), "type.googleapis.com/BacktraceFrame", Syntax.PROTO_3, null, "tombstone.proto");
    }

    public /* synthetic */ BacktraceFrame(long j2, long j3, long j4, String str, long j5, String str2, long j6, String str3, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0L : j2, (i2 & 2) != 0 ? 0L : j3, (i2 & 4) != 0 ? 0L : j4, (i2 & 8) != 0 ? "" : str, (i2 & 16) != 0 ? 0L : j5, (i2 & 32) != 0 ? "" : str2, (i2 & 64) == 0 ? j6 : 0L, (i2 & 128) == 0 ? str3 : "", (i2 & 256) != 0 ? ByteString.f77399f : byteString);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BacktraceFrame)) {
            return false;
        }
        BacktraceFrame backtraceFrame = (BacktraceFrame) obj;
        return Intrinsics.c(b(), backtraceFrame.b()) && this.f3e == backtraceFrame.f3e && this.f4f == backtraceFrame.f4f && this.g == backtraceFrame.g && Intrinsics.c(this.f5h, backtraceFrame.f5h) && this.f6i == backtraceFrame.f6i && Intrinsics.c(this.f7j, backtraceFrame.f7j) && this.f8k == backtraceFrame.f8k && Intrinsics.c(this.l, backtraceFrame.l);
    }

    public final int hashCode() {
        int i2 = this.d;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = this.l.hashCode() + fc.a(fc.b(fc.a(fc.b(fc.a(fc.a(fc.a(b().hashCode() * 37, 37, this.f3e), 37, this.f4f), 37, this.g), 37, this.f5h), 37, this.f6i), 37, this.f7j), 37, this.f8k);
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("rel_pc=" + this.f3e);
        arrayList.add("pc=" + this.f4f);
        arrayList.add("sp=" + this.g);
        arrayList.add("function_name=".concat(Internal.d(this.f5h)));
        arrayList.add("function_offset=" + this.f6i);
        arrayList.add("file_name=".concat(Internal.d(this.f7j)));
        arrayList.add("file_map_offset=" + this.f8k);
        arrayList.add("build_id=".concat(Internal.d(this.l)));
        return CollectionsKt.K(arrayList, ", ", "BacktraceFrame{", "}", null, 56);
    }

    public BacktraceFrame() {
        this(0L, 0L, 0L, null, 0L, null, 0L, null, null, 511, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BacktraceFrame(long j2, long j3, long j4, String str, long j5, String str2, long j6, String str3, ByteString byteString) {
        super(m, byteString);
        str.getClass();
        str2.getClass();
        str3.getClass();
        byteString.getClass();
        this.f3e = j2;
        this.f4f = j3;
        this.g = j4;
        this.f5h = str;
        this.f6i = j5;
        this.f7j = str2;
        this.f8k = j6;
        this.l = str3;
    }
}
