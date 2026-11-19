package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import com.batch.android.s.b;
import com.dynamicyield.sdk.wrapper.core.enums.ChoiceType;
import defpackage.fc;
import defpackage.n00;
import defpackage.nw0;
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
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\r\u0010\u000eBa\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\r\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingChoice;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;", "", b.a.f24015b, "", "name", "Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;", "type", "", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingVariation;", "variations", "groups", "decisionId", "<init>", "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class SortingChoice extends Choice {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26140a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ChoiceType f26142c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f26143e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f26144f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingChoice$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingChoice;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SortingChoice> serializer() {
            return SortingChoice$$serializer.f26145a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        g = new Lazy[]{null, null, LazyKt.a(lazyThreadSafetyMode, new nw0(13)), LazyKt.a(lazyThreadSafetyMode, new nw0(14)), LazyKt.a(lazyThreadSafetyMode, new nw0(15)), null};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SortingChoice(int i2, int i3, String str, ChoiceType choiceType, List list, List list2, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, SortingChoice$$serializer.f26145a.getF19838b());
            throw null;
        }
        this.f26140a = i3;
        this.f26141b = str;
        this.f26142c = choiceType;
        this.d = list;
        if ((i2 & 16) == 0) {
            this.f26143e = null;
        } else {
            this.f26143e = list2;
        }
        if ((i2 & 32) == 0) {
            this.f26144f = null;
        } else {
            this.f26144f = str2;
        }
    }

    @Override // com.dynamicyield.sdk.wrapper.core.models.choose.response.Choice
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF26144f() {
        return this.f26144f;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.models.choose.response.Choice
    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getF26141b() {
        return this.f26141b;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.models.choose.response.Choice
    /* JADX INFO: renamed from: c, reason: from getter */
    public final ChoiceType getF26142c() {
        return this.f26142c;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.models.choose.response.Choice
    /* JADX INFO: renamed from: d, reason: from getter */
    public final List getD() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SortingChoice)) {
            return false;
        }
        SortingChoice sortingChoice = (SortingChoice) obj;
        return this.f26140a == sortingChoice.f26140a && Intrinsics.c(this.f26141b, sortingChoice.f26141b) && this.f26142c == sortingChoice.f26142c && Intrinsics.c(this.d, sortingChoice.d) && Intrinsics.c(this.f26143e, sortingChoice.f26143e) && Intrinsics.c(this.f26144f, sortingChoice.f26144f);
    }

    public final int hashCode() {
        int iA = n00.a((this.f26142c.hashCode() + fc.b(Integer.hashCode(this.f26140a) * 31, 31, this.f26141b)) * 31, 31, this.d);
        List list = this.f26143e;
        int iHashCode = (iA + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.f26144f;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SortingChoice(id=");
        sb.append(this.f26140a);
        sb.append(", name=");
        sb.append(this.f26141b);
        sb.append(", type=");
        sb.append(this.f26142c);
        sb.append(", variations=");
        sb.append(this.d);
        sb.append(", groups=");
        sb.append(this.f26143e);
        sb.append(", decisionId=");
        return fc.l(sb, this.f26144f, ')');
    }

    public /* synthetic */ SortingChoice(int i2, String str, ChoiceType choiceType, List list, List list2, String str2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, str, choiceType, list, (i3 & 16) != 0 ? null : list2, (i3 & 32) != 0 ? null : str2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SortingChoice(int i2, String str, ChoiceType choiceType, List<SortingVariation> list, List<String> list2, String str2) {
        super(null);
        str.getClass();
        choiceType.getClass();
        list.getClass();
        this.f26140a = i2;
        this.f26141b = str;
        this.f26142c = choiceType;
        this.d = list;
        this.f26143e = list2;
        this.f26144f = str2;
    }
}
