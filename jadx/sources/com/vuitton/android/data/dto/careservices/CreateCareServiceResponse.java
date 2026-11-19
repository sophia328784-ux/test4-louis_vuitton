package com.vuitton.android.data.dto.careservices;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tBC\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CreateCareServiceResponse;", "", "", "status", "responseId", "transactionDate", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;", "newCareServiceId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CreateCareServiceResponse {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44851c;
    public final String d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/CreateCareServiceResponse$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/CreateCareServiceResponse;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CreateCareServiceResponse> serializer() {
            return CreateCareServiceResponse$$serializer.f44852a;
        }
    }

    public /* synthetic */ CreateCareServiceResponse(int i2, String str, String str2, String str3, String str4, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f44849a = null;
        } else {
            this.f44849a = str;
        }
        if ((i2 & 2) == 0) {
            this.f44850b = null;
        } else {
            this.f44850b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f44851c = null;
        } else {
            this.f44851c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0037  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CreateCareServiceResponse)) {
            return false;
        }
        CreateCareServiceResponse createCareServiceResponse = (CreateCareServiceResponse) obj;
        if (!Intrinsics.c(this.f44849a, createCareServiceResponse.f44849a) || !Intrinsics.c(this.f44850b, createCareServiceResponse.f44850b) || !Intrinsics.c(this.f44851c, createCareServiceResponse.f44851c)) {
            return false;
        }
        String str = createCareServiceResponse.d;
        String str2 = this.d;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            CareServiceId.Companion companion = CareServiceId.INSTANCE;
            zC = Intrinsics.c(str2, str);
        }
        return zC;
    }

    public final int hashCode() {
        int iHashCode = 0;
        String str = this.f44849a;
        int iHashCode2 = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f44850b;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f44851c;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        if (str4 != null) {
            CareServiceId.Companion companion = CareServiceId.INSTANCE;
            iHashCode = str4.hashCode();
        }
        return iHashCode4 + iHashCode;
    }

    public final String toString() {
        String str = this.d;
        if (str == null) {
            str = "null";
        } else {
            CareServiceId.Companion companion = CareServiceId.INSTANCE;
        }
        return tr.l(fc.s("CreateCareServiceResponse(status=", this.f44849a, ", responseId=", this.f44850b, ", transactionDate="), this.f44851c, ", newCareServiceId=", str, ")");
    }

    public CreateCareServiceResponse(String str, String str2, String str3, String str4, DefaultConstructorMarker defaultConstructorMarker) {
        this.f44849a = str;
        this.f44850b = str2;
        this.f44851c = str3;
        this.d = str4;
    }

    public /* synthetic */ CreateCareServiceResponse(String str, String str2, String str3, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, null);
    }
}
