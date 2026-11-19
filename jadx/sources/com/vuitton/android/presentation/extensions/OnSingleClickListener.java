package com.vuitton.android.presentation.extensions;

import android.os.SystemClock;
import android.view.View;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b'\u0018\u00002\u00020\u0001:\u0001\u0006B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/extensions/OnSingleClickListener;", "Landroid/view/View$OnClickListener;", "", "customClickInterval", "<init>", "(Ljava/lang/Long;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class OnSingleClickListener implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f51516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f51517c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/extensions/OnSingleClickListener$Companion;", "", "", "MIN_CLICK_INTERVAL", "J", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public OnSingleClickListener(Long l) {
        this.f51516b = l != null ? l.longValue() : 1000L;
    }

    public abstract void a(View view);

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Callback.n(view);
        try {
            view.getClass();
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (jUptimeMillis - this.f51517c <= this.f51516b) {
                return;
            }
            this.f51517c = jUptimeMillis;
            a(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OnSingleClickListener() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ OnSingleClickListener(Long l, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : l);
    }
}
