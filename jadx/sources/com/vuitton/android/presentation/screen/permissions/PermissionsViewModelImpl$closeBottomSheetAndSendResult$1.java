package com.vuitton.android.presentation.screen.permissions;

import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$closeBottomSheetAndSendResult$1", f = "PermissionsViewModelImpl.kt", l = {313}, m = "invokeSuspend", v = 2)
final class PermissionsViewModelImpl$closeBottomSheetAndSendResult$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f62335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PermissionsViewModelImpl f62336c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PermissionsViewModelImpl$closeBottomSheetAndSendResult$1(PermissionsViewModelImpl permissionsViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f62336c = permissionsViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PermissionsViewModelImpl$closeBottomSheetAndSendResult$1(this.f62336c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PermissionsViewModelImpl$closeBottomSheetAndSendResult$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62335b;
        if (i2 == 0) {
            ResultKt.b(obj);
            PermissionsViewModelImpl permissionsViewModelImpl = this.f62336c;
            permissionsViewModelImpl.q.setValue(PermissionsBottomSheet.None.f62367f);
            SharedFlowImpl sharedFlowImpl = permissionsViewModelImpl.t;
            Boolean bool = Boolean.TRUE;
            this.f62335b = 1;
            if (sharedFlowImpl.emit(bool, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
