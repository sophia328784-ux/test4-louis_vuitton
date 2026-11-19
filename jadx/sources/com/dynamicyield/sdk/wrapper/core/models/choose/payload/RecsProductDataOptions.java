package com.dynamicyield.sdk.wrapper.core.models.choose.payload;

import defpackage.tr;
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
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB%\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;", "", "", "skusOnly", "", "", "fieldFilter", "<init>", "(Ljava/lang/Boolean;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Boolean;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class RecsProductDataOptions {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f26033c = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new wq0(10))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f26034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f26035b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<RecsProductDataOptions> serializer() {
            return RecsProductDataOptions$$serializer.f26036a;
        }
    }

    public /* synthetic */ RecsProductDataOptions(int i2, Boolean bool, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f26034a = null;
        } else {
            this.f26034a = bool;
        }
        if ((i2 & 2) == 0) {
            this.f26035b = null;
        } else {
            this.f26035b = list;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RecsProductDataOptions)) {
            return false;
        }
        RecsProductDataOptions recsProductDataOptions = (RecsProductDataOptions) obj;
        return Intrinsics.c(this.f26034a, recsProductDataOptions.f26034a) && Intrinsics.c(this.f26035b, recsProductDataOptions.f26035b);
    }

    public final int hashCode() {
        Boolean bool = this.f26034a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        List list = this.f26035b;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RecsProductDataOptions(skusOnly=");
        sb.append(this.f26034a);
        sb.append(", fieldFilter=");
        return tr.m(sb, this.f26035b, ')');
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RecsProductDataOptions() {
        this((Boolean) null, (List) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public RecsProductDataOptions(Boolean bool, List<String> list) {
        this.f26034a = bool;
        this.f26035b = list;
    }

    public /* synthetic */ RecsProductDataOptions(Boolean bool, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : bool, (i2 & 2) != 0 ? null : list);
    }
}
