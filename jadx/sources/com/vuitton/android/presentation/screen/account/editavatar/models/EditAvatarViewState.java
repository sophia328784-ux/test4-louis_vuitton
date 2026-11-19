package com.vuitton.android.presentation.screen.account.editavatar.models;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState;", "", "Success", "Loading", "Error", "Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Error;", "Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Loading;", "Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class EditAvatarViewState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Error;", "Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error extends EditAvatarViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Error f52334a = new Error(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Error);
        }

        public final int hashCode() {
            return 1394698634;
        }

        public final String toString() {
            return "Error";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Loading;", "Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading extends EditAvatarViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f52335a = new Loading(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return 2091229246;
        }

        public final String toString() {
            return "Loading";
        }
    }

    public EditAvatarViewState(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;", "Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState;", "", "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;", "sections", "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;", "defaultAvatar", "", "userInitials", "", "isSaveEnabled", "<init>", "(Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success extends EditAvatarViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f52336a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AvatarItemUiModel f52337b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f52338c;
        public final boolean d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(List<AvatarSectionUiModel> list, AvatarItemUiModel avatarItemUiModel, String str, boolean z) {
            super(null);
            list.getClass();
            avatarItemUiModel.getClass();
            this.f52336a = list;
            this.f52337b = avatarItemUiModel;
            this.f52338c = str;
            this.d = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success success = (Success) obj;
            return Intrinsics.c(this.f52336a, success.f52336a) && Intrinsics.c(this.f52337b, success.f52337b) && Intrinsics.c(this.f52338c, success.f52338c) && this.d == success.d;
        }

        public final int hashCode() {
            int iHashCode = (this.f52337b.hashCode() + (this.f52336a.hashCode() * 31)) * 31;
            String str = this.f52338c;
            return Boolean.hashCode(this.d) + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
        }

        public final String toString() {
            return "Success(sections=" + this.f52336a + ", defaultAvatar=" + this.f52337b + ", userInitials=" + this.f52338c + ", isSaveEnabled=" + this.d + ")";
        }

        public /* synthetic */ Success(List list, AvatarItemUiModel avatarItemUiModel, String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, avatarItemUiModel, str, (i2 & 8) != 0 ? false : z);
        }
    }
}
