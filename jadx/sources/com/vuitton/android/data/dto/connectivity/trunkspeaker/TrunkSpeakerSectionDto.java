package com.vuitton.android.data.dto.connectivity.trunkspeaker;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.common.FaqCategoryDto;
import com.vuitton.android.data.dto.connectivity.common.FaqVideoDto;
import defpackage.l31;
import defpackage.o60;
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
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B7\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nBE\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;", "", "", "Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;", "faq", "", "skuList", "Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;", "video", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/common/FaqVideoDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class TrunkSpeakerSectionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f45628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FaqVideoDto f45629c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<TrunkSpeakerSectionDto> serializer() {
            return TrunkSpeakerSectionDto$$serializer.f45630a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        d = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new l31(21)), LazyKt.a(lazyThreadSafetyMode, new l31(22)), null};
    }

    public /* synthetic */ TrunkSpeakerSectionDto(int i2, List list, List list2, FaqVideoDto faqVideoDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45627a = null;
        } else {
            this.f45627a = list;
        }
        if ((i2 & 2) == 0) {
            this.f45628b = null;
        } else {
            this.f45628b = list2;
        }
        if ((i2 & 4) == 0) {
            this.f45629c = null;
        } else {
            this.f45629c = faqVideoDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TrunkSpeakerSectionDto)) {
            return false;
        }
        TrunkSpeakerSectionDto trunkSpeakerSectionDto = (TrunkSpeakerSectionDto) obj;
        return Intrinsics.c(this.f45627a, trunkSpeakerSectionDto.f45627a) && Intrinsics.c(this.f45628b, trunkSpeakerSectionDto.f45628b) && Intrinsics.c(this.f45629c, trunkSpeakerSectionDto.f45629c);
    }

    public final int hashCode() {
        List list = this.f45627a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.f45628b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        FaqVideoDto faqVideoDto = this.f45629c;
        return iHashCode2 + (faqVideoDto != null ? faqVideoDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = o60.s("TrunkSpeakerSectionDto(faq=", ", skuList=", ", video=", this.f45627a, this.f45628b);
        sbS.append(this.f45629c);
        sbS.append(")");
        return sbS.toString();
    }

    public TrunkSpeakerSectionDto() {
        this((List) null, (List) null, (FaqVideoDto) null, 7, (DefaultConstructorMarker) null);
    }

    public TrunkSpeakerSectionDto(List<FaqCategoryDto> list, List<String> list2, FaqVideoDto faqVideoDto) {
        this.f45627a = list;
        this.f45628b = list2;
        this.f45629c = faqVideoDto;
    }

    public /* synthetic */ TrunkSpeakerSectionDto(List list, List list2, FaqVideoDto faqVideoDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : faqVideoDto);
    }
}
