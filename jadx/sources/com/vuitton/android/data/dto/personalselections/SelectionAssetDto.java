package com.vuitton.android.data.dto.personalselections;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import defpackage.a;
import defpackage.it0;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\u0004\b\b\u0010\tB?\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/personalselections/SelectionAssetDto;", "", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "", "annotation", "", "relatedSkus", "<init>", "(Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SelectionAssetDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new it0(25))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetDto f46334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f46336c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/personalselections/SelectionAssetDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/personalselections/SelectionAssetDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SelectionAssetDto> serializer() {
            return SelectionAssetDto$$serializer.f46337a;
        }
    }

    public /* synthetic */ SelectionAssetDto(int i2, AssetDto assetDto, String str, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (5 != (i2 & 5)) {
            PluginExceptionsKt.b(i2, 5, SelectionAssetDto$$serializer.f46337a.getF19838b());
            throw null;
        }
        this.f46334a = assetDto;
        if ((i2 & 2) == 0) {
            this.f46335b = null;
        } else {
            this.f46335b = str;
        }
        this.f46336c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectionAssetDto)) {
            return false;
        }
        SelectionAssetDto selectionAssetDto = (SelectionAssetDto) obj;
        return Intrinsics.c(this.f46334a, selectionAssetDto.f46334a) && Intrinsics.c(this.f46335b, selectionAssetDto.f46335b) && Intrinsics.c(this.f46336c, selectionAssetDto.f46336c);
    }

    public final int hashCode() {
        int iHashCode = this.f46334a.hashCode() * 31;
        String str = this.f46335b;
        return this.f46336c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SelectionAssetDto(asset=");
        sb.append(this.f46334a);
        sb.append(", annotation=");
        sb.append(this.f46335b);
        sb.append(", relatedSkus=");
        return a.o(sb, this.f46336c, ")");
    }

    public SelectionAssetDto(AssetDto assetDto, String str, List<String> list) {
        assetDto.getClass();
        list.getClass();
        this.f46334a = assetDto;
        this.f46335b = str;
        this.f46336c = list;
    }

    public /* synthetic */ SelectionAssetDto(AssetDto assetDto, String str, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(assetDto, (i2 & 2) != 0 ? null : str, list);
    }
}
