package com.vuitton.android.presentation.screen.account.editavatar;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class EditAvatarActivity$onCreate$1$1$1$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        EditAvatarActivity editAvatarActivity = (EditAvatarActivity) this.receiver;
        ((EditAvatarViewModel) editAvatarActivity.p.getF71699b()).d6(AvatarTrackingUiModel.CloseEdit.f52275a);
        editAvatarActivity.finish();
        return Unit.f71739a;
    }
}
