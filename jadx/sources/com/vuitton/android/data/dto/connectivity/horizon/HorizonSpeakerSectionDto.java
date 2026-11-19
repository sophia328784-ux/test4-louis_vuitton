package com.vuitton.android.data.dto.connectivity.horizon;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.common.FaqCategoryDto;
import com.vuitton.android.data.dto.connectivity.common.FaqVideoDto;
import com.vuitton.android.data.dto.connectivity.common.TutorialDto;
import defpackage.m10;
import defpackage.o60;
import defpackage.tx;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012BI\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fBU\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;", "", "", "Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;", "faq", "", "skuList", "Lcom/vuitton/android/data/dto/connectivity/common/TutorialDto;", "tutorial", "Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;", "video", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class HorizonSpeakerSectionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f45580e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45581a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f45582b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f45583c;
    public final FaqVideoDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<HorizonSpeakerSectionDto> serializer() {
            return HorizonSpeakerSectionDto$$serializer.f45584a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f45580e = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new tx(28)), LazyKt.a(lazyThreadSafetyMode, new tx(29)), LazyKt.a(lazyThreadSafetyMode, new m10(0)), null};
    }

    public /* synthetic */ HorizonSpeakerSectionDto(int i2, List list, List list2, List list3, FaqVideoDto faqVideoDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45581a = null;
        } else {
            this.f45581a = list;
        }
        if ((i2 & 2) == 0) {
            this.f45582b = null;
        } else {
            this.f45582b = list2;
        }
        if ((i2 & 4) == 0) {
            this.f45583c = null;
        } else {
            this.f45583c = list3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = faqVideoDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HorizonSpeakerSectionDto)) {
            return false;
        }
        HorizonSpeakerSectionDto horizonSpeakerSectionDto = (HorizonSpeakerSectionDto) obj;
        return Intrinsics.c(this.f45581a, horizonSpeakerSectionDto.f45581a) && Intrinsics.c(this.f45582b, horizonSpeakerSectionDto.f45582b) && Intrinsics.c(this.f45583c, horizonSpeakerSectionDto.f45583c) && Intrinsics.c(this.d, horizonSpeakerSectionDto.d);
    }

    public final int hashCode() {
        List list = this.f45581a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.f45582b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List list3 = this.f45583c;
        int iHashCode3 = (iHashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        FaqVideoDto faqVideoDto = this.d;
        return iHashCode3 + (faqVideoDto != null ? faqVideoDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = o60.s("HorizonSpeakerSectionDto(faq=", ", skuList=", ", tutorial=", this.f45581a, this.f45582b);
        sbS.append(this.f45583c);
        sbS.append(", video=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public HorizonSpeakerSectionDto() {
        this((List) null, (List) null, (List) null, (FaqVideoDto) null, 15, (DefaultConstructorMarker) null);
    }

    public HorizonSpeakerSectionDto(List<FaqCategoryDto> list, List<String> list2, List<TutorialDto> list3, FaqVideoDto faqVideoDto) {
        this.f45581a = list;
        this.f45582b = list2;
        this.f45583c = list3;
        this.d = faqVideoDto;
    }

    public /* synthetic */ HorizonSpeakerSectionDto(List list, List list2, List list3, FaqVideoDto faqVideoDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : list3, (i2 & 8) != 0 ? null : faqVideoDto);
    }
}
