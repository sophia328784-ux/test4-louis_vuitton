package com.dynamicyield.sdk.wrapper.core.managers.endpointModel.endpointModelImplementations;

import com.dynamicyield.sdk.wrapper.core.enums.DayPart;
import com.dynamicyield.sdk.wrapper.core.enums.DeviceType;
import com.dynamicyield.sdk.wrapper.core.enums.HttpMethod;
import com.dynamicyield.sdk.wrapper.core.enums.OrderFulfillment;
import com.dynamicyield.sdk.wrapper.core.enums.ResultStatus;
import com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol;
import com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProvider;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.DYLogger;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Branch;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Context;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Device;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.EngagementsPayload;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Page;
import com.dynamicyield.sdk.wrapper.core.models.engagment.BaseEngagement;
import com.dynamicyield.sdk.wrapper.core.models.exception.NetworkFailedException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004\"\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;", "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;", "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;", "endpointModelProvider", "", "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;", "engagements", "", "branchId", "Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;", "dayPart", "", "ignoreWhenMissingActiveConsentAccepted", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;[Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Z)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EngagementModel implements EndpointModelProtocol {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EndpointModelProvider f25904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BaseEngagement[] f25905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f25906c;
    public final DayPart d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f25907e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HttpMethod f25908f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f25909h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DYLogger f25910i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f25911j;

    public EngagementModel(EndpointModelProvider endpointModelProvider, BaseEngagement[] baseEngagementArr, String str, DayPart dayPart, boolean z) {
        endpointModelProvider.getClass();
        baseEngagementArr.getClass();
        this.f25904a = endpointModelProvider;
        this.f25905b = baseEngagementArr;
        this.f25906c = str;
        this.d = dayPart;
        this.f25907e = z;
        this.f25908f = HttpMethod.POST;
        this.g = "failed to send engagement";
        this.f25909h = "Engagement Endpoint";
        this.f25910i = new DYLogger("Engagement Endpoint", null, 2, null);
        this.f25911j = "collect/user/engagement";
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: a, reason: from getter */
    public final DYLogger getF25910i() {
        return this.f25910i;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    public final List b(String str) {
        return this.f25904a.d(str);
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
        EndpointModelProvider endpointModelProvider = this.f25904a;
        return endpointModelProvider.c(new EngagementsPayload(endpointModelProvider.getSession(), endpointModelProvider.b(null, null), new Context((Page) null, new Device((DeviceType) null, endpointModelProvider.a().f25865f, (Date) null, (String) null, 13, (DefaultConstructorMarker) null), (this.d == null || this.f25906c == null) ? null : new Branch(this.f25906c, this.d, (OrderFulfillment) null, 4, (DefaultConstructorMarker) null), endpointModelProvider.a().f25864e, (List) null, (Map) null, (List) null, 113, (DefaultConstructorMarker) null), ArraysKt.d(this.f25905b)));
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: f, reason: from getter */
    public final boolean getF25907e() {
        return this.f25907e;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: g, reason: from getter */
    public final String getF25911j() {
        return this.f25911j;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    public final String getUrl() {
        return EndpointModelProtocol.DefaultImpls.c(this);
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: h, reason: from getter */
    public final HttpMethod getF25908f() {
        return this.f25908f;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: i, reason: from getter */
    public final String getG() {
        return this.g;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: j, reason: from getter */
    public final EndpointModelProvider getF25904a() {
        return this.f25904a;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol
    /* JADX INFO: renamed from: k, reason: from getter */
    public final String getF25909h() {
        return this.f25909h;
    }

    public /* synthetic */ EngagementModel(EndpointModelProvider endpointModelProvider, BaseEngagement[] baseEngagementArr, String str, DayPart dayPart, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(endpointModelProvider, baseEngagementArr, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? null : dayPart, (i2 & 16) != 0 ? true : z);
    }
}
