package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.avatar.AvatarLocalDataSource;
import com.vuitton.android.data.datasource.connectivity.ConnectedObjectLocalDataSource;
import com.vuitton.android.data.datasource.consents.UserConsentsLocalDataSource;
import com.vuitton.android.data.datasource.hotcontent.HotContentLocalDataSource;
import com.vuitton.android.data.datasource.orders.OrdersLocalDataSource;
import com.vuitton.android.data.datasource.profile.ProfileLocalDataSource;
import com.vuitton.android.data.datasource.repair.RepairLocalDataSource;
import com.vuitton.android.data.datasource.wishlist.WishlistLocalDataSource;
import com.vuitton.android.domain.repository.LocalCacheRepository;
import com.vuitton.android.domain.repository.UserPreferencesRepository;
import com.vuitton.foundation.logger.Logger;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0018BY\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;", "Lcom/vuitton/android/domain/repository/LocalCacheRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;", "ordersLocalDataSource", "Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;", "wishlistLocalDataSource", "Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;", "profileLocalDataSource", "Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;", "userConsentsLocalDataSource", "Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;", "connectedObjectLocalDataSource", "Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;", "repairLocalDataSource", "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;", "userPreferencesRepository", "Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;", "avatarLocalDataSource", "Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;", "hotContentLocalDataSource", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LocalCacheRepositoryImpl implements LocalCacheRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OrdersLocalDataSource f47777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WishlistLocalDataSource f47778c;
    public final ProfileLocalDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UserConsentsLocalDataSource f47779e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConnectedObjectLocalDataSource f47780f;
    public final RepairLocalDataSource g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final UserPreferencesRepository f47781h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AvatarLocalDataSource f47782i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final HotContentLocalDataSource f47783j;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public LocalCacheRepositoryImpl(Logger logger, OrdersLocalDataSource ordersLocalDataSource, WishlistLocalDataSource wishlistLocalDataSource, ProfileLocalDataSource profileLocalDataSource, UserConsentsLocalDataSource userConsentsLocalDataSource, ConnectedObjectLocalDataSource connectedObjectLocalDataSource, RepairLocalDataSource repairLocalDataSource, UserPreferencesRepository userPreferencesRepository, AvatarLocalDataSource avatarLocalDataSource, HotContentLocalDataSource hotContentLocalDataSource) {
        logger.getClass();
        ordersLocalDataSource.getClass();
        wishlistLocalDataSource.getClass();
        profileLocalDataSource.getClass();
        userConsentsLocalDataSource.getClass();
        connectedObjectLocalDataSource.getClass();
        repairLocalDataSource.getClass();
        userPreferencesRepository.getClass();
        avatarLocalDataSource.getClass();
        hotContentLocalDataSource.getClass();
        this.f47776a = logger;
        this.f47777b = ordersLocalDataSource;
        this.f47778c = wishlistLocalDataSource;
        this.d = profileLocalDataSource;
        this.f47779e = userConsentsLocalDataSource;
        this.f47780f = connectedObjectLocalDataSource;
        this.g = repairLocalDataSource;
        this.f47781h = userPreferencesRepository;
        this.f47782i = avatarLocalDataSource;
        this.f47783j = hotContentLocalDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.LocalCacheRepository
    public final Object a(ContinuationImpl continuationImpl) throws Throwable {
        LocalCacheRepositoryImpl$clearAllCache$1 localCacheRepositoryImpl$clearAllCache$1;
        Object failure;
        if (continuationImpl instanceof LocalCacheRepositoryImpl$clearAllCache$1) {
            localCacheRepositoryImpl$clearAllCache$1 = (LocalCacheRepositoryImpl$clearAllCache$1) continuationImpl;
            int i2 = localCacheRepositoryImpl$clearAllCache$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                localCacheRepositoryImpl$clearAllCache$1.d = i2 - Integer.MIN_VALUE;
            } else {
                localCacheRepositoryImpl$clearAllCache$1 = new LocalCacheRepositoryImpl$clearAllCache$1(this, continuationImpl);
            }
        } else {
            localCacheRepositoryImpl$clearAllCache$1 = new LocalCacheRepositoryImpl$clearAllCache$1(this, continuationImpl);
        }
        Object obj = localCacheRepositoryImpl$clearAllCache$1.f47784b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = localCacheRepositoryImpl$clearAllCache$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                this.f47776a.getClass();
                Result.Companion companion = Result.INSTANCE;
                OrdersLocalDataSource ordersLocalDataSource = this.f47777b;
                ordersLocalDataSource.f44136a = null;
                ordersLocalDataSource.f44137b = null;
                ordersLocalDataSource.f44138c = null;
                this.f47778c.a();
                this.f47781h.f();
                this.f47780f.f44053a = null;
                this.g.f44268a.clear();
                ProfileLocalDataSource profileLocalDataSource = this.d;
                localCacheRepositoryImpl$clearAllCache$1.d = 1;
                if (profileLocalDataSource.a(localCacheRepositoryImpl$clearAllCache$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                ((Result) obj).getClass();
            }
            Object obj2 = this.f47779e.f44054a.get();
            obj2.getClass();
            SharedPreferences.Editor editorEdit = ((SharedPreferences) obj2).edit();
            editorEdit.remove("USER_CONSENT");
            editorEdit.apply();
            this.f47782i.f43860a = null;
            this.f47783j.f44120a = null;
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return Unit.f71739a;
    }
}
