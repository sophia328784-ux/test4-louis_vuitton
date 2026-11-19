package androidx.camera.video.internal.encoder;

import android.media.MediaCodec;
import android.os.Bundle;
import android.util.Range;
import androidx.camera.core.Logger;
import androidx.camera.video.internal.DebugUtils;
import androidx.camera.video.internal.compat.quirk.AudioEncoderIgnoresInputTimestampQuirk;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk;
import androidx.core.util.Preconditions;
import defpackage.ct0;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EncoderImpl f3085c;
    public final /* synthetic */ long d;

    public /* synthetic */ c(EncoderImpl encoderImpl, long j2, int i2) {
        this.f3084b = i2;
        this.f3085c = encoderImpl;
        this.d = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3084b) {
            case 0:
                EncoderImpl encoderImpl = this.f3085c;
                long j2 = this.d;
                switch (encoderImpl.w.ordinal()) {
                    case 0:
                    case 2:
                    case 3:
                    case 5:
                    case 7:
                        break;
                    case 1:
                        String str = encoderImpl.f3033a;
                        DebugUtils.b(j2);
                        Logger.c(3, str);
                        encoderImpl.p.addLast(Range.create(Long.valueOf(j2), Long.MAX_VALUE));
                        encoderImpl.o(EncoderImpl.InternalState.PAUSED);
                        break;
                    case 4:
                        encoderImpl.o(EncoderImpl.InternalState.PENDING_START_PAUSED);
                        break;
                    case 6:
                    case 8:
                        md.k("Encoder is released");
                        break;
                    default:
                        ct0.o(encoderImpl.w, "Unknown state: ");
                        break;
                }
                break;
            default:
                EncoderImpl encoderImpl2 = this.f3085c;
                long j3 = this.d;
                switch (encoderImpl2.w.ordinal()) {
                    case 0:
                        encoderImpl2.A = null;
                        String str2 = encoderImpl2.f3033a;
                        DebugUtils.b(j3);
                        Logger.c(3, str2);
                        try {
                            if (encoderImpl2.D) {
                                encoderImpl2.n();
                            }
                            encoderImpl2.x = Range.create(Long.valueOf(j3), Long.MAX_VALUE);
                            Logger.c(3, encoderImpl2.f3033a);
                            encoderImpl2.f3037f.start();
                            Encoder.EncoderInput encoderInput = encoderImpl2.g;
                            if (encoderInput instanceof EncoderImpl.ByteBufferInput) {
                                ((EncoderImpl.ByteBufferInput) encoderInput).f(true);
                            }
                            encoderImpl2.o(EncoderImpl.InternalState.STARTED);
                        } catch (MediaCodec.CodecException e2) {
                            encoderImpl2.h(1, e2.getMessage(), e2);
                        }
                        break;
                    case 1:
                    case 4:
                    case 7:
                        break;
                    case 2:
                        encoderImpl2.A = null;
                        Range range = (Range) encoderImpl2.p.removeLast();
                        Preconditions.f("There should be a \"pause\" before \"resume\"", range != null && ((Long) range.getUpper()).longValue() == Long.MAX_VALUE);
                        Long l = (Long) range.getLower();
                        long jLongValue = l.longValue();
                        encoderImpl2.p.addLast(Range.create(l, Long.valueOf(j3)));
                        String str3 = encoderImpl2.f3033a;
                        DebugUtils.b(j3);
                        DebugUtils.b(j3 - jLongValue);
                        Logger.c(3, str3);
                        if ((encoderImpl2.f3035c || DeviceQuirks.f2947a.b(AudioEncoderIgnoresInputTimestampQuirk.class) == null) && (!encoderImpl2.f3035c || DeviceQuirks.f2947a.b(VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk.class) == null)) {
                            Bundle bundle = new Bundle();
                            bundle.putInt("drop-input-frames", 0);
                            Logger.c(3, encoderImpl2.f3033a);
                            encoderImpl2.f3037f.setParameters(bundle);
                            Encoder.EncoderInput encoderInput2 = encoderImpl2.g;
                            if (encoderInput2 instanceof EncoderImpl.ByteBufferInput) {
                                ((EncoderImpl.ByteBufferInput) encoderInput2).f(true);
                            }
                        }
                        if (encoderImpl2.f3035c) {
                            encoderImpl2.m();
                        }
                        encoderImpl2.o(EncoderImpl.InternalState.STARTED);
                        break;
                    case 3:
                    case 5:
                        encoderImpl2.o(EncoderImpl.InternalState.PENDING_START);
                        break;
                    case 6:
                    case 8:
                        md.k("Encoder is released");
                        break;
                    default:
                        ct0.o(encoderImpl2.w, "Unknown state: ");
                        break;
                }
                break;
        }
    }
}
