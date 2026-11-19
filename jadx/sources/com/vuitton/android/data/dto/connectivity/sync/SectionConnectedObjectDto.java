package com.vuitton.android.data.dto.connectivity.sync;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.earphone.EarphoneSectionDto;
import com.vuitton.android.data.dto.connectivity.horizon.HorizonSpeakerSectionDto;
import com.vuitton.android.data.dto.connectivity.trunkspeaker.TrunkSpeakerSectionDto;
import com.vuitton.android.data.dto.connectivity.watch.SectionPromiseDto;
import com.vuitton.android.data.dto.connectivity.watchv3.SectionWatchV3Dto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BC\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rBM\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;", "", "Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;", "sectionPromise", "Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;", "earphoneSection", "Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;", "horizonSpeakerSection", "Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;", "trunkSpeakerSection", "Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;", "sectionWatchV3", "<init>", "(Lcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/connectivity/watch/SectionPromiseDto;Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;Lcom/vuitton/android/data/dto/connectivity/watchv3/SectionWatchV3Dto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SectionConnectedObjectDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SectionPromiseDto f45604a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EarphoneSectionDto f45605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HorizonSpeakerSectionDto f45606c;
    public final TrunkSpeakerSectionDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SectionWatchV3Dto f45607e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/connectivity/sync/SectionConnectedObjectDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SectionConnectedObjectDto> serializer() {
            return SectionConnectedObjectDto$$serializer.f45608a;
        }
    }

    public /* synthetic */ SectionConnectedObjectDto(int i2, SectionPromiseDto sectionPromiseDto, EarphoneSectionDto earphoneSectionDto, HorizonSpeakerSectionDto horizonSpeakerSectionDto, TrunkSpeakerSectionDto trunkSpeakerSectionDto, SectionWatchV3Dto sectionWatchV3Dto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45604a = null;
        } else {
            this.f45604a = sectionPromiseDto;
        }
        if ((i2 & 2) == 0) {
            this.f45605b = null;
        } else {
            this.f45605b = earphoneSectionDto;
        }
        if ((i2 & 4) == 0) {
            this.f45606c = null;
        } else {
            this.f45606c = horizonSpeakerSectionDto;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = trunkSpeakerSectionDto;
        }
        if ((i2 & 16) == 0) {
            this.f45607e = null;
        } else {
            this.f45607e = sectionWatchV3Dto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SectionConnectedObjectDto)) {
            return false;
        }
        SectionConnectedObjectDto sectionConnectedObjectDto = (SectionConnectedObjectDto) obj;
        return Intrinsics.c(this.f45604a, sectionConnectedObjectDto.f45604a) && Intrinsics.c(this.f45605b, sectionConnectedObjectDto.f45605b) && Intrinsics.c(this.f45606c, sectionConnectedObjectDto.f45606c) && Intrinsics.c(this.d, sectionConnectedObjectDto.d) && Intrinsics.c(this.f45607e, sectionConnectedObjectDto.f45607e);
    }

    public final int hashCode() {
        SectionPromiseDto sectionPromiseDto = this.f45604a;
        int iHashCode = (sectionPromiseDto == null ? 0 : sectionPromiseDto.hashCode()) * 31;
        EarphoneSectionDto earphoneSectionDto = this.f45605b;
        int iHashCode2 = (iHashCode + (earphoneSectionDto == null ? 0 : earphoneSectionDto.hashCode())) * 31;
        HorizonSpeakerSectionDto horizonSpeakerSectionDto = this.f45606c;
        int iHashCode3 = (iHashCode2 + (horizonSpeakerSectionDto == null ? 0 : horizonSpeakerSectionDto.hashCode())) * 31;
        TrunkSpeakerSectionDto trunkSpeakerSectionDto = this.d;
        int iHashCode4 = (iHashCode3 + (trunkSpeakerSectionDto == null ? 0 : trunkSpeakerSectionDto.hashCode())) * 31;
        SectionWatchV3Dto sectionWatchV3Dto = this.f45607e;
        return iHashCode4 + (sectionWatchV3Dto != null ? sectionWatchV3Dto.hashCode() : 0);
    }

    public final String toString() {
        return "SectionConnectedObjectDto(sectionPromise=" + this.f45604a + ", earphoneSection=" + this.f45605b + ", horizonSpeakerSection=" + this.f45606c + ", trunkSpeakerSection=" + this.d + ", sectionWatchV3=" + this.f45607e + ")";
    }

    public SectionConnectedObjectDto() {
        this((SectionPromiseDto) null, (EarphoneSectionDto) null, (HorizonSpeakerSectionDto) null, (TrunkSpeakerSectionDto) null, (SectionWatchV3Dto) null, 31, (DefaultConstructorMarker) null);
    }

    public SectionConnectedObjectDto(SectionPromiseDto sectionPromiseDto, EarphoneSectionDto earphoneSectionDto, HorizonSpeakerSectionDto horizonSpeakerSectionDto, TrunkSpeakerSectionDto trunkSpeakerSectionDto, SectionWatchV3Dto sectionWatchV3Dto) {
        this.f45604a = sectionPromiseDto;
        this.f45605b = earphoneSectionDto;
        this.f45606c = horizonSpeakerSectionDto;
        this.d = trunkSpeakerSectionDto;
        this.f45607e = sectionWatchV3Dto;
    }

    public /* synthetic */ SectionConnectedObjectDto(SectionPromiseDto sectionPromiseDto, EarphoneSectionDto earphoneSectionDto, HorizonSpeakerSectionDto horizonSpeakerSectionDto, TrunkSpeakerSectionDto trunkSpeakerSectionDto, SectionWatchV3Dto sectionWatchV3Dto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : sectionPromiseDto, (i2 & 2) != 0 ? null : earphoneSectionDto, (i2 & 4) != 0 ? null : horizonSpeakerSectionDto, (i2 & 8) != 0 ? null : trunkSpeakerSectionDto, (i2 & 16) != 0 ? null : sectionWatchV3Dto);
    }
}
