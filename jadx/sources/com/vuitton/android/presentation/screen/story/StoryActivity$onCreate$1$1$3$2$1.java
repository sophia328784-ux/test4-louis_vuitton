package com.vuitton.android.presentation.screen.story;

import com.vuitton.android.presentation.screen.story.models.StoryCloseUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class StoryActivity$onCreate$1$1$3$2$1 extends FunctionReferenceImpl implements Function1<StoryCloseUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        StoryCloseUiModel storyCloseUiModel = (StoryCloseUiModel) obj;
        storyCloseUiModel.getClass();
        ((StoryViewModel) this.receiver).v9(storyCloseUiModel);
        return Unit.f71739a;
    }
}
