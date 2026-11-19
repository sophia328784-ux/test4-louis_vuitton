package com.vuitton.android.presentation.inappbanner;

import com.vuitton.android.domain.reporter.CrashReporter;
import com.vuitton.android.platform.activity.CurrentActivityProvider;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;", "", "Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;", "inAppBannerStateHolder", "Lcom/vuitton/android/domain/reporter/CrashReporter;", "crashReporter", "Lcom/vuitton/android/platform/activity/CurrentActivityProvider;", "currentActivityProvider", "<init>", "(Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;Lcom/vuitton/android/domain/reporter/CrashReporter;Lcom/vuitton/android/platform/activity/CurrentActivityProvider;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InAppBannerSupervisor {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Set f51567e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppBannerStateHolder f51568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CrashReporter f51569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CurrentActivityProvider f51570c;
    public boolean d;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor$Companion;", "", "", "TAG", "Ljava/lang/String;", "IN_APP_BANNER_CONTAINER_VIEW_TAG", "", "reportedSkippedActivityNames", "Ljava/util/Set;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        Set setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        setNewSetFromMap.getClass();
        f51567e = setNewSetFromMap;
    }

    @Inject
    public InAppBannerSupervisor(InAppBannerStateHolder inAppBannerStateHolder, CrashReporter crashReporter, CurrentActivityProvider currentActivityProvider) {
        inAppBannerStateHolder.getClass();
        crashReporter.getClass();
        currentActivityProvider.getClass();
        this.f51568a = inAppBannerStateHolder;
        this.f51569b = crashReporter;
        this.f51570c = currentActivityProvider;
    }
}
