package coil3.compose;

import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ScaleFactorKt;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlin.time.TimeMark;
import kotlin.time.TimeSource;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001BW\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fBO\b\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcoil3/compose/CrossfadePainter;", "Landroidx/compose/ui/graphics/painter/Painter;", "start", "end", "Landroidx/compose/ui/layout/ContentScale;", "contentScale", "Lkotlin/time/Duration;", "duration", "Lkotlin/time/TimeSource;", "timeSource", "", "fadeStart", "preferExactIntrinsicSize", "preferEndFirstIntrinsicSize", "<init>", "(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/layout/ContentScale;JLkotlin/time/TimeSource;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/layout/ContentScale;JLkotlin/time/TimeSource;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class CrossfadePainter extends Painter {
    public final Painter g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ContentScale f21302h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f21303i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TimeSource f21304j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f21305k;
    public final MutableIntState l;
    public TimeMark m;
    public boolean n;
    public float o;
    public ColorFilter p;
    public Painter q;
    public final long r;

    /* JADX WARN: Code duplicated, block: B:21:0x004f  */
    /* JADX WARN: Code duplicated, block: B:24:0x008e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0090  */
    /* JADX WARN: Code duplicated, block: B:27:0x0093 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0095  */
    /* JADX WARN: Code duplicated, block: B:29:0x0097  */
    public CrossfadePainter(Painter painter, Painter painter2, ContentScale contentScale, long j2, TimeSource timeSource, boolean z, boolean z2, boolean z3, DefaultConstructorMarker defaultConstructorMarker) {
        long jFloatToRawIntBits;
        this.g = painter2;
        this.f21302h = contentScale;
        this.f21303i = j2;
        this.f21304j = timeSource;
        this.f21305k = z;
        this.l = SnapshotIntStateKt.a(0);
        this.o = 1.0f;
        this.q = painter;
        long r = 0;
        if (painter != null) {
            jFloatToRawIntBits = painter.getR();
        } else {
            Size.f8820b.getClass();
            jFloatToRawIntBits = 0;
        }
        if (painter2 != null) {
            r = painter2.getR();
        } else {
            Size.f8820b.getClass();
        }
        boolean z4 = jFloatToRawIntBits != 9205357640488583168L;
        boolean z5 = r != 9205357640488583168L;
        if (z3) {
            if (z5) {
                jFloatToRawIntBits = r;
            } else if (!z4) {
                if (!z4) {
                    if (!z2) {
                        Size.f8820b.getClass();
                        jFloatToRawIntBits = Size.f8821c;
                    } else if (!z4) {
                        if (z5) {
                            jFloatToRawIntBits = r;
                        } else {
                            Size.f8820b.getClass();
                            jFloatToRawIntBits = Size.f8821c;
                        }
                    }
                } else if (!z2) {
                    Size.f8820b.getClass();
                    jFloatToRawIntBits = Size.f8821c;
                } else if (!z4) {
                    if (z5) {
                        jFloatToRawIntBits = r;
                    } else {
                        Size.f8820b.getClass();
                        jFloatToRawIntBits = Size.f8821c;
                    }
                }
            }
        } else if (!z4 && z5) {
            jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Math.max(Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32)), Float.intBitsToFloat((int) (r >> 32))))) << 32) | (((long) Float.floatToRawIntBits(Math.max(Float.intBitsToFloat((int) (jFloatToRawIntBits & BodyPartID.bodyIdMax)), Float.intBitsToFloat((int) (r & BodyPartID.bodyIdMax))))) & BodyPartID.bodyIdMax);
            Size.Companion companion = Size.f8820b;
        } else if (!z2) {
            Size.f8820b.getClass();
            jFloatToRawIntBits = Size.f8821c;
        } else if (!z4) {
            if (z5) {
                jFloatToRawIntBits = r;
            } else {
                Size.f8820b.getClass();
                jFloatToRawIntBits = Size.f8821c;
            }
        }
        this.r = jFloatToRawIntBits;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean a(float f2) {
        this.o = f2;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean b(ColorFilter colorFilter) {
        this.p = colorFilter;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* JADX INFO: renamed from: g, reason: from getter */
    public final long getR() {
        return this.r;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void h(DrawScope drawScope) {
        boolean z = this.n;
        Painter painter = this.g;
        if (z) {
            j(drawScope, painter, this.o);
            return;
        }
        TimeMark timeMarkA = this.m;
        if (timeMarkA == null) {
            timeMarkA = this.f21304j.a();
            this.m = timeMarkA;
        }
        float fE = Duration.e(timeMarkA.a()) / Duration.e(this.f21303i);
        float fC = RangesKt.c(fE, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        float f2 = this.o;
        float f3 = fC * f2;
        if (this.f21305k) {
            f2 -= f3;
        }
        this.n = fE >= 1.0f;
        j(drawScope, this.q, f2);
        j(drawScope, painter, f3);
        if (this.n) {
            this.q = null;
        } else {
            SnapshotMutableIntStateImpl snapshotMutableIntStateImpl = (SnapshotMutableIntStateImpl) this.l;
            snapshotMutableIntStateImpl.i(snapshotMutableIntStateImpl.f() + 1);
        }
    }

    public final void j(DrawScope drawScope, Painter painter, float f2) {
        if (painter == null || f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        long jB = drawScope.b();
        long r = painter.getR();
        long jA = (r == 9205357640488583168L || Size.e(r) || jB == 9205357640488583168L || Size.e(jB)) ? jB : ScaleFactorKt.a(r, this.f21302h.a(r, jB));
        if (jB == 9205357640488583168L || Size.e(jB)) {
            painter.e(drawScope, jA, f2, this.p);
            return;
        }
        float fIntBitsToFloat = (Float.intBitsToFloat((int) (jB >> 32)) - Float.intBitsToFloat((int) (jA >> 32))) / 2.0f;
        float fIntBitsToFloat2 = (Float.intBitsToFloat((int) (jB & BodyPartID.bodyIdMax)) - Float.intBitsToFloat((int) (jA & BodyPartID.bodyIdMax))) / 2.0f;
        drawScope.getF8996c().f9001a.d(fIntBitsToFloat, fIntBitsToFloat2, fIntBitsToFloat, fIntBitsToFloat2);
        try {
            painter.e(drawScope, jA, f2, this.p);
        } finally {
            float f3 = -fIntBitsToFloat;
            float f4 = -fIntBitsToFloat2;
            drawScope.getF8996c().f9001a.d(f3, f4, f3, f4);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ CrossfadePainter(Painter painter, Painter painter2, ContentScale contentScale, long j2, TimeSource timeSource, boolean z, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        ContentScale contentScale2;
        long jG;
        if ((i2 & 4) != 0) {
            ContentScale.f9447a.getClass();
            contentScale2 = ContentScale.Companion.f9450c;
        } else {
            contentScale2 = contentScale;
        }
        if ((i2 & 8) != 0) {
            Duration.Companion companion = Duration.INSTANCE;
            jG = DurationKt.g(200, DurationUnit.MILLISECONDS);
        } else {
            jG = j2;
        }
        this(painter, painter2, contentScale2, jG, (i2 & 16) != 0 ? TimeSource.Monotonic.f74589a : timeSource, (i2 & 32) != 0 ? true : z, (i2 & 64) != 0 ? false : z2, (i2 & 128) != 0 ? false : z3, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ CrossfadePainter(Painter painter, Painter painter2, ContentScale contentScale, long j2, TimeSource timeSource, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        long jG;
        if ((i2 & 4) != 0) {
            ContentScale.f9447a.getClass();
            contentScale = ContentScale.Companion.f9450c;
        }
        ContentScale contentScale2 = contentScale;
        if ((i2 & 8) != 0) {
            Duration.Companion companion = Duration.INSTANCE;
            jG = DurationKt.g(200, DurationUnit.MILLISECONDS);
        } else {
            jG = j2;
        }
        this(painter, painter2, contentScale2, jG, (i2 & 16) != 0 ? TimeSource.Monotonic.f74589a : timeSource, (i2 & 32) != 0 ? true : z, (i2 & 64) != 0 ? false : z2, null);
    }

    @Deprecated
    public CrossfadePainter(Painter painter, Painter painter2, ContentScale contentScale, long j2, TimeSource timeSource, boolean z, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
        this(painter, painter2, contentScale, j2, timeSource, z, z2, false, 128, null);
    }
}
