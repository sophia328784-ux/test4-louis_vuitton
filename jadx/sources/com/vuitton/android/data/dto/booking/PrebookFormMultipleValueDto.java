package com.vuitton.android.data.dto.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.gp0;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB%\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/booking/PrebookFormMultipleValueDto;", "", "", "freeTyping", "", "Lcom/vuitton/android/data/dto/booking/PrebookFormCategoryDto;", "categories", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PrebookFormMultipleValueDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f44779c = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new gp0(4))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44780a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f44781b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/booking/PrebookFormMultipleValueDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/PrebookFormMultipleValueDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PrebookFormMultipleValueDto> serializer() {
            return PrebookFormMultipleValueDto$$serializer.f44782a;
        }
    }

    public /* synthetic */ PrebookFormMultipleValueDto(int i2, String str, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f44780a = null;
        } else {
            this.f44780a = str;
        }
        if ((i2 & 2) == 0) {
            this.f44781b = null;
        } else {
            this.f44781b = list;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrebookFormMultipleValueDto)) {
            return false;
        }
        PrebookFormMultipleValueDto prebookFormMultipleValueDto = (PrebookFormMultipleValueDto) obj;
        return Intrinsics.c(this.f44780a, prebookFormMultipleValueDto.f44780a) && Intrinsics.c(this.f44781b, prebookFormMultipleValueDto.f44781b);
    }

    public final int hashCode() {
        String str = this.f44780a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List list = this.f44781b;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        return cj.k("PrebookFormMultipleValueDto(freeTyping=", this.f44780a, ", categories=", this.f44781b, ")");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PrebookFormMultipleValueDto() {
        this((String) null, (List) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public PrebookFormMultipleValueDto(String str, List<PrebookFormCategoryDto> list) {
        this.f44780a = str;
        this.f44781b = list;
    }

    public /* synthetic */ PrebookFormMultipleValueDto(String str, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : list);
    }
}
