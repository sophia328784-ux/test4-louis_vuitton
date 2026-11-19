package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import android.view.InputEvent;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001BM\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;", "", "", "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;", "webSourceParams", "Landroid/net/Uri;", "topOriginUri", "Landroid/view/InputEvent;", "inputEvent", "appDestination", "webDestination", "verifiedDestination", "<init>", "(Ljava/util/List;Landroid/net/Uri;Landroid/view/InputEvent;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WebSourceRegistrationRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f19087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f19088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InputEvent f19089c;
    public final Uri d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Uri f19090e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Uri f19091f;

    public /* synthetic */ WebSourceRegistrationRequest(List list, Uri uri, InputEvent inputEvent, Uri uri2, Uri uri3, Uri uri4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, uri, (i2 & 4) != 0 ? null : inputEvent, (i2 & 8) != 0 ? null : uri2, (i2 & 16) != 0 ? null : uri3, (i2 & 32) != 0 ? null : uri4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSourceRegistrationRequest)) {
            return false;
        }
        WebSourceRegistrationRequest webSourceRegistrationRequest = (WebSourceRegistrationRequest) obj;
        return Intrinsics.c(this.f19087a, webSourceRegistrationRequest.f19087a) && Intrinsics.c(this.f19090e, webSourceRegistrationRequest.f19090e) && Intrinsics.c(this.d, webSourceRegistrationRequest.d) && Intrinsics.c(this.f19088b, webSourceRegistrationRequest.f19088b) && Intrinsics.c(this.f19089c, webSourceRegistrationRequest.f19089c) && Intrinsics.c(this.f19091f, webSourceRegistrationRequest.f19091f);
    }

    public final int hashCode() {
        int iHashCode = this.f19087a.hashCode() * 31;
        Uri uri = this.f19088b;
        int iHashCode2 = uri.hashCode() + iHashCode;
        InputEvent inputEvent = this.f19089c;
        if (inputEvent != null) {
            iHashCode2 = (iHashCode2 * 31) + inputEvent.hashCode();
        }
        Uri uri2 = this.d;
        if (uri2 != null) {
            iHashCode2 = (iHashCode2 * 31) + uri2.hashCode();
        }
        Uri uri3 = this.f19090e;
        if (uri3 != null) {
            iHashCode2 = (iHashCode2 * 31) + uri3.hashCode();
        }
        int iHashCode3 = uri.hashCode() + (iHashCode2 * 31);
        if (inputEvent != null) {
            iHashCode3 = (iHashCode3 * 31) + inputEvent.hashCode();
        }
        Uri uri4 = this.f19091f;
        if (uri4 == null) {
            return iHashCode3;
        }
        return uri4.hashCode() + (iHashCode3 * 31);
    }

    public final String toString() {
        return fc.h("WebSourceRegistrationRequest { ", "WebSourceParams=[" + this.f19087a + "], TopOriginUri=" + this.f19088b + ", InputEvent=" + this.f19089c + ", AppDestination=" + this.d + ", WebDestination=" + this.f19090e + ", VerifiedDestination=" + this.f19091f, " }");
    }

    public WebSourceRegistrationRequest(List<WebSourceParams> list, Uri uri, InputEvent inputEvent, Uri uri2, Uri uri3, Uri uri4) {
        list.getClass();
        uri.getClass();
        this.f19087a = list;
        this.f19088b = uri;
        this.f19089c = inputEvent;
        this.d = uri2;
        this.f19090e = uri3;
        this.f19091f = uri4;
    }
}
