package net.rtccloud.sdk;

/* JADX INFO: loaded from: classes4.dex */
public interface ScreenshareConsumer {
    boolean isStarted();

    void onBind(Call call);

    void onFrame(Frame frame);

    void onStart();

    void onStop();

    void onUnbind();
}
