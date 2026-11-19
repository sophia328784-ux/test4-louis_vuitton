package com.vuitton.android.presentation.screen.account.editavatar;

import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModelImpl$onSaveAvatar$1", f = "EditAvatarViewModelImpl.kt", l = {110, 112}, m = "invokeSuspend", v = 2)
final class EditAvatarViewModelImpl$onSaveAvatar$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AvatarItemUiModel f52310b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f52311c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ EditAvatarViewModelImpl f52312e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditAvatarViewModelImpl$onSaveAvatar$1(EditAvatarViewModelImpl editAvatarViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f52312e = editAvatarViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EditAvatarViewModelImpl$onSaveAvatar$1(this.f52312e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EditAvatarViewModelImpl$onSaveAvatar$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0086  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a2, code lost:
    
        if (r2.u(r3, r8) == r0) goto L32;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r8.d
            r2 = 1
            com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModelImpl r3 = r8.f52312e
            r4 = 2
            r5 = 0
            if (r1 == 0) goto L24
            if (r1 == r2) goto L1a
            if (r1 != r4) goto L14
            kotlin.ResultKt.b(r9)
            goto La5
        L14:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r5
        L1a:
            com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel r1 = r8.f52310b
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.f71708b
            goto L80
        L24:
            kotlin.ResultKt.b(r9)
            kotlinx.coroutines.flow.MutableStateFlow r9 = r3.g
            java.lang.Object r9 = r9.getValue()
            com.vuitton.android.presentation.screen.account.editavatar.models.EditAvatarViewState r9 = (com.vuitton.android.presentation.screen.account.editavatar.models.EditAvatarViewState) r9
            boolean r1 = r9 instanceof com.vuitton.android.presentation.screen.account.editavatar.models.EditAvatarViewState.Success
            if (r1 == 0) goto La5
            com.vuitton.android.presentation.screen.account.editavatar.models.EditAvatarViewState$Success r9 = (com.vuitton.android.presentation.screen.account.editavatar.models.EditAvatarViewState.Success) r9
            java.util.List r9 = r9.f52336a
            java.lang.Iterable r9 = (java.lang.Iterable) r9
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r9 = r9.iterator()
        L42:
            boolean r6 = r9.hasNext()
            if (r6 == 0) goto L56
            java.lang.Object r6 = r9.next()
            com.vuitton.android.presentation.screen.account.editavatar.models.AvatarSectionUiModel r6 = (com.vuitton.android.presentation.screen.account.editavatar.models.AvatarSectionUiModel) r6
            java.util.List r6 = r6.f52333b
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            kotlin.collections.CollectionsKt.j(r1, r6)
            goto L42
        L56:
            java.util.Iterator r9 = r1.iterator()
        L5a:
            boolean r1 = r9.hasNext()
            if (r1 == 0) goto L6c
            java.lang.Object r1 = r9.next()
            r6 = r1
            com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel r6 = (com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel) r6
            boolean r6 = r6.f52329e
            if (r6 == 0) goto L5a
            goto L6d
        L6c:
            r1 = r5
        L6d:
            com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel r1 = (com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel) r1
            if (r1 == 0) goto La5
            com.vuitton.android.domain.usecase.avatar.SaveUserAvatarUseCase r9 = r3.d
            java.lang.String r6 = r1.f52326a
            r8.f52310b = r1
            r8.d = r2
            java.lang.Object r9 = r9.a(r6, r8)
            if (r9 != r0) goto L80
            goto La4
        L80:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            boolean r2 = r9 instanceof kotlin.Result.Failure
            if (r2 != 0) goto La5
            r2 = r9
            kotlin.Unit r2 = (kotlin.Unit) r2
            kotlinx.coroutines.channels.BufferedChannel r2 = r3.f52303i
            com.vuitton.android.presentation.screen.account.editavatar.EditAvatarEvent$AvatarSaveEvent r3 = new com.vuitton.android.presentation.screen.account.editavatar.EditAvatarEvent$AvatarSaveEvent
            com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId r6 = new com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId
            r7 = 2132020560(0x7f140d50, float:1.9679487E38)
            r6.<init>(r7, r5, r4, r5)
            r3.<init>(r1, r6)
            r8.f52310b = r5
            r8.f52311c = r9
            r8.d = r4
            java.lang.Object r8 = r2.u(r3, r8)
            if (r8 != r0) goto La5
        La4:
            return r0
        La5:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModelImpl$onSaveAvatar$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
