package com.dynamicyield.sdk.wrapper.core.models.exception;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002B/\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/exception/NetworkFailedException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", m.v, "networkMessage", "body", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NetworkFailedException extends Exception {
    public NetworkFailedException(String str, Integer num, String str2, String str3) {
        String string;
        StringBuilder sb = new StringBuilder("Request for url: ");
        sb.append(str == null ? "unknown" : str);
        sb.append(" failed with code ");
        sb.append((num == null || (string = num.toString()) == null) ? "unknown" : string);
        sb.append(". Response data: ");
        sb.append((str3 == null || str3.length() == 0) ? "unknown" : str3);
        super(sb.toString());
    }
}
