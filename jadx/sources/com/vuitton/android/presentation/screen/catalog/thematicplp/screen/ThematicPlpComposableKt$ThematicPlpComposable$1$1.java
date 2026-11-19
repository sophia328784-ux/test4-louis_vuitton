package com.vuitton.android.presentation.screen.catalog.thematicplp.screen;

import com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpComposableKt$ThematicPlpComposable$1$1", f = "ThematicPlpComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class ThematicPlpComposableKt$ThematicPlpComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ThematicPlpViewModel f55443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f55444c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f55445e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThematicPlpComposableKt$ThematicPlpComposable$1$1(ThematicPlpViewModel thematicPlpViewModel, List list, String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.f55443b = thematicPlpViewModel;
        this.f55444c = list;
        this.d = str;
        this.f55445e = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThematicPlpComposableKt$ThematicPlpComposable$1$1(this.f55443b, this.f55444c, this.d, this.f55445e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThematicPlpComposableKt$ThematicPlpComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f55443b.D6(this.d, this.f55445e, this.f55444c);
        return Unit.f71739a;
    }
}
