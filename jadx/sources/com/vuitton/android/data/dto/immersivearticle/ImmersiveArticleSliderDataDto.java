package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.l30;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB!\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderDataDto;", "", "", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSlideDto;", "slideList", "", "title", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleSliderDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f45916c = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new l30(11)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45918b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleSliderDataDto> serializer() {
            return ImmersiveArticleSliderDataDto$$serializer.f45919a;
        }
    }

    public /* synthetic */ ImmersiveArticleSliderDataDto(int i2, List list, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, ImmersiveArticleSliderDataDto$$serializer.f45919a.getF19850b());
            throw null;
        }
        this.f45917a = list;
        if ((i2 & 2) == 0) {
            this.f45918b = null;
        } else {
            this.f45918b = str;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleSliderDataDto)) {
            return false;
        }
        ImmersiveArticleSliderDataDto immersiveArticleSliderDataDto = (ImmersiveArticleSliderDataDto) obj;
        return Intrinsics.c(this.f45917a, immersiveArticleSliderDataDto.f45917a) && Intrinsics.c(this.f45918b, immersiveArticleSliderDataDto.f45918b);
    }

    public final int hashCode() {
        int iHashCode = this.f45917a.hashCode() * 31;
        String str = this.f45918b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "ImmersiveArticleSliderDataDto(slideList=" + this.f45917a + ", title=" + this.f45918b + ")";
    }

    public ImmersiveArticleSliderDataDto(List<ImmersiveArticleSlideDto> list, String str) {
        list.getClass();
        this.f45917a = list;
        this.f45918b = str;
    }

    public /* synthetic */ ImmersiveArticleSliderDataDto(List list, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i2 & 2) != 0 ? null : str);
    }
}
