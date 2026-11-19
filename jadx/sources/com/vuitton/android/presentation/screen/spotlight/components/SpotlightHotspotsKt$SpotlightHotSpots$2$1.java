package com.vuitton.android.presentation.screen.spotlight.components;

import androidx.compose.runtime.MutableState;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt$SpotlightHotSpots$2$1", f = "SpotlightHotspots.kt", l = {}, m = "invokeSuspend", v = 2)
final class SpotlightHotspotsKt$SpotlightHotSpots$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f64589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f64590c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ List f64591e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f64592f;
    public final /* synthetic */ MutableState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MutableState f64593h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ MutableState f64594i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpotlightHotspotsKt$SpotlightHotSpots$2$1(boolean z, boolean z2, boolean z3, List list, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, Continuation continuation) {
        super(2, continuation);
        this.f64589b = z;
        this.f64590c = z2;
        this.d = z3;
        this.f64591e = list;
        this.f64592f = mutableState;
        this.g = mutableState2;
        this.f64593h = mutableState3;
        this.f64594i = mutableState4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SpotlightHotspotsKt$SpotlightHotSpots$2$1(this.f64589b, this.f64590c, this.d, this.f64591e, this.f64592f, this.g, this.f64593h, this.f64594i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SpotlightHotspotsKt$SpotlightHotSpots$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (this.f64589b) {
            float f2 = SpotlightHotspotsKt.f64588a;
            if (((Boolean) this.f64592f.getF10755b()).booleanValue()) {
                boolean zBooleanValue = ((Boolean) this.g.getF10755b()).booleanValue();
                boolean z = this.d;
                boolean z2 = this.f64590c;
                if (zBooleanValue && !z2 && z) {
                    this.f64593h.setValue(Boolean.TRUE);
                } else if (z2 && z) {
                    int size = this.f64591e.size();
                    ArrayList arrayList = new ArrayList(size);
                    for (int i2 = 0; i2 < size; i2++) {
                        arrayList.add(Boolean.TRUE);
                    }
                    this.f64594i.setValue(arrayList);
                }
            }
        }
        return Unit.f71739a;
    }
}
