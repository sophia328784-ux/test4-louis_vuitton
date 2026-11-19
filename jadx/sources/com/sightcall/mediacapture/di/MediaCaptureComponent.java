package com.sightcall.mediacapture.di;

import com.sightcall.mediacapture.presenter.MediaCaptureFragment;
import dagger.Component;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Component
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\ba\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/sightcall/mediacapture/di/MediaCaptureComponent;", "", "inject", "", "mediaCaptureFragment", "Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
@MediaCaptureScope
public interface MediaCaptureComponent {
    void inject(MediaCaptureFragment mediaCaptureFragment);
}
