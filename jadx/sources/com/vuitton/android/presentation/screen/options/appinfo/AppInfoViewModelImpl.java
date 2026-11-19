package com.vuitton.android.presentation.screen.options.appinfo;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.presentation.screen.options.appinfo.models.AppInfo;
import com.vuitton.android.presentation.screen.options.appinfo.models.AppInfoViewState;
import com.vuitton.foundation.logger.Logger;
import java.util.ArrayList;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u000bB!\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModel;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Landroid/app/Application;", "application", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Landroid/app/Application;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppInfoViewModelImpl extends AndroidViewModel implements AppInfoViewModel {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f59739f = new Companion(null);
    public static final String g = "AppInfoViewModelImpl";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f59740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AuthTokenRepository f59741c;
    public final MutableStateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StateFlow f59742e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public AppInfoViewModelImpl(Logger logger, Application application, AuthTokenRepository authTokenRepository) {
        super(application);
        logger.getClass();
        application.getClass();
        authTokenRepository.getClass();
        this.f59740b = logger;
        this.f59741c = authTokenRepository;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(new AppInfoViewState(null, 1, null));
        this.d = mutableStateFlowA;
        this.f59742e = mutableStateFlowA;
        BuildersKt.c(ViewModelKt.a(this), null, null, new AppInfoViewModelImpl$buildAppInfoScreenContent$1(this, null), 3);
    }

    public static final void yc(AppInfoViewModelImpl appInfoViewModelImpl, AppInfo appInfo) {
        MutableStateFlow mutableStateFlow = appInfoViewModelImpl.d;
        AppInfoViewState appInfoViewState = (AppInfoViewState) mutableStateFlow.getValue();
        ArrayList arrayListX = CollectionsKt.X(appInfo, ((AppInfoViewState) mutableStateFlow.getValue()).f59752a);
        appInfoViewState.getClass();
        mutableStateFlow.setValue(new AppInfoViewState(arrayListX));
    }

    @Override // com.vuitton.android.presentation.screen.options.appinfo.AppInfoViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF59742e() {
        return this.f59742e;
    }
}
