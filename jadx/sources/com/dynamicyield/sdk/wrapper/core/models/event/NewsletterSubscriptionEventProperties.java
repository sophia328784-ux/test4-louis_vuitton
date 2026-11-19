package com.dynamicyield.sdk.wrapper.core.models.event;

import defpackage.mg0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B1\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\tBI\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\b\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/NewsletterSubscriptionEventProperties;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;", "", "cuidType", "cuid", "", "Lcom/dynamicyield/sdk/wrapper/core/models/event/SecondaryIdentifier;", "secondaryIdentifiers", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "dyType", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class NewsletterSubscriptionEventProperties extends PredefinedProperties {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f26331e = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new mg0(0))};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26332b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f26333c;
    public final List d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/NewsletterSubscriptionEventProperties$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/NewsletterSubscriptionEventProperties;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<NewsletterSubscriptionEventProperties> serializer() {
            return NewsletterSubscriptionEventProperties$$serializer.f26334a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NewsletterSubscriptionEventProperties(int i2, String str, String str2, String str3, List list, SerializationConstructorMarker serializationConstructorMarker) {
        super(i2, str, serializationConstructorMarker);
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, NewsletterSubscriptionEventProperties$$serializer.f26334a.getF19838b());
            throw null;
        }
        if ((i2 & 2) == 0) {
            this.f26332b = null;
        } else {
            this.f26332b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f26333c = null;
        } else {
            this.f26333c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = list;
        }
    }

    public NewsletterSubscriptionEventProperties() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ NewsletterSubscriptionEventProperties(String str, String str2, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : list);
    }

    public NewsletterSubscriptionEventProperties(String str, String str2, List<SecondaryIdentifier> list) {
        super("newsletter-subscription-v1");
        this.f26332b = str;
        this.f26333c = str2;
        this.d = list;
    }
}
