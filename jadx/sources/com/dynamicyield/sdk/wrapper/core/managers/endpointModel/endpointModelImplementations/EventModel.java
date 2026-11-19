package com.dynamicyield.sdk.wrapper.core.managers.endpointModel.endpointModelImplementations;

import com.dynamicyield.sdk.wrapper.core.enums.DayPart;
import com.dynamicyield.sdk.wrapper.core.enums.HttpMethod;
import com.dynamicyield.sdk.wrapper.core.enums.OrderFulfillment;
import com.dynamicyield.sdk.wrapper.core.enums.ResultStatus;
import com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol;
import com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProvider;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.DYLogger;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Branch;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Context;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Device;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.EventsPayload;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Page;
import com.dynamicyield.sdk.wrapper.core.models.event.DYEvent;
import com.dynamicyield.sdk.wrapper.core.models.exception.NetworkFailedException;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.Date;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004\"\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;", "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;", "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;", "endpointModelProvider", "", "Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;", DbParams.TABLE_EVENTS, "", "addDeviceDateTime", "", "branchId", "Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;", "dayPart", "Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;", "orderFulfillment", "ignoreWhenMissingActiveConsentAccepted", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;[Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;ZLjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;Z)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EventModel implements EndpointModelProtocol {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EndpointModelProvider f25912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DYEvent[] f25913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f25914c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DayPart f25915e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final OrderFulfillment f25916f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HttpMethod f25917h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f25918i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f25919j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f25920k;
    public final DYLogger l;

    public EventModel(EndpointModelProvider endpointModelProvider, DYEvent[] dYEventArr, boolean z, String str, DayPart dayPart, OrderFulfillment orderFulfillment, boolean z2) {
        endpointModelProvider.getClass();
        dYEventArr.getClass();
        this.f25912a = endpointModelProvider;
        this.f25913b = dYEventArr;
        this.f25914c = z;
        this.d = str;
        this.f25915e = dayPart;
        this.f25916f = orderFulfillment;
        this.g = z2;
        this.f25917h = HttpMethod.POST;
        this.f25918i = "collect/user/event";
        this.f25919j = "failed to send events";
        this.f25920k = "Event Endpoint";
        this.l = new DYLogger("Event Endpoint", null, 2, null);
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: a, reason: from getter */
    public final DYLogger getL() {
        return this.l;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    public final List b(String str) {
        return this.f25912a.d(str);
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
        EndpointModelProvider endpointModelProvider = this.f25912a;
        Device device = new Device(endpointModelProvider.a().f25863c, endpointModelProvider.a().f25865f, this.f25914c ? new Date() : null, endpointModelProvider.a().d);
        OrderFulfillment orderFulfillment = this.f25916f;
        DayPart dayPart = this.f25915e;
        String str = this.d;
        return endpointModelProvider.c(new EventsPayload(endpointModelProvider.getSession(), endpointModelProvider.b(null, null), new Context((Page) null, device, (str == null && dayPart == null && orderFulfillment == null) ? null : new Branch(str, dayPart, orderFulfillment), endpointModelProvider.a().f25864e, (List) null, (Map) null, (List) null, 113, (DefaultConstructorMarker) null), ArraysKt.d(this.f25913b)));
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: f, reason: from getter */
    public final boolean getG() {
        return this.g;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: g, reason: from getter */
    public final String getF25918i() {
        return this.f25918i;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    public final String getUrl() {
        return EndpointModelProtocol.DefaultImpls.c(this);
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: h, reason: from getter */
    public final HttpMethod getF25917h() {
        return this.f25917h;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: i, reason: from getter */
    public final String getF25919j() {
        return this.f25919j;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: j, reason: from getter */
    public final EndpointModelProvider getF25912a() {
        return this.f25912a;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: k, reason: from getter */
    public final String getF25920k() {
        return this.f25920k;
    }

    public /* synthetic */ EventModel(EndpointModelProvider endpointModelProvider, DYEvent[] dYEventArr, boolean z, String str, DayPart dayPart, OrderFulfillment orderFulfillment, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(endpointModelProvider, dYEventArr, (i2 & 4) != 0 ? true : z, (i2 & 8) != 0 ? null : str, (i2 & 16) != 0 ? null : dayPart, (i2 & 32) != 0 ? null : orderFulfillment, (i2 & 64) != 0 ? true : z2);
    }
}
