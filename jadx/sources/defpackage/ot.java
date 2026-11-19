package defpackage;

import androidx.core.util.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ot implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f78659a;

    public /* synthetic */ ot(int i2) {
        this.f78659a = i2;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v133 androidx.camera.core.impl.Quirks, still in use, count: 2, list:
          (r1v133 androidx.camera.core.impl.Quirks) from 0x009f: MOVE (r18v8 androidx.camera.core.impl.Quirks) = (r1v133 androidx.camera.core.impl.Quirks)
          (r1v133 androidx.camera.core.impl.Quirks) from 0x0093: MOVE (r18v12 androidx.camera.core.impl.Quirks) = (r1v133 androidx.camera.core.impl.Quirks)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:59)
        	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:463)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:97)
        */
    @Override // androidx.core.util.Consumer
    public final void accept(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 2646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ot.accept(java.lang.Object):void");
    }
}
