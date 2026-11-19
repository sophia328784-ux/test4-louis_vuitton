package com.dynamicyield.sdk.wrapper.core.models.common;

import com.dynamicyield.sdk.wrapper.core.enums.ResultStatus;
import com.dynamicyield.sdk.wrapper.core.managers.network.RawNetworkData;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Choice;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001BQ\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0018\u00010\tj\u0004\u0018\u0001`\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;", "", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;", "choices", "Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;", "status", "Lcom/dynamicyield/sdk/wrapper/core/models/common/Warning;", "warnings", "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;", "rawNetworkData", "<init>", "(Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DYChooseResult extends DYResult {
    public final List d;

    public /* synthetic */ DYChooseResult(List list, ResultStatus resultStatus, List list2, Exception exc, RawNetworkData rawNetworkData, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, resultStatus, (i2 & 4) != 0 ? null : list2, (i2 & 8) != 0 ? null : exc, (i2 & 16) != 0 ? null : rawNetworkData);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DYChooseResult(List<? extends Choice> list, ResultStatus resultStatus, List<Warning> list2, Exception exc, RawNetworkData rawNetworkData) {
        super(resultStatus, list2, exc, rawNetworkData);
        resultStatus.getClass();
        this.d = list;
    }
}
