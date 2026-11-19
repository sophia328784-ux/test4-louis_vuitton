package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.IntStack;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;", "", "Landroidx/compose/runtime/GapComposer;", "composer", "Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;", "changeList", "<init>", "(Landroidx/compose/runtime/GapComposer;Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;)V", "Companion", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ComposerChangeListWriter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GapComposer f8236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ChangeList f8237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f8238c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8240f;
    public int g;
    public int l;
    public final IntStack d = new IntStack();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f8239e = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f8241h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8242i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8243j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f8244k = -1;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter$Companion;", "", "", "invalidGroupLocation", "I", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public ComposerChangeListWriter(GapComposer gapComposer, ChangeList changeList) {
        this.f8236a = gapComposer;
        this.f8237b = changeList;
    }

    public final void a() {
        c();
        ArrayList arrayList = this.f8241h;
        if (arrayList.isEmpty()) {
            this.g++;
        } else {
            arrayList.remove(arrayList.size() - 1);
        }
    }

    public final void b() {
        int i2 = this.g;
        if (i2 > 0) {
            Operations operations = this.f8237b.f8235a;
            operations.d(Operation.Ups.f8283c);
            operations.f8289c[operations.d - operations.f8287a[operations.f8288b - 1].f8247a] = i2;
            this.g = 0;
        }
        ArrayList arrayList = this.f8241h;
        if (arrayList.isEmpty()) {
            return;
        }
        ChangeList changeList = this.f8237b;
        int size = arrayList.size();
        Object[] objArr = new Object[size];
        for (int i3 = 0; i3 < size; i3++) {
            objArr[i3] = arrayList.get(i3);
        }
        changeList.getClass();
        if (size != 0) {
            Operations operations2 = changeList.f8235a;
            operations2.d(Operation.Downs.f8256c);
            Operations.WriteScope.a(operations2, 0, objArr);
        }
        arrayList.clear();
    }

    public final void c() {
        int i2 = this.l;
        if (i2 > 0) {
            int i3 = this.f8242i;
            if (i3 >= 0) {
                b();
                Operations operations = this.f8237b.f8235a;
                operations.d(Operation.RemoveNode.f8273c);
                int i4 = operations.d - operations.f8287a[operations.f8288b - 1].f8247a;
                int[] iArr = operations.f8289c;
                iArr[i4] = i3;
                iArr[i4 + 1] = i2;
                this.f8242i = -1;
            } else {
                int i5 = this.f8244k;
                int i6 = this.f8243j;
                b();
                Operations operations2 = this.f8237b.f8235a;
                operations2.d(Operation.MoveNode.f8267c);
                int i7 = operations2.d - operations2.f8287a[operations2.f8288b - 1].f8247a;
                int[] iArr2 = operations2.f8289c;
                iArr2[i7 + 1] = i5;
                iArr2[i7] = i6;
                iArr2[i7 + 2] = i2;
                this.f8243j = -1;
                this.f8244k = -1;
            }
            this.l = 0;
        }
    }

    public final void d(boolean z) {
        GapComposer gapComposer = this.f8236a;
        int i2 = z ? gapComposer.G.f8205i : gapComposer.G.g;
        int i3 = i2 - this.f8240f;
        if (i3 < 0) {
            ComposerKt.a("Tried to seek backward");
        }
        if (i3 > 0) {
            Operations operations = this.f8237b.f8235a;
            operations.d(Operation.AdvanceSlotsBy.f8249c);
            operations.f8289c[operations.d - operations.f8287a[operations.f8288b - 1].f8247a] = i3;
            this.f8240f = i2;
        }
    }

    public final void e() {
        SlotReader slotReader = this.f8236a.G;
        if (slotReader.f8201c > 0) {
            int i2 = slotReader.f8205i;
            IntStack intStack = this.d;
            if (intStack.a(-2) != i2) {
                if (!this.f8238c && this.f8239e) {
                    d(false);
                    this.f8237b.f8235a.d(Operation.EnsureRootGroupStarted.f8262c);
                    this.f8238c = true;
                }
                if (i2 > 0) {
                    GapAnchor gapAnchorA = slotReader.a(i2);
                    intStack.c(i2);
                    d(false);
                    Operations operations = this.f8237b.f8235a;
                    operations.d(Operation.EnsureGroupStarted.f8261c);
                    Operations.WriteScope.a(operations, 0, gapAnchorA);
                    this.f8238c = true;
                }
            }
        }
    }

    public final void f(int i2, int i3) {
        if (i3 > 0) {
            if (!(i2 >= 0)) {
                ComposerKt.a("Invalid remove index " + i2);
            }
            if (this.f8242i == i2) {
                this.l += i3;
                return;
            }
            c();
            this.f8242i = i2;
            this.l = i3;
        }
    }
}
