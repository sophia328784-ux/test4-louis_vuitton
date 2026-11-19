package org.teleal.cling.support.model;

import java.util.Map;
import org.teleal.cling.model.action.ActionArgumentValue;

/* JADX INFO: loaded from: classes5.dex */
public class TransportInfo {
    /* JADX WARN: Illegal instructions before constructor call */
    public TransportInfo(Map<String, ActionArgumentValue> map) {
        TransportState transportStateValueOf;
        TransportStatus transportStatusValueOf;
        String str = (String) map.get("CurrentTransportState").f78394b;
        try {
            transportStateValueOf = TransportState.valueOf(str);
        } catch (IllegalArgumentException unused) {
            TransportState transportState = TransportState.CUSTOM;
            transportState.value = str;
            transportStateValueOf = transportState;
        }
        String str2 = (String) map.get("CurrentTransportStatus").f78394b;
        try {
            transportStatusValueOf = TransportStatus.valueOf(str2);
        } catch (IllegalArgumentException unused2) {
            TransportStatus transportStatus = TransportStatus.CUSTOM;
            transportStatus.value = str2;
            transportStatusValueOf = transportStatus;
        }
        this(transportStateValueOf, transportStatusValueOf, (String) map.get("CurrentSpeed").f78394b);
    }

    public TransportInfo() {
        TransportState transportState = TransportState.STOPPED;
        TransportStatus transportStatus = TransportStatus.OK;
    }

    public TransportInfo(TransportState transportState) {
        TransportState transportState2 = TransportState.STOPPED;
        TransportStatus transportStatus = TransportStatus.OK;
    }

    public TransportInfo(TransportState transportState, String str) {
        TransportState transportState2 = TransportState.STOPPED;
        TransportStatus transportStatus = TransportStatus.OK;
    }

    public TransportInfo(TransportState transportState, TransportStatus transportStatus) {
        TransportState transportState2 = TransportState.STOPPED;
        TransportStatus transportStatus2 = TransportStatus.OK;
    }

    public TransportInfo(TransportState transportState, TransportStatus transportStatus, String str) {
        TransportState transportState2 = TransportState.STOPPED;
        TransportStatus transportStatus2 = TransportStatus.OK;
    }
}
