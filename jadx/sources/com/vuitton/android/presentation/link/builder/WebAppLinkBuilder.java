package com.vuitton.android.presentation.link.builder;

import android.net.Uri;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WebAppLinkBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f51631a;

    @Inject
    public WebAppLinkBuilder(RequireCachedAppConfigUseCase requireCachedAppConfigUseCase) {
        requireCachedAppConfigUseCase.getClass();
        this.f51631a = requireCachedAppConfigUseCase;
    }

    public final String a(Uri uri) {
        uri.getClass();
        List<String> pathSegments = uri.getPathSegments();
        pathSegments.getClass();
        if (pathSegments.isEmpty()) {
            return null;
        }
        Uri.Builder builderBuildUpon = Uri.parse(this.f51631a.a().f67233e).buildUpon();
        List<String> pathSegments2 = uri.getPathSegments();
        pathSegments2.getClass();
        Iterator<T> it = pathSegments2.iterator();
        while (it.hasNext()) {
            builderBuildUpon.appendPath((String) it.next());
        }
        String encodedFragment = uri.getEncodedFragment();
        if (encodedFragment != null) {
            String str = StringsKt.w(encodedFragment) ? null : encodedFragment;
            if (str != null) {
                builderBuildUpon.encodedFragment(str);
            }
        }
        return builderBuildUpon.build().toString();
    }
}
