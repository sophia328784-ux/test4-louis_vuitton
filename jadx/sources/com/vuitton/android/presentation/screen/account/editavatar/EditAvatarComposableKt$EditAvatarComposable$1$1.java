package com.vuitton.android.presentation.screen.account.editavatar;

import android.content.Context;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.editavatar.EditAvatarComposableKt$EditAvatarComposable$1$1", f = "EditAvatarComposable.kt", l = {21}, m = "invokeSuspend", v = 2)
final class EditAvatarComposableKt$EditAvatarComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EditAvatarViewModel f52284c;
    public final /* synthetic */ Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f52285e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditAvatarComposableKt$EditAvatarComposable$1$1(EditAvatarViewModel editAvatarViewModel, Function2 function2, Context context, Continuation continuation) {
        super(2, continuation);
        this.f52284c = editAvatarViewModel;
        this.d = function2;
        this.f52285e = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EditAvatarComposableKt$EditAvatarComposable$1$1(this.f52284c, this.d, this.f52285e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EditAvatarComposableKt$EditAvatarComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52283b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow f52304j = this.f52284c.getF52304j();
            final Function2 function2 = this.d;
            final Context context = this.f52285e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.account.editavatar.EditAvatarComposableKt$EditAvatarComposable$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    EditAvatarEvent editAvatarEvent = (EditAvatarEvent) obj2;
                    if (!(editAvatarEvent instanceof EditAvatarEvent.AvatarSaveEvent)) {
                        v40.g();
                        return null;
                    }
                    EditAvatarEvent.AvatarSaveEvent avatarSaveEvent = (EditAvatarEvent.AvatarSaveEvent) editAvatarEvent;
                    function2.invoke(avatarSaveEvent.f52288a, StringResourceUiModelKt.a(avatarSaveEvent.f52289b, context));
                    return Unit.f71739a;
                }
            };
            this.f52283b = 1;
            if (f52304j.f(flowCollector, this) == coroutineSingletons) {
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
