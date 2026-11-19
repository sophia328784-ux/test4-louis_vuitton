package com.vuitton.android.presentation.screen.account.editavatar;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarEvent;", "", "AvatarSaveEvent", "Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarEvent$AvatarSaveEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface EditAvatarEvent {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarEvent$AvatarSaveEvent;", "Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarEvent;", "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;", "savedAvatar", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "message", "<init>", "(Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AvatarSaveEvent implements EditAvatarEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AvatarItemUiModel f52288a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final StringResourceUiModel f52289b;

        public AvatarSaveEvent(AvatarItemUiModel avatarItemUiModel, StringResourceUiModel stringResourceUiModel) {
            avatarItemUiModel.getClass();
            stringResourceUiModel.getClass();
            this.f52288a = avatarItemUiModel;
            this.f52289b = stringResourceUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AvatarSaveEvent)) {
                return false;
            }
            AvatarSaveEvent avatarSaveEvent = (AvatarSaveEvent) obj;
            return Intrinsics.c(this.f52288a, avatarSaveEvent.f52288a) && Intrinsics.c(this.f52289b, avatarSaveEvent.f52289b);
        }

        public final int hashCode() {
            return this.f52289b.hashCode() + (this.f52288a.hashCode() * 31);
        }

        public final String toString() {
            return "AvatarSaveEvent(savedAvatar=" + this.f52288a + ", message=" + this.f52289b + ")";
        }
    }
}
