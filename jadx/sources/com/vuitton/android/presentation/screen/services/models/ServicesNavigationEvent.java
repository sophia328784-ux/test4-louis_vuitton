package com.vuitton.android.presentation.screen.services.models;

import com.vuitton.android.presentation.screen.osa.OsaRoutesName;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent;", "", "ToMyExperiences", "ToOsa", "Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent$ToMyExperiences;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent$ToOsa;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ServicesNavigationEvent {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent$ToMyExperiences;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToMyExperiences implements ServicesNavigationEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToMyExperiences f64380a = new ToMyExperiences();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToMyExperiences);
        }

        public final int hashCode() {
            return 202403881;
        }

        public final String toString() {
            return "ToMyExperiences";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent$ToOsa;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent;", "Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;", "rootScreen", "", "redirectToMyExperiencesAfterLogin", "<init>", "(Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToOsa implements ServicesNavigationEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final OsaRoutesName f64381a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f64382b;

        public ToOsa(OsaRoutesName osaRoutesName, boolean z) {
            osaRoutesName.getClass();
            this.f64381a = osaRoutesName;
            this.f64382b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToOsa)) {
                return false;
            }
            ToOsa toOsa = (ToOsa) obj;
            return this.f64381a == toOsa.f64381a && this.f64382b == toOsa.f64382b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f64382b) + (this.f64381a.hashCode() * 31);
        }

        public final String toString() {
            return "ToOsa(rootScreen=" + this.f64381a + ", redirectToMyExperiencesAfterLogin=" + this.f64382b + ")";
        }
    }
}
