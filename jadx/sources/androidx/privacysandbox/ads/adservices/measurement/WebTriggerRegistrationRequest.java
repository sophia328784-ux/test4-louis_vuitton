package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;", "", "", "Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerParams;", "webTriggerParams", "Landroid/net/Uri;", "destination", "<init>", "(Ljava/util/List;Landroid/net/Uri;)V", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WebTriggerRegistrationRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f19095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f19096b;

    public WebTriggerRegistrationRequest(List<WebTriggerParams> list, Uri uri) {
        list.getClass();
        uri.getClass();
        this.f19095a = list;
        this.f19096b = uri;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebTriggerRegistrationRequest)) {
            return false;
        }
        WebTriggerRegistrationRequest webTriggerRegistrationRequest = (WebTriggerRegistrationRequest) obj;
        return Intrinsics.c(this.f19095a, webTriggerRegistrationRequest.f19095a) && Intrinsics.c(this.f19096b, webTriggerRegistrationRequest.f19096b);
    }

    public final int hashCode() {
        return this.f19096b.hashCode() + (this.f19095a.hashCode() * 31);
    }

    public final String toString() {
        return "WebTriggerRegistrationRequest { WebTriggerParams=" + this.f19095a + ", Destination=" + this.f19096b;
    }
}
