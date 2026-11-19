package com.dynatrace.agent.communication;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\b\u0082\u0001\u0006\t\n\u000b\f\r\u000e¨\u0006\u000f"}, d2 = {"Lcom/dynatrace/agent/communication/CommunicationState;", "", "ConnectionStatus", "ConfigAwaiting", "Waiting", "PendingData", "Inactive", "Offline", "Off", "Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;", "Lcom/dynatrace/agent/communication/CommunicationState$Inactive;", "Lcom/dynatrace/agent/communication/CommunicationState$Off;", "Lcom/dynatrace/agent/communication/CommunicationState$Offline;", "Lcom/dynatrace/agent/communication/CommunicationState$PendingData;", "Lcom/dynatrace/agent/communication/CommunicationState$Waiting;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class CommunicationState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;", "Lcom/dynatrace/agent/communication/CommunicationState;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ConfigAwaiting extends CommunicationState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ConfigAwaiting f26555a = new ConfigAwaiting(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ConfigAwaiting);
        }

        public final int hashCode() {
            return 1378328770;
        }

        public final String toString() {
            return "ConfigAwaiting";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;", "", "READY", "RETRYING", "PAUSE_AFTER_TOO_MANY_REQUESTS", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ConnectionStatus {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ConnectionStatus[] $VALUES;
        public static final ConnectionStatus PAUSE_AFTER_TOO_MANY_REQUESTS;
        public static final ConnectionStatus READY;
        public static final ConnectionStatus RETRYING;

        static {
            ConnectionStatus connectionStatus = new ConnectionStatus("READY", 0);
            READY = connectionStatus;
            ConnectionStatus connectionStatus2 = new ConnectionStatus("RETRYING", 1);
            RETRYING = connectionStatus2;
            ConnectionStatus connectionStatus3 = new ConnectionStatus("PAUSE_AFTER_TOO_MANY_REQUESTS", 2);
            PAUSE_AFTER_TOO_MANY_REQUESTS = connectionStatus3;
            ConnectionStatus[] connectionStatusArr = {connectionStatus, connectionStatus2, connectionStatus3};
            $VALUES = connectionStatusArr;
            $ENTRIES = EnumEntriesKt.a(connectionStatusArr);
        }

        public static ConnectionStatus valueOf(String str) {
            return (ConnectionStatus) Enum.valueOf(ConnectionStatus.class, str);
        }

        public static ConnectionStatus[] values() {
            return (ConnectionStatus[]) $VALUES.clone();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/communication/CommunicationState$Inactive;", "Lcom/dynatrace/agent/communication/CommunicationState;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Inactive extends CommunicationState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Inactive f26556a = new Inactive(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Inactive);
        }

        public final int hashCode() {
            return 466411519;
        }

        public final String toString() {
            return "Inactive";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/communication/CommunicationState$Off;", "Lcom/dynatrace/agent/communication/CommunicationState;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Off extends CommunicationState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Off f26557a = new Off(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Off);
        }

        public final int hashCode() {
            return 1273380187;
        }

        public final String toString() {
            return "Off";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/communication/CommunicationState$Offline;", "Lcom/dynatrace/agent/communication/CommunicationState;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Offline extends CommunicationState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Offline f26558a = new Offline(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Offline);
        }

        public final int hashCode() {
            return 1236584399;
        }

        public final String toString() {
            return "Offline";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/communication/CommunicationState$PendingData;", "Lcom/dynatrace/agent/communication/CommunicationState;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class PendingData extends CommunicationState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PendingData f26559a = new PendingData(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PendingData);
        }

        public final int hashCode() {
            return 1397763533;
        }

        public final String toString() {
            return "PendingData";
        }
    }

    public CommunicationState(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/communication/CommunicationState$Waiting;", "Lcom/dynatrace/agent/communication/CommunicationState;", "Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;", "connectionStatus", "<init>", "(Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Waiting extends CommunicationState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ConnectionStatus f26560a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Waiting(ConnectionStatus connectionStatus) {
            super(null);
            connectionStatus.getClass();
            this.f26560a = connectionStatus;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Waiting) && this.f26560a == ((Waiting) obj).f26560a;
        }

        public final int hashCode() {
            return this.f26560a.hashCode();
        }

        public final String toString() {
            return "Waiting(connectionStatus=" + this.f26560a + ')';
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Waiting() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ Waiting(ConnectionStatus connectionStatus, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? ConnectionStatus.READY : connectionStatus);
        }
    }
}
