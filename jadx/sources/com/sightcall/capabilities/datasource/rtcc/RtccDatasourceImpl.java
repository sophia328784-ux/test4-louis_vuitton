package com.sightcall.capabilities.datasource.rtcc;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.sightcall.common.DataChannelAction;
import com.sightcall.pratik.extensions.AnyExtensionsKt;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016J,\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016¨\u0006\u000e"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;", "<init>", "()V", Payload.RESPONSE, "", b.a.f24015b, "", "capabilities", "", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "update", "addCapabilities", "removeCapabilities", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RtccDatasourceImpl implements RtccDatasource {
    @Inject
    public RtccDatasourceImpl() {
    }

    @Override // com.sightcall.capabilities.datasource.rtcc.RtccDatasource
    public void response(String id, List<? extends RtccCapability> capabilities) {
        id.getClass();
        capabilities.getClass();
        DataChannelAction.CAPABILITIES_RESPONSE.send(AnyExtensionsKt.toJson$default(RtccMappersKt.toCapabilitiesResponseEntity(id, capabilities), false, false, 3, null));
    }

    @Override // com.sightcall.capabilities.datasource.rtcc.RtccDatasource
    public void update(String id, List<? extends RtccCapability> addCapabilities, List<? extends RtccCapability> removeCapabilities) {
        id.getClass();
        addCapabilities.getClass();
        removeCapabilities.getClass();
        DataChannelAction.CAPABILITIES_UPDATE.send(AnyExtensionsKt.toJson$default(RtccMappersKt.toCapabilitiesUpdateEntity(id, addCapabilities, removeCapabilities), false, false, 3, null));
    }
}
