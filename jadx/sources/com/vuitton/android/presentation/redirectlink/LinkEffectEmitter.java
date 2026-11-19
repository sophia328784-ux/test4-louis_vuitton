package com.vuitton.android.presentation.redirectlink;

import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LinkEffectEmitter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableStateFlow f52014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StateFlow f52015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BufferedChannel f52016c;
    public final Flow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SharedFlowImpl f52017e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SharedFlow f52018f;

    @Inject
    public LinkEffectEmitter() {
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(new DeeplinkUiState(false, 1, null));
        this.f52014a = mutableStateFlowA;
        this.f52015b = mutableStateFlowA;
        BufferedChannel bufferedChannelA = ChannelKt.a(-2, 6, null);
        this.f52016c = bufferedChannelA;
        this.d = FlowKt.y(bufferedChannelA);
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 0, null, 7);
        this.f52017e = sharedFlowImplB;
        this.f52018f = FlowKt.a(sharedFlowImplB);
    }
}
