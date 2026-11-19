package com.dynamicyield.sdk.wrapper.core.models.common.payload;

import com.dynamicyield.sdk.wrapper.core.enums.Channel;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Branch;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.CartItem;
import defpackage.lp;
import defpackage.tr;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00192\u00020\u0001:\u0002\u001a\u0019Bs\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0016\b\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\r\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\n¢\u0006\u0004\b\u0012\u0010\u0013By\b\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\r\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\n\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0012\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;", "", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;", "page", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;", "device", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;", "branch", "Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;", "channel", "", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/CartItem;", "cart", "", "", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute;", "pageAttributes", "listedItems", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class Context {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Lazy[] f26205h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Page f26206a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Device f26207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Branch f26208c;
    public final Channel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f26209e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f26210f;
    public final List g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Context> serializer() {
            return Context$$serializer.f26211a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f26205h = new Lazy[]{null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new lp(27)), LazyKt.a(lazyThreadSafetyMode, new lp(28)), LazyKt.a(lazyThreadSafetyMode, new lp(29))};
    }

    public /* synthetic */ Context(int i2, Page page, Device device, Branch branch, Channel channel, List list, Map map, List list2, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f26206a = null;
        } else {
            this.f26206a = page;
        }
        if ((i2 & 2) == 0) {
            this.f26207b = null;
        } else {
            this.f26207b = device;
        }
        if ((i2 & 4) == 0) {
            this.f26208c = null;
        } else {
            this.f26208c = branch;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = channel;
        }
        if ((i2 & 16) == 0) {
            this.f26209e = null;
        } else {
            this.f26209e = list;
        }
        if ((i2 & 32) == 0) {
            this.f26210f = null;
        } else {
            this.f26210f = map;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = list2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Context)) {
            return false;
        }
        Context context = (Context) obj;
        return Intrinsics.c(this.f26206a, context.f26206a) && Intrinsics.c(this.f26207b, context.f26207b) && Intrinsics.c(this.f26208c, context.f26208c) && this.d == context.d && Intrinsics.c(this.f26209e, context.f26209e) && Intrinsics.c(this.f26210f, context.f26210f) && Intrinsics.c(this.g, context.g);
    }

    public final int hashCode() {
        Page page = this.f26206a;
        int iHashCode = (page == null ? 0 : page.hashCode()) * 31;
        Device device = this.f26207b;
        int iHashCode2 = (iHashCode + (device == null ? 0 : device.hashCode())) * 31;
        Branch branch = this.f26208c;
        int iHashCode3 = (iHashCode2 + (branch == null ? 0 : branch.hashCode())) * 31;
        Channel channel = this.d;
        int iHashCode4 = (iHashCode3 + (channel == null ? 0 : channel.hashCode())) * 31;
        List list = this.f26209e;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        Map map = this.f26210f;
        int iHashCode6 = (iHashCode5 + (map == null ? 0 : map.hashCode())) * 31;
        List list2 = this.g;
        return iHashCode6 + (list2 != null ? list2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Context(page=");
        sb.append(this.f26206a);
        sb.append(", device=");
        sb.append(this.f26207b);
        sb.append(", branch=");
        sb.append(this.f26208c);
        sb.append(", channel=");
        sb.append(this.d);
        sb.append(", cart=");
        sb.append(this.f26209e);
        sb.append(", pageAttributes=");
        sb.append(this.f26210f);
        sb.append(", listedItems=");
        return tr.m(sb, this.g, ')');
    }

    public Context() {
        this((Page) null, (Device) null, (Branch) null, (Channel) null, (List) null, (Map) null, (List) null, CertificateBody.profileType, (DefaultConstructorMarker) null);
    }

    public Context(Page page, Device device, Branch branch, Channel channel, List<CartItem> list, Map<String, ? extends PageAttribute> map, List<String> list2) {
        this.f26206a = page;
        this.f26207b = device;
        this.f26208c = branch;
        this.d = channel;
        this.f26209e = list;
        this.f26210f = map;
        this.g = list2;
    }

    public /* synthetic */ Context(Page page, Device device, Branch branch, Channel channel, List list, Map map, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : page, (i2 & 2) != 0 ? null : device, (i2 & 4) != 0 ? null : branch, (i2 & 8) != 0 ? null : channel, (i2 & 16) != 0 ? null : list, (i2 & 32) != 0 ? null : map, (i2 & 64) != 0 ? null : list2);
    }
}
