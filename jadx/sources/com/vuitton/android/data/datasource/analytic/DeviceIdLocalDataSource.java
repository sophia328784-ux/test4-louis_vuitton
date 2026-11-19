package com.vuitton.android.data.datasource.analytic;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import dagger.Lazy;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\tB!\b\u0007\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;", "", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "sharedPreferences", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "schedulersProvider", "<init>", "(Ldagger/Lazy;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DeviceIdLocalDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f43763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineDispatchers f43764b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource$Companion;", "", "", "KEY_DEVICE_ID", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public DeviceIdLocalDataSource(Lazy<SharedPreferences> lazy, CoroutineDispatchers coroutineDispatchers) {
        lazy.getClass();
        coroutineDispatchers.getClass();
        this.f43763a = lazy;
        this.f43764b = coroutineDispatchers;
    }

    public final Object a(ContinuationImpl continuationImpl) {
        return BuildersKt.f(this.f43764b.getF43530b(), new DeviceIdLocalDataSource$getOrCreate$2(this, null), continuationImpl);
    }
}
