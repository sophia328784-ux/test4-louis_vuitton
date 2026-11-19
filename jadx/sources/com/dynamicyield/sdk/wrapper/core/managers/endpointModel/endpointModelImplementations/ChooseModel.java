package com.dynamicyield.sdk.wrapper.core.managers.endpointModel.endpointModelImplementations;

import com.dynamicyield.sdk.wrapper.core.enums.DayPart;
import com.dynamicyield.sdk.wrapper.core.enums.HttpMethod;
import com.dynamicyield.sdk.wrapper.core.enums.OrderFulfillment;
import com.dynamicyield.sdk.wrapper.core.enums.ResultStatus;
import com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol;
import com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProvider;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.DYLogger;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Branch;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.CartItem;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.ChooseOptions;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Options;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Preview;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.RecsProductDataOptions;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Selector;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.ChoosePayload;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Context;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Device;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Page;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.PageAttribute;
import com.dynamicyield.sdk.wrapper.core.models.exception.NetworkFailedException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001Bñ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0016\b\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u001c\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u001c¢\u0006\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;", "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;", "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;", "endpointModelProvider", "", "", "selectorNames", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;", "page", "selectorGroups", "selectorPreviews", "Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;", "dayPart", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/CartItem;", "cart", "branchId", "Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;", "orderFulfillment", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;", "options", "", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute;", "pageAttributes", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;", "recsProductData", "listedItems", "cuid", "cuidType", "", "addDeviceDateTime", "ignoreWhenMissingActiveConsentAccepted", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Ljava/util/List;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Ljava/util/List;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;Ljava/util/Map;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZ)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ChooseModel implements EndpointModelProtocol {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EndpointModelProvider f25895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f25896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Page f25897c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f25898e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DayPart f25899f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f25900h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final OrderFulfillment f25901i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ChooseOptions f25902j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Map f25903k;
    public final RecsProductDataOptions l;
    public final List m;
    public final String n;
    public final String o;
    public final boolean p;
    public final boolean q;
    public final HttpMethod r;
    public final String s;
    public final String t;
    public final DYLogger u;
    public final String v;

    public /* synthetic */ ChooseModel(EndpointModelProvider endpointModelProvider, List list, Page page, List list2, List list3, DayPart dayPart, List list4, String str, OrderFulfillment orderFulfillment, ChooseOptions chooseOptions, Map map, RecsProductDataOptions recsProductDataOptions, List list5, String str2, String str3, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(endpointModelProvider, (i2 & 2) != 0 ? null : list, page, (i2 & 8) != 0 ? null : list2, (i2 & 16) != 0 ? null : list3, (i2 & 32) != 0 ? null : dayPart, (i2 & 64) != 0 ? null : list4, (i2 & 128) != 0 ? null : str, (i2 & 256) != 0 ? null : orderFulfillment, (i2 & 512) != 0 ? null : chooseOptions, (i2 & 1024) != 0 ? null : map, (i2 & 2048) != 0 ? null : recsProductDataOptions, (i2 & 4096) != 0 ? null : list5, (i2 & 8192) != 0 ? null : str2, (i2 & 16384) != 0 ? null : str3, (32768 & i2) != 0 ? true : z, (i2 & 65536) != 0 ? false : z2);
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: a, reason: from getter */
    public final DYLogger getU() {
        return this.u;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    public final List b(String str) {
        return this.f25895a.d(str);
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    public final ResultStatus c(Integer num, List list, Exception exc) {
        return EndpointModelProtocol.DefaultImpls.b(this, num, list, exc);
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    public final NetworkFailedException d(String str, Integer num, String str2, String str3) {
        return EndpointModelProtocol.DefaultImpls.a(this, str, num, str2, str3);
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    public final String e() {
        Boolean bool;
        Boolean bool2;
        Options options;
        EndpointModelProvider endpointModelProvider = this.f25895a;
        Device device = new Device(endpointModelProvider.a().f25863c, endpointModelProvider.a().f25865f, this.p ? new Date() : null, endpointModelProvider.a().d);
        Page page = this.f25897c;
        if (page.f26232e == null) {
            page.f26232e = endpointModelProvider.a().g;
        }
        OrderFulfillment orderFulfillment = this.f25901i;
        String str = this.f25900h;
        DayPart dayPart = this.f25899f;
        Context context = new Context(this.f25897c, device, (dayPart == null && str == null && orderFulfillment == null) ? null : new Branch(str, dayPart, orderFulfillment), endpointModelProvider.a().f25864e, this.g, this.f25903k, this.m);
        List list = this.f25898e;
        Selector selector = new Selector(this.f25896b, this.d, list != null ? new Preview(list) : null);
        ChooseOptions chooseOptions = this.f25902j;
        if (chooseOptions == null || (bool = chooseOptions.f26023a) == null) {
            bool = endpointModelProvider.a().f25866h;
        }
        if (chooseOptions == null || (bool2 = chooseOptions.f26025c) == null) {
            bool2 = endpointModelProvider.a().f25867i;
        }
        Boolean bool3 = chooseOptions != null ? chooseOptions.f26024b : null;
        RecsProductDataOptions recsProductDataOptions = this.l;
        Object[] objArr = {bool, bool3, bool2, recsProductDataOptions};
        for (int i2 = 0; i2 < 4; i2++) {
            if (objArr[i2] != null) {
                options = new Options(bool, chooseOptions != null ? chooseOptions.f26024b : null, bool2, recsProductDataOptions);
                return endpointModelProvider.c(new ChoosePayload(endpointModelProvider.getSession(), endpointModelProvider.b(this.n, this.o), selector, context, options));
            }
        }
        options = null;
        return endpointModelProvider.c(new ChoosePayload(endpointModelProvider.getSession(), endpointModelProvider.b(this.n, this.o), selector, context, options));
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: f, reason: from getter */
    public final boolean getQ() {
        return this.q;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: g, reason: from getter */
    public final String getV() {
        return this.v;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    public final String getUrl() {
        return EndpointModelProtocol.DefaultImpls.c(this);
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: h, reason: from getter */
    public final HttpMethod getR() {
        return this.r;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: i, reason: from getter */
    public final String getS() {
        return this.s;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: j, reason: from getter */
    public final EndpointModelProvider getF25895a() {
        return this.f25895a;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: k, reason: from getter */
    public final String getT() {
        return this.t;
    }

    public ChooseModel(EndpointModelProvider endpointModelProvider, List<String> list, Page page, List<String> list2, List<String> list3, DayPart dayPart, List<CartItem> list4, String str, OrderFulfillment orderFulfillment, ChooseOptions chooseOptions, Map<String, ? extends PageAttribute> map, RecsProductDataOptions recsProductDataOptions, List<String> list5, String str2, String str3, boolean z, boolean z2) {
        endpointModelProvider.getClass();
        page.getClass();
        this.f25895a = endpointModelProvider;
        this.f25896b = list;
        this.f25897c = page;
        this.d = list2;
        this.f25898e = list3;
        this.f25899f = dayPart;
        this.g = list4;
        this.f25900h = str;
        this.f25901i = orderFulfillment;
        this.f25902j = chooseOptions;
        this.f25903k = map;
        this.l = recsProductDataOptions;
        this.m = list5;
        this.n = str2;
        this.o = str3;
        this.p = z;
        this.q = z2;
        this.r = HttpMethod.POST;
        this.s = "failed get Choose variations for selectorNames: " + list + " selectorGroups: " + list2;
        this.t = "Choose Endpoint";
        this.u = new DYLogger("Choose Endpoint", null, 2, null);
        this.v = "serve/user/choose";
    }
}
