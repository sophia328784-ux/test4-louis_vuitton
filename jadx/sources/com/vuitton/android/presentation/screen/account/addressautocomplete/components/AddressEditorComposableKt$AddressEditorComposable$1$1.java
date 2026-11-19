package com.vuitton.android.presentation.screen.account.addressautocomplete.components;

import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorNavigation;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressEditorComposableKt$AddressEditorComposable$1$1", f = "AddressEditorComposable.kt", l = {56}, m = "invokeSuspend", v = 2)
final class AddressEditorComposableKt$AddressEditorComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddressEditorViewModel f52095c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f52096e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressEditorComposableKt$AddressEditorComposable$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "navigation", "Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorNavigation;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressEditorComposableKt$AddressEditorComposable$1$1$1", f = "AddressEditorComposable.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<AddressEditorNavigation, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f52097b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Function0 f52098c;
        public final /* synthetic */ Function0 d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Function0 function0, Function0 function1, Continuation continuation) {
            super(2, continuation);
            this.f52098c = function0;
            this.d = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f52098c, this.d, continuation);
            anonymousClass1.f52097b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((AddressEditorNavigation) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AddressEditorNavigation addressEditorNavigation = (AddressEditorNavigation) this.f52097b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            if (Intrinsics.c(addressEditorNavigation, AddressEditorNavigation.ToAddressBookAfterEdition.f52268a)) {
                this.f52098c.mo47invoke();
            } else {
                if (!Intrinsics.c(addressEditorNavigation, AddressEditorNavigation.ToAddressAutocomplete.f52267a)) {
                    v40.g();
                    return null;
                }
                this.d.mo47invoke();
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressEditorComposableKt$AddressEditorComposable$1$1(AddressEditorViewModel addressEditorViewModel, Function0 function0, Function0 function1, Continuation continuation) {
        super(2, continuation);
        this.f52095c = addressEditorViewModel;
        this.d = function0;
        this.f52096e = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AddressEditorComposableKt$AddressEditorComposable$1$1(this.f52095c, this.d, this.f52096e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddressEditorComposableKt$AddressEditorComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52094b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow w = this.f52095c.getW();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f52096e, null);
            this.f52094b = 1;
            if (FlowKt.g(w, anonymousClass1, this) == coroutineSingletons) {
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
