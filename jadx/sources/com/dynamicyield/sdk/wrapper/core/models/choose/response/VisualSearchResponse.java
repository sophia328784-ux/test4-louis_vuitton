package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import defpackage.b51;
import defpackage.tr;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002¢\u0006\u0004\b\u0007\u0010\bB;\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchResponse;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CampaignsResponse;", "", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchChoice;", "choices", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie;", "cookies", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class VisualSearchResponse extends CampaignsResponse {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f26172e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f26173c;
    public final List d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchResponse$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchResponse;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<VisualSearchResponse> serializer() {
            return VisualSearchResponse$$serializer.f26174a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f26172e = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new b51(20)), LazyKt.a(lazyThreadSafetyMode, new b51(21))};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ VisualSearchResponse(int i2, List list, List list2, SerializationConstructorMarker serializationConstructorMarker) {
        super(i2, serializationConstructorMarker);
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, VisualSearchResponse$$serializer.f26174a.getF19838b());
            throw null;
        }
        this.f26173c = list;
        this.d = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VisualSearchResponse)) {
            return false;
        }
        VisualSearchResponse visualSearchResponse = (VisualSearchResponse) obj;
        return Intrinsics.c(this.f26173c, visualSearchResponse.f26173c) && Intrinsics.c(this.d, visualSearchResponse.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + (this.f26173c.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VisualSearchResponse(choices=");
        sb.append(this.f26173c);
        sb.append(", cookies=");
        return tr.m(sb, this.d, ')');
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VisualSearchResponse(List<VisualSearchChoice> list, List<Cookie> list2) {
        super(null);
        list.getClass();
        list2.getClass();
        this.f26173c = list;
        this.d = list2;
    }
}
