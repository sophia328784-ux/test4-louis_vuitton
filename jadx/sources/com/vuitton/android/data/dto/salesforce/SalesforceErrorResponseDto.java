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
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorResponseDto;", "", "Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDataDto;", DbParams.KEY_DATA, "<init>", "(Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDataDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/salesforce/SalesforceErrorDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SalesforceErrorResponseDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SalesforceErrorDataDto f46767a;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorResponseDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorResponseDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SalesforceErrorResponseDto> serializer() {
            return SalesforceErrorResponseDto$$serializer.f46768a;
        }
    }

    public /* synthetic */ SalesforceErrorResponseDto(int i2, SalesforceErrorDataDto salesforceErrorDataDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 == (i2 & 1)) {
            this.f46767a = salesforceErrorDataDto;
        } else {
            PluginExceptionsKt.b(i2, 1, SalesforceErrorResponseDto$$serializer.f46768a.a());
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SalesforceErrorResponseDto) && Intrinsics.c(this.f46767a, ((SalesforceErrorResponseDto) obj).f46767a);
    }

    public final int hashCode() {
        SalesforceErrorDataDto salesforceErrorDataDto = this.f46767a;
        if (salesforceErrorDataDto == null) {
            return 0;
        }
        return salesforceErrorDataDto.hashCode();
    }

    public final String toString() {
        return "SalesforceErrorResponseDto(data=" + this.f46767a + ")";
    }

    public SalesforceErrorResponseDto(SalesforceErrorDataDto salesforceErrorDataDto) {
        this.f46767a = salesforceErrorDataDto;
    }
}
