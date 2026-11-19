package com.sightcall.capabilities.datasource.rtcc;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b`\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H&J,\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H&¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;", "", Payload.RESPONSE, "", b.a.f24015b, "", "capabilities", "", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "update", "addCapabilities", "removeCapabilities", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface RtccDatasource {
    void response(String id, List<? extends RtccCapability> capabilities);

    void update(String id, List<? extends RtccCapability> addCapabilities, List<? extends RtccCapability> removeCapabilities);
}
