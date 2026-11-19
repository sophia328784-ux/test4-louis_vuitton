package com.vuitton.android.presentation.screen.permissions.models;

import android.content.Context;
import android.os.Build;
import androidx.activity.compose.ManagedActivityResultLauncher;
import com.batch.android.e.x;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.utils.NotificationUtils;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.permissions.models.HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1", f = "HandleNotificationsPermissionState.kt", l = {97}, m = "invokeSuspend", v = 2)
final class HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f62354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PermissionsViewModel f62355c;
    public final /* synthetic */ ManagedActivityResultLauncher d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f62356e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.permissions.models.HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.permissions.models.HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1", f = "HandleNotificationsPermissionState.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f62357b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ManagedActivityResultLauncher f62358c;
        public final /* synthetic */ PermissionsViewModel d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Context f62359e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Context context, ManagedActivityResultLauncher managedActivityResultLauncher, PermissionsViewModel permissionsViewModel, Continuation continuation) {
            super(2, continuation);
            this.f62358c = managedActivityResultLauncher;
            this.d = permissionsViewModel;
            this.f62359e = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f62359e, this.f62358c, this.d, continuation);
            anonymousClass1.f62357b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((Boolean) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Boolean bool = (Boolean) this.f62357b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            if (Intrinsics.c(bool, Boolean.TRUE)) {
                if (Build.VERSION.SDK_INT >= 33) {
                    this.f62358c.a(x.d);
                } else {
                    this.d.Y6();
                    NotificationUtils.b(this.f62359e);
                }
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1(Context context, ManagedActivityResultLauncher managedActivityResultLauncher, PermissionsViewModel permissionsViewModel, Continuation continuation) {
        super(2, continuation);
        this.f62355c = permissionsViewModel;
        this.d = managedActivityResultLauncher;
        this.f62356e = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1(this.f62356e, this.d, this.f62355c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62354b;
        if (i2 == 0) {
            ResultKt.b(obj);
            PermissionsViewModel permissionsViewModel = this.f62355c;
            SharedFlow s = permissionsViewModel.getS();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f62356e, this.d, permissionsViewModel, null);
            s.getClass();
            this.f62354b = 1;
            if (FlowKt.g(s, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        md.k("SharedFlow never completes, this call should never return.");
        return null;
    }
}
