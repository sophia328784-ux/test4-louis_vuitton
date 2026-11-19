package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import com.batch.android.s.b;
import com.dynamicyield.sdk.wrapper.core.enums.ChoiceType;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.VisualSearchChoiceSerializer;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fBK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchChoice;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;", "", b.a.f24015b, "", "name", "Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;", "type", "", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchVariation;", "variations", "groups", "decisionId", "<init>", "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "Companion", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable(with = VisualSearchChoiceSerializer.class)
public final /* data */ class VisualSearchChoice extends Choice {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ChoiceType f26161c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f26162e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f26163f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchChoice$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchChoice;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<VisualSearchChoice> serializer() {
            return new VisualSearchChoiceSerializer();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VisualSearchChoice(int i2, String str, ChoiceType choiceType, List<VisualSearchVariation> list, List<String> list2, String str2) {
        super(null);
        str.getClass();
        choiceType.getClass();
        list.getClass();
        this.f26159a = i2;
        this.f26160b = str;
        this.f26161c = choiceType;
        this.d = list;
        this.f26162e = list2;
        this.f26163f = str2;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.models.choose.response.Choice
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF26051f() {
        return this.f26163f;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.models.choose.response.Choice
    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getF26048b() {
        return this.f26160b;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.models.choose.response.Choice
    /* JADX INFO: renamed from: c, reason: from getter */
    public final ChoiceType getF26049c() {
        return this.f26161c;
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
        if (!(obj instanceof VisualSearchChoice)) {
            return false;
        }
        VisualSearchChoice visualSearchChoice = (VisualSearchChoice) obj;
        return this.f26159a == visualSearchChoice.f26159a && Intrinsics.c(this.f26160b, visualSearchChoice.f26160b) && this.f26161c == visualSearchChoice.f26161c && Intrinsics.c(this.d, visualSearchChoice.d) && Intrinsics.c(this.f26162e, visualSearchChoice.f26162e) && Intrinsics.c(this.f26163f, visualSearchChoice.f26163f);
    }

    public final int hashCode() {
        int iA = n00.a((this.f26161c.hashCode() + fc.b(Integer.hashCode(this.f26159a) * 31, 31, this.f26160b)) * 31, 31, this.d);
        List list = this.f26162e;
        int iHashCode = (iA + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.f26163f;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VisualSearchChoice(id=");
        sb.append(this.f26159a);
        sb.append(", name=");
        sb.append(this.f26160b);
        sb.append(", type=");
        sb.append(this.f26161c);
        sb.append(", variations=");
        sb.append(this.d);
        sb.append(", groups=");
        sb.append(this.f26162e);
        sb.append(", decisionId=");
        return fc.l(sb, this.f26163f, ')');
    }

    public /* synthetic */ VisualSearchChoice(int i2, String str, ChoiceType choiceType, List list, List list2, String str2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, str, choiceType, list, (i3 & 16) != 0 ? null : list2, (i3 & 32) != 0 ? null : str2);
    }
}
