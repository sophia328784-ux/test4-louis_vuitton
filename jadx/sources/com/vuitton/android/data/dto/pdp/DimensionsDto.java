package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B5\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nBM\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/DimensionsDto;", "", "Lcom/vuitton/android/data/dto/pdp/DimensionDto;", "height", "depth", "width", "", "formattedValue", "formattedLabel", "<init>", "(Lcom/vuitton/android/data/dto/pdp/DimensionDto;Lcom/vuitton/android/data/dto/pdp/DimensionDto;Lcom/vuitton/android/data/dto/pdp/DimensionDto;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/pdp/DimensionDto;Lcom/vuitton/android/data/dto/pdp/DimensionDto;Lcom/vuitton/android/data/dto/pdp/DimensionDto;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class DimensionsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DimensionDto f46197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DimensionDto f46198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DimensionDto f46199c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f46200e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/DimensionsDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/DimensionsDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<DimensionsDto> serializer() {
            return DimensionsDto$$serializer.f46201a;
        }
    }

    public /* synthetic */ DimensionsDto(int i2, DimensionDto dimensionDto, DimensionDto dimensionDto2, DimensionDto dimensionDto3, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i2 & 31)) {
            PluginExceptionsKt.b(i2, 31, DimensionsDto$$serializer.f46201a.getF19838b());
            throw null;
        }
        this.f46197a = dimensionDto;
        this.f46198b = dimensionDto2;
        this.f46199c = dimensionDto3;
        this.d = str;
        this.f46200e = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DimensionsDto)) {
            return false;
        }
        DimensionsDto dimensionsDto = (DimensionsDto) obj;
        return Intrinsics.c(this.f46197a, dimensionsDto.f46197a) && Intrinsics.c(this.f46198b, dimensionsDto.f46198b) && Intrinsics.c(this.f46199c, dimensionsDto.f46199c) && Intrinsics.c(this.d, dimensionsDto.d) && Intrinsics.c(this.f46200e, dimensionsDto.f46200e);
    }

    public final int hashCode() {
        DimensionDto dimensionDto = this.f46197a;
        int iHashCode = (dimensionDto == null ? 0 : dimensionDto.hashCode()) * 31;
        DimensionDto dimensionDto2 = this.f46198b;
        int iHashCode2 = (iHashCode + (dimensionDto2 == null ? 0 : dimensionDto2.hashCode())) * 31;
        DimensionDto dimensionDto3 = this.f46199c;
        return this.f46200e.hashCode() + fc.b((iHashCode2 + (dimensionDto3 != null ? dimensionDto3.hashCode() : 0)) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DimensionsDto(height=");
        sb.append(this.f46197a);
        sb.append(", depth=");
        sb.append(this.f46198b);
        sb.append(", width=");
        sb.append(this.f46199c);
        sb.append(", formattedValue=");
        sb.append(this.d);
        sb.append(", formattedLabel=");
        return n00.r(this.f46200e, ")", sb);
    }

    public DimensionsDto(DimensionDto dimensionDto, DimensionDto dimensionDto2, DimensionDto dimensionDto3, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f46197a = dimensionDto;
        this.f46198b = dimensionDto2;
        this.f46199c = dimensionDto3;
        this.d = str;
        this.f46200e = str2;
    }
}
