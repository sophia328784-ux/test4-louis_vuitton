package com.vuitton.android.data.dto.search;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.agent.Product;
import com.vuitton.android.data.dto.producttiny.ProductTinyDto;
import defpackage.a;
import defpackage.c70;
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
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B/\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\nBE\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/search/LiveSearchDto;", "", "", "Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;", Product.TYPE, "Lcom/vuitton/android/data/dto/search/LiveSearchTypeDto;", "type", "Lcom/vuitton/android/data/dto/search/TrendingDto;", "trendingList", "<init>", "(Ljava/util/List;Lcom/vuitton/android/data/dto/search/LiveSearchTypeDto;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lcom/vuitton/android/data/dto/search/LiveSearchTypeDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class LiveSearchDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f46776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LiveSearchTypeDto f46777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f46778c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/search/LiveSearchDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/search/LiveSearchDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<LiveSearchDto> serializer() {
            return LiveSearchDto$$serializer.f46779a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        d = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new c70(22)), LazyKt.a(lazyThreadSafetyMode, new c70(23)), LazyKt.a(lazyThreadSafetyMode, new c70(24))};
    }

    public /* synthetic */ LiveSearchDto(int i2, List list, LiveSearchTypeDto liveSearchTypeDto, List list2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, LiveSearchDto$$serializer.f46779a.getF19838b());
            throw null;
        }
        this.f46776a = list;
        this.f46777b = liveSearchTypeDto;
        if ((i2 & 4) == 0) {
            this.f46778c = null;
        } else {
            this.f46778c = list2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LiveSearchDto)) {
            return false;
        }
        LiveSearchDto liveSearchDto = (LiveSearchDto) obj;
        return Intrinsics.c(this.f46776a, liveSearchDto.f46776a) && this.f46777b == liveSearchDto.f46777b && Intrinsics.c(this.f46778c, liveSearchDto.f46778c);
    }

    public final int hashCode() {
        int iHashCode = (this.f46777b.hashCode() + (this.f46776a.hashCode() * 31)) * 31;
        List list = this.f46778c;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LiveSearchDto(products=");
        sb.append(this.f46776a);
        sb.append(", type=");
        sb.append(this.f46777b);
        sb.append(", trendingList=");
        return a.o(sb, this.f46778c, ")");
    }

    public LiveSearchDto(List<ProductTinyDto> list, LiveSearchTypeDto liveSearchTypeDto, List<TrendingDto> list2) {
        list.getClass();
        liveSearchTypeDto.getClass();
        this.f46776a = list;
        this.f46777b = liveSearchTypeDto;
        this.f46778c = list2;
    }

    public /* synthetic */ LiveSearchDto(List list, LiveSearchTypeDto liveSearchTypeDto, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, liveSearchTypeDto, (i2 & 4) != 0 ? null : list2);
    }
}
