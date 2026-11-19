package androidx.camera.camera2.internal;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Camera2CameraImpl.ErrorTimeoutReopenScheduler.ScheduleNode f1822c;

    public /* synthetic */ l(Camera2CameraImpl.ErrorTimeoutReopenScheduler.ScheduleNode scheduleNode, int i2) {
        this.f1821b = i2;
        this.f1822c = scheduleNode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f1821b;
        Camera2CameraImpl.ErrorTimeoutReopenScheduler.ScheduleNode scheduleNode = this.f1822c;
        switch (i2) {
            case 0:
                int i3 = 1;
                if (!scheduleNode.f1460b.getAndSet(true)) {
                    scheduleNode.f1461c.f1458b.d.execute(new l(scheduleNode, i3));
                    break;
                }
                break;
            default:
                Camera2CameraImpl.InternalState internalState = scheduleNode.f1461c.f1458b.f1441f;
                Camera2CameraImpl.InternalState internalState2 = Camera2CameraImpl.InternalState.OPENING;
                Camera2CameraImpl.ErrorTimeoutReopenScheduler errorTimeoutReopenScheduler = scheduleNode.f1461c;
                if (internalState == internalState2) {
                    errorTimeoutReopenScheduler.f1458b.w("Camera onError timeout, reopen it.");
                    scheduleNode.f1461c.f1458b.G(Camera2CameraImpl.InternalState.REOPENING);
                    scheduleNode.f1461c.f1458b.f1444j.b();
                } else {
                    errorTimeoutReopenScheduler.f1458b.w("Camera skip reopen at state: " + scheduleNode.f1461c.f1458b.f1441f);
                }
                break;
        }
    }
}
