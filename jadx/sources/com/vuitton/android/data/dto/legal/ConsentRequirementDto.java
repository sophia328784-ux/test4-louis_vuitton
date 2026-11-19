package com.vuitton.android.data.dto.legal;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.lp;
import defpackage.o60;
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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nBA\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/legal/ConsentRequirementDto;", "", "", b.a.f24015b, "title", "", "isMandatory", "Lcom/vuitton/android/data/dto/legal/ConsentFeatureDto;", "feature", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/data/dto/legal/ConsentFeatureDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/data/dto/legal/ConsentFeatureDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ConsentRequirementDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f45984e = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new lp(19))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f45987c;
    public final ConsentFeatureDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/legal/ConsentRequirementDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/legal/ConsentRequirementDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ConsentRequirementDto> serializer() {
            return ConsentRequirementDto$$serializer.f45988a;
        }
    }

    public /* synthetic */ ConsentRequirementDto(int i2, String str, String str2, boolean z, ConsentFeatureDto consentFeatureDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, ConsentRequirementDto$$serializer.f45988a.getF19838b());
            throw null;
        }
        this.f45985a = str;
        this.f45986b = str2;
        this.f45987c = z;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = consentFeatureDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConsentRequirementDto)) {
            return false;
        }
        ConsentRequirementDto consentRequirementDto = (ConsentRequirementDto) obj;
        return Intrinsics.c(this.f45985a, consentRequirementDto.f45985a) && Intrinsics.c(this.f45986b, consentRequirementDto.f45986b) && this.f45987c == consentRequirementDto.f45987c && this.d == consentRequirementDto.d;
    }

    public final int hashCode() {
        int iB = o60.b(fc.b(this.f45985a.hashCode() * 31, 31, this.f45986b), 31, this.f45987c);
        ConsentFeatureDto consentFeatureDto = this.d;
        return iB + (consentFeatureDto == null ? 0 : consentFeatureDto.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ConsentRequirementDto(id=", this.f45985a, ", title=", this.f45986b, ", isMandatory=");
        sbS.append(this.f45987c);
        sbS.append(", feature=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public ConsentRequirementDto(String str, String str2, boolean z, ConsentFeatureDto consentFeatureDto) {
        str.getClass();
        str2.getClass();
        this.f45985a = str;
        this.f45986b = str2;
        this.f45987c = z;
        this.d = consentFeatureDto;
    }

    public /* synthetic */ ConsentRequirementDto(String str, String str2, boolean z, ConsentFeatureDto consentFeatureDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, z, (i2 & 8) != 0 ? null : consentFeatureDto);
    }
}
