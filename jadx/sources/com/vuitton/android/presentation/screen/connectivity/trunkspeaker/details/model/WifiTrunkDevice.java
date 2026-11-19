package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.model;

import com.linkplay.core.device.LPDevice;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice;", "", "SimpleSpeaker", "RoomSpeaker", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class WifiTrunkDevice {

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0005j\b\u0012\u0004\u0012\u00020\u0003`\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice;", "Ljava/io/Serializable;", "Lcom/linkplay/core/device/LPDevice;", "masterDevice", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "deviceList", "<init>", "(Lcom/linkplay/core/device/LPDevice;Ljava/util/ArrayList;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RoomSpeaker extends WifiTrunkDevice implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LPDevice f56555b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f56556c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RoomSpeaker(LPDevice lPDevice, ArrayList<LPDevice> arrayList) {
            super(null);
            lPDevice.getClass();
            arrayList.getClass();
            this.f56555b = lPDevice;
            this.f56556c = arrayList;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RoomSpeaker)) {
                return false;
            }
            RoomSpeaker roomSpeaker = (RoomSpeaker) obj;
            return Intrinsics.c(this.f56555b, roomSpeaker.f56555b) && Intrinsics.c(this.f56556c, roomSpeaker.f56556c);
        }

        public final int hashCode() {
            return this.f56556c.hashCode() + (this.f56555b.hashCode() * 31);
        }

        public final String toString() {
            return "RoomSpeaker(masterDevice=" + this.f56555b + ", deviceList=" + this.f56556c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice;", "Lcom/linkplay/core/device/LPDevice;", "device", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;", "type", "<init>", "(Lcom/linkplay/core/device/LPDevice;Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SimpleSpeaker extends WifiTrunkDevice {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LPDevice f56557b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final TrunkGeneralHelper.SpeakerTrunkType f56558c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SimpleSpeaker(LPDevice lPDevice, TrunkGeneralHelper.SpeakerTrunkType speakerTrunkType) {
            super(null);
            lPDevice.getClass();
            this.f56557b = lPDevice;
            this.f56558c = speakerTrunkType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SimpleSpeaker)) {
                return false;
            }
            SimpleSpeaker simpleSpeaker = (SimpleSpeaker) obj;
            return Intrinsics.c(this.f56557b, simpleSpeaker.f56557b) && this.f56558c == simpleSpeaker.f56558c;
        }

        public final int hashCode() {
            int iHashCode = this.f56557b.hashCode() * 31;
            TrunkGeneralHelper.SpeakerTrunkType speakerTrunkType = this.f56558c;
            return iHashCode + (speakerTrunkType == null ? 0 : speakerTrunkType.hashCode());
        }

        public final String toString() {
            return "SimpleSpeaker(device=" + this.f56557b + ", type=" + this.f56558c + ")";
        }
    }

    public WifiTrunkDevice() {
    }

    public WifiTrunkDevice(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
