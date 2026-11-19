package com.vuitton.android.presentation.screen.account.myinformation;

import androidx.navigation3.runtime.NavKey;
import defpackage.dd0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \b2\u00020\u0001:\u0006\t\n\u000b\f\r\bB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u0082\u0001\u0005\u000e\u000f\u0010\u0011\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute;", "Landroidx/navigation3/runtime/NavKey;", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "<init>", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "MyInfo", "EditMyInfo", "EditPassword", "EditTaxId", "EditBranchId", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditBranchId;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditMyInfo;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditPassword;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditTaxId;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$MyInfo;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public abstract class MyInformationRoute implements NavKey {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f52517a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(5));

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<MyInformationRoute> serializer() {
            return (KSerializer) MyInformationRoute.f52517a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditBranchId;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class EditBranchId extends MyInformationRoute {
        public static final EditBranchId INSTANCE = new EditBranchId(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Lazy f52518b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(6));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EditBranchId);
        }

        public final int hashCode() {
            return -2106006594;
        }

        public final KSerializer<EditBranchId> serializer() {
            return (KSerializer) f52518b.getF71699b();
        }

        public final String toString() {
            return "EditBranchId";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditMyInfo;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class EditMyInfo extends MyInformationRoute {
        public static final EditMyInfo INSTANCE = new EditMyInfo(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Lazy f52519b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(7));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EditMyInfo);
        }

        public final int hashCode() {
            return 1073785371;
        }

        public final KSerializer<EditMyInfo> serializer() {
            return (KSerializer) f52519b.getF71699b();
        }

        public final String toString() {
            return "EditMyInfo";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditPassword;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class EditPassword extends MyInformationRoute {
        public static final EditPassword INSTANCE = new EditPassword(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Lazy f52520b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(8));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EditPassword);
        }

        public final int hashCode() {
            return -863612932;
        }

        public final KSerializer<EditPassword> serializer() {
            return (KSerializer) f52520b.getF71699b();
        }

        public final String toString() {
            return "EditPassword";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditTaxId;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class EditTaxId extends MyInformationRoute {
        public static final EditTaxId INSTANCE = new EditTaxId(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Lazy f52521b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(9));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EditTaxId);
        }

        public final int hashCode() {
            return 1980094565;
        }

        public final KSerializer<EditTaxId> serializer() {
            return (KSerializer) f52521b.getF71699b();
        }

        public final String toString() {
            return "EditTaxId";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$MyInfo;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class MyInfo extends MyInformationRoute {
        public static final MyInfo INSTANCE = new MyInfo(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Lazy f52522b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(10));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof MyInfo);
        }

        public final int hashCode() {
            return -1683189007;
        }

        public final KSerializer<MyInfo> serializer() {
            return (KSerializer) f52522b.getF71699b();
        }

        public final String toString() {
            return "MyInfo";
        }
    }

    public /* synthetic */ MyInformationRoute(int i2, SerializationConstructorMarker serializationConstructorMarker) {
    }

    public MyInformationRoute(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
