package com.vuitton.android.presentation.screen.certificates;

import defpackage.cm;
import defpackage.d21;
import defpackage.fc;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\u0082\u0001\b\n\u000b\f\r\u000e\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute;", "", "List", "Add", "AddConfirmation", "Transfer", "TransferConfirmation", "Capucine", "NfcScan", "Visionnaire", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Add;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$AddConfirmation;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Capucine;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$List;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Transfer;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$TransferConfirmation;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Visionnaire;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateRoute {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$AddConfirmation;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AddConfirmation extends CertificateRoute {
        public static final AddConfirmation INSTANCE = new AddConfirmation(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f55601a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new cm(0));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AddConfirmation);
        }

        public final int hashCode() {
            return -561757939;
        }

        public final KSerializer<AddConfirmation> serializer() {
            return (KSerializer) f55601a.getF71699b();
        }

        public final String toString() {
            return "AddConfirmation";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$List;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class List extends CertificateRoute {
        public static final List INSTANCE = new List(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f55604a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new cm(1));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof List);
        }

        public final int hashCode() {
            return 840955751;
        }

        public final KSerializer<List> serializer() {
            return (KSerializer) f55604a.getF71699b();
        }

        public final String toString() {
            return "List";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Transfer;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Transfer extends CertificateRoute {
        public static final Transfer INSTANCE = new Transfer(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f55607a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new cm(2));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Transfer);
        }

        public final int hashCode() {
            return -1522306508;
        }

        public final KSerializer<Transfer> serializer() {
            return (KSerializer) f55607a.getF71699b();
        }

        public final String toString() {
            return "Transfer";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$TransferConfirmation;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class TransferConfirmation extends CertificateRoute {
        public static final TransferConfirmation INSTANCE = new TransferConfirmation(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f55608a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new cm(3));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof TransferConfirmation);
        }

        public final int hashCode() {
            return 724542601;
        }

        public final KSerializer<TransferConfirmation> serializer() {
            return (KSerializer) f55608a.getF71699b();
        }

        public final String toString() {
            return "TransferConfirmation";
        }
    }

    public CertificateRoute(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Add;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute;", "", "individualNumber", "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Add extends CertificateRoute {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55599a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Add$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Add;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Add> serializer() {
                return CertificateRoute$Add$$serializer.f55600a;
            }
        }

        public /* synthetic */ Add(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if ((i2 & 1) == 0) {
                this.f55599a = null;
            } else {
                this.f55599a = str;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Add) && Intrinsics.c(this.f55599a, ((Add) obj).f55599a);
        }

        public final int hashCode() {
            String str = this.f55599a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("Add(individualNumber=", this.f55599a, ")");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Add() {
            this((String) null, 1, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        }

        public Add(String str) {
            super(null);
            this.f55599a = str;
        }

        public /* synthetic */ Add(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Capucine;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute;", "", "certificateId", "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Capucine extends CertificateRoute {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55602a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Capucine$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Capucine;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Capucine> serializer() {
                return CertificateRoute$Capucine$$serializer.f55603a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Capucine(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, CertificateRoute$Capucine$$serializer.f55603a.a());
                throw null;
            }
            this.f55602a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Capucine) && Intrinsics.c(this.f55602a, ((Capucine) obj).f55602a);
        }

        public final int hashCode() {
            return this.f55602a.hashCode();
        }

        public final String toString() {
            return fc.h("Capucine(certificateId=", this.f55602a, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Capucine(String str) {
            super(null);
            str.getClass();
            this.f55602a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute;", "", "certificateId", "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class NfcScan extends CertificateRoute {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55605a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<NfcScan> serializer() {
                return CertificateRoute$NfcScan$$serializer.f55606a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ NfcScan(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, CertificateRoute$NfcScan$$serializer.f55606a.a());
                throw null;
            }
            this.f55605a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NfcScan) && Intrinsics.c(this.f55605a, ((NfcScan) obj).f55605a);
        }

        public final int hashCode() {
            return this.f55605a.hashCode();
        }

        public final String toString() {
            return fc.h("NfcScan(certificateId=", this.f55605a, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NfcScan(String str) {
            super(null);
            str.getClass();
            this.f55605a = str;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B-\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Visionnaire;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute;", "", "certificateId", "", "isNavigatingAfterScanSuccess", "<init>", "(Ljava/lang/String;Z)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Visionnaire extends CertificateRoute {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55609a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f55610b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Visionnaire$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Visionnaire;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Visionnaire> serializer() {
                return CertificateRoute$Visionnaire$$serializer.f55611a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Visionnaire(int i2, String str, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, CertificateRoute$Visionnaire$$serializer.f55611a.a());
                throw null;
            }
            this.f55609a = str;
            this.f55610b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Visionnaire)) {
                return false;
            }
            Visionnaire visionnaire = (Visionnaire) obj;
            return Intrinsics.c(this.f55609a, visionnaire.f55609a) && this.f55610b == visionnaire.f55610b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f55610b) + (this.f55609a.hashCode() * 31);
        }

        public final String toString() {
            return d21.m("Visionnaire(certificateId=", this.f55609a, ", isNavigatingAfterScanSuccess=", ")", this.f55610b);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Visionnaire(String str, boolean z) {
            super(null);
            str.getClass();
            this.f55609a = str;
            this.f55610b = z;
        }
    }
}
