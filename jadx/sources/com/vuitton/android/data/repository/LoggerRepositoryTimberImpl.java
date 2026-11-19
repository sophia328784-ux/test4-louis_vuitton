package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.repository.AnalyticsWrapperRepository;
import com.vuitton.android.domain.repository.LoggerRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import dagger.Lazy;
import defpackage.k60;
import defpackage.md;
import java.util.ArrayList;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import timber.log.Timber;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000bB'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl;", "Lcom/vuitton/android/domain/repository/LoggerRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Ldagger/Lazy;", "Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;", "analyticsWrapperRepository", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Ldagger/Lazy;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LoggerRepositoryTimberImpl implements LoggerRepository {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lazy f47788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BuildConfigProvider f47789c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/LoggerRepositoryTimberImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public LoggerRepositoryTimberImpl(Logger logger, Lazy<AnalyticsWrapperRepository> lazy, BuildConfigProvider buildConfigProvider) {
        logger.getClass();
        lazy.getClass();
        buildConfigProvider.getClass();
        this.f47787a = logger;
        this.f47788b = lazy;
        this.f47789c = buildConfigProvider;
    }

    @Override // com.vuitton.android.domain.repository.LoggerRepository
    public final void a(InAppDispatch inAppDispatch) {
        inAppDispatch.getClass();
        this.f47789c.getClass();
        Object obj = this.f47788b.get();
        obj.getClass();
        k60 k60Var = new k60((AnalyticsWrapperRepository) obj, inAppDispatch, 9);
        Timber.Forest forest = Timber.f80066a;
        CrashReportingTree crashReportingTree = new CrashReportingTree(k60Var);
        forest.getClass();
        if (crashReportingTree != forest) {
            ArrayList arrayList = Timber.f80067b;
            synchronized (arrayList) {
                arrayList.add(crashReportingTree);
                Object[] array = arrayList.toArray(new Timber.Tree[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                Timber.f80068c = (Timber.Tree[]) array;
            }
        } else {
            md.n("Cannot plant Timber into itself.");
        }
        this.f47787a.getClass();
    }
}
