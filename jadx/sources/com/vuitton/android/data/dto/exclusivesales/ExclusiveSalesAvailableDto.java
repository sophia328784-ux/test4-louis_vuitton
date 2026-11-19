package com.vuitton.android.data.dto.exclusivesales;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ew;
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
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB!\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB3\b\u0010\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0007\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesAvailableDto;", "", "", "Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesCategoryLinksDto;", "categoryLinksList", "", "categoryLinksListSize", "<init>", "(Ljava/util/List;I)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ExclusiveSalesAvailableDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f45749c = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ew(18)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f45751b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesAvailableDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesAvailableDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ExclusiveSalesAvailableDto> serializer() {
            return ExclusiveSalesAvailableDto$$serializer.f45752a;
        }
    }

    public /* synthetic */ ExclusiveSalesAvailableDto(int i2, List list, int i3, SerializationConstructorMarker serializationConstructorMarker) {
        if (2 != (i2 & 2)) {
            PluginExceptionsKt.b(i2, 2, ExclusiveSalesAvailableDto$$serializer.f45752a.a());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f45750a = null;
        } else {
            this.f45750a = list;
        }
        this.f45751b = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExclusiveSalesAvailableDto)) {
            return false;
        }
        ExclusiveSalesAvailableDto exclusiveSalesAvailableDto = (ExclusiveSalesAvailableDto) obj;
        return Intrinsics.c(this.f45750a, exclusiveSalesAvailableDto.f45750a) && this.f45751b == exclusiveSalesAvailableDto.f45751b;
    }

    public final int hashCode() {
        List list = this.f45750a;
        return Integer.hashCode(this.f45751b) + ((list == null ? 0 : list.hashCode()) * 31);
    }

    public final String toString() {
        return "ExclusiveSalesAvailableDto(categoryLinksList=" + this.f45750a + ", categoryLinksListSize=" + this.f45751b + ")";
    }

    public ExclusiveSalesAvailableDto(List<ExclusiveSalesCategoryLinksDto> list, int i2) {
        this.f45750a = list;
        this.f45751b = i2;
    }

    public /* synthetic */ ExclusiveSalesAvailableDto(List list, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : list, i2);
    }
}
