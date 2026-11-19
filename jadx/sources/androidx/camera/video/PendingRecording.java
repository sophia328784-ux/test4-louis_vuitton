package androidx.camera.video;

import android.content.Context;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.video.AutoValue_Recorder_RecordingRecord;
import androidx.camera.video.Recorder;
import androidx.camera.video.VideoOutput;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import defpackage.md;
import java.io.IOException;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/camera/video/PendingRecording;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroidx/camera/video/Recorder;", "recorder", "Landroidx/camera/video/OutputOptions;", "outputOptions", "<init>", "(Landroid/content/Context;Landroidx/camera/video/Recorder;Landroidx/camera/video/OutputOptions;)V", "camera-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PendingRecording {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Recorder f2761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OutputOptions f2762b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f2763c;
    public Consumer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Executor f2764e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2765f;

    public PendingRecording(Context context, Recorder recorder, OutputOptions outputOptions) {
        context.getClass();
        recorder.getClass();
        outputOptions.getClass();
        this.f2761a = recorder;
        this.f2762b = outputOptions;
        Context contextA = ContextUtil.a(context);
        contextA.getClass();
        this.f2763c = contextA;
    }

    public final Recording a(Executor executor, Consumer consumer) {
        long j2;
        int i2;
        IOException iOException;
        AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord;
        executor.getClass();
        this.f2764e = executor;
        this.d = consumer;
        final Recorder recorder = this.f2761a;
        recorder.getClass();
        synchronized (recorder.f2784i) {
            try {
                long j3 = recorder.r + 1;
                recorder.r = j3;
                final int i3 = 0;
                switch (recorder.m.ordinal()) {
                    case 0:
                    case 3:
                    case 6:
                    case 7:
                    case 8:
                        Recorder.State state = recorder.m;
                        Recorder.State state2 = Recorder.State.IDLING;
                        final int i4 = 1;
                        if (state == state2) {
                            Preconditions.f("Expected recorder to be idle but a recording is either pending or in progress.", recorder.p == null && recorder.q == null);
                        }
                        try {
                            j2 = j3;
                            try {
                                AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord2 = new AutoValue_Recorder_RecordingRecord(this.f2762b, this.f2764e, this.d, this.f2765f, j2);
                                autoValue_Recorder_RecordingRecord2.g.set(false);
                                autoValue_Recorder_RecordingRecord2.e(this.f2763c);
                                recorder.q = autoValue_Recorder_RecordingRecord2;
                                Recorder.State state3 = recorder.m;
                                if (state3 == state2) {
                                    recorder.B(Recorder.State.PENDING_RECORDING);
                                    recorder.f2781e.execute(new Runnable() { // from class: jr0
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
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            Recorder.RecordingRecord recordingRecordQ;
                                            AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord3;
                                            int i5 = i3;
                                            boolean z = false;
                                            int i6 = 0;
                                            Recorder recorder2 = recorder;
                                            switch (i5) {
                                                case 0:
                                                    synchronized (recorder2.f2784i) {
                                                        try {
                                                            Objects.toString(recorder2.m);
                                                            Logger.c(3, "Recorder");
                                                            int iOrdinal = recorder2.m.ordinal();
                                                            boolean z2 = true;
                                                            recordingRecordQ = null;
                                                            if (iOrdinal != 1) {
                                                                if (iOrdinal != 2) {
                                                                }
                                                                autoValue_Recorder_RecordingRecord3 = null;
                                                            } else {
                                                                z2 = false;
                                                            }
                                                            if (recorder2.b0 == VideoOutput.SourceState.INACTIVE) {
                                                                AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord4 = recorder2.q;
                                                                recorder2.q = null;
                                                                recorder2.x();
                                                                Set set = Recorder.m0;
                                                                i6 = 4;
                                                                boolean z3 = z2;
                                                                autoValue_Recorder_RecordingRecord3 = autoValue_Recorder_RecordingRecord4;
                                                                z = z3;
                                                            } else {
                                                                AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord5 = recorder2.p;
                                                                if (autoValue_Recorder_RecordingRecord5 != null || recorder2.d0) {
                                                                    Objects.toString(autoValue_Recorder_RecordingRecord5);
                                                                    Logger.c(5, "Recorder");
                                                                } else if (recorder2.H != null) {
                                                                    i6 = 0;
                                                                    z = z2;
                                                                    autoValue_Recorder_RecordingRecord3 = null;
                                                                    recordingRecordQ = recorder2.q(recorder2.m);
                                                                }
                                                                z = z2;
                                                                autoValue_Recorder_RecordingRecord3 = null;
                                                            }
                                                        } catch (Throwable th) {
                                                            throw th;
                                                        }
                                                        break;
                                                    }
                                                    if (recordingRecordQ != null) {
                                                        recorder2.F(recordingRecordQ, z);
                                                        return;
                                                    } else {
                                                        if (autoValue_Recorder_RecordingRecord3 != null) {
                                                            recorder2.j(autoValue_Recorder_RecordingRecord3, i6);
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                default:
                                                    SurfaceRequest surfaceRequest = recorder2.A;
                                                    if (surfaceRequest != null) {
                                                        recorder2.h(surfaceRequest, recorder2.B, false);
                                                        return;
                                                    } else {
                                                        md.h("surface request is required to retry initialization.");
                                                        return;
                                                    }
                                            }
                                        }
                                    });
                                } else if (state3 == Recorder.State.ERROR) {
                                    recorder.B(Recorder.State.PENDING_RECORDING);
                                    recorder.f2781e.execute(new Runnable() { // from class: jr0
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
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            Recorder.RecordingRecord recordingRecordQ;
                                            AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord3;
                                            int i5 = i4;
                                            boolean z = false;
                                            int i6 = 0;
                                            Recorder recorder2 = recorder;
                                            switch (i5) {
                                                case 0:
                                                    synchronized (recorder2.f2784i) {
                                                        try {
                                                            Objects.toString(recorder2.m);
                                                            Logger.c(3, "Recorder");
                                                            int iOrdinal = recorder2.m.ordinal();
                                                            boolean z2 = true;
                                                            recordingRecordQ = null;
                                                            if (iOrdinal != 1) {
                                                                if (iOrdinal != 2) {
                                                                }
                                                                autoValue_Recorder_RecordingRecord3 = null;
                                                            } else {
                                                                z2 = false;
                                                            }
                                                            if (recorder2.b0 == VideoOutput.SourceState.INACTIVE) {
                                                                AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord4 = recorder2.q;
                                                                recorder2.q = null;
                                                                recorder2.x();
                                                                Set set = Recorder.m0;
                                                                i6 = 4;
                                                                boolean z3 = z2;
                                                                autoValue_Recorder_RecordingRecord3 = autoValue_Recorder_RecordingRecord4;
                                                                z = z3;
                                                            } else {
                                                                AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord5 = recorder2.p;
                                                                if (autoValue_Recorder_RecordingRecord5 != null || recorder2.d0) {
                                                                    Objects.toString(autoValue_Recorder_RecordingRecord5);
                                                                    Logger.c(5, "Recorder");
                                                                } else if (recorder2.H != null) {
                                                                    i6 = 0;
                                                                    z = z2;
                                                                    autoValue_Recorder_RecordingRecord3 = null;
                                                                    recordingRecordQ = recorder2.q(recorder2.m);
                                                                }
                                                                z = z2;
                                                                autoValue_Recorder_RecordingRecord3 = null;
                                                            }
                                                        } catch (Throwable th) {
                                                            throw th;
                                                        }
                                                        break;
                                                    }
                                                    if (recordingRecordQ != null) {
                                                        recorder2.F(recordingRecordQ, z);
                                                        return;
                                                    } else {
                                                        if (autoValue_Recorder_RecordingRecord3 != null) {
                                                            recorder2.j(autoValue_Recorder_RecordingRecord3, i6);
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                default:
                                                    SurfaceRequest surfaceRequest = recorder2.A;
                                                    if (surfaceRequest != null) {
                                                        recorder2.h(surfaceRequest, recorder2.B, false);
                                                        return;
                                                    } else {
                                                        md.h("surface request is required to retry initialization.");
                                                        return;
                                                    }
                                            }
                                        }
                                    });
                                } else {
                                    recorder.B(Recorder.State.PENDING_RECORDING);
                                }
                                autoValue_Recorder_RecordingRecord = null;
                                iOException = null;
                                i2 = 0;
                            } catch (IOException e2) {
                                e = e2;
                                i2 = 5;
                                iOException = e;
                                autoValue_Recorder_RecordingRecord = null;
                            }
                        } catch (IOException e3) {
                            e = e3;
                            j2 = j3;
                        }
                        break;
                    case 1:
                    case 2:
                        autoValue_Recorder_RecordingRecord = recorder.q;
                        autoValue_Recorder_RecordingRecord.getClass();
                        iOException = null;
                        i2 = 0;
                        j2 = j3;
                        break;
                    case 4:
                    case 5:
                        autoValue_Recorder_RecordingRecord = recorder.p;
                        iOException = null;
                        i2 = 0;
                        j2 = j3;
                        break;
                    default:
                        j2 = j3;
                        autoValue_Recorder_RecordingRecord = null;
                        iOException = null;
                        i2 = 0;
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (autoValue_Recorder_RecordingRecord != null) {
            md.k("A recording is already in progress. Previous recordings must be stopped before a new recording can be started.");
            return null;
        }
        if (i2 == 0) {
            return new Recording(this.f2761a, j2, this.f2762b, false);
        }
        Objects.toString(iOException);
        Logger.a("Recorder");
        AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord3 = new AutoValue_Recorder_RecordingRecord(this.f2762b, this.f2764e, this.d, this.f2765f, j2);
        autoValue_Recorder_RecordingRecord3.g.set(false);
        recorder.j(autoValue_Recorder_RecordingRecord3, i2);
        return new Recording(this.f2761a, j2, this.f2762b, true);
    }
}
