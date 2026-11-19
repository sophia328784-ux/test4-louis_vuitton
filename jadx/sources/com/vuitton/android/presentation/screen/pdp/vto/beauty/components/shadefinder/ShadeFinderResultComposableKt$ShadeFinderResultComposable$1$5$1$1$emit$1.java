package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder;

import com.vuitton.android.presentation.notification.NotificationUiModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1", f = "ShadeFinderResultComposable.kt", l = {103}, m = "emit", v = 2)
final class ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public NotificationUiModel f62086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f62087c;
    public final /* synthetic */ ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1.AnonymousClass1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f62088e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1(ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(continuation);
        this.d = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f62087c = obj;
        this.f62088e |= Integer.MIN_VALUE;
        return this.d.emit(null, this);
    }
}
