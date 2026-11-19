package com.sightcall.universal.internal.model;

import android.location.Location;
import android.os.Handler;
import android.os.Message;
import com.sightcall.common.DataChannelAction;
import com.sightcall.gpslocation.rtcc.model.GeolocationResponse;
import com.sightcall.gpslocation.rtcc.model.GeolocationStatus;
import com.sightcall.pratik.extensions.JsonException;
import java.util.EnumSet;
import net.rtccloud.sdk.Rtcc;

/* JADX INFO: loaded from: classes3.dex */
public class GpsRequest {
    static final EnumSet<DataChannelAction> ACTIONS = EnumSet.of(DataChannelAction.GEOLOCATION_RESPONSE);
    private static final int MSG = 1;
    private Location location;
    private boolean isRequesting = false;
    private boolean isInitialRequest = true;
    private final Handler timeout = new Handler() { // from class: com.sightcall.universal.internal.model.GpsRequest.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            GpsRequest.this.isInitialRequest = false;
            GpsRequest.this.onStop();
        }
    };

    /* JADX INFO: renamed from: com.sightcall.universal.internal.model.GpsRequest$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$common$DataChannelAction;

        static {
            int[] iArr = new int[DataChannelAction.values().length];
            $SwitchMap$com$sightcall$common$DataChannelAction = iArr;
            try {
                iArr[DataChannelAction.GEOLOCATION_RESPONSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    private void handleLocation(String str) throws JsonException {
        if (str != null) {
            GeolocationResponse geolocationResponseFromJson = GeolocationResponse.INSTANCE.fromJson(str);
            Location location = new Location("Remote");
            location.setLatitude(geolocationResponseFromJson.getLatitude().doubleValue());
            location.setLongitude(geolocationResponseFromJson.getLongitude().doubleValue());
            location.setTime(geolocationResponseFromJson.getTimestamp());
            location.setAccuracy(geolocationResponseFromJson.getAccuracy().floatValue());
            this.location = location;
            Rtcc.instance().bus().post(new Event(location));
        }
    }

    private synchronized void onRestart() {
        try {
            if (this.isRequesting) {
                this.timeout.removeMessages(1);
                Handler handler = this.timeout;
                handler.sendMessageDelayed(handler.obtainMessage(1), 60000L);
            } else {
                onStart();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void handle(DataChannelAction dataChannelAction, String str) {
        if (AnonymousClass2.$SwitchMap$com$sightcall$common$DataChannelAction[dataChannelAction.ordinal()] != 1) {
            return;
        }
        GeolocationResponse geolocationResponseFromJson = GeolocationResponse.INSTANCE.fromJson(str);
        if (GeolocationStatus.Success.INSTANCE.getValue().equals(geolocationResponseFromJson.getStatus())) {
            onStart();
            handleLocation(str);
        } else if (GeolocationStatus.FirstUsagePopupAccepted.INSTANCE.getValue().equals(geolocationResponseFromJson.getStatus()) || GeolocationStatus.FirstUsagePopupDisplayed.INSTANCE.getValue().equals(geolocationResponseFromJson.getStatus())) {
            onRestart();
        } else if (GeolocationStatus.FirstUsagePopupDeclined.INSTANCE.getValue().equals(geolocationResponseFromJson.getStatus())) {
            onStop();
        }
    }

    public boolean isInitialRequest() {
        return this.isInitialRequest;
    }

    public boolean isRequesting() {
        return this.isRequesting;
    }

    public Location location() {
        return this.location;
    }

    public synchronized void onStart() {
        if (!this.isRequesting) {
            this.isRequesting = true;
            Handler handler = this.timeout;
            handler.sendMessageDelayed(handler.obtainMessage(1), 60000L);
            Rtcc.instance().bus().post(new Event());
        }
    }

    public synchronized void onStop() {
        if (this.isRequesting) {
            this.isRequesting = false;
            this.timeout.removeMessages(1);
            Rtcc.instance().bus().post(new Event());
        }
    }

    public static class Event {
        private final Location location;

        public Event() {
            this.location = null;
        }

        public Location location() {
            return this.location;
        }

        public Event(Location location) {
            this.location = location;
        }
    }
}
