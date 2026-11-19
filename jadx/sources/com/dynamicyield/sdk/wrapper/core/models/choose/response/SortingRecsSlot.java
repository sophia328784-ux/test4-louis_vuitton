package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bBC\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingRecsSlot;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Slot;", "", "sku", "slotId", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingRecsProductData;", "productData", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingRecsProductData;)V", "", "seen0", "variationId", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingRecsProductData;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class SortingRecsSlot extends Slot {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f26151c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SortingRecsProductData f26152e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingRecsSlot$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingRecsSlot;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SortingRecsSlot> serializer() {
            return SortingRecsSlot$$serializer.f26153a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SortingRecsSlot(int i2, Integer num, String str, String str2, SortingRecsProductData sortingRecsProductData, SerializationConstructorMarker serializationConstructorMarker) {
        super(i2, num, serializationConstructorMarker);
        if (14 != (i2 & 14)) {
            PluginExceptionsKt.b(i2, 14, SortingRecsSlot$$serializer.f26153a.getF19850b());
            throw null;
        }
        this.f26151c = str;
        this.d = str2;
        this.f26152e = sortingRecsProductData;
    }

    public SortingRecsSlot(String str, String str2, SortingRecsProductData sortingRecsProductData) {
        str.getClass();
        str2.getClass();
        sortingRecsProductData.getClass();
        this.f26151c = str;
        this.d = str2;
        this.f26152e = sortingRecsProductData;
    }
}
