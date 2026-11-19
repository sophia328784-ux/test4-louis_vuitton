package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B!\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;", "", "", "Landroid/net/Uri;", "registrationUris", "Landroid/view/InputEvent;", "inputEvent", "<init>", "(Ljava/util/List;Landroid/view/InputEvent;)V", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@ExperimentalFeatures.RegisterSourceOptIn
public final class SourceRegistrationRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f19082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InputEvent f19083b;

    public SourceRegistrationRequest(List<? extends Uri> list, InputEvent inputEvent) {
        list.getClass();
        this.f19082a = list;
        this.f19083b = inputEvent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SourceRegistrationRequest)) {
            return false;
        }
        SourceRegistrationRequest sourceRegistrationRequest = (SourceRegistrationRequest) obj;
        return Intrinsics.c(this.f19082a, sourceRegistrationRequest.f19082a) && Intrinsics.c(this.f19083b, sourceRegistrationRequest.f19083b);
    }

    public final int hashCode() {
        int iHashCode = this.f19082a.hashCode();
        InputEvent inputEvent = this.f19083b;
        if (inputEvent == null) {
            return iHashCode;
        }
        return inputEvent.hashCode() + (iHashCode * 31);
    }

    public final String toString() {
        return fc.h("AppSourcesRegistrationRequest { ", "RegistrationUris=[" + this.f19082a + "], InputEvent=" + this.f19083b, " }");
    }

    public /* synthetic */ SourceRegistrationRequest(List list, InputEvent inputEvent, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i2 & 2) != 0 ? null : inputEvent);
    }
}
