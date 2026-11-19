package com.vuitton.android.presentation.screen.feed.components.subcomponents;

import android.content.Context;
import android.content.Intent;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesActivity;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
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
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.components.subcomponents.ContactabilitySectionKt$ContactabilitySection$2$1", f = "ContactabilitySection.kt", l = {79}, m = "invokeSuspend", v = 2)
final class ContactabilitySectionKt$ContactabilitySection$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PermissionsViewModel f57891c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f57892e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.feed.components.subcomponents.ContactabilitySectionKt$ContactabilitySection$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.components.subcomponents.ContactabilitySectionKt$ContactabilitySection$2$1$1", f = "ContactabilitySection.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Context f57893b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MutableState f57894c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Context context, MutableState mutableState, Continuation continuation) {
            super(2, continuation);
            this.f57893b = context;
            this.f57894c = mutableState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f57893b, this.f57894c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Boolean bool = (Boolean) obj;
            bool.booleanValue();
            return ((AnonymousClass1) create(bool, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            this.f57894c.setValue(Boolean.FALSE);
            NotificationsPreferencesActivity.q.getClass();
            Context context = this.f57893b;
            context.getClass();
            Intent intent = new Intent(context, (Class<?>) NotificationsPreferencesActivity.class);
            intent.putExtra("extra_display_bottom_sheet", false);
            context.startActivity(intent);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContactabilitySectionKt$ContactabilitySection$2$1(PermissionsViewModel permissionsViewModel, MutableState mutableState, Context context, Continuation continuation) {
        super(2, continuation);
        this.f57891c = permissionsViewModel;
        this.d = mutableState;
        this.f57892e = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ContactabilitySectionKt$ContactabilitySection$2$1(this.f57891c, this.d, this.f57892e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ContactabilitySectionKt$ContactabilitySection$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57890b;
        if (i2 == 0) {
            ResultKt.b(obj);
            MutableState mutableState = this.d;
            if (!((Boolean) mutableState.getF10755b()).booleanValue()) {
                return Unit.f71739a;
            }
            SharedFlowImpl t = this.f57891c.getT();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f57892e, mutableState, null);
            this.f57890b = 1;
            if (FlowKt.g(t, anonymousClass1, this) == coroutineSingletons) {
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
