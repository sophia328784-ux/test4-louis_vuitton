package net.rtccloud.sdk;

/* JADX INFO: loaded from: classes4.dex */
public interface VideoConsumer {
    boolean isStarted();

    void onBind(Call call, Participant participant);

    void onFrame(Frame frame);

    void onStart();

    void onStop();

    void onUnbind();

    Participant participant();
}
