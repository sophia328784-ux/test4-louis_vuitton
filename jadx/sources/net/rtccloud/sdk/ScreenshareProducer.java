package net.rtccloud.sdk;

/* JADX INFO: loaded from: classes4.dex */
public interface ScreenshareProducer {
    boolean isStarted();

    void onBind(Call call, Sink.Screenshare screenshare);

    void onStart();

    void onStop();

    void onUnbind();
}
