package com.vuitton.android.data.dto.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pdp.PriceDto;
import defpackage.n00;
import defpackage.o60;
import defpackage.ul0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B7\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fBO\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;", "", "", "Lcom/vuitton/android/data/dto/booking/PreBookDto;", "prebookList", "Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto;", "additionalList", "Lcom/vuitton/android/data/dto/pdp/PriceDto;", "priceInfo", "", "freeLabel", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/PriceDto;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/PriceDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PreBookSummaryDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f44759e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f44760a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f44761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PriceDto f44762c;
    public final String d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PreBookSummaryDto> serializer() {
            return PreBookSummaryDto$$serializer.f44763a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f44759e = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new ul0(26)), LazyKt.a(lazyThreadSafetyMode, new ul0(27)), null, null};
    }

    public /* synthetic */ PreBookSummaryDto(int i2, List list, List list2, PriceDto priceDto, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, PreBookSummaryDto$$serializer.f44763a.getF19838b());
            throw null;
        }
        this.f44760a = list;
        this.f44761b = list2;
        this.f44762c = priceDto;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreBookSummaryDto)) {
            return false;
        }
        PreBookSummaryDto preBookSummaryDto = (PreBookSummaryDto) obj;
        return Intrinsics.c(this.f44760a, preBookSummaryDto.f44760a) && Intrinsics.c(this.f44761b, preBookSummaryDto.f44761b) && Intrinsics.c(this.f44762c, preBookSummaryDto.f44762c) && Intrinsics.c(this.d, preBookSummaryDto.d);
    }

    public final int hashCode() {
        int iHashCode = (this.f44762c.hashCode() + n00.a(this.f44760a.hashCode() * 31, 31, this.f44761b)) * 31;
        String str = this.d;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = o60.s("PreBookSummaryDto(prebookList=", ", additionalList=", ", priceInfo=", this.f44760a, this.f44761b);
        sbS.append(this.f44762c);
        sbS.append(", freeLabel=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public PreBookSummaryDto(List<PreBookDto> list, List<BookingAdditionalDto> list2, PriceDto priceDto, String str) {
        list.getClass();
        list2.getClass();
        priceDto.getClass();
        this.f44760a = list;
        this.f44761b = list2;
        this.f44762c = priceDto;
        this.d = str;
    }

    public /* synthetic */ PreBookSummaryDto(List list, List list2, PriceDto priceDto, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, priceDto, (i2 & 8) != 0 ? null : str);
    }
}
