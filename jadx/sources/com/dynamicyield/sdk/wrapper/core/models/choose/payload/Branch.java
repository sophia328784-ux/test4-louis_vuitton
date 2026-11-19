package com.dynamicyield.sdk.wrapper.core.models.choose.payload;

import com.batch.android.s.b;
import com.dynamicyield.sdk.wrapper.core.enums.DayPart;
import com.dynamicyield.sdk.wrapper.core.enums.OrderFulfillment;
import defpackage.lg;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB+\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tB9\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;", "", "", b.a.f24015b, "Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;", "dayPart", "Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;", "orderFulfillment", "<init>", "(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class Branch {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DayPart f26015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OrderFulfillment f26016c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Branch> serializer() {
            return Branch$$serializer.f26017a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        d = new Lazy[]{null, LazyKt.a(lazyThreadSafetyMode, new lg(5)), LazyKt.a(lazyThreadSafetyMode, new lg(6))};
    }

    public /* synthetic */ Branch(int i2, String str, DayPart dayPart, OrderFulfillment orderFulfillment, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f26014a = null;
        } else {
            this.f26014a = str;
        }
        if ((i2 & 2) == 0) {
            this.f26015b = null;
        } else {
            this.f26015b = dayPart;
        }
        if ((i2 & 4) == 0) {
            this.f26016c = null;
        } else {
            this.f26016c = orderFulfillment;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Branch)) {
            return false;
        }
        Branch branch = (Branch) obj;
        return Intrinsics.c(this.f26014a, branch.f26014a) && this.f26015b == branch.f26015b && this.f26016c == branch.f26016c;
    }

    public final int hashCode() {
        String str = this.f26014a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        DayPart dayPart = this.f26015b;
        int iHashCode2 = (iHashCode + (dayPart == null ? 0 : dayPart.hashCode())) * 31;
        OrderFulfillment orderFulfillment = this.f26016c;
        return iHashCode2 + (orderFulfillment != null ? orderFulfillment.hashCode() : 0);
    }

    public final String toString() {
        return "Branch(id=" + this.f26014a + ", dayPart=" + this.f26015b + ", orderFulfillment=" + this.f26016c + ')';
    }

    public Branch() {
        this((String) null, (DayPart) null, (OrderFulfillment) null, 7, (DefaultConstructorMarker) null);
    }

    public Branch(String str, DayPart dayPart, OrderFulfillment orderFulfillment) {
        this.f26014a = str;
        this.f26015b = dayPart;
        this.f26016c = orderFulfillment;
    }

    public /* synthetic */ Branch(String str, DayPart dayPart, OrderFulfillment orderFulfillment, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : dayPart, (i2 & 4) != 0 ? null : orderFulfillment);
    }
}
