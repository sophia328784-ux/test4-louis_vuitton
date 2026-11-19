package com.vuitton.android.presentation.screen.story;

import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.story.components.StoryTrackingUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class StoryActivity$onCreate$1$1$3$3$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        StoryActivity storyActivity = (StoryActivity) this.receiver;
        StoryActivity.Companion companion = StoryActivity.t;
        storyActivity.I().K4(StoryTrackingUiModel.OnHitCTAStoryEvent.f65151a);
        if (storyActivity.r) {
            storyActivity.H(1628);
        } else {
            LinkHandler linkHandler = storyActivity.q;
            if (linkHandler == null) {
                Intrinsics.h("linkHandler");
                throw null;
            }
            linkHandler.c(str, storyActivity, storyActivity.s);
        }
        return Unit.f71739a;
    }
}
