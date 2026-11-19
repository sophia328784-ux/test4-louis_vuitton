package com.dynamicyield.sdk.wrapper.core.models.search.payload;

import com.dynamicyield.sdk.wrapper.core.enums.SortOrderType;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.SortOptionsByFieldSerializer;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.SortOptionsByPopularitySerializer;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.SortOptionsSerializer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00022\u00020\u0001:\u0003\u0003\u0004\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;", "", "Companion", "ByPopularity", "ByField", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByField;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable(with = SortOptionsSerializer.class)
public abstract class SortOptions {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByField;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;", "", "field", "Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;", "order", "<init>", "(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;)V", "Companion", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @Serializable(with = SortOptionsByFieldSerializer.class)
    public static final /* data */ class ByField extends SortOptions {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f26413a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SortOrderType f26414b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByField$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByField;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<ByField> serializer() {
                return SortOptionsByFieldSerializer.f25985a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ByField(String str, SortOrderType sortOrderType) {
            super(null);
            str.getClass();
            sortOrderType.getClass();
            this.f26413a = str;
            this.f26414b = sortOrderType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ByField)) {
                return false;
            }
            ByField byField = (ByField) obj;
            return Intrinsics.c(this.f26413a, byField.f26413a) && this.f26414b == byField.f26414b;
        }

        public final int hashCode() {
            return this.f26414b.hashCode() + (this.f26413a.hashCode() * 31);
        }

        public final String toString() {
            return "ByField(field=" + this.f26413a + ", order=" + this.f26414b + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;", "Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;", "order", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;)V", "Companion", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @Serializable(with = SortOptionsByPopularitySerializer.class)
    public static final /* data */ class ByPopularity extends SortOptions {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SortOrderType f26415a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f26416b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<ByPopularity> serializer() {
                return SortOptionsByPopularitySerializer.f25987a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ByPopularity(SortOrderType sortOrderType) {
            super(null);
            sortOrderType.getClass();
            this.f26415a = sortOrderType;
            this.f26416b = "popularity";
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ByPopularity) && this.f26415a == ((ByPopularity) obj).f26415a;
        }

        public final int hashCode() {
            return this.f26415a.hashCode();
        }

        public final String toString() {
            return "ByPopularity(order=" + this.f26415a + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SortOptions> serializer() {
            return SortOptionsSerializer.f25989a;
        }
    }

    public SortOptions(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
