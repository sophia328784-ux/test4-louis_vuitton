package com.dynamicyield.sdk.wrapper.core.models.search.payload;

import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.FilterSerializer;
import defpackage.tr;
import defpackage.tx;
import java.util.List;
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

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00022\u00020\u0001:\u0003\u0003\u0004\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter;", "", "Companion", "NumericFilter", "StringFilter", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter$NumericFilter;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter$StringFilter;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable(with = FilterSerializer.class)
public abstract class Filter {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Filter> serializer() {
            return FilterSerializer.f25969a;
        }
    }

    public Filter(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B5\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter$StringFilter;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter;", "", "field", "", "values", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @Serializable
    public static final /* data */ class StringFilter extends Filter {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Lazy[] f26390c = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new tx(10))};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f26391a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f26392b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter$StringFilter$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter$StringFilter;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<StringFilter> serializer() {
                return Filter$StringFilter$$serializer.f26393a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ StringFilter(int i2, String str, List list, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, Filter$StringFilter$$serializer.f26393a.getF19838b());
                throw null;
            }
            this.f26391a = str;
            this.f26392b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StringFilter)) {
                return false;
            }
            StringFilter stringFilter = (StringFilter) obj;
            return Intrinsics.c(this.f26391a, stringFilter.f26391a) && Intrinsics.c(this.f26392b, stringFilter.f26392b);
        }

        public final int hashCode() {
            return this.f26392b.hashCode() + (this.f26391a.hashCode() * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("StringFilter(field=");
            sb.append(this.f26391a);
            sb.append(", values=");
            return tr.m(sb, this.f26392b, ')');
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StringFilter(String str, List<String> list) {
            super(null);
            str.getClass();
            list.getClass();
            this.f26391a = str;
            this.f26392b = list;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter$NumericFilter;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter;", "", "field", "", "min", "max", "<init>", "(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @Serializable
    public static final /* data */ class NumericFilter extends Filter {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f26386a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Float f26387b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Float f26388c;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter$NumericFilter$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter$NumericFilter;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<NumericFilter> serializer() {
                return Filter$NumericFilter$$serializer.f26389a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ NumericFilter(int i2, String str, Float f2, Float f3, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, Filter$NumericFilter$$serializer.f26389a.getF19838b());
                throw null;
            }
            this.f26386a = str;
            if ((i2 & 2) == 0) {
                this.f26387b = null;
            } else {
                this.f26387b = f2;
            }
            if ((i2 & 4) == 0) {
                this.f26388c = null;
            } else {
                this.f26388c = f3;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NumericFilter)) {
                return false;
            }
            NumericFilter numericFilter = (NumericFilter) obj;
            return Intrinsics.c(this.f26386a, numericFilter.f26386a) && Intrinsics.c(this.f26387b, numericFilter.f26387b) && Intrinsics.c(this.f26388c, numericFilter.f26388c);
        }

        public final int hashCode() {
            int iHashCode = this.f26386a.hashCode() * 31;
            Float f2 = this.f26387b;
            int iHashCode2 = (iHashCode + (f2 == null ? 0 : f2.hashCode())) * 31;
            Float f3 = this.f26388c;
            return iHashCode2 + (f3 != null ? f3.hashCode() : 0);
        }

        public final String toString() {
            return "NumericFilter(field=" + this.f26386a + ", min=" + this.f26387b + ", max=" + this.f26388c + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NumericFilter(String str, Float f2, Float f3) {
            super(null);
            str.getClass();
            this.f26386a = str;
            this.f26387b = f2;
            this.f26388c = f3;
        }

        public /* synthetic */ NumericFilter(String str, Float f2, Float f3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : f2, (i2 & 4) != 0 ? null : f3);
        }
    }
}
