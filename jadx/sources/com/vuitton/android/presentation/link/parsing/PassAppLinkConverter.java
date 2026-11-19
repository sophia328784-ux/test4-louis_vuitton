package com.vuitton.android.presentation.link.parsing;

import android.net.Uri;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;", "", "Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;", "linkClassifier", "<init>", "(Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PassAppLinkConverter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkClassifier f51711a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter$Companion;", "", "", "MINIMUM_PATH_SEGMENTS", "I", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public PassAppLinkConverter(LinkClassifier linkClassifier) {
        linkClassifier.getClass();
        this.f51711a = linkClassifier;
    }

    public final Uri a(Uri uri, String str) {
        String encodedPath;
        List listSplit$default;
        uri.getClass();
        str.getClass();
        if (!this.f51711a.c(uri.toString()) || uri.getPathSegments().size() < 3 || (encodedPath = uri.getEncodedPath()) == null || (listSplit$default = StringsKt__StringsKt.split$default(encodedPath, new String[]{"/"}, false, 0, 6, null)) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : listSplit$default) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        String strConcat = str.concat(CollectionsKt.K(CollectionsKt.w(arrayList, 2), "/", null, null, null, 62));
        return uri.getQuery() != null ? Uri.parse(strConcat).buildUpon().encodedQuery(uri.getQuery()).build() : Uri.parse(strConcat);
    }
}
