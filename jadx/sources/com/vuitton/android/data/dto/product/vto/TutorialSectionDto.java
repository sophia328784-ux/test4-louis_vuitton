package com.vuitton.android.data.dto.product.vto;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b51;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB9\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDto;", "", "", b.a.f24015b, "Lcom/vuitton/android/data/dto/product/vto/TutorialSectionTypeDto;", "type", "Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/product/vto/TutorialSectionTypeDto;Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/product/vto/TutorialSectionTypeDto;Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class TutorialSectionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new b51(1)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TutorialSectionTypeDto f46585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TutorialSectionDataDto f46586c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<TutorialSectionDto> serializer() {
            return TutorialSectionDto$$serializer.f46587a;
        }
    }

    public /* synthetic */ TutorialSectionDto(int i2, String str, TutorialSectionTypeDto tutorialSectionTypeDto, TutorialSectionDataDto tutorialSectionDataDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, TutorialSectionDto$$serializer.f46587a.getF19838b());
            throw null;
        }
        this.f46584a = str;
        this.f46585b = tutorialSectionTypeDto;
        this.f46586c = tutorialSectionDataDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TutorialSectionDto)) {
            return false;
        }
        TutorialSectionDto tutorialSectionDto = (TutorialSectionDto) obj;
        return Intrinsics.c(this.f46584a, tutorialSectionDto.f46584a) && this.f46585b == tutorialSectionDto.f46585b && Intrinsics.c(this.f46586c, tutorialSectionDto.f46586c);
    }

    public final int hashCode() {
        return this.f46586c.hashCode() + ((this.f46585b.hashCode() + (this.f46584a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "TutorialSectionDto(id=" + this.f46584a + ", type=" + this.f46585b + ", data=" + this.f46586c + ")";
    }

    public TutorialSectionDto(String str, TutorialSectionTypeDto tutorialSectionTypeDto, TutorialSectionDataDto tutorialSectionDataDto) {
        str.getClass();
        tutorialSectionTypeDto.getClass();
        tutorialSectionDataDto.getClass();
        this.f46584a = str;
        this.f46585b = tutorialSectionTypeDto;
        this.f46586c = tutorialSectionDataDto;
    }
}
