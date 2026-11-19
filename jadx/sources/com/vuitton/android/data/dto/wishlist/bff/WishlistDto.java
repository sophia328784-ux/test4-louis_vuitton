package com.vuitton.android.data.dto.wishlist.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.r61;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB%\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/wishlist/bff/WishlistDto;", "", "", "Lcom/vuitton/android/data/dto/wishlist/bff/WishlistItemDto;", "items", "", "shareUrl", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class WishlistDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f46942c = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new r61(4)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f46943a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46944b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/wishlist/bff/WishlistDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/wishlist/bff/WishlistDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<WishlistDto> serializer() {
            return WishlistDto$$serializer.f46945a;
        }
    }

    public /* synthetic */ WishlistDto(int i2, List list, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46943a = null;
        } else {
            this.f46943a = list;
        }
        if ((i2 & 2) == 0) {
            this.f46944b = null;
        } else {
            this.f46944b = str;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WishlistDto)) {
            return false;
        }
        WishlistDto wishlistDto = (WishlistDto) obj;
        return Intrinsics.c(this.f46943a, wishlistDto.f46943a) && Intrinsics.c(this.f46944b, wishlistDto.f46944b);
    }

    public final int hashCode() {
        List list = this.f46943a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        String str = this.f46944b;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "WishlistDto(items=" + this.f46943a + ", shareUrl=" + this.f46944b + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WishlistDto() {
        this((List) null, (String) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public WishlistDto(List<WishlistItemDto> list, String str) {
        this.f46943a = list;
        this.f46944b = str;
    }

    public /* synthetic */ WishlistDto(List list, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : str);
    }
}
