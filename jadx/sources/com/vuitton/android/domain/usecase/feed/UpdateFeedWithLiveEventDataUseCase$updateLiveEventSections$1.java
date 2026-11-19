package com.vuitton.android.domain.usecase.feed;

import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import com.vuitton.foundation.model.domain.model.feed.Feed;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.feed.UpdateFeedWithLiveEventDataUseCase", f = "UpdateFeedWithLiveEventDataUseCase.kt", l = {34}, m = "updateLiveEventSections", v = 2)
final class UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Collection f50019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Iterator f50020c;
    public EditorialModule.Live d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Feed f50021e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Collection f50022f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f50023h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f50024i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ UpdateFeedWithLiveEventDataUseCase f50025j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f50026k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1(UpdateFeedWithLiveEventDataUseCase updateFeedWithLiveEventDataUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50025j = updateFeedWithLiveEventDataUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50024i = obj;
        this.f50026k |= Integer.MIN_VALUE;
        return this.f50025j.a(null, this);
    }
}
