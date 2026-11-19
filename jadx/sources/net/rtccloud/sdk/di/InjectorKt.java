package net.rtccloud.sdk.di;

import com.sightcall.core.InitSightcallKt;
import java.lang.ref.WeakReference;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u0014\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0014\u0010\u0003\u001a\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"rtccComponentReference", "Ljava/lang/ref/WeakReference;", "Lnet/rtccloud/sdk/di/RtccComponent;", "rtccComponent", "getRtccComponent", "()Lnet/rtccloud/sdk/di/RtccComponent;", "rtcc_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class InjectorKt {
    private static WeakReference<RtccComponent> rtccComponentReference = new WeakReference<>(null);

    public static final RtccComponent getRtccComponent() {
        RtccComponent rtccComponent = rtccComponentReference.get();
        if (rtccComponent != null) {
            return rtccComponent;
        }
        RtccComponent rtccComponentBuild = DaggerRtccComponent.builder().sightCallComponent(InitSightcallKt.getSightCallComponent()).build();
        rtccComponentReference = new WeakReference<>(rtccComponentBuild);
        rtccComponentBuild.getClass();
        return rtccComponentBuild;
    }
}
