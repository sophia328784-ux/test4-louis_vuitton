package com.vuitton.foundation.model.domain.model.account.address;

import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/address/AddressState;", "", "", m.v, "name", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AddressState {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66260a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66261b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/address/AddressState$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/account/address/AddressState;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AddressState> serializer() {
            return AddressState$$serializer.f66262a;
        }
    }

    public /* synthetic */ AddressState(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, AddressState$$serializer.f66262a.a());
            throw null;
        }
        this.f66260a = str;
        this.f66261b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddressState)) {
            return false;
        }
        AddressState addressState = (AddressState) obj;
        return Intrinsics.c(this.f66260a, addressState.f66260a) && Intrinsics.c(this.f66261b, addressState.f66261b);
    }

    public final int hashCode() {
        return this.f66261b.hashCode() + (this.f66260a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("AddressState(code=", this.f66260a, ", name=", this.f66261b, ")");
    }

    public AddressState(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f66260a = str;
        this.f66261b = str2;
    }
}
