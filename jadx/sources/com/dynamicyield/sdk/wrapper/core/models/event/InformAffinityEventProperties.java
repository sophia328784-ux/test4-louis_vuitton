package com.dynamicyield.sdk.wrapper.core.models.event;

import com.appsflyer.sdk_base.referrer.Payload;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.l30;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB!\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bB?\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityEventProperties;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;", "", Payload.SOURCE, "", "Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "dyType", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class InformAffinityEventProperties extends PredefinedProperties {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new l30(28))};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f26323c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityEventProperties$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityEventProperties;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<InformAffinityEventProperties> serializer() {
            return InformAffinityEventProperties$$serializer.f26324a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ InformAffinityEventProperties(int i2, String str, String str2, List list, SerializationConstructorMarker serializationConstructorMarker) {
        super(i2, str, serializationConstructorMarker);
        if (5 != (i2 & 5)) {
            PluginExceptionsKt.b(i2, 5, InformAffinityEventProperties$$serializer.f26324a.getF19838b());
            throw null;
        }
        if ((i2 & 2) == 0) {
            this.f26322b = null;
        } else {
            this.f26322b = str2;
        }
        this.f26323c = list;
    }

    public /* synthetic */ InformAffinityEventProperties(String str, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, list);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InformAffinityEventProperties(String str, List<InformAffinityData> list) {
        super("inform-affinity-v1");
        list.getClass();
        this.f26322b = str;
        this.f26323c = list;
    }
}
