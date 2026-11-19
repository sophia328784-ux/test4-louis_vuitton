package com.dynatrace.android.agent.conf;

import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.util.Utility;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class UserPrivacyOptions {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f27435e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataCollectionLevel f27436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f27437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f27438c;
    public final Boolean d;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public DataCollectionLevel f27439a = DataCollectionLevel.OFF;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f27440b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f27441c = false;
        public Boolean d = null;

        public final void a(DataCollectionLevel dataCollectionLevel) {
            if (dataCollectionLevel != null) {
                this.f27439a = dataCollectionLevel;
            } else if (Global.f27307a) {
                int i2 = UserPrivacyOptions.f27435e;
                Utility.g();
            }
        }
    }

    static {
        boolean z = Global.f27307a;
    }

    public UserPrivacyOptions(Builder builder) {
        this.f27436a = builder.f27439a;
        this.f27437b = builder.f27440b;
        this.f27438c = builder.f27441c;
        this.d = builder.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && UserPrivacyOptions.class == obj.getClass()) {
            UserPrivacyOptions userPrivacyOptions = (UserPrivacyOptions) obj;
            if (this.f27436a == userPrivacyOptions.f27436a && this.f27437b == userPrivacyOptions.f27437b && this.f27438c == userPrivacyOptions.f27438c && Objects.equals(this.d, userPrivacyOptions.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((((this.f27436a.hashCode() * 31) + (this.f27437b ? 1 : 0)) * 31) + (this.f27438c ? 1 : 0)) * 31;
        Boolean bool = this.d;
        return iHashCode + ((bool == null || !bool.booleanValue()) ? 0 : 1);
    }

    public final String toString() {
        return "UserPrivacyOptions{dataCollectionLevel=" + this.f27436a + ", crashReportingOptedIn=" + this.f27437b + ", crashReplayOptedIn=" + this.f27438c + ", screenRecordOptedIn=" + this.d + '}';
    }
}
