package com.vuitton.android.presentation.screen.authentication.accountmanager;

import android.content.Context;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import defpackage.d21;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl;", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;", "<init>", "()V", "KakaoUserInfo", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class KakaoSignInManagerImpl implements KakaoSignInManager {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0082\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$KakaoUserInfo;", "", "", "email", "nickname", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class KakaoUserInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53421a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53422b;

        public KakaoUserInfo(String str, String str2) {
            this.f53421a = str;
            this.f53422b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof KakaoUserInfo)) {
                return false;
            }
            KakaoUserInfo kakaoUserInfo = (KakaoUserInfo) obj;
            return Intrinsics.c(this.f53421a, kakaoUserInfo.f53421a) && Intrinsics.c(this.f53422b, kakaoUserInfo.f53422b);
        }

        public final int hashCode() {
            String str = this.f53421a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f53422b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("KakaoUserInfo(email=", this.f53421a, ", nickname=", this.f53422b, ")");
        }
    }

    @Inject
    public KakaoSignInManagerImpl() {
    }

    @Override // com.vuitton.android.presentation.screen.authentication.accountmanager.KakaoSignInManager
    public final Object a(Context context, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SuspendLambda suspendLambda) {
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        return BuildersKt.f(MainDispatcherLoader.f75131a.r(), new KakaoSignInManagerImpl$getKakaoCredentials$2(this, context, trackingAuthOrigin, trackingAuthEntryPoint, null), suspendLambda);
    }
}
