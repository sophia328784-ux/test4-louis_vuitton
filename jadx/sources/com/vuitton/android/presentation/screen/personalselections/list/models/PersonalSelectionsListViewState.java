package com.vuitton.android.presentation.screen.personalselections.list.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState;", "", "Loading", "Error", "Success", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Error;", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Loading;", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsListViewState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Error;", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error extends PersonalSelectionsListViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Error f62645a = new Error(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Error);
        }

        public final int hashCode() {
            return 1482833669;
        }

        public final String toString() {
            return "Error";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Loading;", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading extends PersonalSelectionsListViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f62646a = new Loading(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return 889651961;
        }

        public final String toString() {
            return "Loading";
        }
    }

    public PersonalSelectionsListViewState(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Success;", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState;", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListUiModel;", "list", "<init>", "(Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success extends PersonalSelectionsListViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PersonalSelectionsListUiModel f62647a;

        public /* synthetic */ Success(PersonalSelectionsListUiModel personalSelectionsListUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? new PersonalSelectionsListUiModel(null, null, 3, null) : personalSelectionsListUiModel);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && Intrinsics.c(this.f62647a, ((Success) obj).f62647a);
        }

        public final int hashCode() {
            return this.f62647a.hashCode();
        }

        public final String toString() {
            return "Success(list=" + this.f62647a + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(PersonalSelectionsListUiModel personalSelectionsListUiModel) {
            super(null);
            personalSelectionsListUiModel.getClass();
            this.f62647a = personalSelectionsListUiModel;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Success() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }
}
