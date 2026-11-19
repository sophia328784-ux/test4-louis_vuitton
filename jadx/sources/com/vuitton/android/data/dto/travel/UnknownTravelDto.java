package com.vuitton.android.data.dto.travel;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/travel/UnknownTravelDto;", "Lcom/vuitton/android/data/dto/travel/TravelDto;", "", "type", "booking", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class UnknownTravelDto extends TravelDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46933b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/travel/UnknownTravelDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/travel/UnknownTravelDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<UnknownTravelDto> serializer() {
            return UnknownTravelDto$$serializer.f46934a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ UnknownTravelDto(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, UnknownTravelDto$$serializer.f46934a.getF19850b());
            throw null;
        }
        this.f46932a = str;
        if ((i2 & 2) == 0) {
            this.f46933b = null;
        } else {
            this.f46933b = str2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UnknownTravelDto)) {
            return false;
        }
        UnknownTravelDto unknownTravelDto = (UnknownTravelDto) obj;
        return Intrinsics.c(this.f46932a, unknownTravelDto.f46932a) && Intrinsics.c(this.f46933b, unknownTravelDto.f46933b);
    }

    public final int hashCode() {
        int iHashCode = this.f46932a.hashCode() * 31;
        String str = this.f46933b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return d21.l("UnknownTravelDto(type=", this.f46932a, ", booking=", this.f46933b, ")");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnknownTravelDto(String str, String str2) {
        super(null);
        str.getClass();
        this.f46932a = str;
        this.f46933b = str2;
    }

    public /* synthetic */ UnknownTravelDto(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2);
    }
}
