package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base;

import android.content.Context;
import android.hardware.SensorManager;
import com.google.android.filament.utils.Float3;
import defpackage.d21;
import defpackage.pq0;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "SensorData", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SensorDataManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f58535a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SensorManager f58536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Float3 f58537c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SensorDataManager$listenSensorData$1.AnonymousClass1 f58538e;

    /* JADX INFO: loaded from: classes2.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;", "", "", "yaw", "pitch", "roll", "<init>", "(FFF)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SensorData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f58539a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f58540b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f58541c;

        public SensorData(float f2, float f3, float f4) {
            this.f58539a = f2;
            this.f58540b = f3;
            this.f58541c = f4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SensorData)) {
                return false;
            }
            SensorData sensorData = (SensorData) obj;
            return Float.compare(this.f58539a, sensorData.f58539a) == 0 && Float.compare(this.f58540b, sensorData.f58540b) == 0 && Float.compare(this.f58541c, sensorData.f58541c) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f58541c) + pq0.b(Float.hashCode(this.f58539a) * 31, 31, this.f58540b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("SensorData(yaw=");
            sb.append(this.f58539a);
            sb.append(", pitch=");
            sb.append(this.f58540b);
            sb.append(", roll=");
            return d21.e(this.f58541c, ")", sb);
        }
    }

    public SensorDataManager(Context context) {
        context.getClass();
        this.f58535a = context;
    }

    public final Flow a() {
        return FlowKt.d(new SensorDataManager$listenSensorData$1(this, null));
    }

    public final void b() {
        SensorManager sensorManager = this.f58536b;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this.f58538e);
            this.f58538e = null;
        }
    }
}
