package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.tooling.ComposeStackTraceKt;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.of0;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmInline;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationsDebugStringFormattable;", "<init>", "()V", "WriteScope", "OpIterator", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Operations extends OperationsDebugStringFormattable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8288b;
    public int d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8291f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Operation[] f8287a = new Operation[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f8289c = new int[16];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object[] f8290e = new Object[16];

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationArgContainer;", "<init>", "(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class OpIterator implements OperationArgContainer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f8292a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f8293b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f8294c;

        public OpIterator() {
        }

        public final int a(int i2) {
            return Operations.this.f8289c[this.f8293b + i2];
        }

        public final Object b(int i2) {
            return Operations.this.f8290e[this.f8294c + i2];
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;", "", m.C, "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class WriteScope {
        public static final void a(Operations operations, int i2, Object obj) {
            operations.f8290e[(operations.f8291f - operations.f8287a[operations.f8288b - 1].f8248b) + i2] = obj;
        }

        public static final void b(Operations operations, int i2, Object obj, int i3, Object obj2) {
            int i4 = operations.f8291f - operations.f8287a[operations.f8288b - 1].f8248b;
            Object[] objArr = operations.f8290e;
            objArr[i2 + i4] = obj;
            objArr[i4 + i3] = obj2;
        }

        public static final void c(Operations operations, Object obj, Object obj2, Object obj3) {
            int i2 = operations.f8291f - operations.f8287a[operations.f8288b - 1].f8248b;
            Object[] objArr = operations.f8290e;
            objArr[i2] = obj;
            objArr[i2 + 1] = obj2;
            objArr[i2 + 2] = obj3;
        }
    }

    public final void a() {
        this.f8288b = 0;
        this.d = 0;
        ArraysKt.r(this.f8290e, 0, this.f8291f, null);
        this.f8291f = 0;
    }

    public final void b(Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
        if (this.f8288b != 0) {
            OpIterator opIterator = new OpIterator();
            while (true) {
                Operations operations = Operations.this;
                Operation operation = operations.f8287a[opIterator.f8292a];
                GapAnchor gapAnchorB = operation.b(opIterator);
                Applier applier2 = applier;
                SlotWriter slotWriter2 = slotWriter;
                RememberManager rememberManager2 = rememberManager;
                OperationErrorContext operationErrorContext2 = operationErrorContext;
                try {
                    operation.a(opIterator, applier2, slotWriter2, rememberManager2, operationErrorContext2);
                    int i2 = opIterator.f8292a;
                    int i3 = operations.f8288b;
                    if (i2 < i3) {
                        Operation operation2 = operations.f8287a[i2];
                        opIterator.f8293b += operation2.f8247a;
                        opIterator.f8294c += operation2.f8248b;
                        int i4 = i2 + 1;
                        opIterator.f8292a = i4;
                        if (i4 >= i3) {
                            break;
                        }
                        applier = applier2;
                        slotWriter = slotWriter2;
                        rememberManager = rememberManager2;
                        operationErrorContext = operationErrorContext2;
                    } else {
                        break;
                    }
                } catch (Throwable th) {
                    if (operationErrorContext2 == null) {
                        throw th;
                    }
                    ComposeStackTraceKt.a(th, new of0(gapAnchorB, slotWriter2, operationErrorContext2, 4));
                    throw th;
                }
            }
        }
        a();
    }

    public final boolean c() {
        return this.f8288b == 0;
    }

    public final void d(Operation operation) {
        int i2 = this.f8288b;
        Operation[] operationArr = this.f8287a;
        if (i2 == operationArr.length) {
            Operation[] operationArr2 = new Operation[(i2 > 1024 ? 1024 : i2) + i2];
            System.arraycopy(operationArr, 0, operationArr2, 0, i2);
            this.f8287a = operationArr2;
        }
        int i3 = this.d;
        int i4 = operation.f8247a;
        int i5 = operation.f8248b;
        int i6 = i3 + i4;
        int[] iArr = this.f8289c;
        int length = iArr.length;
        if (i6 > length) {
            int i7 = (length > 1024 ? 1024 : length) + length;
            if (i7 >= i6) {
                i6 = i7;
            }
            int[] iArr2 = new int[i6];
            ArraysKt.i(0, 0, length, iArr, iArr2);
            this.f8289c = iArr2;
        }
        int i8 = this.f8291f + i5;
        Object[] objArr = this.f8290e;
        int length2 = objArr.length;
        if (i8 > length2) {
            int i9 = (length2 <= 1024 ? length2 : 1024) + length2;
            if (i9 >= i8) {
                i8 = i9;
            }
            Object[] objArr2 = new Object[i8];
            System.arraycopy(objArr, 0, objArr2, 0, length2);
            this.f8290e = objArr2;
        }
        Operation[] operationArr3 = this.f8287a;
        int i10 = this.f8288b;
        this.f8288b = i10 + 1;
        operationArr3[i10] = operation;
        this.d += operation.f8247a;
        this.f8291f += i5;
    }
}
