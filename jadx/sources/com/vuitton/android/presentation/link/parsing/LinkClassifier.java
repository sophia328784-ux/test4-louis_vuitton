package com.vuitton.android.presentation.link.parsing;

import android.net.Uri;
import com.linkplay.network.SecurityConstants;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.presentation.extensions.UriExtKt;
import com.vuitton.foundation.contracts.link.UrlVerifier;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;", "Lcom/vuitton/foundation/contracts/link/UrlVerifier;", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "<init>", "(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LinkClassifier implements UrlVerifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnvironmentProvider f51707a;

    @Inject
    public LinkClassifier(EnvironmentProvider environmentProvider) {
        environmentProvider.getClass();
        this.f51707a = environmentProvider;
    }

    @Override // com.vuitton.foundation.contracts.link.UrlVerifier
    public final boolean a(String str) {
        Uri uri;
        if (str != null) {
            String str2 = !StringsKt.w(str) ? str : null;
            if (str2 != null && (uri = Uri.parse(str2)) != null && Intrinsics.c(uri.getScheme(), SecurityConstants.SECURITY_HTTPS) && UriExtKt.f(uri) && !c(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.vuitton.foundation.contracts.link.UrlVerifier
    public final boolean b(String str) {
        if (str != null) {
            if (StringsKt.w(str)) {
                str = null;
            }
            if (str != null) {
                return StringsKt.P(str, this.f51707a.j(), false);
            }
        }
        return false;
    }

    public final boolean c(String str) {
        if (str != null) {
            if (StringsKt.w(str)) {
                str = null;
            }
            if (str != null) {
                return StringsKt.P(str, this.f51707a.i(), false);
            }
        }
        return false;
    }
}
