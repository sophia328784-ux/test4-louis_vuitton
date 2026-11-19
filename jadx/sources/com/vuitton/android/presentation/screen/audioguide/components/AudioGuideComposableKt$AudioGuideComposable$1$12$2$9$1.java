package com.vuitton.android.presentation.screen.audioguide.components;

import com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class AudioGuideComposableKt$AudioGuideComposable$1$12$2$9$1 extends AdaptedFunctionReference implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        AudioGuideViewModel.s7((AudioGuideViewModel) this.receiver, str, false, 6);
        return Unit.f71739a;
    }
}
