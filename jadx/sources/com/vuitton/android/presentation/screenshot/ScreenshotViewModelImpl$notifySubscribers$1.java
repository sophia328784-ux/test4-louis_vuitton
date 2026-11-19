package com.vuitton.android.presentation.screenshot;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screenshot.ScreenshotViewModelImpl", f = "ScreenshotViewModelImpl.kt", l = {55}, m = "notifySubscribers", v = 2)
final class ScreenshotViewModelImpl$notifySubscribers$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Iterator f65781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f65782c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ScreenshotViewModelImpl f65783e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f65784f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScreenshotViewModelImpl$notifySubscribers$1(ScreenshotViewModelImpl screenshotViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f65783e = screenshotViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f65784f |= Integer.MIN_VALUE;
        return ScreenshotViewModelImpl.yc(this.f65783e, this);
    }
}
