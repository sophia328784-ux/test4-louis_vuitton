package com.vuitton.android.data.dto.dispatch;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fa0;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB!\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;", "", "", "", "localizationIdentifier", "Lcom/vuitton/android/data/dto/dispatch/LocaleExtensions;", "localeExtensions", "<init>", "(Ljava/util/List;Lcom/vuitton/android/data/dto/dispatch/LocaleExtensions;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lcom/vuitton/android/data/dto/dispatch/LocaleExtensions;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class LocalizationDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f45700c = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new fa0(4)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LocaleExtensions f45702b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/dispatch/LocalizationDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<LocalizationDto> serializer() {
            return LocalizationDto$$serializer.f45703a;
        }
    }

    public /* synthetic */ LocalizationDto(int i2, List list, LocaleExtensions localeExtensions, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, LocalizationDto$$serializer.f45703a.getF19838b());
            throw null;
        }
        this.f45701a = list;
        if ((i2 & 2) == 0) {
            this.f45702b = null;
        } else {
            this.f45702b = localeExtensions;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocalizationDto)) {
            return false;
        }
        LocalizationDto localizationDto = (LocalizationDto) obj;
        return Intrinsics.c(this.f45701a, localizationDto.f45701a) && Intrinsics.c(this.f45702b, localizationDto.f45702b);
    }

    public final int hashCode() {
        int iHashCode = this.f45701a.hashCode() * 31;
        LocaleExtensions localeExtensions = this.f45702b;
        return iHashCode + (localeExtensions == null ? 0 : localeExtensions.hashCode());
    }

    public final String toString() {
        return "LocalizationDto(localizationIdentifier=" + this.f45701a + ", localeExtensions=" + this.f45702b + ")";
    }

    public LocalizationDto(List<String> list, LocaleExtensions localeExtensions) {
        list.getClass();
        this.f45701a = list;
        this.f45702b = localeExtensions;
    }

    public /* synthetic */ LocalizationDto(List list, LocaleExtensions localeExtensions, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i2 & 2) != 0 ? null : localeExtensions);
    }
}
