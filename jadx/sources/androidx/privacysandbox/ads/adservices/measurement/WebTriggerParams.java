package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import defpackage.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerParams;", "", "Landroid/net/Uri;", "registrationUri", "", "debugKeyAllowed", "<init>", "(Landroid/net/Uri;Z)V", "Companion", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WebTriggerParams {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f19092c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f19093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f19094b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerParams$Companion;", "", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public WebTriggerParams(Uri uri, boolean z) {
        uri.getClass();
        this.f19093a = uri;
        this.f19094b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebTriggerParams)) {
            return false;
        }
        WebTriggerParams webTriggerParams = (WebTriggerParams) obj;
        return Intrinsics.c(this.f19093a, webTriggerParams.f19093a) && this.f19094b == webTriggerParams.f19094b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f19094b) + (this.f19093a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WebTriggerParams { RegistrationUri=");
        sb.append(this.f19093a);
        sb.append(", DebugKeyAllowed=");
        return a.p(sb, this.f19094b, " }");
    }
}
