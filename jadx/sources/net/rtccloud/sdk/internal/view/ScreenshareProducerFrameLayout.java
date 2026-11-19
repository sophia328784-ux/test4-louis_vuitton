package net.rtccloud.sdk.internal.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.ScreenshareProducer;
import net.rtccloud.sdk.Sink;
import net.rtccloud.sdk.internal.util.ScreenshareProducerHandler;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.ViewUtils;

/* JADX INFO: loaded from: classes3.dex */
public class ScreenshareProducerFrameLayout extends FrameLayout implements ScreenshareProducer {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.SCREENSHARE_PRODUCER);
    private ScreenshareProducerHandler handler;
    private boolean isStarted;
    private Sink.Screenshare sink;
    private String who;

    public ScreenshareProducerFrameLayout(Context context) {
        super(context);
        init();
    }

    private void init() {
        if (isInEditMode()) {
            return;
        }
        this.who = ViewUtils.whoami(this);
        setWillNotDraw(false);
    }

    @Override // net.rtccloud.sdk.ScreenshareProducer
    public boolean isStarted() {
        return this.isStarted;
    }

    @Override // net.rtccloud.sdk.ScreenshareProducer
    public void onBind(Call call, Sink.Screenshare screenshare) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onBind() %s", this.who);
        }
        this.sink = screenshare;
    }

    @Override // net.rtccloud.sdk.ScreenshareProducer
    public void onStart() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onStart() %s", this.who);
        }
        this.isStarted = true;
        this.handler = new ScreenshareProducerHandler(this, this.sink);
    }

    @Override // net.rtccloud.sdk.ScreenshareProducer
    public void onStop() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onStop() %s", this.who);
        }
        this.isStarted = false;
        this.handler.teardown();
        this.handler = null;
        postInvalidate();
    }

    @Override // net.rtccloud.sdk.ScreenshareProducer
    public void onUnbind() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onUnbind() %s", this.who);
        }
        this.sink = null;
        postInvalidate();
    }

    public ScreenshareProducerFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public ScreenshareProducerFrameLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        init();
    }
}
