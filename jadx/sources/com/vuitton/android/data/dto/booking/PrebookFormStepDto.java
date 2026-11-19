package com.vuitton.android.data.dto.booking;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/booking/PrebookFormStepDto;", "", "", b.a.f24015b, "selectedId", "Lcom/vuitton/android/data/dto/booking/PrebookFormMultipleValueDto;", "multipleValue", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/PrebookFormMultipleValueDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/booking/PrebookFormMultipleValueDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PrebookFormStepDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44783a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PrebookFormMultipleValueDto f44785c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/PrebookFormStepDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/PrebookFormStepDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PrebookFormStepDto> serializer() {
            return PrebookFormStepDto$$serializer.f44786a;
        }
    }

    public /* synthetic */ PrebookFormStepDto(int i2, String str, String str2, PrebookFormMultipleValueDto prebookFormMultipleValueDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, PrebookFormStepDto$$serializer.f44786a.getF19850b());
            throw null;
        }
        this.f44783a = str;
        if ((i2 & 2) == 0) {
            this.f44784b = null;
        } else {
            this.f44784b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f44785c = null;
        } else {
            this.f44785c = prebookFormMultipleValueDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrebookFormStepDto)) {
            return false;
        }
        PrebookFormStepDto prebookFormStepDto = (PrebookFormStepDto) obj;
        return Intrinsics.c(this.f44783a, prebookFormStepDto.f44783a) && Intrinsics.c(this.f44784b, prebookFormStepDto.f44784b) && Intrinsics.c(this.f44785c, prebookFormStepDto.f44785c);
    }

    public final int hashCode() {
        int iHashCode = this.f44783a.hashCode() * 31;
        String str = this.f44784b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        PrebookFormMultipleValueDto prebookFormMultipleValueDto = this.f44785c;
        return iHashCode2 + (prebookFormMultipleValueDto != null ? prebookFormMultipleValueDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PrebookFormStepDto(id=", this.f44783a, ", selectedId=", this.f44784b, ", multipleValue=");
        sbS.append(this.f44785c);
        sbS.append(")");
        return sbS.toString();
    }

    public PrebookFormStepDto(String str, String str2, PrebookFormMultipleValueDto prebookFormMultipleValueDto) {
        str.getClass();
        this.f44783a = str;
        this.f44784b = str2;
        this.f44785c = prebookFormMultipleValueDto;
    }

    public /* synthetic */ PrebookFormStepDto(String str, String str2, PrebookFormMultipleValueDto prebookFormMultipleValueDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : prebookFormMultipleValueDto);
    }
}
