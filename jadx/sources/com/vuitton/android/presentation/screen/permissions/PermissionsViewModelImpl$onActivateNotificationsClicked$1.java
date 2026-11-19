package com.vuitton.android.presentation.screen.permissions;

import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$onActivateNotificationsClicked$1", f = "PermissionsViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class PermissionsViewModelImpl$onActivateNotificationsClicked$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PermissionsViewModelImpl f62339b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PermissionsViewModelImpl$onActivateNotificationsClicked$1(PermissionsViewModelImpl permissionsViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f62339b = permissionsViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PermissionsViewModelImpl$onActivateNotificationsClicked$1(this.f62339b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PermissionsViewModelImpl$onActivateNotificationsClicked$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        PermissionsViewModelImpl permissionsViewModelImpl = this.f62339b;
        MutableStateFlow mutableStateFlow = permissionsViewModelImpl.q;
        if (!((Boolean) permissionsViewModelImpl.m.getValue()).booleanValue()) {
            mutableStateFlow.setValue(new PermissionsBottomSheet.CookiesAcceptanceBottomSheet(false, 1, null));
        } else if (((Boolean) permissionsViewModelImpl.o.getValue()).booleanValue()) {
            permissionsViewModelImpl.Bc();
            permissionsViewModelImpl.yc();
        } else {
            mutableStateFlow.setValue(new PermissionsBottomSheet.AllowDeviceNotificationsPermissionsBottomSheet(false, 1, null));
        }
        return Unit.f71739a;
    }
}
