package com.dynamicyield.sdk.wrapper.core.models.engagment;

import com.dynamicyield.sdk.wrapper.core.enums.EngagementType;
import defpackage.l30;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bB?\b\u0010\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/engagment/ImpressionEngagement;", "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;", "", "decisionId", "", "", "variations", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "seen0", "Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;", "type", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class ImpressionEngagement extends BaseEngagement {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26260a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f26261b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EngagementType f26262c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/engagment/ImpressionEngagement$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/ImpressionEngagement;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImpressionEngagement> serializer() {
            return ImpressionEngagement$$serializer.f26263a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        d = new Lazy[]{null, LazyKt.a(lazyThreadSafetyMode, new l30(24)), LazyKt.a(lazyThreadSafetyMode, new l30(25))};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ImpressionEngagement(int i2, String str, List list, EngagementType engagementType, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, ImpressionEngagement$$serializer.f26263a.getF19838b());
            throw null;
        }
        this.f26260a = str;
        if ((i2 & 2) == 0) {
            this.f26261b = null;
        } else {
            this.f26261b = list;
        }
        if ((i2 & 4) == 0) {
            this.f26262c = EngagementType.IMP;
        } else {
            this.f26262c = engagementType;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImpressionEngagement)) {
            return false;
        }
        ImpressionEngagement impressionEngagement = (ImpressionEngagement) obj;
        return Intrinsics.c(this.f26260a, impressionEngagement.f26260a) && Intrinsics.c(this.f26261b, impressionEngagement.f26261b);
    }

    public final int hashCode() {
        int iHashCode = this.f26260a.hashCode() * 31;
        List list = this.f26261b;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ImpressionEngagement(decisionId=");
        sb.append(this.f26260a);
        sb.append(", variations=");
        return tr.m(sb, this.f26261b, ')');
    }

    public /* synthetic */ ImpressionEngagement(String str, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : list);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImpressionEngagement(String str, List<Integer> list) {
        super(null);
        str.getClass();
        this.f26260a = str;
        this.f26261b = list;
        this.f26262c = EngagementType.IMP;
    }
}
