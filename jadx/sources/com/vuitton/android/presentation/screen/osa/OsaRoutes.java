package com.vuitton.android.presentation.screen.osa;

import androidx.navigation3.runtime.NavKey;
import defpackage.ii0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/OsaRoutes;", "Landroidx/navigation3/runtime/NavKey;", "Login", "List", "LocationForm", "ContactForm", "Kisa", "Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$ContactForm;", "Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$Kisa;", "Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$List;", "Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$LocationForm;", "Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$Login;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class OsaRoutes implements NavKey {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$ContactForm;", "Lcom/vuitton/android/presentation/screen/osa/OsaRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ContactForm extends OsaRoutes {
        public static final ContactForm INSTANCE = new ContactForm(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f60595a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ii0(10));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ContactForm);
        }

        public final int hashCode() {
            return -60604691;
        }

        public final KSerializer<ContactForm> serializer() {
            return (KSerializer) f60595a.getF71699b();
        }

        public final String toString() {
            return "ContactForm";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$Kisa;", "Lcom/vuitton/android/presentation/screen/osa/OsaRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Kisa extends OsaRoutes {
        public static final Kisa INSTANCE = new Kisa(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f60596a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ii0(11));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Kisa);
        }

        public final int hashCode() {
            return 588510819;
        }

        public final KSerializer<Kisa> serializer() {
            return (KSerializer) f60596a.getF71699b();
        }

        public final String toString() {
            return "Kisa";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$List;", "Lcom/vuitton/android/presentation/screen/osa/OsaRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class List extends OsaRoutes {
        public static final List INSTANCE = new List(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f60597a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ii0(12));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof List);
        }

        public final int hashCode() {
            return 588540629;
        }

        public final KSerializer<List> serializer() {
            return (KSerializer) f60597a.getF71699b();
        }

        public final String toString() {
            return "List";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$LocationForm;", "Lcom/vuitton/android/presentation/screen/osa/OsaRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class LocationForm extends OsaRoutes {
        public static final LocationForm INSTANCE = new LocationForm(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f60598a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ii0(13));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LocationForm);
        }

        public final int hashCode() {
            return 1102827856;
        }

        public final KSerializer<LocationForm> serializer() {
            return (KSerializer) f60598a.getF71699b();
        }

        public final String toString() {
            return "LocationForm";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$Login;", "Lcom/vuitton/android/presentation/screen/osa/OsaRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Login extends OsaRoutes {
        public static final Login INSTANCE = new Login(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f60599a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ii0(14));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Login);
        }

        public final int hashCode() {
            return 1065057298;
        }

        public final KSerializer<Login> serializer() {
            return (KSerializer) f60599a.getF71699b();
        }

        public final String toString() {
            return "Login";
        }
    }

    public OsaRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
