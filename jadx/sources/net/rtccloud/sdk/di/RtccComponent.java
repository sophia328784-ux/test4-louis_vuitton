package net.rtccloud.sdk.di;

import dagger.Component;
import kotlin.Metadata;
import net.rtccloud.sdk.Rtcc;

/* JADX INFO: loaded from: classes4.dex */
@Component
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\ba\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lnet/rtccloud/sdk/di/RtccComponent;", "", "inject", "", "rtcc", "Lnet/rtccloud/sdk/Rtcc;", "rtcc_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
@RtccScope
public interface RtccComponent {
    void inject(Rtcc rtcc);
}
