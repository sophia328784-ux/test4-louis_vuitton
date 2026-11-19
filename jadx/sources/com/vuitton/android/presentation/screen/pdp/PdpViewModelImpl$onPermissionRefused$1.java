package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationUiModel;
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
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$onPermissionRefused$1", f = "PdpViewModelImpl.kt", l = {1419}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$onPermissionRefused$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61241b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PermissionsBottomSheet f61242c;
    public final /* synthetic */ PdpViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$onPermissionRefused$1(PermissionsBottomSheet permissionsBottomSheet, PdpViewModelImpl pdpViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f61242c = permissionsBottomSheet;
        this.d = pdpViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$onPermissionRefused$1(this.f61242c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$onPermissionRefused$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61241b;
        if (i2 == 0) {
            ResultKt.b(obj);
            StringResourceUiModel.ResId resId = this.f61242c.f62366e ? new StringResourceUiModel.ResId(R.string.notify_back_in_stock_banner_refuse_description, null, 2, null) : null;
            if (resId != null) {
                PdpViewModelImpl pdpViewModelImpl = this.d;
                BufferedChannel bufferedChannel = pdpViewModelImpl.v0;
                NotificationUiModel notificationUiModelA = NotificationBuilder.a(pdpViewModelImpl.f61143k, resId, false, null, null, 60);
                this.f61241b = 1;
                if (bufferedChannel.u(notificationUiModelA, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
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
