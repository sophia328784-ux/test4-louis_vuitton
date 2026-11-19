package com.vuitton.android.presentation.screen.audioguide.components;

import com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class AudioGuideComposableKt$AudioGuideComposable$1$4$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        ((AudioGuideViewModel) this.receiver).l8(str);
        return Unit.f71739a;
    }
}
