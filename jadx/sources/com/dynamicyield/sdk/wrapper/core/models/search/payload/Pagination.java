package com.dynamicyield.sdk.wrapper.core.models.search.payload;

import kotlin.Metadata;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Pagination;", "", "Lkotlin/UInt;", "numItems", "offset", "<init>", "(IILkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILkotlin/UInt;Lkotlin/UInt;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class Pagination {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26394a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f26395b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Pagination$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Pagination;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Pagination> serializer() {
            return Pagination$$serializer.f26396a;
        }
    }

    public /* synthetic */ Pagination(int i2, UInt uInt, UInt uInt2, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, Pagination$$serializer.f26396a.a());
            throw null;
        }
        this.f26394a = uInt.f71724b;
        this.f26395b = uInt2.f71724b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Pagination)) {
            return false;
        }
        Pagination pagination = (Pagination) obj;
        return this.f26394a == pagination.f26394a && this.f26395b == pagination.f26395b;
    }

    public final int hashCode() {
        UInt.Companion companion = UInt.INSTANCE;
        return Integer.hashCode(this.f26395b) + (Integer.hashCode(this.f26394a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Pagination(numItems=");
        UInt.Companion companion = UInt.INSTANCE;
        sb.append((Object) String.valueOf(((long) this.f26394a) & BodyPartID.bodyIdMax));
        sb.append(", offset=");
        sb.append((Object) String.valueOf(((long) this.f26395b) & BodyPartID.bodyIdMax));
        sb.append(')');
        return sb.toString();
    }

    public Pagination(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f26394a = i2;
        this.f26395b = i3;
    }
}
