package com.vuitton.android.presentation.screen.options;

import defpackage.mg0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\u0082\u0001\b\n\u000b\f\r\u000e\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsRoutes;", "", "Menu", "LegalMentions", "PrivacyPolicy", "Dispatch", "AppInfo", "Notifications", "Accessibility", "FeatureFlagMenu", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Accessibility;", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$AppInfo;", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Dispatch;", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$FeatureFlagMenu;", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$LegalMentions;", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Menu;", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Notifications;", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$PrivacyPolicy;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class OptionsRoutes {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Accessibility;", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Accessibility extends OptionsRoutes {
        public static final Accessibility INSTANCE = new Accessibility(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59630a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(21));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Accessibility);
        }

        public final int hashCode() {
            return 66543033;
        }

        public final KSerializer<Accessibility> serializer() {
            return (KSerializer) f59630a.getF71699b();
        }

        public final String toString() {
            return "Accessibility";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$AppInfo;", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AppInfo extends OptionsRoutes {
        public static final AppInfo INSTANCE = new AppInfo(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59631a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(22));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AppInfo);
        }

        public final int hashCode() {
            return -1078959334;
        }

        public final KSerializer<AppInfo> serializer() {
            return (KSerializer) f59631a.getF71699b();
        }

        public final String toString() {
            return "AppInfo";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Dispatch;", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Dispatch extends OptionsRoutes {
        public static final Dispatch INSTANCE = new Dispatch(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59632a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(23));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Dispatch);
        }

        public final int hashCode() {
            return 49434927;
        }

        public final KSerializer<Dispatch> serializer() {
            return (KSerializer) f59632a.getF71699b();
        }

        public final String toString() {
            return "Dispatch";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$FeatureFlagMenu;", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class FeatureFlagMenu extends OptionsRoutes {
        public static final FeatureFlagMenu INSTANCE = new FeatureFlagMenu(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59633a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(24));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof FeatureFlagMenu);
        }

        public final int hashCode() {
            return 311077292;
        }

        public final KSerializer<FeatureFlagMenu> serializer() {
            return (KSerializer) f59633a.getF71699b();
        }

        public final String toString() {
            return "FeatureFlagMenu";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$LegalMentions;", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class LegalMentions extends OptionsRoutes {
        public static final LegalMentions INSTANCE = new LegalMentions(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59634a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(25));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LegalMentions);
        }

        public final int hashCode() {
            return -1650968051;
        }

        public final KSerializer<LegalMentions> serializer() {
            return (KSerializer) f59634a.getF71699b();
        }

        public final String toString() {
            return "LegalMentions";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Menu;", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Menu extends OptionsRoutes {
        public static final Menu INSTANCE = new Menu(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59635a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(26));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Menu);
        }

        public final int hashCode() {
            return 1404093588;
        }

        public final KSerializer<Menu> serializer() {
            return (KSerializer) f59635a.getF71699b();
        }

        public final String toString() {
            return "Menu";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Notifications;", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Notifications extends OptionsRoutes {
        public static final Notifications INSTANCE = new Notifications(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59636a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(27));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Notifications);
        }

        public final int hashCode() {
            return 1552036179;
        }

        public final KSerializer<Notifications> serializer() {
            return (KSerializer) f59636a.getF71699b();
        }

        public final String toString() {
            return "Notifications";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$PrivacyPolicy;", "Lcom/vuitton/android/presentation/screen/options/OptionsRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class PrivacyPolicy extends OptionsRoutes {
        public static final PrivacyPolicy INSTANCE = new PrivacyPolicy(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59637a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(28));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PrivacyPolicy);
        }

        public final int hashCode() {
            return 1818790725;
        }

        public final KSerializer<PrivacyPolicy> serializer() {
            return (KSerializer) f59637a.getF71699b();
        }

        public final String toString() {
            return "PrivacyPolicy";
        }
    }

    public OptionsRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
