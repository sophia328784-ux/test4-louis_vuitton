package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import com.vuitton.android.presentation.notification.NotificationUiModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoComposableKt$BeautyVtoComposable$1$1$1", f = "BeautyVtoComposable.kt", l = {91}, m = "emit", v = 2)
final class BeautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public NotificationUiModel f62018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f62019c;
    public final /* synthetic */ BeautyVtoComposableKt$BeautyVtoComposable$1$1.AnonymousClass1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f62020e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1(BeautyVtoComposableKt$BeautyVtoComposable$1$1.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(continuation);
        this.d = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f62019c = obj;
        this.f62020e |= Integer.MIN_VALUE;
        return this.d.emit(null, this);
    }
}
