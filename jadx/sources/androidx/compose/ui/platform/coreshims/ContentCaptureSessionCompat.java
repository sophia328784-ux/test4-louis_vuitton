package androidx.compose.ui.platform.coreshims;

import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;
import androidx.compose.ui.contentcapture.ContentCaptureSessionWrapper;

/* JADX INFO: loaded from: classes.dex */
public class ContentCaptureSessionCompat implements ContentCaptureSessionWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContentCaptureSession f10226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f10227b;

    public ContentCaptureSessionCompat(ContentCaptureSession contentCaptureSession, View view) {
        this.f10226a = contentCaptureSession;
        this.f10227b = view;
    }

    @Override // androidx.compose.ui.contentcapture.ContentCaptureSessionWrapper
    public final ViewStructureCompat a(AutofillId autofillId, long j2) {
        return new ViewStructureCompat(this.f10226a.newVirtualViewStructure(autofillId, j2));
    }

    @Override // androidx.compose.ui.contentcapture.ContentCaptureSessionWrapper
    public final void b(AutofillId autofillId) {
        this.f10226a.notifyViewDisappeared(autofillId);
    }

    @Override // androidx.compose.ui.contentcapture.ContentCaptureSessionWrapper
    public final void c(AutofillId autofillId, String str) {
        this.f10226a.notifyViewTextChanged(autofillId, str);
    }

    @Override // androidx.compose.ui.contentcapture.ContentCaptureSessionWrapper
    public final void d(ViewStructure viewStructure) {
        this.f10226a.notifyViewAppeared(viewStructure);
    }

    @Override // androidx.compose.ui.contentcapture.ContentCaptureSessionWrapper
    public final AutofillId e(long j2) {
        return this.f10226a.newAutofillId(this.f10227b.getAutofillId(), j2);
    }

    @Override // androidx.compose.ui.contentcapture.ContentCaptureSessionWrapper
    public final void flush() {
        this.f10226a.notifyViewsDisappeared(this.f10227b.getAutofillId(), new long[]{Long.MIN_VALUE});
    }
}
