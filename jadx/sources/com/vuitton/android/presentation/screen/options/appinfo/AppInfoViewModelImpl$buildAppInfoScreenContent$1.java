package com.vuitton.android.presentation.screen.options.appinfo;

import com.batch.android.Batch;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.messaging.FirebaseMessaging;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.presentation.screen.options.appinfo.AppInfoViewModelImpl;
import com.vuitton.android.presentation.screen.options.appinfo.models.AppInfo;
import com.vuitton.foundation.logger.Logger;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.appinfo.AppInfoViewModelImpl$buildAppInfoScreenContent$1", f = "AppInfoViewModelImpl.kt", l = {79}, m = "invokeSuspend", v = 2)
final class AppInfoViewModelImpl$buildAppInfoScreenContent$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppInfoViewModelImpl f59744c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppInfoViewModelImpl$buildAppInfoScreenContent$1(AppInfoViewModelImpl appInfoViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f59744c = appInfoViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AppInfoViewModelImpl$buildAppInfoScreenContent$1(this.f59744c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AppInfoViewModelImpl$buildAppInfoScreenContent$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objC;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59743b;
        final int i3 = 1;
        final AppInfoViewModelImpl appInfoViewModelImpl = this.f59744c;
        if (i2 == 0) {
            ResultKt.b(obj);
            appInfoViewModelImpl.f13405a.getClass();
            if (FirebaseApp.c().size() > 0) {
                Object obj2 = FirebaseInstallations.m;
                final int i4 = 0;
                ((FirebaseInstallations) FirebaseApp.d().b(FirebaseInstallationsApi.class)).getId().addOnCompleteListener(new OnCompleteListener() { // from class: e7
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        int i5 = i4;
                        AppInfoViewModelImpl appInfoViewModelImpl2 = appInfoViewModelImpl;
                        switch (i5) {
                            case 0:
                                try {
                                    Object result = task.getResult();
                                    result.getClass();
                                    AppInfoViewModelImpl.yc(appInfoViewModelImpl2, new AppInfo("Firebase device ID", (String) result));
                                } catch (RuntimeExecutionException e2) {
                                    Logger logger = appInfoViewModelImpl2.f59740b;
                                    AppInfoViewModelImpl.f59739f.getClass();
                                    logger.c(AppInfoViewModelImpl.g, e2.getMessage(), e2);
                                }
                                break;
                            default:
                                try {
                                    Object result2 = task.getResult();
                                    result2.getClass();
                                    AppInfoViewModelImpl.yc(appInfoViewModelImpl2, new AppInfo("FCM Token", (String) result2));
                                } catch (RuntimeExecutionException e3) {
                                    Logger logger2 = appInfoViewModelImpl2.f59740b;
                                    AppInfoViewModelImpl.f59739f.getClass();
                                    logger2.c(AppInfoViewModelImpl.g, e3.getMessage(), e3);
                                    return;
                                }
                                break;
                        }
                    }
                });
                FirebaseMessaging.c().e().addOnCompleteListener(new OnCompleteListener() { // from class: e7
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        int i5 = i3;
                        AppInfoViewModelImpl appInfoViewModelImpl2 = appInfoViewModelImpl;
                        switch (i5) {
                            case 0:
                                try {
                                    Object result = task.getResult();
                                    result.getClass();
                                    AppInfoViewModelImpl.yc(appInfoViewModelImpl2, new AppInfo("Firebase device ID", (String) result));
                                } catch (RuntimeExecutionException e2) {
                                    Logger logger = appInfoViewModelImpl2.f59740b;
                                    AppInfoViewModelImpl.f59739f.getClass();
                                    logger.c(AppInfoViewModelImpl.g, e2.getMessage(), e2);
                                }
                                break;
                            default:
                                try {
                                    Object result2 = task.getResult();
                                    result2.getClass();
                                    AppInfoViewModelImpl.yc(appInfoViewModelImpl2, new AppInfo("FCM Token", (String) result2));
                                } catch (RuntimeExecutionException e3) {
                                    Logger logger2 = appInfoViewModelImpl2.f59740b;
                                    AppInfoViewModelImpl.f59739f.getClass();
                                    logger2.c(AppInfoViewModelImpl.g, e3.getMessage(), e3);
                                    return;
                                }
                                break;
                        }
                    }
                });
            }
            String installationID = Batch.User.getInstallationID();
            if (installationID == null || installationID.length() == 0) {
                installationID = null;
            }
            if (installationID != null) {
                AppInfoViewModelImpl.yc(appInfoViewModelImpl, new AppInfo("Batch installation ID", installationID));
            }
            AuthTokenRepository authTokenRepository = appInfoViewModelImpl.f59741c;
            this.f59743b = 1;
            objC = authTokenRepository.c(this);
            if (objC == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objC = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        String str = (String) (objC instanceof Result.Failure ? null : objC);
        if (str != null) {
            AppInfoViewModelImpl.yc(appInfoViewModelImpl, new AppInfo("Access Token", str));
        }
        return Unit.f71739a;
    }
}
