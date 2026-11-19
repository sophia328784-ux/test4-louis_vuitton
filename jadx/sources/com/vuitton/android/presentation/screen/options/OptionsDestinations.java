package com.vuitton.android.presentation.screen.options;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsDestinations;", "", "ToSettingsPage", "ToPrivacyPolicyPage", "ToOptOutPrivacyMenuPage", "ToPrivacySettingsPage", "ToConsumerRightsPage", "ToContactPage", "Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToConsumerRightsPage;", "Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToContactPage;", "Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToOptOutPrivacyMenuPage;", "Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToPrivacyPolicyPage;", "Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToPrivacySettingsPage;", "Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToSettingsPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OptionsDestinations {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToConsumerRightsPage;", "Lcom/vuitton/android/presentation/screen/options/OptionsDestinations;", "", "consumerRightsUrl", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToConsumerRightsPage implements OptionsDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f59622a;

        public ToConsumerRightsPage(String str) {
            str.getClass();
            this.f59622a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToConsumerRightsPage) && Intrinsics.c(this.f59622a, ((ToConsumerRightsPage) obj).f59622a);
        }

        public final int hashCode() {
            return this.f59622a.hashCode();
        }

        public final String toString() {
            return fc.h("ToConsumerRightsPage(consumerRightsUrl=", this.f59622a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToContactPage;", "Lcom/vuitton/android/presentation/screen/options/OptionsDestinations;", "", "contactFormUrl", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToContactPage implements OptionsDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f59623a;

        public ToContactPage(String str) {
            str.getClass();
            this.f59623a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToContactPage) && Intrinsics.c(this.f59623a, ((ToContactPage) obj).f59623a);
        }

        public final int hashCode() {
            return this.f59623a.hashCode();
        }

        public final String toString() {
            return fc.h("ToContactPage(contactFormUrl=", this.f59623a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToOptOutPrivacyMenuPage;", "Lcom/vuitton/android/presentation/screen/options/OptionsDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToOptOutPrivacyMenuPage implements OptionsDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToOptOutPrivacyMenuPage f59624a = new ToOptOutPrivacyMenuPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToOptOutPrivacyMenuPage);
        }

        public final int hashCode() {
            return 1094721702;
        }

        public final String toString() {
            return "ToOptOutPrivacyMenuPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToPrivacyPolicyPage;", "Lcom/vuitton/android/presentation/screen/options/OptionsDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToPrivacyPolicyPage implements OptionsDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToPrivacyPolicyPage f59625a = new ToPrivacyPolicyPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToPrivacyPolicyPage);
        }

        public final int hashCode() {
            return -1647920236;
        }

        public final String toString() {
            return "ToPrivacyPolicyPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToPrivacySettingsPage;", "Lcom/vuitton/android/presentation/screen/options/OptionsDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToPrivacySettingsPage implements OptionsDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToPrivacySettingsPage f59626a = new ToPrivacySettingsPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToPrivacySettingsPage);
        }

        public final int hashCode() {
            return -537030331;
        }

        public final String toString() {
            return "ToPrivacySettingsPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToSettingsPage;", "Lcom/vuitton/android/presentation/screen/options/OptionsDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToSettingsPage implements OptionsDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToSettingsPage f59627a = new ToSettingsPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToSettingsPage);
        }

        public final int hashCode() {
            return -1398940825;
        }

        public final String toString() {
            return "ToSettingsPage";
        }
    }
}
