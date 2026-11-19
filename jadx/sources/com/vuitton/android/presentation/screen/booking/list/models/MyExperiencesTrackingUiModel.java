package com.vuitton.android.presentation.screen.booking.list.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\t\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u0082\u0001\t\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013¨\u0006\u0014À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel;", "", "MyExperienceListScreen", "MyExperienceDetailScreen", "MyExperiencePassScreen", "MyExperienceClickEvent", "AdditionalExperienceClickEvent", "ViewPassClickEvent", "AddToCalendarClickEvent", "ModifyClickEvent", "DeleteClickEvent", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$AddToCalendarClickEvent;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$AdditionalExperienceClickEvent;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$DeleteClickEvent;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$ModifyClickEvent;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperienceClickEvent;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperienceDetailScreen;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperienceListScreen;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperiencePassScreen;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$ViewPassClickEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface MyExperiencesTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$AddToCalendarClickEvent;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToCalendarClickEvent implements MyExperiencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54629a;

        public AddToCalendarClickEvent(String str) {
            str.getClass();
            this.f54629a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AddToCalendarClickEvent) && Intrinsics.c(this.f54629a, ((AddToCalendarClickEvent) obj).f54629a);
        }

        public final int hashCode() {
            return this.f54629a.hashCode();
        }

        public final String toString() {
            return fc.h("AddToCalendarClickEvent(experienceId=", this.f54629a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$AdditionalExperienceClickEvent;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AdditionalExperienceClickEvent implements MyExperiencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54630a;

        public AdditionalExperienceClickEvent(String str) {
            str.getClass();
            this.f54630a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AdditionalExperienceClickEvent) && Intrinsics.c(this.f54630a, ((AdditionalExperienceClickEvent) obj).f54630a);
        }

        public final int hashCode() {
            return this.f54630a.hashCode();
        }

        public final String toString() {
            return fc.h("AdditionalExperienceClickEvent(experienceId=", this.f54630a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$DeleteClickEvent;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DeleteClickEvent implements MyExperiencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54631a;

        public DeleteClickEvent(String str) {
            str.getClass();
            this.f54631a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DeleteClickEvent) && Intrinsics.c(this.f54631a, ((DeleteClickEvent) obj).f54631a);
        }

        public final int hashCode() {
            return this.f54631a.hashCode();
        }

        public final String toString() {
            return fc.h("DeleteClickEvent(experienceId=", this.f54631a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$ModifyClickEvent;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ModifyClickEvent implements MyExperiencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54632a;

        public ModifyClickEvent(String str) {
            str.getClass();
            this.f54632a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ModifyClickEvent) && Intrinsics.c(this.f54632a, ((ModifyClickEvent) obj).f54632a);
        }

        public final int hashCode() {
            return this.f54632a.hashCode();
        }

        public final String toString() {
            return fc.h("ModifyClickEvent(experienceId=", this.f54632a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperienceClickEvent;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MyExperienceClickEvent implements MyExperiencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54633a;

        public MyExperienceClickEvent(String str) {
            str.getClass();
            this.f54633a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof MyExperienceClickEvent) && Intrinsics.c(this.f54633a, ((MyExperienceClickEvent) obj).f54633a);
        }

        public final int hashCode() {
            return this.f54633a.hashCode();
        }

        public final String toString() {
            return fc.h("MyExperienceClickEvent(experienceId=", this.f54633a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperienceDetailScreen;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MyExperienceDetailScreen implements MyExperiencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54634a;

        public MyExperienceDetailScreen(String str) {
            str.getClass();
            this.f54634a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof MyExperienceDetailScreen) && Intrinsics.c(this.f54634a, ((MyExperienceDetailScreen) obj).f54634a);
        }

        public final int hashCode() {
            return this.f54634a.hashCode();
        }

        public final String toString() {
            return fc.h("MyExperienceDetailScreen(experienceId=", this.f54634a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperienceListScreen;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MyExperienceListScreen implements MyExperiencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final MyExperienceListScreen f54635a = new MyExperienceListScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof MyExperienceListScreen);
        }

        public final int hashCode() {
            return 722474533;
        }

        public final String toString() {
            return "MyExperienceListScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$MyExperiencePassScreen;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MyExperiencePassScreen implements MyExperiencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54636a;

        public MyExperiencePassScreen(String str) {
            str.getClass();
            this.f54636a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof MyExperiencePassScreen) && Intrinsics.c(this.f54636a, ((MyExperiencePassScreen) obj).f54636a);
        }

        public final int hashCode() {
            return this.f54636a.hashCode();
        }

        public final String toString() {
            return fc.h("MyExperiencePassScreen(experienceId=", this.f54636a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$ViewPassClickEvent;", "Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel;", "", "experienceId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ViewPassClickEvent implements MyExperiencesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54637a;

        public ViewPassClickEvent(String str) {
            str.getClass();
            this.f54637a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ViewPassClickEvent) && Intrinsics.c(this.f54637a, ((ViewPassClickEvent) obj).f54637a);
        }

        public final int hashCode() {
            return this.f54637a.hashCode();
        }

        public final String toString() {
            return fc.h("ViewPassClickEvent(experienceId=", this.f54637a, ")");
        }
    }
}
