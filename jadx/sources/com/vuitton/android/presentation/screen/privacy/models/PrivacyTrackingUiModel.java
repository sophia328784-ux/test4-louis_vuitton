package com.vuitton.android.presentation.screen.privacy.models;

import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel;", "", "PrivacyParamsScreen", "PrivacyParamsSelectedEvent", "Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel$PrivacyParamsScreen;", "Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel$PrivacyParamsSelectedEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PrivacyTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel$PrivacyParamsScreen;", "Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;", "consentList", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PrivacyParamsScreen implements PrivacyTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f63408a;

        public PrivacyParamsScreen(List<? extends ConsentUiModel> list) {
            list.getClass();
            this.f63408a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PrivacyParamsScreen) && Intrinsics.c(this.f63408a, ((PrivacyParamsScreen) obj).f63408a);
        }

        public final int hashCode() {
            return this.f63408a.hashCode();
        }

        public final String toString() {
            return d21.o("PrivacyParamsScreen(consentList=", ")", this.f63408a);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel$PrivacyParamsSelectedEvent;", "Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;", "consentList", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PrivacyParamsSelectedEvent implements PrivacyTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f63409a;

        public PrivacyParamsSelectedEvent(List<? extends ConsentUiModel> list) {
            list.getClass();
            this.f63409a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PrivacyParamsSelectedEvent) && Intrinsics.c(this.f63409a, ((PrivacyParamsSelectedEvent) obj).f63409a);
        }

        public final int hashCode() {
            return this.f63409a.hashCode();
        }

        public final String toString() {
            return d21.o("PrivacyParamsSelectedEvent(consentList=", ")", this.f63409a);
        }
    }
}
