package com.sightcall.universal.internal.ui;

import android.content.Context;
import android.os.CountDownTimer;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.sightcall.pratik.logs.Logger;
import defpackage.o60;

/* JADX INFO: loaded from: classes3.dex */
public class TimeAgoTextView extends AppCompatTextView {
    private CountDownTimer countDownTimer;
    private String defaultText;
    private boolean isAttachedToWindow;
    private long timestamp;
    private static final long SECOND_TO_MILLIS = 1000;
    private static final long MINUTE_TO_MILLIS = 60000;
    private static final long HOUR_TO_MILLIS = 3600000;

    public TimeAgoTextView(Context context) {
        super(context);
        this.isAttachedToWindow = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderTimestamp() {
        if (this.timestamp <= 0) {
            setText(this.defaultText);
        } else {
            setText(String.valueOf(DateUtils.getRelativeTimeSpanString(this.timestamp, System.currentTimeMillis(), 1000L, 262144)));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.isAttachedToWindow = true;
        startCountDown();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.isAttachedToWindow = false;
        stopCountDown();
    }

    public void restartCountDown() {
        stopCountDown();
        startCountDown();
    }

    public void setDefaultText(String str) {
        this.defaultText = str;
    }

    public void setTimestamp(long j2) {
        this.timestamp = j2;
        renderTimestamp();
        restartCountDown();
    }

    public void startCountDown() {
        long j2;
        long j3;
        if (this.isAttachedToWindow && this.timestamp > 0 && this.countDownTimer == null) {
            long jAbs = Math.abs(System.currentTimeMillis() - this.timestamp);
            long j4 = MINUTE_TO_MILLIS;
            if (jAbs < j4) {
                Logger.INSTANCE.d("startCountDown() called with seconds", null);
                j2 = SECOND_TO_MILLIS;
                j3 = j4;
            } else {
                long j5 = HOUR_TO_MILLIS;
                if (jAbs >= j5) {
                    return;
                }
                Logger.INSTANCE.d("startCountDown() called with minutes", null);
                j2 = j4;
                j3 = j5;
            }
            this.countDownTimer = new CountDownTimer(j3, j2) { // from class: com.sightcall.universal.internal.ui.TimeAgoTextView.1
                @Override // android.os.CountDownTimer
                public void onFinish() {
                    TimeAgoTextView.this.restartCountDown();
                }

                @Override // android.os.CountDownTimer
                public void onTick(long j6) {
                    Logger.INSTANCE.d(o60.i(j6, "onTick() called with: millisUntilFinished = [", "]"), null);
                    TimeAgoTextView.this.renderTimestamp();
                }
            }.start();
        }
    }

    public void stopCountDown() {
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.countDownTimer = null;
        }
    }

    public TimeAgoTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isAttachedToWindow = false;
    }

    public TimeAgoTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.isAttachedToWindow = false;
    }
}
