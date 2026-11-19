package com.airbnb.lottie.compose;

import com.airbnb.lottie.LottieComposition;
import defpackage.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/airbnb/lottie/compose/LottieClipSpec;", "", "Frame", "Progress", "Lcom/airbnb/lottie/compose/LottieClipSpec$Frame;", "Lcom/airbnb/lottie/compose/LottieClipSpec$Progress;", "lottie-compose_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class LottieClipSpec {
    public LottieClipSpec(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public abstract float a(LottieComposition lottieComposition);

    public abstract float b(LottieComposition lottieComposition);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/airbnb/lottie/compose/LottieClipSpec$Progress;", "Lcom/airbnb/lottie/compose/LottieClipSpec;", "", "min", "max", "<init>", "(FF)V", "lottie-compose_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Progress extends LottieClipSpec {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f22006a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f22007b;

        public /* synthetic */ Progress(float f2, float f3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f2, (i2 & 2) != 0 ? 1.0f : f3);
        }

        @Override // com.airbnb.lottie.compose.LottieClipSpec
        public final float a(LottieComposition lottieComposition) {
            lottieComposition.getClass();
            return this.f22007b;
        }

        @Override // com.airbnb.lottie.compose.LottieClipSpec
        public final float b(LottieComposition lottieComposition) {
            lottieComposition.getClass();
            return this.f22006a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Progress)) {
                return false;
            }
            Progress progress = (Progress) obj;
            return Float.compare(this.f22006a, progress.f22006a) == 0 && Float.compare(this.f22007b, progress.f22007b) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f22007b) + (Float.hashCode(this.f22006a) * 31);
        }

        public final String toString() {
            return "Progress(min=" + this.f22006a + ", max=" + this.f22007b + ")";
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Progress() {
            float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this(f2, f2, 3, null);
        }

        public Progress(float f2, float f3) {
            super(null);
            this.f22006a = f2;
            this.f22007b = f3;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/airbnb/lottie/compose/LottieClipSpec$Frame;", "Lcom/airbnb/lottie/compose/LottieClipSpec;", "", "min", "max", "", "maxInclusive", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Z)V", "lottie-compose_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Frame extends LottieClipSpec {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Integer f22003a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Integer f22004b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f22005c;
        public final Integer d;

        public Frame(Integer num, Integer num2, boolean z) {
            super(null);
            this.f22003a = num;
            this.f22004b = num2;
            this.f22005c = z;
            if (num2 == null) {
                num2 = null;
            } else if (!z) {
                num2 = Integer.valueOf(num2.intValue() - 1);
            }
            this.d = num2;
        }

        @Override // com.airbnb.lottie.compose.LottieClipSpec
        public final float a(LottieComposition lottieComposition) {
            lottieComposition.getClass();
            Integer num = this.d;
            if (num == null) {
                return 1.0f;
            }
            return RangesKt.c(num.intValue() / lottieComposition.m, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        }

        @Override // com.airbnb.lottie.compose.LottieClipSpec
        public final float b(LottieComposition lottieComposition) {
            lottieComposition.getClass();
            Integer num = this.f22003a;
            return num == null ? Call.Parameters.DEFAULT_CAMERA_ZOOM : RangesKt.c(num.intValue() / lottieComposition.m, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Frame)) {
                return false;
            }
            Frame frame = (Frame) obj;
            return Intrinsics.c(this.f22003a, frame.f22003a) && Intrinsics.c(this.f22004b, frame.f22004b) && this.f22005c == frame.f22005c;
        }

        public final int hashCode() {
            Integer num = this.f22003a;
            int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
            Integer num2 = this.f22004b;
            return Boolean.hashCode(this.f22005c) + ((iHashCode + (num2 != null ? num2.hashCode() : 0)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Frame(min=");
            sb.append(this.f22003a);
            sb.append(", max=");
            sb.append(this.f22004b);
            sb.append(", maxInclusive=");
            return a.p(sb, this.f22005c, ")");
        }

        public /* synthetic */ Frame(Integer num, Integer num2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : num, (i2 & 2) != 0 ? null : num2, (i2 & 4) != 0 ? true : z);
        }

        public Frame() {
            this(null, null, false, 7, null);
        }
    }
}
