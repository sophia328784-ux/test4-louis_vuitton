package com.vuitton.android.presentation.screen.audioguide.components;

import com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class AudioGuideComposableKt$AudioGuideComposable$1$12$2$3$1 extends FunctionReferenceImpl implements Function1<Long, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ((AudioGuideViewModel) this.receiver).kc(((Number) obj).longValue());
        return Unit.f71739a;
    }
}
