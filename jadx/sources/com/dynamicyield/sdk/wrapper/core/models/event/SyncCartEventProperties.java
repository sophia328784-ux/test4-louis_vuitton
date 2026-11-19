package com.dynamicyield.sdk.wrapper.core.models.event;

import com.dynamicyield.sdk.wrapper.core.enums.CurrencyType;
import defpackage.o11;
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
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nBG\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\t\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;", "", "value", "Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;", "currency", "", "Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;", "cart", "<init>", "(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/util/List;)V", "", "seen0", "", "dyType", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class SyncCartEventProperties extends PredefinedProperties {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f26376e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f26377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CurrencyType f26378c;
    public final List d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SyncCartEventProperties> serializer() {
            return SyncCartEventProperties$$serializer.f26379a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f26376e = new Lazy[]{null, null, LazyKt.a(lazyThreadSafetyMode, new o11(22)), LazyKt.a(lazyThreadSafetyMode, new o11(23))};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SyncCartEventProperties(int i2, String str, float f2, CurrencyType currencyType, List list, SerializationConstructorMarker serializationConstructorMarker) {
        super(i2, str, serializationConstructorMarker);
        if (11 != (i2 & 11)) {
            PluginExceptionsKt.b(i2, 11, SyncCartEventProperties$$serializer.f26379a.getF19838b());
            throw null;
        }
        this.f26377b = f2;
        if ((i2 & 4) == 0) {
            this.f26378c = null;
        } else {
            this.f26378c = currencyType;
        }
        this.d = list;
    }

    public /* synthetic */ SyncCartEventProperties(float f2, CurrencyType currencyType, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(f2, (i2 & 2) != 0 ? null : currencyType, list);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SyncCartEventProperties(float f2, CurrencyType currencyType, List<CartInnerItem> list) {
        super("sync-cart-v1");
        list.getClass();
        this.f26377b = f2;
        this.f26378c = currencyType;
        this.d = list;
    }
}
