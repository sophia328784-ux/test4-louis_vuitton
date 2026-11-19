package androidx.compose.runtime;

import androidx.collection.MutableIntList;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/RecordingApplier;", "N", "Landroidx/compose/runtime/Applier;", "root", "<init>", "(Ljava/lang/Object;)V", "Companion", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RecordingApplier<N> implements Applier<N> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableIntList f8107a = new MutableIntList(0, 1, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableObjectList f8108b = new MutableObjectList(0, 1, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f8109c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004¨\u0006\u000e"}, d2 = {"Landroidx/compose/runtime/RecordingApplier$Companion;", "", "", "UP", "I", "DOWN", "REMOVE", "MOVE", "CLEAR", "INSERT_BOTTOM_UP", "INSERT_TOP_DOWN", "APPLY", "REUSE", "RECOMPOSE_PENDING", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public RecordingApplier(N n) {
        this.f8109c = n;
    }

    @Override // androidx.compose.runtime.Applier
    public final void a(Object obj, Function2 function2) {
        this.f8107a.e(7);
        MutableObjectList mutableObjectList = this.f8108b;
        mutableObjectList.g(function2);
        mutableObjectList.g(obj);
    }

    @Override // androidx.compose.runtime.Applier
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Object getF7920c() {
        return this.f8109c;
    }

    @Override // androidx.compose.runtime.Applier
    public final void c(int i2, int i3, int i4) {
        MutableIntList mutableIntList = this.f8107a;
        mutableIntList.e(3);
        mutableIntList.e(i2);
        mutableIntList.e(i3);
        mutableIntList.e(i4);
    }

    @Override // androidx.compose.runtime.Applier
    public final void clear() {
        this.f8107a.e(4);
    }

    @Override // androidx.compose.runtime.Applier
    public final void d(int i2, int i3) {
        MutableIntList mutableIntList = this.f8107a;
        mutableIntList.e(2);
        mutableIntList.e(i2);
        mutableIntList.e(i3);
    }

    @Override // androidx.compose.runtime.Applier
    public final void e(int i2, Object obj) {
        MutableIntList mutableIntList = this.f8107a;
        mutableIntList.e(6);
        mutableIntList.e(i2);
        this.f8108b.g(obj);
    }

    @Override // androidx.compose.runtime.Applier
    public final void g(int i2, Object obj) {
        MutableIntList mutableIntList = this.f8107a;
        mutableIntList.e(5);
        mutableIntList.e(i2);
        this.f8108b.g(obj);
    }

    @Override // androidx.compose.runtime.Applier
    public final void h(Object obj) {
        this.f8107a.e(1);
        this.f8108b.g(obj);
    }

    @Override // androidx.compose.runtime.Applier
    public final void i() {
        this.f8107a.e(8);
    }

    @Override // androidx.compose.runtime.Applier
    public final void j() {
        this.f8107a.e(0);
    }

    public final void k(Applier applier, RememberEventDispatcher rememberEventDispatcher) {
        Exception exc;
        int i2;
        MutableIntList mutableIntList = this.f8107a;
        int i3 = mutableIntList.f3256b;
        MutableObjectList mutableObjectList = new MutableObjectList(0, 1, null);
        applier.getClass();
        int i4 = 0;
        int i5 = 0;
        while (true) {
            MutableObjectList mutableObjectList2 = this.f8108b;
            if (i4 >= i3) {
                if (i5 != mutableObjectList2.f3346b) {
                    ComposerKt.a("Applier operation size mismatch");
                }
                mutableObjectList2.k();
                mutableIntList.f3256b = 0;
                applier.f();
                return;
            }
            int i6 = i4 + 1;
            try {
                try {
                    switch (mutableIntList.b(i4)) {
                        case 0:
                            applier.j();
                            i4 = i6;
                            break;
                        case 1:
                            int i7 = i5 + 1;
                            applier.h(mutableObjectList2.b(i5));
                            i5 = i7;
                            i4 = i6;
                            break;
                        case 2:
                            int i8 = i4 + 2;
                            i4 += 3;
                            applier.d(mutableIntList.b(i6), mutableIntList.b(i8));
                            break;
                        case 3:
                            int i9 = i4 + 2;
                            try {
                                int i10 = i4 + 3;
                                try {
                                    i4 += 4;
                                    applier.c(mutableIntList.b(i6), mutableIntList.b(i9), mutableIntList.b(i10));
                                } catch (Exception e2) {
                                    exc = e2;
                                    i4 = i10;
                                }
                            } catch (Exception e3) {
                                exc = e3;
                                i4 = i9;
                            }
                            break;
                        case 4:
                            applier.clear();
                            i4 = i6;
                            break;
                        case 5:
                            i4 += 2;
                            i2 = i5 + 1;
                            applier.g(mutableIntList.b(i6), mutableObjectList2.b(i5));
                            i5 = i2;
                            break;
                        case 6:
                            i4 += 2;
                            try {
                                i2 = i5 + 1;
                                applier.e(mutableIntList.b(i6), mutableObjectList2.b(i5));
                                i5 = i2;
                            } catch (Exception e4) {
                                exc = e4;
                            }
                            break;
                        case 7:
                            int i11 = i5 + 1;
                            Object objB = mutableObjectList2.b(i5);
                            objB.getClass();
                            TypeIntrinsics.e(2, objB);
                            i5 += 2;
                            applier.a(mutableObjectList2.b(i11), (Function2) objB);
                            i4 = i6;
                            break;
                        case 8:
                            Object f8109c = applier.getF7920c();
                            if (f8109c instanceof ComposeNodeLifecycleCallback) {
                                ComposeNodeLifecycleCallback composeNodeLifecycleCallback = (ComposeNodeLifecycleCallback) f8109c;
                                if (rememberEventDispatcher.f8397f.n(composeNodeLifecycleCallback)) {
                                    composeNodeLifecycleCallback.d();
                                }
                            }
                            mutableObjectList.g(f8109c);
                            applier.i();
                            i4 = i6;
                            break;
                        default:
                            i4 = i6;
                            break;
                    }
                } catch (Exception e5) {
                    exc = e5;
                    i4 = i6;
                }
            } catch (Throwable th) {
                applier.f();
                throw th;
            }
            exc = e4;
            throw new ComposePausableCompositionException(mutableObjectList2, mutableObjectList, mutableIntList, i4 - 1, exc);
        }
    }
}
