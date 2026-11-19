package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.dynamicyield.sdk.wrapper.core.models.event.AddToCartEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.AddToWishListEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.ApplicationEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.ChangeAttributesProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.FilterItemsEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.IdentifyUserProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.InformAffinityEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.KeywordSearchEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.LoginProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.NewsletterSubscriptionEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.PredefinedProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.PromoCodeEnterEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.PurchaseEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.PushOptInProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.PushOptOutProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.RemoveFromCartEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.SignupProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.SortItemEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.SubmissionEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.SyncCartEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.VideoWatchEventProperties;
import defpackage.md;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PredefinedPropertiesSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PredefinedPropertiesSerializer implements KSerializer<PredefinedProperties> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PredefinedPropertiesSerializer f25975a = new PredefinedPropertiesSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f25976b;

    static {
        SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[0];
        if (StringsKt.w("PredefinedProperties")) {
            md.n("Blank serial names are prohibited");
            return;
        }
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder("PredefinedProperties");
        classSerialDescriptorBuilder.a("dyType", StringSerializer.f75685b, EmptyList.f71768b, false);
        f25976b = new SerialDescriptorImpl("PredefinedProperties", StructureKind.CLASS.f75564a, classSerialDescriptorBuilder.f75530c.size(), ArraysKt.W(serialDescriptorArr), classSerialDescriptorBuilder);
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f25976b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        throw new SerializationException("This class can't be deserialize");
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        PredefinedProperties predefinedProperties = (PredefinedProperties) obj;
        predefinedProperties.getClass();
        if (predefinedProperties instanceof AddToCartEventProperties) {
            encoder.d(AddToCartEventProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof RemoveFromCartEventProperties) {
            encoder.d(RemoveFromCartEventProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof SyncCartEventProperties) {
            encoder.d(SyncCartEventProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof ApplicationEventProperties) {
            encoder.d(ApplicationEventProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof LoginProperties) {
            encoder.d(LoginProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof SignupProperties) {
            encoder.d(SignupProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof IdentifyUserProperties) {
            encoder.d(IdentifyUserProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof SubmissionEventProperties) {
            encoder.d(SubmissionEventProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof PurchaseEventProperties) {
            encoder.d(PurchaseEventProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof AddToWishListEventProperties) {
            encoder.d(AddToWishListEventProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof FilterItemsEventProperties) {
            encoder.d(FilterItemsEventProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof ChangeAttributesProperties) {
            encoder.d(ChangeAttributesProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof NewsletterSubscriptionEventProperties) {
            encoder.d(NewsletterSubscriptionEventProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof PushOptInProperties) {
            encoder.d(PushOptInProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof PushOptOutProperties) {
            encoder.d(PushOptOutProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof KeywordSearchEventProperties) {
            encoder.d(KeywordSearchEventProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof VideoWatchEventProperties) {
            encoder.d(VideoWatchEventProperties.INSTANCE.serializer(), predefinedProperties);
            return;
        }
        if (predefinedProperties instanceof SortItemEventProperties) {
            encoder.d(SortItemEventProperties.INSTANCE.serializer(), predefinedProperties);
        } else if (predefinedProperties instanceof PromoCodeEnterEventProperties) {
            encoder.d(PromoCodeEnterEventProperties.INSTANCE.serializer(), predefinedProperties);
        } else if (predefinedProperties instanceof InformAffinityEventProperties) {
            encoder.d(InformAffinityEventProperties.INSTANCE.serializer(), predefinedProperties);
        }
    }
}
