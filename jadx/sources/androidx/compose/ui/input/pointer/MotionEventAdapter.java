package androidx.compose.ui.input.pointer;

import android.os.Build;
import android.util.SparseBooleanArray;
import android.util.SparseLongArray;
import android.view.InputDevice;
import android.view.MotionEvent;
import androidx.collection.LongSparseArray;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerEventType;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.platform.AndroidComposeView;
import defpackage.md;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/input/pointer/MotionEventAdapter;", "", "<init>", "()V", "IndirectPointerEventData", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MotionEventAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f9287a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SparseLongArray f9288b = new SparseLongArray();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseBooleanArray f9289c = new SparseBooleanArray();
    public final ArrayList d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LongSparseArray f9290e = new LongSparseArray(0, 1, null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9291f = -1;
    public int g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f9292h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f9293i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Offset f9294j;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0083@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;", "", "Companion", "packedValue", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class IndirectPointerEventData {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Companion f9295b = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f9296a;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        public /* synthetic */ IndirectPointerEventData(long j2) {
            this.f9296a = j2;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof IndirectPointerEventData) {
                return this.f9296a == ((IndirectPointerEventData) obj).f9296a;
            }
            return false;
        }

        public final int hashCode() {
            return Long.hashCode(this.f9296a);
        }

        public final String toString() {
            return "IndirectPointerEventData(packedValue=" + this.f9296a + ')';
        }
    }

    public final void a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        SparseLongArray sparseLongArray = this.f9288b;
        if (actionMasked != 0 && actionMasked != 5) {
            if (actionMasked != 9) {
                return;
            }
            int pointerId = motionEvent.getPointerId(0);
            if (sparseLongArray.indexOfKey(pointerId) < 0) {
                long j2 = this.f9287a;
                this.f9287a = 1 + j2;
                sparseLongArray.put(pointerId, j2);
                return;
            }
            return;
        }
        int actionIndex = motionEvent.getActionIndex();
        int pointerId2 = motionEvent.getPointerId(actionIndex);
        if (sparseLongArray.indexOfKey(pointerId2) < 0) {
            long j3 = this.f9287a;
            this.f9287a = 1 + j3;
            sparseLongArray.put(pointerId2, j3);
            if (motionEvent.getToolType(actionIndex) == 3) {
                this.f9289c.put(pointerId2, true);
            }
        }
    }

    public final void b(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() != 1) {
            return;
        }
        int toolType = motionEvent.getToolType(0);
        int source = motionEvent.getSource();
        if (toolType == this.f9291f && source == this.g) {
            return;
        }
        this.f9291f = toolType;
        this.g = source;
        this.f9289c.clear();
        this.f9288b.clear();
    }

    /* JADX WARN: Code duplicated, block: B:83:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:97:0x0219  */
    /* JADX WARN: Code duplicated, block: B:98:0x0221  */
    /* JADX WARN: Multi-variable type inference failed */
    public final AndroidIndirectPointerEvent c(MotionEvent motionEvent, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        int actionIndex;
        int i2;
        int i3;
        int i4;
        int i5;
        long jValueAt;
        char c2;
        int i6;
        long jFloatToRawIntBits;
        boolean z;
        MotionEvent motionEvent2 = motionEvent;
        int actionMasked = motionEvent2.getActionMasked();
        b(motionEvent);
        AndroidIndirectPointerEvent androidIndirectPointerEvent = null;
        SparseLongArray sparseLongArray = this.f9288b;
        if (actionMasked == 3) {
            sparseLongArray.clear();
            this.f9289c.clear();
            return null;
        }
        a(motionEvent);
        char c3 = 1;
        if (actionMasked != 1) {
            actionIndex = actionMasked != 6 ? -1 : motionEvent2.getActionIndex();
        } else {
            actionIndex = 0;
        }
        boolean z2 = actionMasked == 0 || actionMasked == 2 || actionMasked == 5;
        int pointerCount = motionEvent2.getPointerCount();
        ArrayList arrayList = new ArrayList(pointerCount);
        int i7 = 0;
        while (i7 < pointerCount) {
            AndroidIndirectPointerEvent androidIndirectPointerEvent2 = androidIndirectPointerEvent;
            int pointerId = motionEvent2.getPointerId(i7);
            int iIndexOfKey = sparseLongArray.indexOfKey(pointerId);
            if (iIndexOfKey >= 0) {
                jValueAt = sparseLongArray.valueAt(iIndexOfKey);
            } else {
                jValueAt = this.f9287a;
                this.f9287a = jValueAt + 1;
                sparseLongArray.put(pointerId, jValueAt);
            }
            float x = motionEvent2.getX(i7);
            float y = motionEvent2.getY(i7);
            long jFloatToRawIntBits2 = Float.floatToRawIntBits(x);
            int iFloatToRawIntBits = Float.floatToRawIntBits(y);
            int i8 = actionIndex;
            long j2 = (jFloatToRawIntBits2 << 32) | (((long) iFloatToRawIntBits) & BodyPartID.bodyIdMax);
            Offset.Companion companion = Offset.f8806b;
            boolean z3 = i7 != i8 ? c3 : 0;
            LongSparseArray longSparseArray = this.f9290e;
            IndirectPointerEventData indirectPointerEventData = (IndirectPointerEventData) longSparseArray.b(jValueAt);
            if (i7 == i8) {
                longSparseArray.f(jValueAt);
                c2 = ' ';
                sparseLongArray = sparseLongArray;
                i6 = 65535;
            } else if (z2) {
                long eventTime = 1 | ((motionEvent.getEventTime() & 2147483647L) << c3);
                IndirectPointerEventData.Companion companion2 = IndirectPointerEventData.f9295b;
                c2 = ' ';
                short sIntBitsToFloat = (short) Float.intBitsToFloat((int) (j2 >> 32));
                i6 = 65535;
                short sIntBitsToFloat2 = (short) Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
                companion2.getClass();
                longSparseArray.e(jValueAt, new IndirectPointerEventData(eventTime | (((long) ((sIntBitsToFloat << 16) | (sIntBitsToFloat2 & HPKE.aead_EXPORT_ONLY))) << 32)));
            } else {
                c2 = ' ';
                i6 = 65535;
            }
            char c4 = c2;
            long eventTime2 = motionEvent.getEventTime();
            float pressure = motionEvent.getPressure(i7);
            int i9 = i6;
            long eventTime3 = indirectPointerEventData != null ? (indirectPointerEventData.f9296a >> c3) & 2147483647L : motionEvent.getEventTime();
            if (indirectPointerEventData != null) {
                int i10 = (int) (indirectPointerEventData.f9296a >>> c4);
                IndirectPointerEventData.f9295b.getClass();
                jFloatToRawIntBits = (((long) Float.floatToRawIntBits((short) (i10 >>> 16))) << c4) | (((long) Float.floatToRawIntBits((short) (i10 & i9))) & BodyPartID.bodyIdMax);
            } else {
                jFloatToRawIntBits = j2;
            }
            if (indirectPointerEventData != 0) {
                z = (indirectPointerEventData.f9296a & 1) != 0 ? c3 : (char) 0;
            } else {
                z = 0;
            }
            arrayList.add(new IndirectPointerInputChange(jValueAt, eventTime2, j2, z3, pressure, eventTime3, jFloatToRawIntBits, z, null));
            i7++;
            motionEvent2 = motionEvent;
            androidIndirectPointerEvent = androidIndirectPointerEvent2;
            c3 = c3;
            sparseLongArray = sparseLongArray;
            actionIndex = i8;
        }
        AndroidIndirectPointerEvent androidIndirectPointerEvent3 = androidIndirectPointerEvent;
        char c5 = c3;
        MotionEvent motionEvent3 = motionEvent2;
        f(motionEvent);
        if (indirectPointerEventPrimaryDirectionalMotionAxis != null) {
            i3 = indirectPointerEventPrimaryDirectionalMotionAxis.f9215a;
            i2 = 0;
        } else {
            if (!motionEvent3.isFromSource(PKIFailureInfo.badSenderNonce)) {
                md.n("MotionEvent must be a touch navigation source");
                return androidIndirectPointerEvent3;
            }
            InputDevice device = motionEvent3.getDevice();
            i2 = 0;
            if (device != null) {
                InputDevice.MotionRange motionRange = device.getMotionRange(0);
                InputDevice.MotionRange motionRange2 = device.getMotionRange(c5);
                if (motionRange != null && motionRange2 == null) {
                    IndirectPointerEventPrimaryDirectionalMotionAxis.f9213b.getClass();
                    i3 = IndirectPointerEventPrimaryDirectionalMotionAxis.f9214c;
                } else if (motionRange2 != null && motionRange == null) {
                    IndirectPointerEventPrimaryDirectionalMotionAxis.f9213b.getClass();
                    i3 = IndirectPointerEventPrimaryDirectionalMotionAxis.d;
                } else if (motionRange == null || motionRange2 == null) {
                    IndirectPointerEventPrimaryDirectionalMotionAxis.f9213b.getClass();
                    i3 = 0;
                } else {
                    float range = motionRange.getRange();
                    float range2 = motionRange2.getRange();
                    if (range > range2 && (range2 == Call.Parameters.DEFAULT_CAMERA_ZOOM || range / range2 >= 5.0f)) {
                        IndirectPointerEventPrimaryDirectionalMotionAxis.f9213b.getClass();
                        i3 = IndirectPointerEventPrimaryDirectionalMotionAxis.f9214c;
                    } else if (range2 <= range || (range != Call.Parameters.DEFAULT_CAMERA_ZOOM && range2 / range < 5.0f)) {
                        IndirectPointerEventPrimaryDirectionalMotionAxis.f9213b.getClass();
                        i3 = 0;
                    } else {
                        IndirectPointerEventPrimaryDirectionalMotionAxis.f9213b.getClass();
                        i3 = IndirectPointerEventPrimaryDirectionalMotionAxis.d;
                    }
                }
            } else {
                IndirectPointerEventPrimaryDirectionalMotionAxis.f9213b.getClass();
                i3 = 0;
            }
        }
        int i11 = i3;
        if (actionMasked == 0) {
            IndirectPointerEventType.f9216a.getClass();
            i4 = IndirectPointerEventType.f9217b;
            i5 = i4;
        } else if (actionMasked == 1) {
            IndirectPointerEventType.f9216a.getClass();
            i4 = IndirectPointerEventType.f9218c;
            i5 = i4;
        } else if (actionMasked == 2) {
            IndirectPointerEventType.f9216a.getClass();
            i4 = IndirectPointerEventType.d;
            i5 = i4;
        } else if (actionMasked == 5) {
            IndirectPointerEventType.f9216a.getClass();
            i4 = IndirectPointerEventType.f9217b;
            i5 = i4;
        } else if (actionMasked != 6) {
            IndirectPointerEventType.f9216a.getClass();
            i5 = i2;
        } else {
            IndirectPointerEventType.f9216a.getClass();
            i4 = IndirectPointerEventType.f9218c;
            i5 = i4;
        }
        return new AndroidIndirectPointerEvent(arrayList, i5, i11, motionEvent, null);
    }

    public final PointerInputEvent d(MotionEvent motionEvent, AndroidComposeView androidComposeView) {
        int actionIndex;
        int actionMasked = motionEvent.getActionMasked();
        SparseBooleanArray sparseBooleanArray = this.f9289c;
        if (actionMasked == 3 || actionMasked == 4) {
            this.f9288b.clear();
            sparseBooleanArray.clear();
            this.f9292h = false;
            this.f9293i = false;
            this.f9294j = null;
            return null;
        }
        b(motionEvent);
        a(motionEvent);
        boolean z = actionMasked == 9 || actionMasked == 7 || actionMasked == 10;
        boolean z2 = actionMasked == 8;
        if (z) {
            sparseBooleanArray.put(motionEvent.getPointerId(motionEvent.getActionIndex()), true);
        }
        if (actionMasked != 1) {
            actionIndex = actionMasked != 6 ? -1 : motionEvent.getActionIndex();
        } else {
            actionIndex = 0;
        }
        ArrayList arrayList = this.d;
        arrayList.clear();
        if (motionEvent.getActionMasked() == 0) {
            boolean z3 = Build.VERSION.SDK_INT >= 34 && (motionEvent.getClassification() == 3 || motionEvent.getClassification() == 5);
            boolean z4 = motionEvent.getButtonState() == 0 && (motionEvent.isFromSource(8194) || motionEvent.isFromSource(1048584));
            if (z3 || z4) {
                this.f9292h = true;
            }
        }
        if (Build.VERSION.SDK_INT < 34 || motionEvent.getClassification() != 3) {
            this.f9293i = false;
            int pointerCount = motionEvent.getPointerCount();
            int i2 = 0;
            while (i2 < pointerCount) {
                arrayList.add(e(androidComposeView, motionEvent, null, i2, (z || i2 == actionIndex || (z2 && motionEvent.getButtonState() == 0)) ? false : true));
                i2++;
            }
        } else {
            this.f9293i = true;
            if (motionEvent.getActionMasked() == 0) {
                this.f9294j = new Offset((((long) Float.floatToRawIntBits(motionEvent.getRawY(0))) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(motionEvent.getRawX(0))) << 32));
            }
            arrayList.add(e(androidComposeView, motionEvent, this.f9294j, 0, false));
        }
        if (motionEvent.getActionMasked() == 1) {
            this.f9292h = false;
            this.f9293i = false;
            this.f9294j = null;
        }
        f(motionEvent);
        return new PointerInputEvent(motionEvent.getEventTime(), arrayList, motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0114  */
    /* JADX WARN: Code duplicated, block: B:63:0x0196  */
    /* JADX WARN: Code duplicated, block: B:67:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:68:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:71:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:73:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:74:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:76:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:79:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:81:0x0211  */
    /* JADX WARN: Code duplicated, block: B:84:0x01a2 A[EDGE_INSN: B:84:0x01a2->B:65:0x01a2 BREAK  A[LOOP:0: B:45:0x0104->B:64:0x0198], SYNTHETIC] */
    public final PointerInputEventData e(AndroidComposeView androidComposeView, MotionEvent motionEvent, Offset offset, int i2, boolean z) {
        long jValueAt;
        long jFloatToRawIntBits;
        long jF;
        int i3;
        int historySize;
        int i4;
        char c2;
        long jFloatToRawIntBits2;
        float fFloatValue;
        long j2;
        long jFloatToRawIntBits3;
        float axisValue;
        Float fValueOf;
        Float f2;
        float historicalX;
        int i5;
        int pointerId = motionEvent.getPointerId(i2);
        SparseLongArray sparseLongArray = this.f9288b;
        int iIndexOfKey = sparseLongArray.indexOfKey(pointerId);
        if (iIndexOfKey >= 0) {
            jValueAt = sparseLongArray.valueAt(iIndexOfKey);
        } else {
            long j3 = this.f9287a;
            this.f9287a = 1 + j3;
            sparseLongArray.put(pointerId, j3);
            jValueAt = j3;
        }
        float pressure = motionEvent.getPressure(i2);
        float x = motionEvent.getX(i2);
        float y = motionEvent.getY(i2);
        long jFloatToRawIntBits4 = Float.floatToRawIntBits(x);
        long jFloatToRawIntBits5 = Float.floatToRawIntBits(y);
        char c3 = ' ';
        long j4 = BodyPartID.bodyIdMax;
        long j5 = (jFloatToRawIntBits4 << 32) | (jFloatToRawIntBits5 & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        if (i2 == 0) {
            if (offset != null) {
                jFloatToRawIntBits = offset.f8808a;
            } else {
                jFloatToRawIntBits = (((long) Float.floatToRawIntBits(motionEvent.getRawX())) << 32) | (((long) Float.floatToRawIntBits(motionEvent.getRawY())) & BodyPartID.bodyIdMax);
            }
            jF = androidComposeView.f(jFloatToRawIntBits);
        } else {
            if (offset != null) {
                jFloatToRawIntBits = offset.f8808a;
            } else {
                jFloatToRawIntBits = (((long) Float.floatToRawIntBits(motionEvent.getRawX(i2))) << 32) | (((long) Float.floatToRawIntBits(motionEvent.getRawY(i2))) & BodyPartID.bodyIdMax);
            }
            jF = androidComposeView.f(jFloatToRawIntBits);
        }
        long j6 = jFloatToRawIntBits;
        long j7 = jF;
        int toolType = motionEvent.getToolType(i2);
        if (toolType != 0) {
            if (toolType != 1) {
                if (toolType == 2) {
                    PointerType.f9367b.getClass();
                    i5 = PointerType.f9369e;
                } else if (toolType == 3) {
                    PointerType.f9367b.getClass();
                    i5 = PointerType.d;
                } else if (toolType != 4) {
                    PointerType.f9367b.getClass();
                } else {
                    PointerType.f9367b.getClass();
                    i5 = PointerType.f9370f;
                }
            } else if ((motionEvent.isFromSource(8194) || motionEvent.isFromSource(1048584)) && (!this.f9292h || this.f9293i)) {
                PointerType.f9367b.getClass();
                i5 = PointerType.d;
            } else {
                PointerType.f9367b.getClass();
                i5 = PointerType.f9368c;
            }
            i3 = i5;
            ArrayList arrayList = new ArrayList(motionEvent.getHistorySize());
            historySize = motionEvent.getHistorySize();
            i4 = 0;
            while (true) {
                c2 = c3;
                jFloatToRawIntBits2 = 0;
                fFloatValue = 1.0f;
                if (i4 < historySize) {
                    break;
                }
                historicalX = motionEvent.getHistoricalX(i2, i4);
                float historicalY = motionEvent.getHistoricalY(i2, i4);
                long j8 = j4;
                if ((Float.floatToRawIntBits(historicalX) & Integer.MAX_VALUE) >= 2139095040 && (Float.floatToRawIntBits(historicalY) & Integer.MAX_VALUE) < 2139095040) {
                    long jFloatToRawIntBits6 = (((long) Float.floatToRawIntBits(historicalX)) << c2) | (((long) Float.floatToRawIntBits(historicalY)) & j8);
                    long historicalEventTime = motionEvent.getHistoricalEventTime(i4);
                    float historicalAxisValue = motionEvent.getHistoricalAxisValue(52, i2, i4);
                    Float fValueOf2 = historicalAxisValue > Call.Parameters.DEFAULT_CAMERA_ZOOM ? Float.valueOf(historicalAxisValue) : null;
                    float fFloatValue2 = fValueOf2 != null ? fValueOf2.floatValue() : 1.0f;
                    if (motionEvent.getClassification() == 3) {
                        jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(motionEvent.getHistoricalAxisValue(50, i2, i4))) << c2) | (((long) Float.floatToRawIntBits(motionEvent.getHistoricalAxisValue(51, i2, i4))) & j8);
                    } else {
                        Offset.f8806b.getClass();
                    }
                    arrayList.add(new HistoricalChange(historicalEventTime, jFloatToRawIntBits6, fFloatValue2, jFloatToRawIntBits2, jFloatToRawIntBits6, (DefaultConstructorMarker) null));
                }
                i4++;
                c3 = c2;
                historySize = historySize;
                j4 = j8;
            }
            j2 = j4;
            if (motionEvent.getActionMasked() == 8) {
                jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits((-motionEvent.getAxisValue(9)) + Call.Parameters.DEFAULT_CAMERA_ZOOM)) & j2) | (((long) Float.floatToRawIntBits(motionEvent.getAxisValue(10))) << c2);
            } else {
                Offset.f8806b.getClass();
                jFloatToRawIntBits3 = 0;
            }
            if (motionEvent.getClassification() == 5) {
                axisValue = motionEvent.getAxisValue(52, i2);
                fValueOf = Float.valueOf(axisValue);
                if (axisValue > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    f2 = fValueOf;
                } else {
                    f2 = null;
                }
                if (f2 != null) {
                    fFloatValue = f2.floatValue();
                }
            }
            float f3 = fFloatValue;
            if (motionEvent.getClassification() == 3) {
                jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(motionEvent.getAxisValue(50, i2))) << c2) | (((long) Float.floatToRawIntBits(motionEvent.getAxisValue(51, i2))) & j2);
            } else {
                Offset.f8806b.getClass();
            }
            return new PointerInputEventData(jValueAt, motionEvent.getEventTime(), j6, j7, z, pressure, i3, this.f9289c.get(motionEvent.getPointerId(i2), false), arrayList, jFloatToRawIntBits3, f3, jFloatToRawIntBits2, j5, null);
        }
        PointerType.f9367b.getClass();
        i3 = 0;
        ArrayList arrayList2 = new ArrayList(motionEvent.getHistorySize());
        historySize = motionEvent.getHistorySize();
        i4 = 0;
        while (true) {
            c2 = c3;
            jFloatToRawIntBits2 = 0;
            fFloatValue = 1.0f;
            if (i4 < historySize) {
                break;
                break;
            }
            historicalX = motionEvent.getHistoricalX(i2, i4);
            float historicalY2 = motionEvent.getHistoricalY(i2, i4);
            long j9 = j4;
            if ((Float.floatToRawIntBits(historicalX) & Integer.MAX_VALUE) >= 2139095040) {
            }
            i4++;
            c3 = c2;
            historySize = historySize;
            j4 = j9;
        }
        j2 = j4;
        if (motionEvent.getActionMasked() == 8) {
            jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits((-motionEvent.getAxisValue(9)) + Call.Parameters.DEFAULT_CAMERA_ZOOM)) & j2) | (((long) Float.floatToRawIntBits(motionEvent.getAxisValue(10))) << c2);
        } else {
            Offset.f8806b.getClass();
            jFloatToRawIntBits3 = 0;
        }
        if (motionEvent.getClassification() == 5) {
            axisValue = motionEvent.getAxisValue(52, i2);
            fValueOf = Float.valueOf(axisValue);
            if (axisValue > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f2 = fValueOf;
            } else {
                f2 = null;
            }
            if (f2 != null) {
                fFloatValue = f2.floatValue();
            }
        }
        float f4 = fFloatValue;
        if (motionEvent.getClassification() == 3) {
            jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(motionEvent.getAxisValue(50, i2))) << c2) | (((long) Float.floatToRawIntBits(motionEvent.getAxisValue(51, i2))) & j2);
        } else {
            Offset.f8806b.getClass();
        }
        return new PointerInputEventData(jValueAt, motionEvent.getEventTime(), j6, j7, z, pressure, i3, this.f9289c.get(motionEvent.getPointerId(i2), false), arrayList2, jFloatToRawIntBits3, f4, jFloatToRawIntBits2, j5, null);
    }

    public final void f(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        SparseBooleanArray sparseBooleanArray = this.f9289c;
        SparseLongArray sparseLongArray = this.f9288b;
        if (actionMasked == 1 || actionMasked == 6) {
            int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
            if (!sparseBooleanArray.get(pointerId, false)) {
                sparseLongArray.delete(pointerId);
                sparseBooleanArray.delete(pointerId);
            }
        }
        if (sparseLongArray.size() > motionEvent.getPointerCount()) {
            for (int size = sparseLongArray.size() - 1; -1 < size; size--) {
                int iKeyAt = sparseLongArray.keyAt(size);
                int pointerCount = motionEvent.getPointerCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= pointerCount) {
                        sparseLongArray.removeAt(size);
                        sparseBooleanArray.delete(iKeyAt);
                        break;
                    } else if (motionEvent.getPointerId(i2) == iKeyAt) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
    }
}
