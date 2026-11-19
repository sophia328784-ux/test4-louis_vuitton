package com.vuitton.android.data.datasource.wishlist;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.legacymulesoft.LegacyWishlistApi;
import com.vuitton.android.data.dto.wishlist.atg.ShareProductFromWishListResultDto;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\bB\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;", "", "Lcom/vuitton/android/data/api/legacymulesoft/LegacyWishlistApi;", "legacyWishlistApi", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "<init>", "(Lcom/vuitton/android/data/api/legacymulesoft/LegacyWishlistApi;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LegacyWishlistAtgDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LegacyWishlistApi f44269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EnvironmentProvider f44270b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource$Companion;", "", "", "USER_ID_VARIABLE", "Ljava/lang/String;", "WISHLIST_SHARE_PRODUCT_API", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public LegacyWishlistAtgDataSource(LegacyWishlistApi legacyWishlistApi, EnvironmentProvider environmentProvider) {
        legacyWishlistApi.getClass();
        environmentProvider.getClass();
        this.f44269a = legacyWishlistApi;
        this.f44270b = environmentProvider;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    public final Object a(InAppDispatch inAppDispatch, String str, String str2, String str3, String str4, List list, ContinuationImpl continuationImpl) {
        LegacyWishlistAtgDataSource$shareWishlistContent$1 legacyWishlistAtgDataSource$shareWishlistContent$1;
        if (continuationImpl instanceof LegacyWishlistAtgDataSource$shareWishlistContent$1) {
            legacyWishlistAtgDataSource$shareWishlistContent$1 = (LegacyWishlistAtgDataSource$shareWishlistContent$1) continuationImpl;
            int i2 = legacyWishlistAtgDataSource$shareWishlistContent$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                legacyWishlistAtgDataSource$shareWishlistContent$1.d = i2 - Integer.MIN_VALUE;
            } else {
                legacyWishlistAtgDataSource$shareWishlistContent$1 = new LegacyWishlistAtgDataSource$shareWishlistContent$1(this, continuationImpl);
            }
        } else {
            legacyWishlistAtgDataSource$shareWishlistContent$1 = new LegacyWishlistAtgDataSource$shareWishlistContent$1(this, continuationImpl);
        }
        LegacyWishlistAtgDataSource$shareWishlistContent$1 legacyWishlistAtgDataSource$shareWishlistContent$2 = legacyWishlistAtgDataSource$shareWishlistContent$1;
        Object objShareProductFromWishList = legacyWishlistAtgDataSource$shareWishlistContent$2.f44271b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = legacyWishlistAtgDataSource$shareWishlistContent$2.d;
        if (i3 == 0) {
            ResultKt.b(objShareProductFromWishList);
            String strConcat = this.f44270b.o().concat(StringsKt.J("wishlist/share?salesforce_id=[USER_ID]", "[USER_ID]", str4));
            String strK = CollectionsKt.K(list, ",", null, null, null, 62);
            String strH = inAppDispatch.d.h();
            legacyWishlistAtgDataSource$shareWishlistContent$2.d = 1;
            objShareProductFromWishList = this.f44269a.shareProductFromWishList(strConcat, "application/x-www-form-urlencoded", str, str2, str3, strK, strH, legacyWishlistAtgDataSource$shareWishlistContent$2);
            if (objShareProductFromWishList == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objShareProductFromWishList);
        }
        return Boolean.valueOf(((ShareProductFromWishListResultDto) objShareProductFromWishList).f46935a);
    }
}
