package com.vuitton.android.data.monitoring;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Process;
import com.dynatrace.agent.OneAgentConfiguration;
import com.dynatrace.agent.common.InstrumentationFlavor;
import com.dynatrace.android.agent.AdkSettings;
import com.dynatrace.android.agent.Core;
import com.dynatrace.android.agent.Dynatrace;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.TimeLineProvider;
import com.dynatrace.android.agent.conf.AgentMode;
import com.dynatrace.android.agent.conf.Configuration;
import com.dynatrace.android.agent.conf.DataCollectionLevel;
import com.dynatrace.android.agent.conf.DynatraceConfigurationBuilder;
import com.dynatrace.android.agent.conf.PrivacyRules;
import com.dynatrace.android.agent.conf.UserPrivacyOptions;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.mixed.AgentServiceLocatorImpl;
import com.dynatrace.android.agent.mixed.SecondGenServiceLocatorImpl;
import com.dynatrace.android.agent.mixed.TimeProviderFactory;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.lifecycle.ActivityLifecycleMonitor;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.repository.PrivacyRelatedToolRepository;
import com.vuitton.android.domain.repository.PrivacyRelatedToolRequirements;
import com.vuitton.foundation.secrets.SecretKey;
import com.vuitton.foundation.secrets.SecretsProvider;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.md;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.inject.Inject;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B#\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/monitoring/DynatraceRepositoryImpl;", "Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRepository;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "Lcom/vuitton/foundation/secrets/SecretsProvider;", "secretsProvider", "<init>", "(Landroid/content/Context;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Lcom/vuitton/foundation/secrets/SecretsProvider;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DynatraceRepositoryImpl implements PrivacyRelatedToolRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f46977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BuildConfigProvider f46978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SecretsProvider f46979c;

    @Inject
    public DynatraceRepositoryImpl(@ApplicationContext Context context, BuildConfigProvider buildConfigProvider, SecretsProvider secretsProvider) {
        context.getClass();
        buildConfigProvider.getClass();
        secretsProvider.getClass();
        this.f46977a = context;
        this.f46978b = buildConfigProvider;
        this.f46979c = secretsProvider;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004a  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c3  */
    @Override // com.vuitton.android.domain.repository.PrivacyRelatedToolRepository
    public final void a(PrivacyRelatedToolRequirements privacyRelatedToolRequirements) {
        Configuration configuration;
        boolean z;
        String string;
        String strTrim;
        SecretsProvider secretsProvider = this.f46979c;
        Context context = this.f46977a;
        if (!(context instanceof Application)) {
            md.n("Failed requirement.");
            return;
        }
        this.f46978b.getClass();
        Application application = (Application) context;
        DynatraceConfigurationBuilder dynatraceConfigurationBuilder = new DynatraceConfigurationBuilder(secretsProvider.a(SecretKey.DYNATRACE_APP_ID_PROD), secretsProvider.a(SecretKey.DYNATRACE_BEACON_URL));
        dynatraceConfigurationBuilder.f27356k = true;
        AgentMode agentMode = dynatraceConfigurationBuilder.f27348a;
        if (agentMode != AgentMode.APP_MON) {
            dynatraceConfigurationBuilder.l = true;
        }
        InstrumentationFlavor instrumentationFlavor = dynatraceConfigurationBuilder.t;
        String str = dynatraceConfigurationBuilder.f27350c;
        if (str == null || agentMode == null) {
            configuration = null;
        } else {
            String strTrim2 = str.trim();
            if (strTrim2.length() <= 0) {
                strTrim2 = null;
            }
            if (strTrim2 == null) {
                string = null;
            } else {
                Matcher matcher = Pattern.compile("^(https?://)?([^\\s/$.?#](?::?[^\\s?]*\\@)?[^\\s/:?]*(?::[\\d]+)?)(?:/|$)([^\\s?]*)").matcher(strTrim2);
                matcher.find();
                if (matcher.matches()) {
                    String strGroup = matcher.group(1);
                    String strGroup2 = matcher.group(2);
                    String strGroup3 = matcher.group(3);
                    if (strGroup2 == null || strGroup2.isEmpty() || strGroup3 == null || strGroup3.isEmpty()) {
                        string = null;
                    } else {
                        StringBuilder sb = new StringBuilder();
                        if (strGroup == null) {
                            strGroup = "https://";
                        }
                        sb.append(strGroup);
                        sb.append(strGroup2);
                        if (!strGroup3.isEmpty()) {
                            sb.append("/");
                            if (strGroup3.endsWith("/")) {
                                sb.append((CharSequence) strGroup3, 0, strGroup3.length() - 1);
                            } else {
                                sb.append(strGroup3);
                            }
                        }
                        string = sb.toString();
                    }
                } else {
                    string = null;
                }
            }
            if (string != null) {
                String str2 = dynatraceConfigurationBuilder.f27349b;
                if (str2 != null) {
                    strTrim = str2.trim();
                    if (strTrim.length() <= 0) {
                        strTrim = null;
                    }
                } else {
                    strTrim = null;
                }
                if (strTrim == null) {
                    configuration = null;
                } else {
                    String strK = Utility.k(250, strTrim);
                    String strReplaceAll = Utility.m(strK).replaceAll("_", "%5F");
                    if (instrumentationFlavor == InstrumentationFlavor.PLAIN) {
                        instrumentationFlavor = InstrumentationFlavor.JETPACK_COMPOSE;
                    }
                    configuration = new Configuration(strK, strReplaceAll, string, dynatraceConfigurationBuilder.f27348a, dynatraceConfigurationBuilder.d, dynatraceConfigurationBuilder.n, dynatraceConfigurationBuilder.o, dynatraceConfigurationBuilder.p, dynatraceConfigurationBuilder.q, dynatraceConfigurationBuilder.m, dynatraceConfigurationBuilder.f27351e, dynatraceConfigurationBuilder.f27352f, dynatraceConfigurationBuilder.g, dynatraceConfigurationBuilder.r, dynatraceConfigurationBuilder.f27353h, dynatraceConfigurationBuilder.f27354i, dynatraceConfigurationBuilder.s, dynatraceConfigurationBuilder.f27355j, dynatraceConfigurationBuilder.f27356k, dynatraceConfigurationBuilder.l, instrumentationFlavor, dynatraceConfigurationBuilder.u, dynatraceConfigurationBuilder.v);
                }
            } else {
                configuration = null;
            }
        }
        Object obj = Dynatrace.f27305a;
        if (configuration != null) {
            AtomicInteger atomicInteger = Utility.f27585a;
            if (!Process.isIsolated()) {
                String processName = Application.getProcessName();
                if (processName == null ? true : processName.equals(application.getApplicationInfo().processName)) {
                    synchronized (Dynatrace.f27305a) {
                        AtomicBoolean atomicBoolean = Dynatrace.f27306b;
                        if (!atomicBoolean.get()) {
                            try {
                                OneAgentConfiguration oneAgentConfigurationA = configuration.a();
                                new TimeProviderFactory();
                                Core.j(application, configuration, new AgentServiceLocatorImpl(oneAgentConfigurationA, TimeProviderFactory.a(), application, null, new SecondGenServiceLocatorImpl(application)));
                                atomicBoolean.set(true);
                            } catch (Exception unused) {
                                boolean z2 = Global.f27307a;
                            }
                        }
                    }
                }
            }
        }
        UserPrivacyOptions.Builder builder = new UserPrivacyOptions.Builder();
        builder.a(DataCollectionLevel.USER_BEHAVIOR);
        builder.f27440b = true;
        if (builder.d == null) {
            builder.f27441c = true;
        }
        UserPrivacyOptions userPrivacyOptions = new UserPrivacyOptions(builder);
        AtomicBoolean atomicBoolean2 = Global.f27308b;
        if (atomicBoolean2.get()) {
            AdkSettings adkSettings = AdkSettings.f27249k;
            if (adkSettings.f27254f.s) {
                boolean z3 = userPrivacyOptions.f27437b;
                if (!z3 && (z = userPrivacyOptions.f27438c)) {
                    UserPrivacyOptions.Builder builder2 = new UserPrivacyOptions.Builder();
                    builder2.f27439a = userPrivacyOptions.f27436a;
                    builder2.f27440b = z3;
                    builder2.f27441c = z;
                    Boolean bool = userPrivacyOptions.d;
                    builder2.d = bool;
                    if (bool == null) {
                        builder2.f27441c = false;
                    }
                    userPrivacyOptions = new UserPrivacyOptions(builder2);
                    boolean z4 = Global.f27307a;
                }
                if (userPrivacyOptions.equals(!atomicBoolean2.get() ? PrivacyRules.f27382b.f27384a : Session.a().f27481i.f27384a)) {
                    return;
                }
                SharedPreferences.Editor editorPutBoolean = adkSettings.d.f27380a.edit().putBoolean("DTXOptInCrashes", userPrivacyOptions.f27437b).putString("DTXDataCollectionLevel", userPrivacyOptions.f27436a.name()).putBoolean("DTXCrashReplayOptedIn", userPrivacyOptions.f27438c);
                Boolean bool2 = userPrivacyOptions.d;
                if (bool2 == null) {
                    editorPutBoolean.putInt("DTXCScreenRecordOptedIn", -1);
                } else {
                    editorPutBoolean.putInt("DTXCScreenRecordOptedIn", bool2.booleanValue() ? 1 : 0);
                }
                editorPutBoolean.apply();
                PrivacyRules privacyRules = new PrivacyRules(userPrivacyOptions);
                ActivityLifecycleMonitor activityLifecycleMonitor = Core.f27280a;
                Core.i(true, privacyRules, TimeLineProvider.f27311c.a());
            }
        }
    }
}
