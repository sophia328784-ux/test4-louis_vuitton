package com.vuitton.android.presentation.screen.permissions;

import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import defpackage.ul0;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$onNotificationButtonClicked$1", f = "PermissionsViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class PermissionsViewModelImpl$onNotificationButtonClicked$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PermissionsViewModelImpl f62344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f62345c;
    public final /* synthetic */ ul0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PermissionsViewModelImpl$onNotificationButtonClicked$1(PermissionsViewModelImpl permissionsViewModelImpl, boolean z, ul0 ul0Var, Continuation continuation) {
        super(2, continuation);
        this.f62344b = permissionsViewModelImpl;
        this.f62345c = z;
        this.d = ul0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PermissionsViewModelImpl$onNotificationButtonClicked$1(this.f62344b, this.f62345c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PermissionsViewModelImpl$onNotificationButtonClicked$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        PermissionsViewModelImpl permissionsViewModelImpl = this.f62344b;
        MutableStateFlow mutableStateFlow = permissionsViewModelImpl.q;
        boolean zBooleanValue = ((Boolean) permissionsViewModelImpl.m.getValue()).booleanValue();
        boolean z = this.f62345c;
        if (!zBooleanValue) {
            mutableStateFlow.setValue(new PermissionsBottomSheet.CookiesAcceptanceBottomSheet(z));
        } else if (!((Boolean) permissionsViewModelImpl.o.getValue()).booleanValue()) {
            mutableStateFlow.setValue(new PermissionsBottomSheet.AllowDeviceNotificationsPermissionsBottomSheet(z));
        } else if (permissionsViewModelImpl.Ac(z)) {
            mutableStateFlow.setValue(new PermissionsBottomSheet.AllowCommunicationBottomSheet(z));
        } else {
            permissionsViewModelImpl.Bc();
            permissionsViewModelImpl.yc();
        }
        return Unit.f71739a;
    }
}
