package com.dynamicyield.sdk.wrapper.core.models.event;

import com.dynamicyield.sdk.wrapper.core.enums.CurrencyType;
import defpackage.g5;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015B=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n¢\u0006\u0004\b\r\u0010\u000eB[\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\r\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;", "", "value", "Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;", "currency", "", "productId", "Lkotlin/UInt;", "quantity", "", "Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;", "cart", "<init>", "(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "dyType", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;Lkotlin/UInt;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class ApplicationEventProperties extends PredefinedProperties {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f26292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CurrencyType f26293c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f26294e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f26295f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ApplicationEventProperties> serializer() {
            return ApplicationEventProperties$$serializer.f26296a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        g = new Lazy[]{null, null, LazyKt.a(lazyThreadSafetyMode, new g5(15)), null, null, LazyKt.a(lazyThreadSafetyMode, new g5(16))};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ApplicationEventProperties(int i2, String str, float f2, CurrencyType currencyType, String str2, UInt uInt, List list, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        super(i2, str, serializationConstructorMarker);
        if (27 != (i2 & 27)) {
            PluginExceptionsKt.b(i2, 27, ApplicationEventProperties$$serializer.f26296a.getF19838b());
            throw null;
        }
        this.f26292b = f2;
        if ((i2 & 4) == 0) {
            this.f26293c = null;
        } else {
            this.f26293c = currencyType;
        }
        this.d = str2;
        this.f26294e = uInt.f71724b;
        if ((i2 & 32) == 0) {
            this.f26295f = null;
        } else {
            this.f26295f = list;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplicationEventProperties(float f2, CurrencyType currencyType, String str, int i2, List list, DefaultConstructorMarker defaultConstructorMarker) {
        super("add-to-cart-v1");
        str.getClass();
        this.f26292b = f2;
        this.f26293c = currencyType;
        this.d = str;
        this.f26294e = i2;
        this.f26295f = list;
    }

    public /* synthetic */ ApplicationEventProperties(float f2, CurrencyType currencyType, String str, int i2, List list, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(f2, (i3 & 2) != 0 ? null : currencyType, str, i2, (i3 & 16) != 0 ? null : list, null);
    }
}
