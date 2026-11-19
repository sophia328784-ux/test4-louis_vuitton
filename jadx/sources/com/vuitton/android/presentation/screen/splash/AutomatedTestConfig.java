package com.vuitton.android.presentation.screen.splash;

import com.vuitton.foundation.model.domain.model.environment.Environment;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\bB\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;", "", "Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig$EnvironmentConfig;", "environmentConfig", "", "uiTestModeOverride", "<init>", "(Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig$EnvironmentConfig;Ljava/lang/Boolean;)V", "EnvironmentConfig", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AutomatedTestConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnvironmentConfig f64413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f64414b;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\tB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig$EnvironmentConfig;", "", "Lcom/vuitton/foundation/model/domain/model/environment/Environment;", "environment", "", "dispatchLanguageTagWithUnderscoreAsString", "securityToken", "<init>", "(Lcom/vuitton/foundation/model/domain/model/environment/Environment;Ljava/lang/String;Ljava/lang/String;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EnvironmentConfig {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Environment f64415a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64416b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f64417c;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig$EnvironmentConfig$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
        }

        public EnvironmentConfig(Environment environment, String str, String str2) {
            environment.getClass();
            str.getClass();
            str2.getClass();
            this.f64415a = environment;
            this.f64416b = str;
            this.f64417c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof EnvironmentConfig)) {
                return false;
            }
            EnvironmentConfig environmentConfig = (EnvironmentConfig) obj;
            return Intrinsics.c(this.f64415a, environmentConfig.f64415a) && Intrinsics.c(this.f64416b, environmentConfig.f64416b) && Intrinsics.c(this.f64417c, environmentConfig.f64417c);
        }

        public final int hashCode() {
            return this.f64417c.hashCode() + fc.b(this.f64415a.hashCode() * 31, 31, this.f64416b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("EnvironmentConfig(environment=");
            sb.append(this.f64415a);
            sb.append(", dispatchLanguageTagWithUnderscoreAsString=");
            sb.append(this.f64416b);
            sb.append(", securityToken=");
            return n00.r(this.f64417c, ")", sb);
        }
    }

    public /* synthetic */ AutomatedTestConfig(EnvironmentConfig environmentConfig, Boolean bool, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : environmentConfig, (i2 & 2) != 0 ? null : bool);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutomatedTestConfig)) {
            return false;
        }
        AutomatedTestConfig automatedTestConfig = (AutomatedTestConfig) obj;
        return Intrinsics.c(this.f64413a, automatedTestConfig.f64413a) && Intrinsics.c(this.f64414b, automatedTestConfig.f64414b);
    }

    public final int hashCode() {
        EnvironmentConfig environmentConfig = this.f64413a;
        int iHashCode = (environmentConfig == null ? 0 : environmentConfig.hashCode()) * 31;
        Boolean bool = this.f64414b;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return "AutomatedTestConfig(environmentConfig=" + this.f64413a + ", uiTestModeOverride=" + this.f64414b + ")";
    }

    public AutomatedTestConfig(EnvironmentConfig environmentConfig, Boolean bool) {
        this.f64413a = environmentConfig;
        this.f64414b = bool;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AutomatedTestConfig() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
