package com.vuitton.android.data.repository;

import android.content.Context;
import android.net.http.HttpResponseCache;
import com.linkplay.network.SecurityConstants;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.PerfectLib;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.provider.feature.FeatureCheckerProvider;
import com.vuitton.android.domain.repository.PerfectCorpRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.locale.DispatchLocale;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageTagBcp47;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageTagWithUnderscore;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LocalePartsKt;
import dagger.hilt.android.qualifiers.ApplicationContext;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\fB+\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;", "Lcom/vuitton/android/domain/repository/PerfectCorpRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;", "featureCheckerProvider", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PerfectCorpRepositoryImpl implements PerfectCorpRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f47858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BuildConfigProvider f47859c;
    public final FeatureCheckerProvider d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public PerfectCorpRepositoryImpl(Logger logger, @ApplicationContext Context context, BuildConfigProvider buildConfigProvider, FeatureCheckerProvider featureCheckerProvider) {
        logger.getClass();
        context.getClass();
        buildConfigProvider.getClass();
        featureCheckerProvider.getClass();
        this.f47857a = logger;
        this.f47858b = context;
        this.f47859c = buildConfigProvider;
        this.d = featureCheckerProvider;
    }

    @Override // com.vuitton.android.domain.repository.PerfectCorpRepository
    public final void a(final InAppDispatch inAppDispatch) {
        Logger logger = this.f47857a;
        Context context = this.f47858b;
        inAppDispatch.getClass();
        try {
            HttpResponseCache.install(new File(context.getCacheDir(), SecurityConstants.SECURITY_NONE), 52428800L);
            logger.getClass();
        } catch (IOException e2) {
            logger.c("PerfectCorpRepositoryImpl", "[installHttpCache] failed", e2);
        }
        PerfectLib.init(context, Configuration.builder().setModelPath(PerfectLib.ModelPath.assets("model")).setPreviewMode(true).setMappingMode(true).build(), new PerfectLib.InitialCallback() { // from class: com.vuitton.android.data.repository.PerfectCorpRepositoryImpl$init$1
            @Override // com.perfectcorp.perfectlib.PerfectLib.InitialCallback
            public final void onFailure(Throwable th, Map map) {
                th.getClass();
                map.getClass();
                this.f47860a.f47857a.c("PerfectCorpRepositoryImpl", "[PerfectLib] initialization failed", th);
            }

            @Override // com.perfectcorp.perfectlib.PerfectLib.InitialCallback
            public final void onInitialized(Set set, Map map) throws Throwable {
                this.f47860a.f47857a.getClass();
                InAppDispatch inAppDispatch2 = inAppDispatch;
                DispatchLocale dispatchLocale = inAppDispatch2.f67477b;
                String strB = LocalePartsKt.b("-", dispatchLocale.f67491a, dispatchLocale.f67492b, dispatchLocale.f67493c);
                LanguageTagBcp47.f67506b.getClass();
                String strB2 = LanguageTagBcp47.Companion.b(strB);
                LanguageTagWithUnderscore.f67508b.getClass();
                PerfectLib.setLocaleCode(LanguageTagWithUnderscore.Companion.b(strB2));
                PerfectLib.setCountryCode(inAppDispatch2.f67483j);
            }
        });
        this.f47859c.getClass();
    }
}
