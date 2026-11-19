package com.vuitton.foundation.model.domain.model.product.universal;

import com.batch.android.s.b;
import defpackage.iq;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;", "", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;", "type", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CustomizationId {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f67962c = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new iq(19))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67963a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CustomizationIdType f67964b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CustomizationId> serializer() {
            return CustomizationId$$serializer.f67965a;
        }
    }

    public /* synthetic */ CustomizationId(int i2, String str, CustomizationIdType customizationIdType, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, CustomizationId$$serializer.f67965a.a());
            throw null;
        }
        this.f67963a = str;
        this.f67964b = customizationIdType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomizationId)) {
            return false;
        }
        CustomizationId customizationId = (CustomizationId) obj;
        return Intrinsics.c(this.f67963a, customizationId.f67963a) && this.f67964b == customizationId.f67964b;
    }

    public final int hashCode() {
        return this.f67964b.hashCode() + (this.f67963a.hashCode() * 31);
    }

    public final String toString() {
        return "CustomizationId(id=" + this.f67963a + ", type=" + this.f67964b + ")";
    }

    public CustomizationId(String str, CustomizationIdType customizationIdType) {
        str.getClass();
        customizationIdType.getClass();
        this.f67963a = str;
        this.f67964b = customizationIdType;
    }
}
