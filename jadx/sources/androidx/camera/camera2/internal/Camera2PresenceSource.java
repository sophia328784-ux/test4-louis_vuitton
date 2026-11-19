package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraManager;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import androidx.camera.core.impl.AbstractCameraPresenceSource;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.q00;
import defpackage.s3;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000bB%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/camera/camera2/internal/Camera2PresenceSource;", "Landroidx/camera/core/impl/AbstractCameraPresenceSource;", "", "", "initialCameraIds", "Landroidx/camera/camera2/internal/compat/CameraManagerCompat;", "cameraManager", "Ljava/util/concurrent/Executor;", "systemCallbackExecutor", "<init>", "(Ljava/util/List;Landroidx/camera/camera2/internal/compat/CameraManagerCompat;Ljava/util/concurrent/Executor;)V", "Companion", "camera-camera2_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Camera2PresenceSource extends AbstractCameraPresenceSource {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f1526i = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CameraManagerCompat f1527f;
    public final Executor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Camera2PresenceSource$startMonitoring$1 f1528h;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/camera/camera2/internal/Camera2PresenceSource$Companion;", "", "", "TAG", "Ljava/lang/String;", "camera-camera2_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2PresenceSource(List<String> list, CameraManagerCompat cameraManagerCompat, Executor executor) {
        super(list);
        list.getClass();
        cameraManagerCompat.getClass();
        executor.getClass();
        this.f1527f = cameraManagerCompat;
        this.g = executor;
    }

    @Override // androidx.camera.core.impl.Observable
    public final ListenableFuture a() {
        return CallbackToFutureAdapter.a(new s3(this, 13));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.hardware.camera2.CameraManager$AvailabilityCallback, androidx.camera.camera2.internal.Camera2PresenceSource$startMonitoring$1] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.camera.core.impl.AbstractCameraPresenceSource
    public final void c() {
        if (this.f1528h != null) {
            f();
        }
        ?? r0 = new CameraManager.AvailabilityCallback() { // from class: androidx.camera.camera2.internal.Camera2PresenceSource$startMonitoring$1
            @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
            public final void onCameraAccessPrioritiesChanged() {
                CallbackToFutureAdapter.a(new q00(this.f1529a.a(), 1));
            }

            @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
            public final void onCameraAvailable(String str) {
                str.getClass();
                CallbackToFutureAdapter.a(new q00(this.f1529a.a(), 1));
            }

            @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
            public final void onCameraUnavailable(String str) {
                str.getClass();
                CallbackToFutureAdapter.a(new q00(this.f1529a.a(), 1));
            }
        };
        this.f1528h = r0;
        this.f1527f.d(this.g, r0);
        CallbackToFutureAdapter.a(new q00(a(), 1));
    }

    @Override // androidx.camera.core.impl.AbstractCameraPresenceSource
    public final void f() {
        Camera2PresenceSource$startMonitoring$1 camera2PresenceSource$startMonitoring$1 = this.f1528h;
        if (camera2PresenceSource$startMonitoring$1 != null) {
            try {
                this.f1527f.e(camera2PresenceSource$startMonitoring$1);
            } catch (Exception unused) {
            } finally {
                this.f1528h = null;
            }
        }
    }
}
