package com.dynamicyield.sdk.wrapper.core.models.common;

import com.dynamicyield.sdk.wrapper.core.enums.ResultStatus;
import com.dynamicyield.sdk.wrapper.core.managers.network.RawNetworkData;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010\t\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;", "", "Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;", "status", "", "Lcom/dynamicyield/sdk/wrapper/core/models/common/Warning;", "warnings", "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;", "rawNetworkData", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class DYResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ResultStatus f26183a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f26184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Exception f26185c;

    public /* synthetic */ DYResult(ResultStatus resultStatus, List list, Exception exc, RawNetworkData rawNetworkData, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(resultStatus, (i2 & 2) != 0 ? null : list, (i2 & 4) != 0 ? null : exc, (i2 & 8) != 0 ? null : rawNetworkData);
    }

    public DYResult(ResultStatus resultStatus, List<Warning> list, Exception exc, RawNetworkData rawNetworkData) {
        resultStatus.getClass();
        this.f26183a = resultStatus;
        this.f26184b = list;
        this.f26185c = exc;
    }
}
