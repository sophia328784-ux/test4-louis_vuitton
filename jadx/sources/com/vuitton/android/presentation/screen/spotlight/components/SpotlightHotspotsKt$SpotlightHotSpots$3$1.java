package com.vuitton.android.presentation.screen.spotlight.components;

import androidx.compose.runtime.MutableState;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt$SpotlightHotSpots$3$1", f = "SpotlightHotspots.kt", l = {130}, m = "invokeSuspend", v = 2)
final class SpotlightHotspotsKt$SpotlightHotSpots$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f64596c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f64597e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f64598f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpotlightHotspotsKt$SpotlightHotSpots$3$1(List list, Function0 function0, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.f64596c = list;
        this.d = function0;
        this.f64597e = mutableState;
        this.f64598f = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SpotlightHotspotsKt$SpotlightHotSpots$3$1(this.f64596c, this.d, this.f64597e, this.f64598f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SpotlightHotspotsKt$SpotlightHotSpots$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64595b;
        MutableState mutableState = this.f64597e;
        if (i2 == 0) {
            ResultKt.b(obj);
            float f2 = SpotlightHotspotsKt.f64588a;
            if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                List list = this.f64596c;
                int size = list.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i3 = 0; i3 < size; i3++) {
                    arrayList.add(Boolean.TRUE);
                }
                this.f64598f.setValue(arrayList);
                long size2 = list.size() * 150;
                this.f64595b = 1;
                if (DelayKt.b(size2, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        this.d.mo47invoke();
        float f3 = SpotlightHotspotsKt.f64588a;
        mutableState.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
