package com.vuitton.android.presentation.screen.mylv;

import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/presentation/screen/mylv/MyLvLauncherViewState;", "avatar", "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;", "initials", "", "hasUnreadNotifications", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl$viewState$1", f = "TopBarAvatarViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
public final class TopBarAvatarViewModelImpl$viewState$1 extends SuspendLambda implements Function4<AvatarItemUiModel, String, Boolean, Continuation<? super MyLvLauncherViewState>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ AvatarItemUiModel f59380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ String f59381c;
    public /* synthetic */ boolean d;

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean zBooleanValue = ((Boolean) obj3).booleanValue();
        TopBarAvatarViewModelImpl$viewState$1 topBarAvatarViewModelImpl$viewState$1 = new TopBarAvatarViewModelImpl$viewState$1(4, (Continuation) obj4);
        topBarAvatarViewModelImpl$viewState$1.f59380b = (AvatarItemUiModel) obj;
        topBarAvatarViewModelImpl$viewState$1.f59381c = (String) obj2;
        topBarAvatarViewModelImpl$viewState$1.d = zBooleanValue;
        return topBarAvatarViewModelImpl$viewState$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AvatarItemUiModel avatarItemUiModel = this.f59380b;
        String str = this.f59381c;
        boolean z = this.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        return new MyLvLauncherViewState(avatarItemUiModel, str, z);
    }
}
