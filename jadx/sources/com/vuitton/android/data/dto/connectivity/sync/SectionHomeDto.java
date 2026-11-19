package com.vuitton.android.data.dto.connectivity.sync;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.lightup.LightUpSectionDto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/sync/SectionHomeDto;", "", "Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;", "sectionConnectedObject", "Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto;", "lightUpSection", "<init>", "(Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SectionHomeDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SectionConnectedObjectDto f45612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LightUpSectionDto f45613b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/sync/SectionHomeDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/connectivity/sync/SectionHomeDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SectionHomeDto> serializer() {
            return SectionHomeDto$$serializer.f45614a;
        }
    }

    public /* synthetic */ SectionHomeDto(int i2, SectionConnectedObjectDto sectionConnectedObjectDto, LightUpSectionDto lightUpSectionDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45612a = null;
        } else {
            this.f45612a = sectionConnectedObjectDto;
        }
        if ((i2 & 2) == 0) {
            this.f45613b = null;
        } else {
            this.f45613b = lightUpSectionDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SectionHomeDto)) {
            return false;
        }
        SectionHomeDto sectionHomeDto = (SectionHomeDto) obj;
        return Intrinsics.c(this.f45612a, sectionHomeDto.f45612a) && Intrinsics.c(this.f45613b, sectionHomeDto.f45613b);
    }

    public final int hashCode() {
        SectionConnectedObjectDto sectionConnectedObjectDto = this.f45612a;
        int iHashCode = (sectionConnectedObjectDto == null ? 0 : sectionConnectedObjectDto.hashCode()) * 31;
        LightUpSectionDto lightUpSectionDto = this.f45613b;
        return iHashCode + (lightUpSectionDto != null ? lightUpSectionDto.hashCode() : 0);
    }

    public final String toString() {
        return "SectionHomeDto(sectionConnectedObject=" + this.f45612a + ", lightUpSection=" + this.f45613b + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SectionHomeDto() {
        this((SectionConnectedObjectDto) null, (LightUpSectionDto) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public SectionHomeDto(SectionConnectedObjectDto sectionConnectedObjectDto, LightUpSectionDto lightUpSectionDto) {
        this.f45612a = sectionConnectedObjectDto;
        this.f45613b = lightUpSectionDto;
    }

    public /* synthetic */ SectionHomeDto(SectionConnectedObjectDto sectionConnectedObjectDto, LightUpSectionDto lightUpSectionDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : sectionConnectedObjectDto, (i2 & 2) != 0 ? null : lightUpSectionDto);
    }
}
