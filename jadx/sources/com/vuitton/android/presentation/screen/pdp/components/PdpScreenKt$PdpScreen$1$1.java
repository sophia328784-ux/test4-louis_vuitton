package com.vuitton.android.presentation.screen.pdp.components;

import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.components.PdpScreenKt$PdpScreen$1$1", f = "PdpScreen.kt", l = {}, m = "invokeSuspend", v = 2)
final class PdpScreenKt$PdpScreen$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PermissionsUiModel f61407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f61408c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpScreenKt$PdpScreen$1$1(PermissionsUiModel permissionsUiModel, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f61407b = permissionsUiModel;
        this.f61408c = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpScreenKt$PdpScreen$1$1(this.f61407b, this.f61408c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpScreenKt$PdpScreen$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        PermissionsBottomSheet permissionsBottomSheet = this.f61407b.f62372a;
        if (!(permissionsBottomSheet instanceof PermissionsBottomSheet.None)) {
            this.f61408c.invoke(new PdpBottomSheetType.Permissions(permissionsBottomSheet));
        }
        return Unit.f71739a;
    }
}
