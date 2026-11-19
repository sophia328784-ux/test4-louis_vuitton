package com.vuitton.foundation.model.domain.model.privacy;

import defpackage.lp;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \n2\u00020\u0001:\u0007\u000b\f\r\u000e\u000f\u0010\nB%\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t\u0082\u0001\u0006\u0011\u0012\u0013\u0014\u0015\u0016¨\u0006\u0017"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/Consent;", "", "", "seen0", "Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;", "value", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "<init>", "(ILcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "FunctionalConsent", "AnalyticsConsent", "CustomisationConsent", "SocialConsent", "ChatConsent", "LucieLabsConsent", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public abstract class Consent {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Lazy[] f67880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy f67881c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConsentValue f67882a;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/Consent$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Consent> serializer() {
            return (KSerializer) Consent.f67881c.getF71699b();
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f67880b = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new lp(0))};
        f67881c = LazyKt.a(lazyThreadSafetyMode, new lp(1));
    }

    public /* synthetic */ Consent(int i2, ConsentValue consentValue, SerializationConstructorMarker serializationConstructorMarker) {
        this.f67882a = consentValue;
    }

    public Consent(ConsentValue consentValue, DefaultConstructorMarker defaultConstructorMarker) {
        this.f67882a = consentValue;
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B/\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent;", "Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;", "consentValue", "<init>", "(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V", "", "seen0", "value", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AnalyticsConsent extends Consent {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Lazy[] f67883e;
        public final ConsentValue d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<AnalyticsConsent> serializer() {
                return Consent$AnalyticsConsent$$serializer.f67884a;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            f67883e = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new lp(2)), LazyKt.a(lazyThreadSafetyMode, new lp(3))};
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnalyticsConsent(int i2, ConsentValue consentValue, ConsentValue consentValue2, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, consentValue, serializationConstructorMarker);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, Consent$AnalyticsConsent$$serializer.f67884a.getF19850b());
                throw null;
            }
            this.d = consentValue2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AnalyticsConsent) && this.d == ((AnalyticsConsent) obj).d;
        }

        public final int hashCode() {
            return this.d.hashCode();
        }

        public final String toString() {
            return "AnalyticsConsent(consentValue=" + this.d + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnalyticsConsent(ConsentValue consentValue) {
            super(consentValue, null);
            consentValue.getClass();
            this.d = consentValue;
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B/\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent;", "Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;", "consentValue", "<init>", "(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V", "", "seen0", "value", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ChatConsent extends Consent {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Lazy[] f67885e;
        public final ConsentValue d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<ChatConsent> serializer() {
                return Consent$ChatConsent$$serializer.f67886a;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            f67885e = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new lp(4)), LazyKt.a(lazyThreadSafetyMode, new lp(5))};
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ ChatConsent(int i2, ConsentValue consentValue, ConsentValue consentValue2, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, consentValue, serializationConstructorMarker);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, Consent$ChatConsent$$serializer.f67886a.getF19850b());
                throw null;
            }
            this.d = consentValue2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ChatConsent) && this.d == ((ChatConsent) obj).d;
        }

        public final int hashCode() {
            return this.d.hashCode();
        }

        public final String toString() {
            return "ChatConsent(consentValue=" + this.d + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChatConsent(ConsentValue consentValue) {
            super(consentValue, null);
            consentValue.getClass();
            this.d = consentValue;
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B/\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent;", "Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;", "consentValue", "<init>", "(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V", "", "seen0", "value", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class CustomisationConsent extends Consent {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Lazy[] f67887e;
        public final ConsentValue d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<CustomisationConsent> serializer() {
                return Consent$CustomisationConsent$$serializer.f67888a;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            f67887e = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new lp(6)), LazyKt.a(lazyThreadSafetyMode, new lp(7))};
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ CustomisationConsent(int i2, ConsentValue consentValue, ConsentValue consentValue2, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, consentValue, serializationConstructorMarker);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, Consent$CustomisationConsent$$serializer.f67888a.getF19850b());
                throw null;
            }
            this.d = consentValue2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CustomisationConsent) && this.d == ((CustomisationConsent) obj).d;
        }

        public final int hashCode() {
            return this.d.hashCode();
        }

        public final String toString() {
            return "CustomisationConsent(consentValue=" + this.d + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CustomisationConsent(ConsentValue consentValue) {
            super(consentValue, null);
            consentValue.getClass();
            this.d = consentValue;
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B/\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent;", "Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;", "consentValue", "<init>", "(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V", "", "seen0", "value", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class FunctionalConsent extends Consent {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Lazy[] f67889e;
        public final ConsentValue d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<FunctionalConsent> serializer() {
                return Consent$FunctionalConsent$$serializer.f67890a;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            f67889e = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new lp(8)), LazyKt.a(lazyThreadSafetyMode, new lp(9))};
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ FunctionalConsent(int i2, ConsentValue consentValue, ConsentValue consentValue2, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, consentValue, serializationConstructorMarker);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, Consent$FunctionalConsent$$serializer.f67890a.getF19850b());
                throw null;
            }
            this.d = consentValue2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof FunctionalConsent) && this.d == ((FunctionalConsent) obj).d;
        }

        public final int hashCode() {
            return this.d.hashCode();
        }

        public final String toString() {
            return "FunctionalConsent(consentValue=" + this.d + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FunctionalConsent(ConsentValue consentValue) {
            super(consentValue, null);
            consentValue.getClass();
            this.d = consentValue;
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B/\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent;", "Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;", "consentValue", "<init>", "(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V", "", "seen0", "value", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class LucieLabsConsent extends Consent {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Lazy[] f67891e;
        public final ConsentValue d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<LucieLabsConsent> serializer() {
                return Consent$LucieLabsConsent$$serializer.f67892a;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            f67891e = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new lp(10)), LazyKt.a(lazyThreadSafetyMode, new lp(11))};
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ LucieLabsConsent(int i2, ConsentValue consentValue, ConsentValue consentValue2, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, consentValue, serializationConstructorMarker);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, Consent$LucieLabsConsent$$serializer.f67892a.getF19850b());
                throw null;
            }
            this.d = consentValue2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LucieLabsConsent) && this.d == ((LucieLabsConsent) obj).d;
        }

        public final int hashCode() {
            return this.d.hashCode();
        }

        public final String toString() {
            return "LucieLabsConsent(consentValue=" + this.d + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LucieLabsConsent(ConsentValue consentValue) {
            super(consentValue, null);
            consentValue.getClass();
            this.d = consentValue;
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B/\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent;", "Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;", "consentValue", "<init>", "(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V", "", "seen0", "value", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class SocialConsent extends Consent {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Lazy[] f67893e;
        public final ConsentValue d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<SocialConsent> serializer() {
                return Consent$SocialConsent$$serializer.f67894a;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            f67893e = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new lp(12)), LazyKt.a(lazyThreadSafetyMode, new lp(13))};
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ SocialConsent(int i2, ConsentValue consentValue, ConsentValue consentValue2, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, consentValue, serializationConstructorMarker);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, Consent$SocialConsent$$serializer.f67894a.getF19850b());
                throw null;
            }
            this.d = consentValue2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SocialConsent) && this.d == ((SocialConsent) obj).d;
        }

        public final int hashCode() {
            return this.d.hashCode();
        }

        public final String toString() {
            return "SocialConsent(consentValue=" + this.d + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SocialConsent(ConsentValue consentValue) {
            super(consentValue, null);
            consentValue.getClass();
            this.d = consentValue;
        }
    }
}
