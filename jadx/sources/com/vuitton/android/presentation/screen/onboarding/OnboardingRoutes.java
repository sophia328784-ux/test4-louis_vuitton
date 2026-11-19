package com.vuitton.android.presentation.screen.onboarding;

import defpackage.mg0;
import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.ObjectSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bw\u0018\u0000 \f2\u00020\u0001:\u000b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\u0082\u0001\n\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016¨\u0006\u0017À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;", "", "Login", "PrivacyPreCompliance", "PiplCbt", "Privacy", "StartNow", "Notifications", "Geolocation", "Icons", "Transition", "Accessibility", "Companion", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Accessibility;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Geolocation;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Icons;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Login;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Notifications;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PiplCbt;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Privacy;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PrivacyPreCompliance;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$StartNow;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Transition;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public interface OnboardingRoutes {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.f59486a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Accessibility;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Accessibility implements OnboardingRoutes {
        public static final Accessibility INSTANCE = new Accessibility();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59485a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(7));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Accessibility);
        }

        public final int hashCode() {
            return 1891485113;
        }

        public final KSerializer<Accessibility> serializer() {
            return (KSerializer) f59485a.getF71699b();
        }

        public final String toString() {
            return "Accessibility";
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f59486a = new Companion();

        public final KSerializer<OnboardingRoutes> serializer() {
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            return new SealedClassSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes", reflectionFactory.b(OnboardingRoutes.class), new KClass[]{reflectionFactory.b(Accessibility.class), reflectionFactory.b(Geolocation.class), reflectionFactory.b(Icons.class), reflectionFactory.b(Login.class), reflectionFactory.b(Notifications.class), reflectionFactory.b(PiplCbt.class), reflectionFactory.b(Privacy.class), reflectionFactory.b(PrivacyPreCompliance.class), reflectionFactory.b(StartNow.class), reflectionFactory.b(Transition.class)}, new KSerializer[]{new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Accessibility", Accessibility.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Geolocation", Geolocation.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Icons", Icons.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Login", Login.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Notifications", Notifications.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.PiplCbt", PiplCbt.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Privacy", Privacy.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.PrivacyPreCompliance", PrivacyPreCompliance.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.StartNow", StartNow.INSTANCE, new Annotation[0]), new ObjectSerializer("com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Transition", Transition.INSTANCE, new Annotation[0])}, new Annotation[0]);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Geolocation;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Geolocation implements OnboardingRoutes {
        public static final Geolocation INSTANCE = new Geolocation();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59487a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(8));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Geolocation);
        }

        public final int hashCode() {
            return -462982863;
        }

        public final KSerializer<Geolocation> serializer() {
            return (KSerializer) f59487a.getF71699b();
        }

        public final String toString() {
            return "Geolocation";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Icons;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Icons implements OnboardingRoutes {
        public static final Icons INSTANCE = new Icons();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59488a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(9));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Icons);
        }

        public final int hashCode() {
            return 1339880069;
        }

        public final KSerializer<Icons> serializer() {
            return (KSerializer) f59488a.getF71699b();
        }

        public final String toString() {
            return "Icons";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Login;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Login implements OnboardingRoutes {
        public static final Login INSTANCE = new Login();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59489a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(10));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Login);
        }

        public final int hashCode() {
            return 1343000276;
        }

        public final KSerializer<Login> serializer() {
            return (KSerializer) f59489a.getF71699b();
        }

        public final String toString() {
            return "Login";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Notifications;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Notifications implements OnboardingRoutes {
        public static final Notifications INSTANCE = new Notifications();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59490a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(11));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Notifications);
        }

        public final int hashCode() {
            return -917989037;
        }

        public final KSerializer<Notifications> serializer() {
            return (KSerializer) f59490a.getF71699b();
        }

        public final String toString() {
            return "Notifications";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PiplCbt;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class PiplCbt implements OnboardingRoutes {
        public static final PiplCbt INSTANCE = new PiplCbt();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59491a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(12));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PiplCbt);
        }

        public final int hashCode() {
            return 1224711851;
        }

        public final KSerializer<PiplCbt> serializer() {
            return (KSerializer) f59491a.getF71699b();
        }

        public final String toString() {
            return "PiplCbt";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Privacy;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Privacy implements OnboardingRoutes {
        public static final Privacy INSTANCE = new Privacy();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59492a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(13));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Privacy);
        }

        public final int hashCode() {
            return 1476236339;
        }

        public final KSerializer<Privacy> serializer() {
            return (KSerializer) f59492a.getF71699b();
        }

        public final String toString() {
            return "Privacy";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PrivacyPreCompliance;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class PrivacyPreCompliance implements OnboardingRoutes {
        public static final PrivacyPreCompliance INSTANCE = new PrivacyPreCompliance();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59493a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(14));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PrivacyPreCompliance);
        }

        public final int hashCode() {
            return -1914055253;
        }

        public final KSerializer<PrivacyPreCompliance> serializer() {
            return (KSerializer) f59493a.getF71699b();
        }

        public final String toString() {
            return "PrivacyPreCompliance";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$StartNow;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class StartNow implements OnboardingRoutes {
        public static final StartNow INSTANCE = new StartNow();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59494a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(15));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof StartNow);
        }

        public final int hashCode() {
            return 994975689;
        }

        public final KSerializer<StartNow> serializer() {
            return (KSerializer) f59494a.getF71699b();
        }

        public final String toString() {
            return "StartNow";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Transition;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Transition implements OnboardingRoutes {
        public static final Transition INSTANCE = new Transition();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59495a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(16));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Transition);
        }

        public final int hashCode() {
            return -1741244214;
        }

        public final KSerializer<Transition> serializer() {
            return (KSerializer) f59495a.getF71699b();
        }

        public final String toString() {
            return "Transition";
        }
    }
}
