package com.vuitton.android.data.dto.repair;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.n00;
import defpackage.wq0;
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
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB+\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/repair/RepairStatusTranslationDto;", "", "Lcom/vuitton/android/data/dto/repair/RepairStatusDto;", b.a.f24015b, "", "status", "statusLong", "<init>", "(Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class RepairStatusTranslationDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new wq0(23)), null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RepairStatusDto f46756a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46758c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/repair/RepairStatusTranslationDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/repair/RepairStatusTranslationDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<RepairStatusTranslationDto> serializer() {
            return RepairStatusTranslationDto$$serializer.f46759a;
        }
    }

    public /* synthetic */ RepairStatusTranslationDto(int i2, RepairStatusDto repairStatusDto, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46756a = null;
        } else {
            this.f46756a = repairStatusDto;
        }
        if ((i2 & 2) == 0) {
            this.f46757b = null;
        } else {
            this.f46757b = str;
        }
        if ((i2 & 4) == 0) {
            this.f46758c = null;
        } else {
            this.f46758c = str2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RepairStatusTranslationDto)) {
            return false;
        }
        RepairStatusTranslationDto repairStatusTranslationDto = (RepairStatusTranslationDto) obj;
        return this.f46756a == repairStatusTranslationDto.f46756a && Intrinsics.c(this.f46757b, repairStatusTranslationDto.f46757b) && Intrinsics.c(this.f46758c, repairStatusTranslationDto.f46758c);
    }

    public final int hashCode() {
        RepairStatusDto repairStatusDto = this.f46756a;
        int iHashCode = (repairStatusDto == null ? 0 : repairStatusDto.hashCode()) * 31;
        String str = this.f46757b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f46758c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RepairStatusTranslationDto(id=");
        sb.append(this.f46756a);
        sb.append(", status=");
        sb.append(this.f46757b);
        sb.append(", statusLong=");
        return n00.r(this.f46758c, ")", sb);
    }

    public RepairStatusTranslationDto() {
        this((RepairStatusDto) null, (String) null, (String) null, 7, (DefaultConstructorMarker) null);
    }

    public RepairStatusTranslationDto(RepairStatusDto repairStatusDto, String str, String str2) {
        this.f46756a = repairStatusDto;
        this.f46757b = str;
        this.f46758c = str2;
    }

    public /* synthetic */ RepairStatusTranslationDto(RepairStatusDto repairStatusDto, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : repairStatusDto, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2);
    }
}
