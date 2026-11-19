package androidx.activity;

import androidx.lifecycle.LifecycleOwner;
import androidx.navigationevent.NavigationEventInfo;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/activity/OnBackPressedCallbackInfo;", "Landroidx/navigationevent/NavigationEventInfo;", "Landroidx/activity/OnBackPressedCallback;", "callback", "Landroidx/lifecycle/LifecycleOwner;", "owner", "<init>", "(Landroidx/activity/OnBackPressedCallback;Landroidx/lifecycle/LifecycleOwner;)V", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class OnBackPressedCallbackInfo extends NavigationEventInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OnBackPressedCallback f675a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LifecycleOwner f676b;

    public OnBackPressedCallbackInfo(OnBackPressedCallback onBackPressedCallback, LifecycleOwner lifecycleOwner) {
        onBackPressedCallback.getClass();
        this.f675a = onBackPressedCallback;
        this.f676b = lifecycleOwner;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OnBackPressedCallbackInfo)) {
            return false;
        }
        OnBackPressedCallbackInfo onBackPressedCallbackInfo = (OnBackPressedCallbackInfo) obj;
        return Intrinsics.c(this.f675a, onBackPressedCallbackInfo.f675a) && Intrinsics.c(this.f676b, onBackPressedCallbackInfo.f676b);
    }

    public final int hashCode() {
        int iHashCode = this.f675a.hashCode() * 31;
        LifecycleOwner lifecycleOwner = this.f676b;
        return iHashCode + (lifecycleOwner == null ? 0 : lifecycleOwner.hashCode());
    }

    public final String toString() {
        return "OnBackPressedCallbackInfo(callback=" + this.f675a + ", owner=" + this.f676b + ')';
    }

    public /* synthetic */ OnBackPressedCallbackInfo(OnBackPressedCallback onBackPressedCallback, LifecycleOwner lifecycleOwner, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(onBackPressedCallback, (i2 & 2) != 0 ? null : lifecycleOwner);
    }
}
