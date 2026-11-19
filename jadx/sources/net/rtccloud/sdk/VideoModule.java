package net.rtccloud.sdk;

import android.os.Parcel;
import android.os.Parcelable;
import com.sightcall.uvc.Camera;
import defpackage.tr;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import net.rtccloud.sdk.event.call.VideoEvent;
import net.rtccloud.sdk.event.call.VideoProfileEvent;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.util.OldLogger;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: loaded from: classes4.dex */
public class VideoModule {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.VIDEO);
    private final Call call;
    private final FrameFetcher frameFetcher;
    private boolean isTeardown;
    private final Rtcc rtcc;
    private final AtomicBoolean isSending = new AtomicBoolean(false);
    private final AtomicBoolean isReceiving = new AtomicBoolean(false);
    Profile requestedProfile = null;
    private WeakReference<VideoProducer> producerReference = new WeakReference<>(null);

    /* JADX INFO: loaded from: classes3.dex */
    public enum Profile {
        QCIF(176, 144),
        QVGA(DilithiumEngine.DilithiumPolyT1PackedBytes, 240),
        VGA(Camera.DEFAULT_PREVIEW_WIDTH, Camera.DEFAULT_PREVIEW_HEIGHT),
        WVGA(854, Camera.DEFAULT_PREVIEW_HEIGHT),
        HD_720(Sink.Video.MAX_DIMENSION_HIGH, Sink.Video.MAX_DIMENSION_LOW),
        UHD(3840, 2160);

        public final int high;
        public final int low;

        Profile(int i2, int i3) {
            this.high = i2;
            this.low = i3;
        }

        public Profile next() {
            Profile[] profileArrValues = values();
            return profileArrValues[(ordinal() + 1) % profileArrValues.length];
        }

        public Profile previous() {
            Profile[] profileArrValues = values();
            return profileArrValues[((ordinal() + profileArrValues.length) - 1) % profileArrValues.length];
        }
    }

    public VideoModule(Rtcc rtcc, Call call, FrameFetcher frameFetcher) {
        this.rtcc = rtcc;
        this.call = call;
        this.frameFetcher = frameFetcher;
    }

    private boolean ensureNotTeardown() {
        if (!this.isTeardown) {
            return true;
        }
        log.i("VideoModule must not be [teardown]");
        return false;
    }

    private void teardownProducer() {
        VideoProducer videoProducer = this.producerReference.get();
        if (videoProducer != null) {
            if (videoProducer.isStarted()) {
                videoProducer.onStopProducer();
            }
            videoProducer.onUnbind();
            this.producerReference.clear();
        }
    }

    private synchronized void updateReceivingStatus(boolean z, boolean z2) {
        Participant participant;
        try {
            if (this.isTeardown) {
                return;
            }
            this.isReceiving.set(z);
            FrameFetcher frameFetcher = this.frameFetcher;
            if (z) {
                frameFetcher.startVideo();
            } else {
                frameFetcher.stopVideo();
            }
            if (!this.call.isConference() && (participant = this.call.participant()) != null) {
                VideoConsumer videoConsumer = participant.videoConsumer();
                if (videoConsumer != null && videoConsumer.isStarted() != z) {
                    if (z) {
                        videoConsumer.onStart();
                    } else {
                        videoConsumer.onStop();
                    }
                }
                participant.isSendingVideo.set(z);
            }
            VideoEvent videoEvent = new VideoEvent(this.call, this.isSending.get(), this.isReceiving.get());
            this.rtcc.sendMeetingCallEvent(videoEvent);
            if (!z2) {
                this.rtcc.bus.post(videoEvent);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void updateSendingStatus(boolean z, boolean z2) {
        try {
            if (this.isTeardown) {
                return;
            }
            this.isSending.set(z);
            VideoProducer videoProducer = this.producerReference.get();
            if (videoProducer != null) {
                if (z) {
                    videoProducer.onStartProducer();
                    this.rtcc.sendMeetingCallBack("{\"evt\":\"callstatus\",\"id\":" + this.call.id + ",\"type\":\"video_local\",\"status\":\"start\",\"sipcallid\":\"" + this.call.sipId + "\"}");
                } else {
                    videoProducer.onStopProducer();
                    this.rtcc.sendMeetingCallBack("{\"evt\":\"callstatus\",\"id\":" + this.call.id + ",\"type\":\"video_local\",\"status\":\"stop\",\"sipcallid\":\"" + this.call.sipId + "\"}");
                }
            }
            VideoEvent videoEvent = new VideoEvent(this.call, this.isSending.get(), this.isReceiving.get());
            this.rtcc.sendMeetingCallEvent(videoEvent);
            if (!z2) {
                this.rtcc.bus.post(videoEvent);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public Call call() {
        return this.call;
    }

    public boolean isReceiving() {
        return this.isReceiving.get();
    }

    public boolean isSending() {
        return this.isSending.get();
    }

    public void producer(VideoProducer videoProducer) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("producer(%s)", String.valueOf(videoProducer));
        }
        if (ensureNotTeardown() && this.producerReference.get() != videoProducer) {
            teardownProducer();
            if (videoProducer == null) {
                return;
            }
            Call call = this.call;
            videoProducer.onBind(call, call.videoSink);
            if (this.isSending.get()) {
                videoProducer.onStartProducer();
            }
            this.producerReference = new WeakReference<>(videoProducer);
        }
    }

    public void releaseProducer() {
        log.d("releaseProducer()");
        teardownProducer();
    }

    public Profile requestedProfile() {
        return this.requestedProfile;
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }

    public void start() {
        OldLogger oldLogger = log;
        oldLogger.d("start()");
        if (ensureNotTeardown() && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceCallStatus(oldLogger, this.call, Call.Status.ACTIVE)) {
            if (this.isSending.get()) {
                oldLogger.i("Call is already [sending] video");
            }
            Call call = this.call;
            call.nativeInterface.control(Call.Control.STARTVIDEO, call.id, -1);
        }
    }

    public void stop() {
        OldLogger oldLogger = log;
        oldLogger.d("stop()");
        if (ensureNotTeardown() && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceCallStatus(oldLogger, this.call, Call.Status.ACTIVE)) {
            if (!this.isSending.get()) {
                oldLogger.i("Call must be [sending] video");
            }
            Call call = this.call;
            call.nativeInterface.control(Call.Control.STOPVIDEO, call.id, -1);
        }
    }

    public void teardown() {
        this.isTeardown = true;
        teardownProducer();
    }

    public synchronized void updateProfile(int i2) {
        try {
            if (i2 == -1) {
                updateProfile(Profile.QCIF);
            } else if (i2 == 0) {
                updateProfile(Profile.QVGA);
            } else if (i2 == 1) {
                updateProfile(Profile.VGA);
            } else if (i2 == 2) {
                updateProfile(Profile.WVGA);
            } else if (i2 != 3) {
                updateProfile(Profile.VGA);
            } else {
                updateProfile(Profile.HD_720);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void updateStatus(boolean z) {
        updateSendingStatus(z, true);
        updateReceivingStatus(z, true);
        this.rtcc.bus.post(new VideoEvent(this.call, this.isSending.get(), this.isReceiving.get()));
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class CameraSource implements Parcelable {
        public final int facing;
        public final int id;
        public final int orientation;
        public static final CameraSource BACK = find(0);
        public static final CameraSource FRONT = find(1);
        public static final Parcelable.Creator<CameraSource> CREATOR = new Parcelable.Creator<CameraSource>() { // from class: net.rtccloud.sdk.VideoModule.CameraSource.1
            @Override // android.os.Parcelable.Creator
            public CameraSource createFromParcel(Parcel parcel) {
                return new CameraSource(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public CameraSource[] newArray(int i2) {
                return new CameraSource[i2];
            }
        };

        public CameraSource(Parcel parcel) {
            this.id = parcel.readInt();
            this.facing = parcel.readInt();
            this.orientation = parcel.readInt();
        }

        private static CameraSource find(int i2) {
            android.hardware.Camera.CameraInfo cameraInfo = new android.hardware.Camera.CameraInfo();
            for (int i3 = 0; i3 < android.hardware.Camera.getNumberOfCameras(); i3++) {
                try {
                    android.hardware.Camera.getCameraInfo(i3, cameraInfo);
                    int i4 = cameraInfo.facing;
                    if (i4 == i2) {
                        return new CameraSource(i3, i4, cameraInfo.orientation);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            return null;
        }

        public static ArrayList<CameraSource> getAll() {
            int numberOfCameras = android.hardware.Camera.getNumberOfCameras();
            ArrayList<CameraSource> arrayList = new ArrayList<>(numberOfCameras);
            android.hardware.Camera.CameraInfo cameraInfo = new android.hardware.Camera.CameraInfo();
            for (int i2 = 0; i2 < numberOfCameras; i2++) {
                android.hardware.Camera.getCameraInfo(i2, cameraInfo);
                arrayList.add(new CameraSource(i2, cameraInfo.facing, cameraInfo.orientation));
            }
            return arrayList;
        }

        public static CameraSource getFirstAvailable() {
            int numberOfCameras = android.hardware.Camera.getNumberOfCameras();
            android.hardware.Camera.CameraInfo cameraInfo = new android.hardware.Camera.CameraInfo();
            if (numberOfCameras == 0) {
                return null;
            }
            android.hardware.Camera.getCameraInfo(0, cameraInfo);
            return new CameraSource(0, cameraInfo.facing, cameraInfo.orientation);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean isBack() {
            return this.facing == 0;
        }

        public boolean isFront() {
            return this.facing == 1;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("CameraSource{id=");
            sb.append(this.id);
            sb.append(", facing=");
            sb.append(this.facing == 1 ? "front" : "back");
            sb.append(", orientation=");
            return tr.k(sb, this.orientation, '}');
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.id);
            parcel.writeInt(this.facing);
            parcel.writeInt(this.orientation);
        }

        public CameraSource(int i2, int i3, int i4) {
            this.id = i2;
            this.facing = i3;
            this.orientation = i4;
        }
    }

    private synchronized void updateProfile(Profile profile) {
        this.requestedProfile = profile;
        this.call.parameters().videoProfile(profile);
        this.rtcc.bus.post(new VideoProfileEvent(this.call, profile));
    }

    public VideoProducer producer() {
        return this.producerReference.get();
    }

    public synchronized void updateReceivingStatus(boolean z) {
        updateReceivingStatus(z, false);
    }

    public synchronized void updateSendingStatus(boolean z) {
        updateSendingStatus(z, false);
    }
}
