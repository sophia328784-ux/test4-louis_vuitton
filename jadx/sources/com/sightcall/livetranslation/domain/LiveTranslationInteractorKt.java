package com.sightcall.livetranslation.domain;

import kotlin.Metadata;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002¨\u0006\u0003"}, d2 = {"toInitialState", "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;", "livetranslation_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class LiveTranslationInteractorKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final LiveTranslationInteractor.State toInitialState(LiveTranslationSettings.Enabled enabled) {
        EmptyList emptyList = EmptyList.f71768b;
        Boolean boolIsAutoTranslateActive = enabled.getTranslationAutoStartMode().isAutoTranslateActive();
        return new LiveTranslationInteractor.State(emptyList, emptyList, new LiveTranslationDisplaySettings(boolIsAutoTranslateActive != null ? boolIsAutoTranslateActive.booleanValue() : false, enabled.getFontSize(), null, enabled.getTranscriptHistory()), emptyList);
    }
}
