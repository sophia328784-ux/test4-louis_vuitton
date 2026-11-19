package com.vuitton.android.presentation.screen.authentication.accountmanager;

import androidx.activity.ComponentActivity;
import com.linecorp.linesdk.LineApiResponseCode;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl;", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "<init>", "(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LineSignInManagerImpl implements LineSignInManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnvironmentProvider f53437a;

    /* JADX INFO: loaded from: classes2.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53438a;

        static {
            int[] iArr = new int[LineApiResponseCode.values().length];
            try {
                iArr[LineApiResponseCode.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LineApiResponseCode.CANCEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f53438a = iArr;
        }
    }

    @Inject
    public LineSignInManagerImpl(EnvironmentProvider environmentProvider) {
        environmentProvider.getClass();
        this.f53437a = environmentProvider;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.accountmanager.LineSignInManager
    public final Object a(ComponentActivity componentActivity, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SuspendLambda suspendLambda) {
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        return BuildersKt.f(MainDispatcherLoader.f75131a.r(), new LineSignInManagerImpl$getLineCredentials$2(this, componentActivity, trackingAuthOrigin, trackingAuthEntryPoint, null), suspendLambda);
    }
}
