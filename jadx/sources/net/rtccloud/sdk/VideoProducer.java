package net.rtccloud.sdk;

/* JADX INFO: loaded from: classes4.dex */
public interface VideoProducer {
    boolean isStarted();

    void onBind(Call call, Sink.Video video);

    void onStartProducer();

    void onStopProducer();

    void onUnbind();
}
