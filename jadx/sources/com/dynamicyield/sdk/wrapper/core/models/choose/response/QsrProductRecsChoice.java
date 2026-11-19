package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import com.batch.android.s.b;
import com.dynamicyield.sdk.wrapper.core.enums.ChoiceType;
import defpackage.fc;
import defpackage.n00;
import defpackage.wq0;
import defpackage.yp0;
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
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\r\u0010\u000eBa\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\r\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsChoice;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;", "", b.a.f24015b, "", "name", "Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;", "type", "", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;", "variations", "groups", "decisionId", "<init>", "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class QsrProductRecsChoice extends Choice {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ChoiceType f26086c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f26087e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f26088f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsChoice$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsChoice;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<QsrProductRecsChoice> serializer() {
            return QsrProductRecsChoice$$serializer.f26089a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        g = new Lazy[]{null, null, LazyKt.a(lazyThreadSafetyMode, new yp0(29)), LazyKt.a(lazyThreadSafetyMode, new wq0(0)), LazyKt.a(lazyThreadSafetyMode, new wq0(1)), null};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ QsrProductRecsChoice(int i2, int i3, String str, ChoiceType choiceType, List list, List list2, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, QsrProductRecsChoice$$serializer.f26089a.getF19838b());
            throw null;
        }
        this.f26084a = i3;
        this.f26085b = str;
        this.f26086c = choiceType;
        this.d = list;
        if ((i2 & 16) == 0) {
            this.f26087e = null;
        } else {
            this.f26087e = list2;
        }
        if ((i2 & 32) == 0) {
            this.f26088f = null;
        } else {
            this.f26088f = str2;
        }
    }

    @Override // com.dynamicyield.sdk.wrapper.core.models.choose.response.Choice
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF26088f() {
        return this.f26088f;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.models.choose.response.Choice
    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getF26085b() {
        return this.f26085b;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.models.choose.response.Choice
    /* JADX INFO: renamed from: c, reason: from getter */
    public final ChoiceType getF26086c() {
        return this.f26086c;
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
        if (!(obj instanceof QsrProductRecsChoice)) {
            return false;
        }
        QsrProductRecsChoice qsrProductRecsChoice = (QsrProductRecsChoice) obj;
        return this.f26084a == qsrProductRecsChoice.f26084a && Intrinsics.c(this.f26085b, qsrProductRecsChoice.f26085b) && this.f26086c == qsrProductRecsChoice.f26086c && Intrinsics.c(this.d, qsrProductRecsChoice.d) && Intrinsics.c(this.f26087e, qsrProductRecsChoice.f26087e) && Intrinsics.c(this.f26088f, qsrProductRecsChoice.f26088f);
    }

    public final int hashCode() {
        int iA = n00.a((this.f26086c.hashCode() + fc.b(Integer.hashCode(this.f26084a) * 31, 31, this.f26085b)) * 31, 31, this.d);
        List list = this.f26087e;
        int iHashCode = (iA + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.f26088f;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("QsrProductRecsChoice(id=");
        sb.append(this.f26084a);
        sb.append(", name=");
        sb.append(this.f26085b);
        sb.append(", type=");
        sb.append(this.f26086c);
        sb.append(", variations=");
        sb.append(this.d);
        sb.append(", groups=");
        sb.append(this.f26087e);
        sb.append(", decisionId=");
        return fc.l(sb, this.f26088f, ')');
    }

    public /* synthetic */ QsrProductRecsChoice(int i2, String str, ChoiceType choiceType, List list, List list2, String str2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, str, choiceType, list, (i3 & 16) != 0 ? null : list2, (i3 & 32) != 0 ? null : str2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QsrProductRecsChoice(int i2, String str, ChoiceType choiceType, List<QsrProductRecsVariation> list, List<String> list2, String str2) {
        super(null);
        str.getClass();
        choiceType.getClass();
        list.getClass();
        this.f26084a = i2;
        this.f26085b = str;
        this.f26086c = choiceType;
        this.d = list;
        this.f26087e = list2;
        this.f26088f = str2;
    }
}
