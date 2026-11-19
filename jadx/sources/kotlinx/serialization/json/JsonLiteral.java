package kotlinx.serialization.json;

import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.internal.StringOpsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B%\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlinx/serialization/json/JsonLiteral;", "Lkotlinx/serialization/json/JsonPrimitive;", "", "body", "", "isString", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "coerceToInlineType", "<init>", "(Ljava/lang/Object;ZLkotlinx/serialization/descriptors/SerialDescriptor;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsonLiteral extends JsonPrimitive {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f75749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SerialDescriptor f75750c;
    public final String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonLiteral(Object obj, boolean z, SerialDescriptor serialDescriptor) {
        super(null);
        obj.getClass();
        this.f75749b = z;
        this.f75750c = serialDescriptor;
        this.d = obj.toString();
        if (serialDescriptor == null || serialDescriptor.getL()) {
            return;
        }
        md.n("Failed requirement.");
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || JsonLiteral.class != obj.getClass()) {
            return false;
        }
        JsonLiteral jsonLiteral = (JsonLiteral) obj;
        return this.f75749b == jsonLiteral.f75749b && Intrinsics.c(this.d, jsonLiteral.d);
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    /* JADX INFO: renamed from: f, reason: from getter */
    public final String getD() {
        return this.d;
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    /* JADX INFO: renamed from: h, reason: from getter */
    public final boolean getF75749b() {
        return this.f75749b;
    }

    public final int hashCode() {
        return this.d.hashCode() + (Boolean.hashCode(this.f75749b) * 31);
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public final String toString() {
        boolean z = this.f75749b;
        String str = this.d;
        if (!z) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        StringOpsKt.a(str, sb);
        return sb.toString();
    }

    public /* synthetic */ JsonLiteral(Object obj, boolean z, SerialDescriptor serialDescriptor, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, z, (i2 & 4) != 0 ? null : serialDescriptor);
    }
}
