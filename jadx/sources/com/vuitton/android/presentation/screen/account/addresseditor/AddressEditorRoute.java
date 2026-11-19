package com.vuitton.android.presentation.screen.account.addresseditor;

import defpackage.v;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorRoute;", "", "AddressEditorForm", "AddressEditorAutocomplete", "Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorRoute$AddressEditorAutocomplete;", "Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorRoute$AddressEditorForm;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AddressEditorRoute {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorRoute$AddressEditorAutocomplete;", "Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AddressEditorAutocomplete extends AddressEditorRoute {
        public static final AddressEditorAutocomplete INSTANCE = new AddressEditorAutocomplete(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f52211a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new v(27));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AddressEditorAutocomplete);
        }

        public final int hashCode() {
            return -765764176;
        }

        public final KSerializer<AddressEditorAutocomplete> serializer() {
            return (KSerializer) f52211a.getF71699b();
        }

        public final String toString() {
            return "AddressEditorAutocomplete";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorRoute$AddressEditorForm;", "Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AddressEditorForm extends AddressEditorRoute {
        public static final AddressEditorForm INSTANCE = new AddressEditorForm(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f52212a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new v(28));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AddressEditorForm);
        }

        public final int hashCode() {
            return 1468777100;
        }

        public final KSerializer<AddressEditorForm> serializer() {
            return (KSerializer) f52212a.getF71699b();
        }

        public final String toString() {
            return "AddressEditorForm";
        }
    }

    public AddressEditorRoute(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
