package com.vuitton.android.data.dto.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;", "", ConfigurationName.KEY, "type", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderDataDto;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderDataDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleSliderSectionDto extends ImmersiveArticleSectionsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleSliderDataDto f45922c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleSliderSectionDto> serializer() {
            return ImmersiveArticleSliderSectionDto$$serializer.f45923a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ImmersiveArticleSliderSectionDto(int i2, String str, String str2, ImmersiveArticleSliderDataDto immersiveArticleSliderDataDto, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, ImmersiveArticleSliderSectionDto$$serializer.f45923a.getF19850b());
            throw null;
        }
        this.f45920a = str;
        this.f45921b = str2;
        this.f45922c = immersiveArticleSliderDataDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleSliderSectionDto)) {
            return false;
        }
        ImmersiveArticleSliderSectionDto immersiveArticleSliderSectionDto = (ImmersiveArticleSliderSectionDto) obj;
        return Intrinsics.c(this.f45920a, immersiveArticleSliderSectionDto.f45920a) && Intrinsics.c(this.f45921b, immersiveArticleSliderSectionDto.f45921b) && Intrinsics.c(this.f45922c, immersiveArticleSliderSectionDto.f45922c);
    }

    public final int hashCode() {
        return this.f45922c.hashCode() + fc.b(this.f45920a.hashCode() * 31, 31, this.f45921b);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleSliderSectionDto(key=", this.f45920a, ", type=", this.f45921b, ", data=");
        sbS.append(this.f45922c);
        sbS.append(")");
        return sbS.toString();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleSliderSectionDto(String str, String str2, ImmersiveArticleSliderDataDto immersiveArticleSliderDataDto) {
        super(null);
        str.getClass();
        str2.getClass();
        immersiveArticleSliderDataDto.getClass();
        this.f45920a = str;
        this.f45921b = str2;
        this.f45922c = immersiveArticleSliderDataDto;
    }
}
