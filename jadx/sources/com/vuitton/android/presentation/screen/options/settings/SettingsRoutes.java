package com.vuitton.android.presentation.screen.options.settings;

import defpackage.zu0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \b2\u00020\u0001:\u0005\t\n\u000b\f\bB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u0082\u0001\u0004\r\u000e\u000f\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes;", "", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "<init>", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "Home", "EditSettings", "EditConsents", "EditProfile", "Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditConsents;", "Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditProfile;", "Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditSettings;", "Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$Home;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public abstract class SettingsRoutes {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f59989a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new zu0(9));

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SettingsRoutes> serializer() {
            return (KSerializer) SettingsRoutes.f59989a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditConsents;", "Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final class EditConsents extends SettingsRoutes {
        public static final EditConsents INSTANCE = new EditConsents(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59990b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new zu0(10));

        public final KSerializer<EditConsents> serializer() {
            return (KSerializer) f59990b.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditProfile;", "Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class EditProfile extends SettingsRoutes {
        public static final EditProfile INSTANCE = new EditProfile(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59991b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new zu0(11));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EditProfile);
        }

        public final int hashCode() {
            return 1780621658;
        }

        public final KSerializer<EditProfile> serializer() {
            return (KSerializer) f59991b.getF71699b();
        }

        public final String toString() {
            return "EditProfile";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditSettings;", "Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class EditSettings extends SettingsRoutes {
        public static final EditSettings INSTANCE = new EditSettings(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59992b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new zu0(12));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EditSettings);
        }

        public final int hashCode() {
            return 1801591442;
        }

        public final KSerializer<EditSettings> serializer() {
            return (KSerializer) f59992b.getF71699b();
        }

        public final String toString() {
            return "EditSettings";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$Home;", "Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Home extends SettingsRoutes {
        public static final Home INSTANCE = new Home(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Lazy f59993b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new zu0(13));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Home);
        }

        public final int hashCode() {
            return -72269788;
        }

        public final KSerializer<Home> serializer() {
            return (KSerializer) f59993b.getF71699b();
        }

        public final String toString() {
            return "Home";
        }
    }

    public /* synthetic */ SettingsRoutes(int i2, SerializationConstructorMarker serializationConstructorMarker) {
    }

    public SettingsRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
