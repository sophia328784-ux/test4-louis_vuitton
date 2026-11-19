package com.vuitton.android.presentation.screen.account.profile;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ProfileHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f52681a = CollectionsKt.P("tMr", "tMale", "tMrKR", "tMrCN", "tMrEU", "tMrAP", "mr");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f52682b = CollectionsKt.P("tMrs", "tFemale", "tMrsEU", "mrs");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final List f52683c = CollectionsKt.P("tMs", "tMsKR", "tMsCN", "tMsEU", "tMsAP", NBSSpanMetricUnit.Millisecond);
    public static final List d = CollectionsKt.P("tMx", "tMxEU", "mx");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final List f52684e = CollectionsKt.P("tUnknown", "tUnknownKR", "tUnknownEU", "undisclosed");

    public static StringResourceUiModel a(String str) {
        if (StringKtExtKt.g(str) && CollectionsKt.u(f52681a, str)) {
            return new StringResourceUiModel.ResId(R.string.p12_accountcreationscreen_text_mr, null, 2, null);
        }
        if (StringKtExtKt.g(str) && CollectionsKt.u(f52682b, str)) {
            return new StringResourceUiModel.ResId(R.string.p12_accountcreationscreen_text_mrs, null, 2, null);
        }
        if (StringKtExtKt.g(str) && CollectionsKt.u(f52683c, str)) {
            return new StringResourceUiModel.ResId(R.string.p12_accountcreationscreen_text_ms, null, 2, null);
        }
        if (StringKtExtKt.g(str) && CollectionsKt.u(d, str)) {
            return new StringResourceUiModel.ResId(R.string.p12_accountcreationscreen_text_mx, null, 2, null);
        }
        return (StringKtExtKt.g(str) && CollectionsKt.u(f52684e, str)) ? new StringResourceUiModel.ResId(R.string.p12_accountcreationscreen_text_undefined, null, 2, null) : StringResourceUiModel.Empty.f51825b;
    }
}
