package com.dynamicyield.sdk.wrapper.core.models.engagment;

import com.dynamicyield.sdk.wrapper.core.enums.EngagementType;
import defpackage.nw0;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB'\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002¢\u0006\u0004\b\u0007\u0010\bBE\b\u0010\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotImpressionEngagement;", "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;", "", "", "variations", "", "slotIds", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "seen0", "Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;", "type", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class SlotImpressionEngagement extends BaseEngagement {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f26268a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f26269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EngagementType f26270c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotImpressionEngagement$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotImpressionEngagement;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SlotImpressionEngagement> serializer() {
            return SlotImpressionEngagement$$serializer.f26271a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        d = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new nw0(5)), LazyKt.a(lazyThreadSafetyMode, new nw0(6)), LazyKt.a(lazyThreadSafetyMode, new nw0(7))};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SlotImpressionEngagement(int i2, List list, List list2, EngagementType engagementType, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (2 != (i2 & 2)) {
            PluginExceptionsKt.b(i2, 2, SlotImpressionEngagement$$serializer.f26271a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f26268a = null;
        } else {
            this.f26268a = list;
        }
        this.f26269b = list2;
        if ((i2 & 4) == 0) {
            this.f26270c = EngagementType.SLOT_IMP;
        } else {
            this.f26270c = engagementType;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SlotImpressionEngagement)) {
            return false;
        }
        SlotImpressionEngagement slotImpressionEngagement = (SlotImpressionEngagement) obj;
        return Intrinsics.c(this.f26268a, slotImpressionEngagement.f26268a) && Intrinsics.c(this.f26269b, slotImpressionEngagement.f26269b);
    }

    public final int hashCode() {
        List list = this.f26268a;
        return this.f26269b.hashCode() + ((list == null ? 0 : list.hashCode()) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SlotImpressionEngagement(variations=");
        sb.append(this.f26268a);
        sb.append(", slotIds=");
        return tr.m(sb, this.f26269b, ')');
    }

    public /* synthetic */ SlotImpressionEngagement(List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, list2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SlotImpressionEngagement(List<Integer> list, List<String> list2) {
        super(null);
        list2.getClass();
        this.f26268a = list;
        this.f26269b = list2;
        this.f26270c = EngagementType.SLOT_IMP;
    }
}
