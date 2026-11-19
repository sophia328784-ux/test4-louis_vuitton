package com.kakao.sdk.user;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.appsflyer.sdk_base.referrer.Payload;
import com.kakao.sdk.network.ApiCallback;
import com.kakao.sdk.user.model.AccessTokenInfo;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/kakao/sdk/user/AppLifecycleObserver;", "Landroidx/lifecycle/LifecycleEventObserver;", "()V", "prevTimeMillis", "", "onStateChanged", "", Payload.SOURCE, "Landroidx/lifecycle/LifecycleOwner;", MvelScriptManager.VAR_EVENT, "Landroidx/lifecycle/Lifecycle$Event;", "Companion", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AppLifecycleObserver implements LifecycleEventObserver {
    private static final int INTERVAL_HOUR = 6;
    private long prevTimeMillis;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<AppLifecycleObserver> instance$delegate = LazyKt.b(AppLifecycleObserver$Companion$instance$2.f35909c);

    /* JADX INFO: renamed from: com.kakao.sdk.user.AppLifecycleObserver$onStateChanged$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Lcom/kakao/sdk/user/model/AccessTokenInfo;", "<anonymous parameter 1>", "", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class AnonymousClass1 extends Lambda implements Function2<AccessTokenInfo, Throwable, Unit> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f35910c = new AnonymousClass1(2);

        @Override // kotlin.jvm.functions.Function2
        public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return Unit.f71739a;
        }
    }

    public static final AppLifecycleObserver getInstance() {
        return INSTANCE.getInstance();
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        source.getClass();
        event.getClass();
        if (event != Lifecycle.Event.ON_START) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if ((jCurrentTimeMillis - this.prevTimeMillis) / 3600000 < 6) {
            return;
        }
        this.prevTimeMillis = jCurrentTimeMillis;
        UserApiClient.f35911c.getClass();
        UserApiClient userApiClientA = UserApiClient.Companion.a();
        final AnonymousClass1 anonymousClass1 = AnonymousClass1.f35910c;
        userApiClientA.getClass();
        anonymousClass1.getClass();
        userApiClientA.f35913b.checkAccessToken().p(new ApiCallback<AccessTokenInfo>() { // from class: com.kakao.sdk.user.UserApiClient$checkAccessToken$1
            {
                super(false);
            }

            @Override // com.kakao.sdk.network.ApiCallback
            public final void a(Object obj, Throwable th) {
                anonymousClass1.invoke((AccessTokenInfo) obj, th);
            }
        });
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R!\u0010\u0005\u001a\u00020\u00068FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u0012\u0004\b\u0007\u0010\u0002\u001a\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/kakao/sdk/user/AppLifecycleObserver$Companion;", "", "()V", "INTERVAL_HOUR", "", "instance", "Lcom/kakao/sdk/user/AppLifecycleObserver;", "getInstance$annotations", "getInstance", "()Lcom/kakao/sdk/user/AppLifecycleObserver;", "instance$delegate", "Lkotlin/Lazy;", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static /* synthetic */ void getInstance$annotations() {
        }

        public final AppLifecycleObserver getInstance() {
            return (AppLifecycleObserver) AppLifecycleObserver.instance$delegate.getF71699b();
        }

        private Companion() {
        }
    }
}
