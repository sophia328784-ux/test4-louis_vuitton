package com.vuitton.android.data.dto.wishlist.bff.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.wishlist.bff.WishlistDto;
import com.vuitton.android.data.dto.wishlist.bff.WishlistErrorAtgDto;
import com.vuitton.android.data.dto.wishlist.bff.WishlistErrorsAtgDto;
import com.vuitton.android.data.dto.wishlist.bff.WishlistItemDto;
import com.vuitton.foundation.model.domain.error.wishlist.WishlistError;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.wishlist.Wishlist;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistItem;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistItemId;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.Json;
import okhttp3.ResponseBody;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WishlistMapperKt {
    /* JADX WARN: Code duplicated, block: B:38:0x0076  */
    public static final WishlistError a(Json json, Throwable th) throws Throwable {
        Object failure;
        List list;
        WishlistErrorAtgDto wishlistErrorAtgDto;
        WishlistError generic;
        ResponseBody responseBody;
        json.getClass();
        if (th instanceof WishlistError) {
            return (WishlistError) th;
        }
        if (!(th instanceof HttpException)) {
            return new WishlistError.Generic("");
        }
        Response response = ((HttpException) th).d;
        String strString = (response == null || (responseBody = response.f79451c) == null) ? null : responseBody.string();
        if (strString != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                failure = new Result(StringsKt.w(strString) ? null : json.b(WishlistErrorsAtgDto.INSTANCE.serializer(), strString));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th2);
            }
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            Object obj = ((Result) failure).f71708b;
            if (obj instanceof Result.Failure) {
                obj = null;
            }
            WishlistErrorsAtgDto wishlistErrorsAtgDto = (WishlistErrorsAtgDto) obj;
            if (wishlistErrorsAtgDto == null || (list = wishlistErrorsAtgDto.f46950a) == null) {
                wishlistErrorAtgDto = null;
            } else {
                wishlistErrorAtgDto = (WishlistErrorAtgDto) CollectionsKt.firstOrNull(list);
            }
        } else {
            wishlistErrorAtgDto = null;
        }
        String str = wishlistErrorAtgDto != null ? wishlistErrorAtgDto.f46947b : null;
        if (Intrinsics.c(str, "skuAlreadyInWishlistError")) {
            String str2 = wishlistErrorAtgDto.f46946a;
            generic = new WishlistError.AlreadyInWishlist(str2 != null ? str2 : "");
        } else if (Intrinsics.c(str, "maxQuantityError")) {
            String str3 = wishlistErrorAtgDto.f46946a;
            generic = new WishlistError.MaxQuantityReached(str3 != null ? str3 : "");
        } else {
            String str4 = wishlistErrorAtgDto != null ? wishlistErrorAtgDto.f46946a : null;
            generic = new WishlistError.Generic(str4 != null ? str4 : "");
        }
        return generic;
    }

    public static final Wishlist b(WishlistDto wishlistDto) {
        List arrayList;
        wishlistDto.getClass();
        List list = wishlistDto.f46943a;
        if (list != null) {
            List<WishlistItemDto> list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (WishlistItemDto wishlistItemDto : list2) {
                wishlistItemDto.getClass();
                WishlistItemId.Companion companion = WishlistItemId.f68288b;
                String str = wishlistItemDto.f46952a;
                if (str == null) {
                    str = null;
                }
                companion.getClass();
                if (str == null) {
                    str = WishlistItemId.f68289c;
                }
                String str2 = str;
                SkuId.Companion companion2 = SkuId.INSTANCE;
                String str3 = wishlistItemDto.f46953b;
                companion2.getClass();
                if (str3 == null) {
                    str3 = SkuId.f67932b;
                }
                String str4 = str3;
                String str5 = wishlistItemDto.d;
                String str6 = str5 == null ? "" : str5;
                String str7 = wishlistItemDto.f46954c;
                String str8 = str7 == null ? "" : str7;
                String str9 = wishlistItemDto.f46955e;
                arrayList.add(new WishlistItem(str2, str4, str6, str8, str9 == null ? "" : str9, null));
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        String str10 = wishlistDto.f46944b;
        return new Wishlist(arrayList, str10 != null ? URLDecoder.decode(str10, Charsets.UTF_8.name()) : null);
    }
}
