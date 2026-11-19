package com.dynamicyield.sdk.wrapper.core.models.search.payload;

import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.QuerySerializer;
import defpackage.d21;
import defpackage.wq0;
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
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00022\u00020\u0001:\u0003\u0003\u0004\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;", "", "Companion", "SemanticQuery", "VisualQuery", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$SemanticQuery;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable(with = QuerySerializer.class)
public abstract class Query {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Query> serializer() {
            return QuerySerializer.f25980a;
        }
    }

    public Query(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nB?\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;", "", "imageBase64", "", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter;", "filters", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;", "sortBy", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @Serializable
    public static final /* data */ class VisualQuery extends Query {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        public static final Lazy[] d = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new wq0(3)), null};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f26403a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f26404b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SortOptions f26405c;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<VisualQuery> serializer() {
                return Query$VisualQuery$$serializer.f26406a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ VisualQuery(int i2, String str, List list, SortOptions sortOptions, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, Query$VisualQuery$$serializer.f26406a.getF19838b());
                throw null;
            }
            this.f26403a = str;
            if ((i2 & 2) == 0) {
                this.f26404b = null;
            } else {
                this.f26404b = list;
            }
            if ((i2 & 4) == 0) {
                this.f26405c = null;
            } else {
                this.f26405c = sortOptions;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof VisualQuery)) {
                return false;
            }
            VisualQuery visualQuery = (VisualQuery) obj;
            return Intrinsics.c(this.f26403a, visualQuery.f26403a) && Intrinsics.c(this.f26404b, visualQuery.f26404b) && Intrinsics.c(this.f26405c, visualQuery.f26405c);
        }

        public final int hashCode() {
            int iHashCode = this.f26403a.hashCode() * 31;
            List list = this.f26404b;
            int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
            SortOptions sortOptions = this.f26405c;
            return iHashCode2 + (sortOptions != null ? sortOptions.hashCode() : 0);
        }

        public final String toString() {
            return "VisualQuery(imageBase64=" + this.f26403a + ", filters=" + this.f26404b + ", sortBy=" + this.f26405c + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VisualQuery(String str, List<? extends Filter> list, SortOptions sortOptions) {
            super(null);
            str.getClass();
            this.f26403a = str;
            this.f26404b = list;
            this.f26405c = sortOptions;
        }

        public /* synthetic */ VisualQuery(String str, List list, SortOptions sortOptions, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : list, (i2 & 4) != 0 ? null : sortOptions);
        }
    }

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eBQ\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\r\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$SemanticQuery;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;", "", "text", "", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter;", "filters", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Pagination;", "pagination", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;", "sortBy", "", "enableSpellCheck", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Pagination;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;Z)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Pagination;Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @Serializable
    public static final /* data */ class SemanticQuery extends Query {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Lazy[] f26397f = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new wq0(2)), null, null, null};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f26398a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f26399b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Pagination f26400c;
        public final SortOptions d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f26401e;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$SemanticQuery$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$SemanticQuery;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<SemanticQuery> serializer() {
                return Query$SemanticQuery$$serializer.f26402a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ SemanticQuery(int i2, String str, List list, Pagination pagination, SortOptions sortOptions, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (5 != (i2 & 5)) {
                PluginExceptionsKt.b(i2, 5, Query$SemanticQuery$$serializer.f26402a.getF19838b());
                throw null;
            }
            this.f26398a = str;
            if ((i2 & 2) == 0) {
                this.f26399b = null;
            } else {
                this.f26399b = list;
            }
            this.f26400c = pagination;
            if ((i2 & 8) == 0) {
                this.d = null;
            } else {
                this.d = sortOptions;
            }
            if ((i2 & 16) == 0) {
                this.f26401e = false;
            } else {
                this.f26401e = z;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SemanticQuery)) {
                return false;
            }
            SemanticQuery semanticQuery = (SemanticQuery) obj;
            return Intrinsics.c(this.f26398a, semanticQuery.f26398a) && Intrinsics.c(this.f26399b, semanticQuery.f26399b) && Intrinsics.c(this.f26400c, semanticQuery.f26400c) && Intrinsics.c(this.d, semanticQuery.d) && this.f26401e == semanticQuery.f26401e;
        }

        public final int hashCode() {
            int iHashCode = this.f26398a.hashCode() * 31;
            List list = this.f26399b;
            int iHashCode2 = (this.f26400c.hashCode() + ((iHashCode + (list == null ? 0 : list.hashCode())) * 31)) * 31;
            SortOptions sortOptions = this.d;
            return Boolean.hashCode(this.f26401e) + ((iHashCode2 + (sortOptions != null ? sortOptions.hashCode() : 0)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("SemanticQuery(text=");
            sb.append(this.f26398a);
            sb.append(", filters=");
            sb.append(this.f26399b);
            sb.append(", pagination=");
            sb.append(this.f26400c);
            sb.append(", sortBy=");
            sb.append(this.d);
            sb.append(", enableSpellCheck=");
            return d21.q(sb, this.f26401e, ')');
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SemanticQuery(String str, List<? extends Filter> list, Pagination pagination, SortOptions sortOptions, boolean z) {
            super(null);
            str.getClass();
            pagination.getClass();
            this.f26398a = str;
            this.f26399b = list;
            this.f26400c = pagination;
            this.d = sortOptions;
            this.f26401e = z;
        }

        public /* synthetic */ SemanticQuery(String str, List list, Pagination pagination, SortOptions sortOptions, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : list, pagination, (i2 & 8) != 0 ? null : sortOptions, (i2 & 16) != 0 ? false : z);
        }
    }
}
