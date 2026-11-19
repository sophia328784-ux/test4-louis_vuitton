package com.vuitton.android.presentation.screen.personalselections.detail.instore;

import com.vuitton.android.presentation.screen.wishlist.model.ShareUiModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModelImpl$sharePersonalSelection$2", f = "PersonalSelectionsInStoreViewModelImpl.kt", l = {199}, m = "invokeSuspend", v = 2)
final class PersonalSelectionsInStoreViewModelImpl$sharePersonalSelection$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f62537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PersonalSelectionsInStoreViewModelImpl f62538c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f62539e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsInStoreViewModelImpl$sharePersonalSelection$2(PersonalSelectionsInStoreViewModelImpl personalSelectionsInStoreViewModelImpl, String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.f62538c = personalSelectionsInStoreViewModelImpl;
        this.d = str;
        this.f62539e = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PersonalSelectionsInStoreViewModelImpl$sharePersonalSelection$2(this.f62538c, this.d, this.f62539e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PersonalSelectionsInStoreViewModelImpl$sharePersonalSelection$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62537b;
        PersonalSelectionsInStoreViewModelImpl personalSelectionsInStoreViewModelImpl = this.f62538c;
        if (i2 == 0) {
            ResultKt.b(obj);
            BufferedChannel bufferedChannel = personalSelectionsInStoreViewModelImpl.s;
            ShareUiModel shareUiModel = new ShareUiModel(this.f62539e, this.d, "sharedPersonalSelection", null);
            this.f62537b = 1;
            if (bufferedChannel.u(shareUiModel, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        personalSelectionsInStoreViewModelImpl.f62511a.getClass();
        return Unit.f71739a;
    }
}
