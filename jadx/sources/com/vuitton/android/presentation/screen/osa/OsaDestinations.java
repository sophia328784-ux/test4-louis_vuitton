package com.vuitton.android.presentation.screen.osa;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;", "", "ToLoginPage", "ToRegisterWithPrefilledEmailPage", "ToRegisterPage", "ToPrivacyPolicy", "ToMyExperiencesPage", "Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToLoginPage;", "Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToMyExperiencesPage;", "Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToPrivacyPolicy;", "Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterPage;", "Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OsaDestinations {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToLoginPage;", "Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToLoginPage implements OsaDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToLoginPage f60567a = new ToLoginPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToLoginPage);
        }

        public final int hashCode() {
            return -1892843551;
        }

        public final String toString() {
            return "ToLoginPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToMyExperiencesPage;", "Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToMyExperiencesPage implements OsaDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToMyExperiencesPage f60568a = new ToMyExperiencesPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToMyExperiencesPage);
        }

        public final int hashCode() {
            return -678119307;
        }

        public final String toString() {
            return "ToMyExperiencesPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToPrivacyPolicy;", "Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToPrivacyPolicy implements OsaDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToPrivacyPolicy f60569a = new ToPrivacyPolicy();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToPrivacyPolicy);
        }

        public final int hashCode() {
            return -1699727197;
        }

        public final String toString() {
            return "ToPrivacyPolicy";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterPage;", "Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToRegisterPage implements OsaDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToRegisterPage f60570a = new ToRegisterPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToRegisterPage);
        }

        public final int hashCode() {
            return -1673800471;
        }

        public final String toString() {
            return "ToRegisterPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;", "Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;", "", "cid", "", "isNativeAccountActivationEnabled", "<init>", "(Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToRegisterWithPrefilledEmailPage implements OsaDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f60571a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f60572b;

        public /* synthetic */ ToRegisterWithPrefilledEmailPage(String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? false : z);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToRegisterWithPrefilledEmailPage)) {
                return false;
            }
            ToRegisterWithPrefilledEmailPage toRegisterWithPrefilledEmailPage = (ToRegisterWithPrefilledEmailPage) obj;
            return Intrinsics.c(this.f60571a, toRegisterWithPrefilledEmailPage.f60571a) && this.f60572b == toRegisterWithPrefilledEmailPage.f60572b;
        }

        public final int hashCode() {
            String str = this.f60571a;
            return Boolean.hashCode(this.f60572b) + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return d21.m("ToRegisterWithPrefilledEmailPage(cid=", this.f60571a, ", isNativeAccountActivationEnabled=", ")", this.f60572b);
        }

        public ToRegisterWithPrefilledEmailPage(String str, boolean z) {
            this.f60571a = str;
            this.f60572b = z;
        }
    }
}
