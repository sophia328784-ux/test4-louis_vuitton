package com.vuitton.android.presentation.push;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import com.batch.android.Batch;
import com.batch.android.BatchActivityLifecycleHelper;
import com.batch.android.BatchInboxFetcher;
import com.batch.android.BatchInboxNotificationContent;
import com.batch.android.BatchMessage;
import com.batch.android.BatchProfileAttributeEditor;
import com.vuitton.android.R;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.repository.NotificationsPreferencesRepository;
import com.vuitton.android.domain.repository.UserPreferencesRepository;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.account.notifications.ClearNotificationsPreferencesUseCase;
import com.vuitton.android.domain.usecase.account.notifications.GetNotificationsPreferencesUseCase;
import com.vuitton.android.domain.usecase.account.notifications.SaveNotificationsInitialDefaultPreferencesUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.privacy.GetConsentForCustomizationUseCase;
import com.vuitton.android.presentation.screen.base.BaseActivity;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesTracker;
import com.vuitton.android.presentation.utils.NotificationUtils;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.error.push.NotificationException;
import com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.fc;
import defpackage.md;
import defpackage.v40;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0016BS\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/presentation/push/NotificationsSDKManager;", "Lcom/vuitton/android/presentation/push/NotificationsManager;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Landroid/content/Context;", "applicationContext", "Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;", "notificationsPreferencesTracker", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;", "getConsentForCustomizationUseCase", "Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;", "notificationsPreferencesRepository", "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;", "userPreferencesRepository", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/core/events/LVEventSender;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NotificationsSDKManager implements NotificationsManager {
    public static final String p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f51860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f51861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NotificationsPreferencesTracker f51862c;
    public final IsFeatureAvailableUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetProfileUseCase f51863e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetConsentForCustomizationUseCase f51864f;
    public final NotificationsPreferencesRepository g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final UserPreferencesRepository f51865h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LVEventSender f51866i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ContextScope f51867j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f51868k;
    public boolean l;
    public boolean m;
    public boolean n;
    public BatchInboxFetcher o;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/push/NotificationsSDKManager$Companion;", "", "", "kotlin.jvm.PlatformType", "TAG", "Ljava/lang/String;", "", "INBOX_FETCHER_MAX_PAGE_SIZE", "I", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        p = "NotificationsSDKManager";
    }

    @Inject
    public NotificationsSDKManager(Logger logger, @ApplicationContext Context context, NotificationsPreferencesTracker notificationsPreferencesTracker, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetProfileUseCase getProfileUseCase, GetConsentForCustomizationUseCase getConsentForCustomizationUseCase, NotificationsPreferencesRepository notificationsPreferencesRepository, UserPreferencesRepository userPreferencesRepository, LVEventSender lVEventSender) {
        logger.getClass();
        context.getClass();
        notificationsPreferencesTracker.getClass();
        isFeatureAvailableUseCase.getClass();
        getProfileUseCase.getClass();
        getConsentForCustomizationUseCase.getClass();
        notificationsPreferencesRepository.getClass();
        userPreferencesRepository.getClass();
        lVEventSender.getClass();
        this.f51860a = logger;
        this.f51861b = context;
        this.f51862c = notificationsPreferencesTracker;
        this.d = isFeatureAvailableUseCase;
        this.f51863e = getProfileUseCase;
        this.f51864f = getConsentForCustomizationUseCase;
        this.g = notificationsPreferencesRepository;
        this.f51865h = userPreferencesRepository;
        this.f51866i = lVEventSender;
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        this.f51867j = CoroutineScopeKt.a(MainDispatcherLoader.f75131a);
    }

    @Override // com.vuitton.android.presentation.push.NotificationsManager
    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getL() {
        return this.l;
    }

    @Override // com.vuitton.android.presentation.push.NotificationsManager
    public final void b() {
        ClearNotificationsPreferencesUseCase clearNotificationsPreferencesUseCase = new ClearNotificationsPreferencesUseCase(this.g);
        Batch.optOutAndWipeData(this.f51861b);
        clearNotificationsPreferencesUseCase.f49101a.d();
        this.f51862c.getClass();
        BatchProfileAttributeEditor batchProfileAttributeEditorEditor = Batch.Profile.editor();
        batchProfileAttributeEditorEditor.removeAttribute("thematic_optins");
        batchProfileAttributeEditorEditor.save();
    }

    @Override // com.vuitton.android.presentation.push.NotificationsManager
    public final boolean c() {
        return Batch.isOptedOut(this.f51861b);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x007b A[Catch: all -> 0x00bb, TryCatch #0 {all -> 0x00bb, blocks: (B:13:0x002f, B:34:0x00a4, B:29:0x007b, B:31:0x0093, B:35:0x00ab, B:36:0x00ae, B:37:0x00af, B:18:0x0040, B:27:0x0073, B:21:0x0047, B:23:0x0062, B:38:0x00b7, B:39:0x00ba), top: B:51:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0093 A[Catch: all -> 0x00bb, TryCatch #0 {all -> 0x00bb, blocks: (B:13:0x002f, B:34:0x00a4, B:29:0x007b, B:31:0x0093, B:35:0x00ab, B:36:0x00ae, B:37:0x00af, B:18:0x0040, B:27:0x0073, B:21:0x0047, B:23:0x0062, B:38:0x00b7, B:39:0x00ba), top: B:51:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00ab A[Catch: all -> 0x00bb, TryCatch #0 {all -> 0x00bb, blocks: (B:13:0x002f, B:34:0x00a4, B:29:0x007b, B:31:0x0093, B:35:0x00ab, B:36:0x00ae, B:37:0x00af, B:18:0x0040, B:27:0x0073, B:21:0x0047, B:23:0x0062, B:38:0x00b7, B:39:0x00ba), top: B:51:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00af A[Catch: all -> 0x00bb, TryCatch #0 {all -> 0x00bb, blocks: (B:13:0x002f, B:34:0x00a4, B:29:0x007b, B:31:0x0093, B:35:0x00ab, B:36:0x00ae, B:37:0x00af, B:18:0x0040, B:27:0x0073, B:21:0x0047, B:23:0x0062, B:38:0x00b7, B:39:0x00ba), top: B:51:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:50:0x00de  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a1, code lost:
    
        if (r12 == r1) goto L33;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a1 -> B:34:0x00a4). Please report as a decompilation issue!!! */
    @Override // com.vuitton.android.presentation.push.NotificationsManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.push.NotificationsSDKManager.d(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.vuitton.android.presentation.push.NotificationsManager
    public final boolean e() {
        BatchInboxFetcher batchInboxFetcher = this.o;
        if (batchInboxFetcher == null) {
            Intrinsics.h("inboxFetcher");
            throw null;
        }
        List<BatchInboxNotificationContent> fetchedNotifications = batchInboxFetcher.getFetchedNotifications();
        fetchedNotifications.getClass();
        List<BatchInboxNotificationContent> list = fetchedNotifications;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (((BatchInboxNotificationContent) it.next()).isUnread()) {
                return this.m && this.n;
            }
        }
        return false;
    }

    @Override // com.vuitton.android.presentation.push.NotificationsManager
    public final void f(BaseActivity baseActivity) {
        if (!this.f51868k || Batch.isOptedOut(baseActivity)) {
            return;
        }
        Batch.onStart(baseActivity);
        Batch.Profile.identify(this.f51865h.b());
        r();
    }

    @Override // com.vuitton.android.presentation.push.NotificationsManager
    public final void g(BaseActivity baseActivity, Intent intent) {
        if (this.f51868k) {
            Batch.onNewIntent(baseActivity, intent);
            return;
        }
        String str = p;
        this.f51860a.d(str, fc.h("Batch SDK not yet initialized. You should call ", str, "::init first"), null);
    }

    @Override // com.vuitton.android.presentation.push.NotificationsManager
    public final Object h(String str) throws Throwable {
        Object failure;
        Object next;
        str.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            BatchInboxFetcher batchInboxFetcher = this.o;
            if (batchInboxFetcher == null) {
                Intrinsics.h("inboxFetcher");
                throw null;
            }
            List<BatchInboxNotificationContent> fetchedNotifications = batchInboxFetcher.getFetchedNotifications();
            fetchedNotifications.getClass();
            Iterator<T> it = fetchedNotifications.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((BatchInboxNotificationContent) next).getNotificationIdentifier(), str));
            BatchInboxNotificationContent batchInboxNotificationContent = (BatchInboxNotificationContent) next;
            if (batchInboxNotificationContent == null) {
                throw new NotificationException.NotificationNotFoundException();
            }
            BatchInboxFetcher batchInboxFetcher2 = this.o;
            if (batchInboxFetcher2 == null) {
                Intrinsics.h("inboxFetcher");
                throw null;
            }
            batchInboxFetcher2.markAsDeleted(batchInboxNotificationContent);
            failure = new Result(Unit.f71739a);
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.presentation.push.NotificationsManager
    public final Object i(String str, ContinuationImpl continuationImpl) {
        NotificationsSDKManager$setNotificationAsRead$1 notificationsSDKManager$setNotificationAsRead$1;
        Object failure;
        Object next;
        if (continuationImpl instanceof NotificationsSDKManager$setNotificationAsRead$1) {
            notificationsSDKManager$setNotificationAsRead$1 = (NotificationsSDKManager$setNotificationAsRead$1) continuationImpl;
            int i2 = notificationsSDKManager$setNotificationAsRead$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                notificationsSDKManager$setNotificationAsRead$1.d = i2 - Integer.MIN_VALUE;
            } else {
                notificationsSDKManager$setNotificationAsRead$1 = new NotificationsSDKManager$setNotificationAsRead$1(this, continuationImpl);
            }
        } else {
            notificationsSDKManager$setNotificationAsRead$1 = new NotificationsSDKManager$setNotificationAsRead$1(this, continuationImpl);
        }
        Object obj = notificationsSDKManager$setNotificationAsRead$1.f51879b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = notificationsSDKManager$setNotificationAsRead$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                BatchInboxFetcher batchInboxFetcher = this.o;
                if (batchInboxFetcher == null) {
                    Intrinsics.h("inboxFetcher");
                    throw null;
                }
                List<BatchInboxNotificationContent> fetchedNotifications = batchInboxFetcher.getFetchedNotifications();
                fetchedNotifications.getClass();
                Iterator<T> it = fetchedNotifications.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((BatchInboxNotificationContent) next).getNotificationIdentifier(), str));
                BatchInboxNotificationContent batchInboxNotificationContent = (BatchInboxNotificationContent) next;
                if (batchInboxNotificationContent == null) {
                    throw new NotificationException.NotificationNotFoundException();
                }
                BatchInboxFetcher batchInboxFetcher2 = this.o;
                if (batchInboxFetcher2 == null) {
                    Intrinsics.h("inboxFetcher");
                    throw null;
                }
                batchInboxFetcher2.markAsRead(batchInboxNotificationContent);
                LVEventSender lVEventSender = this.f51866i;
                AppEvent.RefreshUnreadNotifications refreshUnreadNotifications = AppEvent.RefreshUnreadNotifications.f43507a;
                notificationsSDKManager$setNotificationAsRead$1.d = 1;
                if (lVEventSender.a(refreshUnreadNotifications, notificationsSDKManager$setNotificationAsRead$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
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
        return ((Result) failure).f71708b;
    }

    @Override // com.vuitton.android.presentation.push.NotificationsManager
    public final void init() {
        Context context = this.f51861b;
        if (!(context instanceof Application)) {
            md.k("Context is not an Application");
            return;
        }
        Application application = (Application) context;
        application.registerActivityLifecycleCallbacks(new BatchActivityLifecycleHelper());
        Batch.Push.setSmallIconResourceId(R.drawable.ic_fa_notification);
        Batch.Push.setNotificationInterceptor(new NotificationInterceptor(this.f51860a));
        Typeface typefaceCreateFromAsset = Typeface.createFromAsset(application.getAssets(), "font/louisvuitton_light.otf");
        typefaceCreateFromAsset.getClass();
        Typeface typefaceCreateFromAsset2 = Typeface.createFromAsset(application.getAssets(), "font/louisvuitton_medium.otf");
        typefaceCreateFromAsset2.getClass();
        Batch.Messaging.setTypefaceOverride(typefaceCreateFromAsset, typefaceCreateFromAsset2);
        Batch.optIn(context);
        Batch.Messaging.setDoNotDisturbEnabled(true);
        this.f51868k = true;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
    
        if (r10 == r1) goto L34;
     */
    @Override // com.vuitton.android.presentation.push.NotificationsManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof com.vuitton.android.presentation.push.NotificationsSDKManager$initInboxFetcherIfNeeded$1
            if (r0 == 0) goto L13
            r0 = r10
            com.vuitton.android.presentation.push.NotificationsSDKManager$initInboxFetcherIfNeeded$1 r0 = (com.vuitton.android.presentation.push.NotificationsSDKManager$initInboxFetcherIfNeeded$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.presentation.push.NotificationsSDKManager$initInboxFetcherIfNeeded$1 r0 = new com.vuitton.android.presentation.push.NotificationsSDKManager$initInboxFetcherIfNeeded$1
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.f51875b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            android.content.Context r3 = r9.f51861b
            r4 = 3
            r5 = 2
            r6 = 0
            r7 = 1
            if (r2 == 0) goto L42
            if (r2 == r7) goto L3e
            if (r2 == r5) goto L3a
            if (r2 != r4) goto L34
            kotlin.ResultKt.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r10 = r10.f71708b
            goto L8f
        L34:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r6
        L3a:
            kotlin.ResultKt.b(r10)
            goto L84
        L3e:
            kotlin.ResultKt.b(r10)
            goto L65
        L42:
            kotlin.ResultKt.b(r10)
            boolean r10 = com.vuitton.android.presentation.utils.NotificationUtils.a(r3)
            r9.m = r10
            com.vuitton.android.domain.usecase.privacy.GetConsentForCustomizationUseCase r10 = r9.f51864f
            boolean r10 = r10.a()
            r9.n = r10
            com.vuitton.foundation.model.domain.model.sync.Feature r10 = com.vuitton.foundation.model.domain.model.sync.Feature.INBOX
            com.vuitton.foundation.model.domain.model.sync.Feature[] r10 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r10}
            r0.d = r7
            r2 = 0
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r8 = r9.d
            java.lang.Object r10 = r8.c(r10, r2, r0)
            if (r10 != r1) goto L65
            goto L8e
        L65:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto Lb6
            boolean r10 = r9.l
            if (r10 != 0) goto Lb6
            boolean r10 = r9.m
            if (r10 == 0) goto Lb6
            boolean r10 = r9.n
            if (r10 == 0) goto Lb6
            r0.d = r5
            com.vuitton.android.domain.usecase.account.GetProfileUseCase r10 = r9.f51863e
            java.lang.Object r10 = r10.a(r0)
            if (r10 != r1) goto L84
            goto L8e
        L84:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r10 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r10
            r0.d = r4
            java.lang.Object r10 = r10.c(r0)
            if (r10 != r1) goto L8f
        L8e:
            return r1
        L8f:
            kotlin.Result$Companion r0 = kotlin.Result.INSTANCE
            boolean r0 = r10 instanceof kotlin.Result.Failure
            if (r0 != 0) goto Lb6
            com.vuitton.foundation.model.domain.model.profile.Profile r10 = (com.vuitton.foundation.model.domain.model.profile.Profile) r10
            java.lang.String r0 = r10.l
            if (r0 != 0) goto L9c
            r0 = r6
        L9c:
            java.lang.String r10 = r10.m
            if (r10 != 0) goto La1
            goto La2
        La1:
            r6 = r10
        La2:
            if (r0 == 0) goto Lb6
            if (r6 == 0) goto Lb6
            com.batch.android.BatchInboxFetcher r10 = com.batch.android.Batch.Inbox.getFetcher(r3, r0, r6)
            r10.getClass()
            r9.o = r10
            r0 = 100
            r10.setMaxPageSize(r0)
            r9.l = r7
        Lb6:
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.push.NotificationsSDKManager.j(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.vuitton.android.presentation.push.NotificationsManager
    public final void k(boolean z, MainActivity mainActivity) {
        BatchMessage batchMessagePopPendingMessage;
        Batch.Messaging.setDoNotDisturbEnabled(z);
        if (z || mainActivity == null || (batchMessagePopPendingMessage = Batch.Messaging.popPendingMessage()) == null) {
            return;
        }
        Batch.Messaging.show(mainActivity, batchMessagePopPendingMessage);
    }

    @Override // com.vuitton.android.presentation.push.NotificationsManager
    public final void l() {
        Batch.Profile.identify(null);
        this.l = false;
    }

    @Override // com.vuitton.android.presentation.push.NotificationsManager
    public final void m(String str) {
        Batch.Profile.identify(str);
        BuildersKt.c(this.f51867j, null, null, new NotificationsSDKManager$setBatchIdentifier$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.push.NotificationsManager
    public final void n() {
        this.m = NotificationUtils.a(this.f51861b);
        this.n = this.f51864f.a();
    }

    @Override // com.vuitton.android.presentation.push.NotificationsManager
    public final List o() {
        BatchInboxFetcher batchInboxFetcher = this.o;
        if (batchInboxFetcher == null) {
            Intrinsics.h("inboxFetcher");
            throw null;
        }
        List<BatchInboxNotificationContent> fetchedNotifications = batchInboxFetcher.getFetchedNotifications();
        fetchedNotifications.getClass();
        return fetchedNotifications;
    }

    @Override // com.vuitton.android.presentation.push.NotificationsManager
    public final void p(Activity activity, boolean z) {
        activity.getClass();
        boolean z2 = this.f51868k;
        if (z2 || z) {
            if (!z2 && z) {
                init();
            }
            this.f51860a.getClass();
            if (z) {
                Batch.optIn(this.f51861b);
                Batch.onStart(activity);
                r();
            } else if (z) {
                v40.g();
            } else {
                b();
            }
        }
    }

    @Override // com.vuitton.android.presentation.push.NotificationsManager
    /* JADX INFO: renamed from: q, reason: from getter */
    public final boolean getF51868k() {
        return this.f51868k;
    }

    public final void r() {
        if (this.f51868k) {
            NotificationsPreferencesRepository notificationsPreferencesRepository = this.g;
            GetNotificationsPreferencesUseCase getNotificationsPreferencesUseCase = new GetNotificationsPreferencesUseCase(notificationsPreferencesRepository);
            SaveNotificationsInitialDefaultPreferencesUseCase saveNotificationsInitialDefaultPreferencesUseCase = new SaveNotificationsInitialDefaultPreferencesUseCase(notificationsPreferencesRepository);
            Map mapC = getNotificationsPreferencesUseCase.f49103a.c();
            boolean zIsEmpty = mapC.isEmpty();
            NotificationsPreferencesTracker notificationsPreferencesTracker = this.f51862c;
            if (!zIsEmpty) {
                notificationsPreferencesTracker.getClass();
                NotificationsPreferencesTracker.a(mapC);
                return;
            }
            NotificationPreferenceType notificationPreferenceType = NotificationPreferenceType.BRAND_COMMUNICATION;
            Boolean bool = Boolean.TRUE;
            saveNotificationsInitialDefaultPreferencesUseCase.f49104a.a(MapsKt.i(new Pair(notificationPreferenceType, bool), new Pair(NotificationPreferenceType.PRODUCT_ORIENTED_COMMUNICATION, bool), new Pair(NotificationPreferenceType.NOTIFY_ME, bool)));
            notificationsPreferencesTracker.getClass();
            BatchProfileAttributeEditor batchProfileAttributeEditorEditor = Batch.Profile.editor();
            batchProfileAttributeEditorEditor.addToArray("thematic_optins", "brand_communications");
            batchProfileAttributeEditorEditor.addToArray("thematic_optins", "product_oriented_communication");
            batchProfileAttributeEditorEditor.addToArray("thematic_optins", "notify_me");
            batchProfileAttributeEditorEditor.save();
        }
    }
}
