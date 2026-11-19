package com.vuitton.android.data.environment;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.config.EnvironmentDataSource;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.foundation.model.domain.model.config.Region;
import com.vuitton.foundation.model.domain.model.environment.Environment;
import com.vuitton.foundation.model.domain.model.environment.MulesoftFeature;
import com.vuitton.foundation.secrets.SecretKey;
import com.vuitton.foundation.secrets.SecretsProvider;
import dagger.Lazy;
import defpackage.fc;
import defpackage.tr;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;", "environmentDataSource", "Lcom/vuitton/foundation/secrets/SecretsProvider;", "secretsProvider", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "<init>", "(Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;Lcom/vuitton/foundation/secrets/SecretsProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class EnvironmentProviderImpl implements EnvironmentProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnvironmentDataSource f46957a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SecretsProvider f46958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BuildConfigProvider f46959c;
    public Environment d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f46960e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/environment/EnvironmentProviderImpl$Companion;", "", "", "ENV_NRT_SUBDOMAIN_SUFFIX", "Ljava/lang/String;", "ENV_DEV_SUBDOMAIN_SUFFIX", "ENV_PRP_SUBDOMAIN_SUFFIX", "ENV_HIDDEN_PROD_SUBDOMAIN_SUFFIX", "ENV_PROD_SUBDOMAIN_SUFFIX", "ENV_I1_SUBDOMAIN_SUFFIX", "ENV_STG_1_SUBDOMAIN_SUFFIX", "ENV_STG_2_SUBDOMAIN_SUFFIX", "ENV_STG_3_SUBDOMAIN_SUFFIX", "BFF_DEV_API_BASE_URL", "SENSORS_DATA_URL", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f46961a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f46962b;

        static {
            int[] iArr = new int[MulesoftFeature.values().length];
            try {
                iArr[MulesoftFeature.CARESERVICES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f46961a = iArr;
            int[] iArr2 = new int[Region.values().length];
            try {
                iArr2[Region.US.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[Region.EU.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
            f46962b = iArr2;
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public EnvironmentProviderImpl(EnvironmentDataSource environmentDataSource, SecretsProvider secretsProvider, BuildConfigProvider buildConfigProvider) {
        environmentDataSource.getClass();
        secretsProvider.getClass();
        buildConfigProvider.getClass();
        this.f46957a = environmentDataSource;
        this.f46958b = secretsProvider;
        this.f46959c = buildConfigProvider;
        this.f46960e = false;
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String a(MulesoftFeature mulesoftFeature) {
        mulesoftFeature.getClass();
        if (WhenMappings.f46961a[mulesoftFeature.ordinal()] != 1) {
            v40.g();
            return null;
        }
        boolean zN = n();
        SecretsProvider secretsProvider = this.f46958b;
        return (zN || s()) ? secretsProvider.a(SecretKey.MULESOFT_CARESERVICES_CLIENT_SECRET_INTEGRATION) : secretsProvider.a(SecretKey.MULESOFT_CARESERVICES_CLIENT_SECRET_PROD);
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String b() {
        return tr.h(r().concat("/api/"), ArraysKt.Z(new Environment[]{Environment.PreviewDev.d, Environment.PreviewPrp.d, Environment.PreviewProd.d, Environment.HiddenProdPreview.d}).contains(d()) ? "preview/" : "", "publication/");
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String c() {
        boolean z = this.f46960e;
        SecretsProvider secretsProvider = this.f46958b;
        return z ? secretsProvider.a(SecretKey.GOOGLE_SIGN_IN_CLIENT_ID_PREPROD) : secretsProvider.a(SecretKey.GOOGLE_SIGN_IN_CLIENT_ID_PROD);
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final Environment d() {
        if (!this.f46960e) {
            return Environment.Prod.d;
        }
        if (this.d == null) {
            EnvironmentDataSource environmentDataSource = this.f46957a;
            environmentDataSource.getClass();
            Lazy lazy = environmentDataSource.f44051a;
            Environment.Companion companion = Environment.f67568b;
            Environment environmentA = null;
            String string = ((SharedPreferences) lazy.get()).getString("environment", null);
            if (string == null) {
                string = "";
            }
            companion.getClass();
            Environment environmentA2 = Environment.Companion.a(string);
            if (environmentA2 == null) {
                try {
                    this.f46959c.getClass();
                    environmentA = Environment.Companion.a("nrt");
                } catch (Exception unused) {
                }
                environmentA2 = environmentA == null ? Environment.Preprod.d : environmentA;
                if (environmentA2 != null) {
                    Object obj = lazy.get();
                    obj.getClass();
                    SharedPreferences.Editor editorEdit = ((SharedPreferences) obj).edit();
                    editorEdit.putString("environment", environmentA2.f67570a);
                    editorEdit.commit();
                }
            }
            this.d = environmentA2;
        }
        Environment environment = this.d;
        return environment == null ? Environment.Preprod.d : environment;
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String e() {
        return r().concat("/api/").concat("user/");
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String f() {
        boolean z = this.f46960e;
        SecretsProvider secretsProvider = this.f46958b;
        return z ? secretsProvider.a(SecretKey.BATCH_API_KEY_PREPROD) : secretsProvider.a(SecretKey.BATCH_API_KEY_PROD);
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String g() {
        String string = ((SharedPreferences) this.f46957a.f44051a.get()).getString("ephemeral_env_value", null);
        return string == null ? "" : string;
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String h() {
        boolean z = this.f46960e;
        SecretsProvider secretsProvider = this.f46958b;
        return z ? secretsProvider.a(SecretKey.LINE_CHANNEL_ID_PREPROD) : secretsProvider.a(SecretKey.LINE_CHANNEL_ID_PROD);
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String i() {
        return ArraysKt.Z(new Environment[]{Environment.PreviewProd.d, Environment.HiddenProd.d, Environment.HiddenProdPreview.d, Environment.Prod.d}).contains(d()) ? "https://pass.louisvuitton.com" : "https://pass-prp.louisvuitton.com";
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String j() {
        return ArraysKt.Z(new Environment[]{Environment.PreviewProd.d, Environment.HiddenProd.d, Environment.HiddenProdPreview.d, Environment.Prod.d}).contains(d()) ? "lvpass://" : "lvpassprp://";
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String k() {
        boolean z = this.f46960e;
        SecretsProvider secretsProvider = this.f46958b;
        return z ? secretsProvider.a(SecretKey.KAKAO_NATIVE_APP_KEY_PREPROD) : secretsProvider.a(SecretKey.KAKAO_NATIVE_APP_KEY_PROD);
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String l(Region region) {
        region.getClass();
        boolean z = this.f46960e;
        SecretsProvider secretsProvider = this.f46958b;
        if (z) {
            int i2 = WhenMappings.f46962b[region.ordinal()];
            if (i2 == 1) {
                return secretsProvider.a(SecretKey.DY_API_KEY_US_PREPROD);
            }
            if (i2 == 2) {
                return secretsProvider.a(SecretKey.DY_API_KEY_EU_PREPROD);
            }
            v40.g();
            return null;
        }
        int i3 = WhenMappings.f46962b[region.ordinal()];
        if (i3 == 1) {
            return secretsProvider.a(SecretKey.DY_API_KEY_US_PROD);
        }
        if (i3 == 2) {
            return secretsProvider.a(SecretKey.DY_API_KEY_EU_PROD);
        }
        v40.g();
        return null;
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String m() {
        Environment environmentD = d();
        if (Intrinsics.c(environmentD, Environment.Preprod.d)) {
            return "-prp";
        }
        if (Intrinsics.c(environmentD, Environment.I1.d)) {
            return "-i1";
        }
        if (Intrinsics.c(environmentD, Environment.Staging1.d)) {
            return "-stg-1";
        }
        if (Intrinsics.c(environmentD, Environment.Staging2.d)) {
            return "-stg-2";
        }
        if (Intrinsics.c(environmentD, Environment.Staging3.d)) {
            return "-stg-3";
        }
        if (Intrinsics.c(environmentD, Environment.Dev.d) || (environmentD instanceof Environment.DevEphemeral) || Intrinsics.c(environmentD, Environment.PreviewDev.d)) {
            return "-dev";
        }
        if (Intrinsics.c(environmentD, Environment.PreviewPrp.d)) {
            return "-prp";
        }
        if (Intrinsics.c(environmentD, Environment.Nrt.d)) {
            return "-nrt";
        }
        if (Intrinsics.c(environmentD, Environment.PreviewProd.d) || Intrinsics.c(environmentD, Environment.Prod.d)) {
            return "";
        }
        if (Intrinsics.c(environmentD, Environment.HiddenProd.d) || Intrinsics.c(environmentD, Environment.HiddenProdPreview.d)) {
            return "-hprod";
        }
        v40.g();
        return null;
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final boolean n() {
        return ArraysKt.Z(new Environment[]{Environment.Preprod.d, Environment.PreviewPrp.d, Environment.Nrt.d, Environment.Staging1.d, Environment.Staging2.d, Environment.Staging3.d}).contains(d());
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String o() {
        return tr.h(r().concat("/api/"), ArraysKt.Z(new Environment[]{Environment.PreviewDev.d, Environment.PreviewPrp.d, Environment.PreviewProd.d, Environment.HiddenProdPreview.d}).contains(d()) ? "preview/" : "", "catalog/");
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String p(MulesoftFeature mulesoftFeature) {
        mulesoftFeature.getClass();
        if (WhenMappings.f46961a[mulesoftFeature.ordinal()] != 1) {
            v40.g();
            return null;
        }
        boolean zN = n();
        SecretsProvider secretsProvider = this.f46958b;
        return (zN || s()) ? secretsProvider.a(SecretKey.MULESOFT_CARESERVICES_CLIENT_ID_PREPROD) : secretsProvider.a(SecretKey.MULESOFT_CARESERVICES_AUTH_CLIENT_ID);
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String q() {
        return this.f46960e ? "https://clienteling-data-prp.lvcampaign.com/sa?project=AppWeb" : "https://clienteling-data.lvcampaign.com/sa?project=AppWeb";
    }

    @Override // com.vuitton.android.domain.provider.environment.EnvironmentProvider
    public final String r() {
        return fc.h("https://pass-api", m(), ".louisvuitton.com");
    }

    public final boolean s() {
        return ArraysKt.Z(new Environment[]{Environment.I1.d, Environment.Dev.d, Environment.PreviewDev.d}).contains(d()) || (d() instanceof Environment.DevEphemeral);
    }
}
