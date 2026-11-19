package com.vuitton.android.presentation.screen.account.editavatar;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel;", "", "EditAvatarScreen", "SelectAvatar", "SaveEdit", "CloseEdit", "Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$CloseEdit;", "Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$EditAvatarScreen;", "Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$SaveEdit;", "Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$SelectAvatar;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AvatarTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$CloseEdit;", "Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseEdit implements AvatarTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CloseEdit f52275a = new CloseEdit();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CloseEdit);
        }

        public final int hashCode() {
            return -631506130;
        }

        public final String toString() {
            return "CloseEdit";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$EditAvatarScreen;", "Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel;", "", "currentAvatarId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EditAvatarScreen implements AvatarTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f52276a;

        public EditAvatarScreen(String str) {
            str.getClass();
            this.f52276a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof EditAvatarScreen) && Intrinsics.c(this.f52276a, ((EditAvatarScreen) obj).f52276a);
        }

        public final int hashCode() {
            return this.f52276a.hashCode();
        }

        public final String toString() {
            return fc.h("EditAvatarScreen(currentAvatarId=", this.f52276a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$SaveEdit;", "Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel;", "", "avatarId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SaveEdit implements AvatarTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f52277a;

        public SaveEdit(String str) {
            str.getClass();
            this.f52277a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SaveEdit) && Intrinsics.c(this.f52277a, ((SaveEdit) obj).f52277a);
        }

        public final int hashCode() {
            return this.f52277a.hashCode();
        }

        public final String toString() {
            return fc.h("SaveEdit(avatarId=", this.f52277a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$SelectAvatar;", "Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel;", "", "avatarId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SelectAvatar implements AvatarTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f52278a;

        public SelectAvatar(String str) {
            str.getClass();
            this.f52278a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SelectAvatar) && Intrinsics.c(this.f52278a, ((SelectAvatar) obj).f52278a);
        }

        public final int hashCode() {
            return this.f52278a.hashCode();
        }

        public final String toString() {
            return fc.h("SelectAvatar(avatarId=", this.f52278a, ")");
        }
    }
}
