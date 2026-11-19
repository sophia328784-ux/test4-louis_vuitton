package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.ScrollState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.unit.Density;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.compose.components.LVTimelineKt$LVTimeline$7$1", f = "LVTimeline.kt", l = {138}, m = "invokeSuspend", v = 2)
final class LVTimelineKt$LVTimeline$7$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f50999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f51000c;
    public final /* synthetic */ Density d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f51001e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f51002f;
    public final /* synthetic */ float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ float f51003h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f51004i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ MutableIntState f51005j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ ScrollState f51006k;
    public final /* synthetic */ Function1 l;
    public final /* synthetic */ float m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVTimelineKt$LVTimeline$7$1(long j2, Density density, MutableState mutableState, int i2, float f2, float f3, CoroutineScope coroutineScope, MutableIntState mutableIntState, ScrollState scrollState, Function1 function1, float f4, Continuation continuation) {
        super(2, continuation);
        this.f51000c = j2;
        this.d = density;
        this.f51001e = mutableState;
        this.f51002f = i2;
        this.g = f2;
        this.f51003h = f3;
        this.f51004i = coroutineScope;
        this.f51005j = mutableIntState;
        this.f51006k = scrollState;
        this.l = function1;
        this.m = f4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LVTimelineKt$LVTimeline$7$1(this.f51000c, this.d, this.f51001e, this.f51002f, this.g, this.f51003h, this.f51004i, this.f51005j, this.f51006k, this.l, this.m, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVTimelineKt$LVTimeline$7$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f50999b;
        MutableState mutableState = this.f51001e;
        if (i2 == 0) {
            ResultKt.b(obj);
            if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                this.f50999b = 1;
                if (DelayKt.b(this.f51000c, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            Density density = this.d;
            BuildersKt.c(this.f51004i, null, null, new LVTimelineKt$LVTimeline$7$1$1$1(this.f51006k, (((int) density.u1(this.g)) / 2) + (this.f51002f * ((int) density.u1(152.0f))) + ((int) density.u1(this.f51003h)), this.f51005j.f() / 2, this.l, this.m, null), 3);
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        mutableState.setValue(Boolean.FALSE);
        Density density2 = this.d;
        BuildersKt.c(this.f51004i, null, null, new LVTimelineKt$LVTimeline$7$1$1$1(this.f51006k, (((int) density2.u1(this.g)) / 2) + (this.f51002f * ((int) density2.u1(152.0f))) + ((int) density2.u1(this.f51003h)), this.f51005j.f() / 2, this.l, this.m, null), 3);
        return Unit.f71739a;
    }
}
