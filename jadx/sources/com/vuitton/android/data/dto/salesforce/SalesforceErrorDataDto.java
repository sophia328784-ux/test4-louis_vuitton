package com.vuitton.android.data.dto.salesforce;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDataDto;", "", "Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorSubDetailsDto;", "errorDetails", "", "errorCode", "<init>", "(Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorSubDetailsDto;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/salesforce/SalesforceErrorSubDetailsDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SalesforceErrorDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SalesforceErrorSubDetailsDto f46760a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46761b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SalesforceErrorDataDto> serializer() {
            return SalesforceErrorDataDto$$serializer.f46762a;
        }
    }

    public /* synthetic */ SalesforceErrorDataDto(int i2, SalesforceErrorSubDetailsDto salesforceErrorSubDetailsDto, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, SalesforceErrorDataDto$$serializer.f46762a.getF19850b());
            throw null;
        }
        this.f46760a = salesforceErrorSubDetailsDto;
        this.f46761b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SalesforceErrorDataDto)) {
            return false;
        }
        SalesforceErrorDataDto salesforceErrorDataDto = (SalesforceErrorDataDto) obj;
        return Intrinsics.c(this.f46760a, salesforceErrorDataDto.f46760a) && Intrinsics.c(this.f46761b, salesforceErrorDataDto.f46761b);
    }

    public final int hashCode() {
        SalesforceErrorSubDetailsDto salesforceErrorSubDetailsDto = this.f46760a;
        int iHashCode = (salesforceErrorSubDetailsDto == null ? 0 : salesforceErrorSubDetailsDto.f46771a.hashCode()) * 31;
        String str = this.f46761b;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "SalesforceErrorDataDto(errorDetails=" + this.f46760a + ", errorCode=" + this.f46761b + ")";
    }

    public SalesforceErrorDataDto(SalesforceErrorSubDetailsDto salesforceErrorSubDetailsDto, String str) {
        this.f46760a = salesforceErrorSubDetailsDto;
        this.f46761b = str;
    }
}
