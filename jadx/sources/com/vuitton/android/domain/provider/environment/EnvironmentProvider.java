package com.vuitton.android.domain.provider.environment;

import com.vuitton.foundation.model.domain.model.config.Region;
import com.vuitton.foundation.model.domain.model.environment.Environment;
import com.vuitton.foundation.model.domain.model.environment.MulesoftFeature;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface EnvironmentProvider {
    String a(MulesoftFeature mulesoftFeature);

    String b();

    String c();

    Environment d();

    String e();

    String f();

    String g();

    String h();

    String i();

    String j();

    String k();

    String l(Region region);

    String m();

    boolean n();

    String o();

    String p(MulesoftFeature mulesoftFeature);

    String q();

    String r();
}
