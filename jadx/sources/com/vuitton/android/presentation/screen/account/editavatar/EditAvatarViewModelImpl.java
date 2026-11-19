package com.vuitton.android.presentation.screen.account.editavatar;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.avatar.GetAllAvatarsUseCase;
import com.vuitton.android.domain.usecase.avatar.GetUserAvatarUseCase;
import com.vuitton.android.domain.usecase.avatar.SaveUserAvatarUseCase;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarSectionUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.EditAvatarViewState;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B9\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModel;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/usecase/avatar/GetAllAvatarsUseCase;", "getAllAvatarsUseCase", "Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;", "getUserAvatarUseCase", "Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;", "saveUserAvatarUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "analyticsTracker", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/avatar/GetAllAvatarsUseCase;Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class EditAvatarViewModelImpl extends ViewModel implements EditAvatarViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f52297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetAllAvatarsUseCase f52298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetUserAvatarUseCase f52299c;
    public final SaveUserAvatarUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetProfileUseCase f52300e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnalyticsTracker f52301f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final StateFlow f52302h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BufferedChannel f52303i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Flow f52304j;

    @Inject
    public EditAvatarViewModelImpl(Logger logger, GetAllAvatarsUseCase getAllAvatarsUseCase, GetUserAvatarUseCase getUserAvatarUseCase, SaveUserAvatarUseCase saveUserAvatarUseCase, GetProfileUseCase getProfileUseCase, AnalyticsTracker analyticsTracker) {
        logger.getClass();
        getAllAvatarsUseCase.getClass();
        getUserAvatarUseCase.getClass();
        saveUserAvatarUseCase.getClass();
        getProfileUseCase.getClass();
        analyticsTracker.getClass();
        this.f52297a = logger;
        this.f52298b = getAllAvatarsUseCase;
        this.f52299c = getUserAvatarUseCase;
        this.d = saveUserAvatarUseCase;
        this.f52300e = getProfileUseCase;
        this.f52301f = analyticsTracker;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(EditAvatarViewState.Loading.f52335a);
        this.g = mutableStateFlowA;
        this.f52302h = FlowKt.b(mutableStateFlowA);
        BufferedChannel bufferedChannelA = ChannelKt.a(-2, 6, null);
        this.f52303i = bufferedChannelA;
        this.f52304j = FlowKt.y(bufferedChannelA);
        g5();
    }

    @Override // com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModel
    /* JADX INFO: renamed from: Yb, reason: from getter */
    public final Flow getF52304j() {
        return this.f52304j;
    }

    @Override // com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF52302h() {
        return this.f52302h;
    }

    @Override // com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModel
    public final void d6(AvatarTrackingUiModel avatarTrackingUiModel) {
        Hit defaultEventHit;
        if (avatarTrackingUiModel instanceof AvatarTrackingUiModel.EditAvatarScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "avatar_library", null, "avatar", CollectionsKt.O(new AdditionalProperty.ContentId(((AvatarTrackingUiModel.EditAvatarScreen) avatarTrackingUiModel).f52276a)), 1, null);
        } else if (avatarTrackingUiModel instanceof AvatarTrackingUiModel.SelectAvatar) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "avatar_library", "select_avatar", "avatar", "click", null, CollectionsKt.O(new AdditionalProperty.ContentId(((AvatarTrackingUiModel.SelectAvatar) avatarTrackingUiModel).f52278a)), 33, null);
        } else if (avatarTrackingUiModel instanceof AvatarTrackingUiModel.SaveEdit) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "avatar_library", "save_avatar", "avatar", "click", null, CollectionsKt.O(new AdditionalProperty.ContentId(((AvatarTrackingUiModel.SaveEdit) avatarTrackingUiModel).f52277a)), 33, null);
        } else {
            if (!avatarTrackingUiModel.equals(AvatarTrackingUiModel.CloseEdit.f52275a)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "avatar_library", "close_library", "avatar", "click", null, null, 97, null);
        }
        this.f52301f.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModel
    public final void g5() {
        this.g.setValue(EditAvatarViewState.Loading.f52335a);
        BuildersKt.c(ViewModelKt.a(this), null, null, new EditAvatarViewModelImpl$loadAvatars$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModel
    public final void p4() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new EditAvatarViewModelImpl$onSaveAvatar$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModel
    public final void p6(String str) {
        str.getClass();
        MutableStateFlow mutableStateFlow = this.g;
        EditAvatarViewState editAvatarViewState = (EditAvatarViewState) mutableStateFlow.getValue();
        if (editAvatarViewState instanceof EditAvatarViewState.Success) {
            EditAvatarViewState.Success success = (EditAvatarViewState.Success) editAvatarViewState;
            List<AvatarSectionUiModel> list = success.f52336a;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            for (AvatarSectionUiModel avatarSectionUiModel : list) {
                List<AvatarItemUiModel> list2 = avatarSectionUiModel.f52333b;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                for (AvatarItemUiModel avatarItemUiModel : list2) {
                    boolean zC = Intrinsics.c(avatarItemUiModel.f52326a, str);
                    String str2 = avatarItemUiModel.f52326a;
                    String str3 = avatarItemUiModel.f52327b;
                    String str4 = avatarItemUiModel.f52328c;
                    boolean z = avatarItemUiModel.d;
                    str2.getClass();
                    str3.getClass();
                    arrayList2.add(new AvatarItemUiModel(str2, str3, str4, z, zC));
                }
                String str5 = avatarSectionUiModel.f52332a;
                str5.getClass();
                arrayList.add(new AvatarSectionUiModel(str5, arrayList2));
            }
            String str6 = success.f52338c;
            AvatarItemUiModel avatarItemUiModel2 = success.f52337b;
            avatarItemUiModel2.getClass();
            mutableStateFlow.setValue(new EditAvatarViewState.Success(arrayList, avatarItemUiModel2, str6, true));
            d6(new AvatarTrackingUiModel.SelectAvatar(str));
        }
    }
}
