package com.vuitton.android.presentation.screen.authentication.social.models;

import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SocialLoginUiModelKt {
    public static final String a(SocialLoginUiModel socialLoginUiModel, boolean z) {
        socialLoginUiModel.getClass();
        String strJ = StringKtExtKt.j(socialLoginUiModel.g);
        if (strJ == null) {
            strJ = null;
        } else if (z && strJ.length() > 100) {
            strJ = strJ.substring(0, 100).concat("...");
        }
        Map mapI = MapsKt.i(new Pair("firstName", socialLoginUiModel.f54184b), new Pair("lastName", socialLoginUiModel.f54185c), new Pair("email", socialLoginUiModel.f54183a), new Pair("rawNonce", socialLoginUiModel.f54186e), new Pair("nonce", socialLoginUiModel.f54187f), new Pair("identityToken", strJ));
        ArrayList arrayList = new ArrayList(mapI.size());
        for (Map.Entry entry : mapI.entrySet()) {
            arrayList.add(((String) entry.getKey()) + ": " + ((String) entry.getValue()));
        }
        return CollectionsKt.K(arrayList, "\n", null, null, null, 62);
    }
}
