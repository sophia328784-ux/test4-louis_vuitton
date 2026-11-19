package com.vuitton.android.presentation.screen.storemode;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl", f = "StoreModeViewModelImpl.kt", l = {261, 267}, m = "getStoreModeInfo", v = 2)
final class StoreModeViewModelImpl$getStoreModeInfo$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f64813b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MutableStateFlow f64814c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f64815e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f64816f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f64817h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ StoreModeViewModelImpl f64818i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f64819j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreModeViewModelImpl$getStoreModeInfo$1(StoreModeViewModelImpl storeModeViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f64818i = storeModeViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f64817h = obj;
        this.f64819j |= Integer.MIN_VALUE;
        return StoreModeViewModelImpl.yc(this.f64818i, null, this);
    }
}
