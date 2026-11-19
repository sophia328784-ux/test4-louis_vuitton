package com.vuitton.android.data.monitoring;

import android.app.Application;
import android.content.Context;
import com.networkbench.agent.impl.NBSAppAgent;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.repository.PrivacyRelatedToolRepository;
import com.vuitton.android.domain.repository.PrivacyRelatedToolRequirements;
import com.vuitton.foundation.secrets.SecretKey;
import com.vuitton.foundation.secrets.SecretsProvider;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB#\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/monitoring/TingyunRepositoryImpl;", "Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRepository;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/foundation/secrets/SecretsProvider;", "secretsProvider", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "<init>", "(Landroid/content/Context;Lcom/vuitton/foundation/secrets/SecretsProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TingyunRepositoryImpl implements PrivacyRelatedToolRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f46980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SecretsProvider f46981b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BuildConfigProvider f46982c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/monitoring/TingyunRepositoryImpl$Companion;", "", "", "START_OPTION", "I", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public TingyunRepositoryImpl(@ApplicationContext Context context, SecretsProvider secretsProvider, BuildConfigProvider buildConfigProvider) {
        context.getClass();
        secretsProvider.getClass();
        buildConfigProvider.getClass();
        this.f46980a = context;
        this.f46981b = secretsProvider;
        this.f46982c = buildConfigProvider;
    }

    @Override // com.vuitton.android.domain.repository.PrivacyRelatedToolRepository
    public final void a(PrivacyRelatedToolRequirements privacyRelatedToolRequirements) {
        Context context = this.f46980a;
        if (!(context instanceof Application)) {
            md.n("Failed requirement.");
            return;
        }
        this.f46982c.getClass();
        SecretKey secretKey = SecretKey.TINGYUN_PROD_APP_KEY;
        SecretsProvider secretsProvider = this.f46981b;
        NBSAppAgent.setLicenseKey(secretsProvider.a(secretKey)).setRedirectHost(secretsProvider.a(SecretKey.TINGYUN_HOST)).isHookWebChromeClient(true).setStartOption(7).start(context);
    }
}
