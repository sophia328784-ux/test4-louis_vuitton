package com.vuitton.android.presentation.screen.catalog.thematicplp.screen;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistFeedbackUiModel;
import defpackage.md;
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
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpComposableKt$ThematicPlpComposable$3$1", f = "ThematicPlpComposable.kt", l = {299}, m = "invokeSuspend", v = 2)
final class ThematicPlpComposableKt$ThematicPlpComposable$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ThematicPlpViewModel f55447c;
    public final /* synthetic */ ManagedActivityResultLauncher d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f55448e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f55449f;
    public final /* synthetic */ HapticFeedback g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f55450h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ MutableState f55451i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ State f55452j;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpComposableKt$ThematicPlpComposable$3$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "feedback", "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpComposableKt$ThematicPlpComposable$3$1$1", f = "ThematicPlpComposable.kt", l = {122, 135}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<PLPWishlistFeedbackUiModel, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f55453b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f55454c;
        public /* synthetic */ Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ ThematicPlpViewModel f55455e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ManagedActivityResultLauncher f55456f;
        public final /* synthetic */ Context g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ SnackbarHostState f55457h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ HapticFeedback f55458i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ Function0 f55459j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ MutableState f55460k;
        public final /* synthetic */ State l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ThematicPlpViewModel thematicPlpViewModel, ManagedActivityResultLauncher managedActivityResultLauncher, Context context, SnackbarHostState snackbarHostState, HapticFeedback hapticFeedback, Function0 function0, MutableState mutableState, State state, Continuation continuation) {
            super(2, continuation);
            this.f55455e = thematicPlpViewModel;
            this.f55456f = managedActivityResultLauncher;
            this.g = context;
            this.f55457h = snackbarHostState;
            this.f55458i = hapticFeedback;
            this.f55459j = function0;
            this.f55460k = mutableState;
            this.l = state;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f55455e, this.f55456f, this.g, this.f55457h, this.f55458i, this.f55459j, this.f55460k, this.l, continuation);
            anonymousClass1.d = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((PLPWishlistFeedbackUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x006b, code lost:
        
            if (r7.a(r11, r10) == r1) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00be, code lost:
        
            if (r11 == r1) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00c0, code lost:
        
            return r1;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11 */
        /* JADX WARN: Type inference failed for: r0v13 */
        /* JADX WARN: Type inference failed for: r0v14 */
        /* JADX WARN: Type inference failed for: r0v5, types: [boolean, int] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                Method dump skipped, instruction units count: 228
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpComposableKt$ThematicPlpComposable$3$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThematicPlpComposableKt$ThematicPlpComposable$3$1(ThematicPlpViewModel thematicPlpViewModel, ManagedActivityResultLauncher managedActivityResultLauncher, Context context, SnackbarHostState snackbarHostState, HapticFeedback hapticFeedback, Function0 function0, MutableState mutableState, State state, Continuation continuation) {
        super(2, continuation);
        this.f55447c = thematicPlpViewModel;
        this.d = managedActivityResultLauncher;
        this.f55448e = context;
        this.f55449f = snackbarHostState;
        this.g = hapticFeedback;
        this.f55450h = function0;
        this.f55451i = mutableState;
        this.f55452j = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThematicPlpComposableKt$ThematicPlpComposable$3$1(this.f55447c, this.d, this.f55448e, this.f55449f, this.g, this.f55450h, this.f55451i, this.f55452j, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThematicPlpComposableKt$ThematicPlpComposable$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55446b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlowImpl sharedFlowImplG = this.f55447c.g();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f55447c, this.d, this.f55448e, this.f55449f, this.g, this.f55450h, this.f55451i, this.f55452j, null);
            sharedFlowImplG.getClass();
            this.f55446b = 1;
            if (FlowKt.g(sharedFlowImplG, anonymousClass1, this) == coroutineSingletons) {
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
