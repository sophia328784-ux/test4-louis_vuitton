package com.vuitton.android.presentation.screen.immersivearticle.components;

import com.vuitton.android.presentation.screen.audioplayer.AudioPlayerViewModel;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ImmersiveArticleComposableKt$ImmersiveArticleComposable$9$1 extends FunctionReferenceImpl implements Function1<AudioPlayerEvent, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AudioPlayerEvent audioPlayerEvent = (AudioPlayerEvent) obj;
        audioPlayerEvent.getClass();
        ((AudioPlayerViewModel) this.receiver).Jb(audioPlayerEvent);
        return Unit.f71739a;
    }
}
