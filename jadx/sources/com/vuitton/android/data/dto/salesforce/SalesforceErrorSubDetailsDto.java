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
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorSubDetailsDto;", "", "Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorStatusDetailsDto;", "statusDetails", "<init>", "(Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorStatusDetailsDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/salesforce/SalesforceErrorStatusDetailsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SalesforceErrorSubDetailsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SalesforceErrorStatusDetailsDto f46771a;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorSubDetailsDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorSubDetailsDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SalesforceErrorSubDetailsDto> serializer() {
            return SalesforceErrorSubDetailsDto$$serializer.f46772a;
        }
    }

    public /* synthetic */ SalesforceErrorSubDetailsDto(int i2, SalesforceErrorStatusDetailsDto salesforceErrorStatusDetailsDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 == (i2 & 1)) {
            this.f46771a = salesforceErrorStatusDetailsDto;
        } else {
            PluginExceptionsKt.b(i2, 1, SalesforceErrorSubDetailsDto$$serializer.f46772a.a());
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SalesforceErrorSubDetailsDto) && Intrinsics.c(this.f46771a, ((SalesforceErrorSubDetailsDto) obj).f46771a);
    }

    public final int hashCode() {
        return this.f46771a.hashCode();
    }

    public final String toString() {
        return "SalesforceErrorSubDetailsDto(statusDetails=" + this.f46771a + ")";
    }

    public SalesforceErrorSubDetailsDto(SalesforceErrorStatusDetailsDto salesforceErrorStatusDetailsDto) {
        salesforceErrorStatusDetailsDto.getClass();
        this.f46771a = salesforceErrorStatusDetailsDto;
    }
}
